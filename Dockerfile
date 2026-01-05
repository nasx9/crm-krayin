FROM php:8.2-apache

ENV DEBIAN_FRONTEND=noninteractive
ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_MEMORY_LIMIT=-1

# -----------------------------
# System deps + build deps + PHP extensions
# -----------------------------
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    git curl unzip ca-certificates \
    mariadb-client \
    libpng-dev libjpeg62-turbo-dev libfreetype6-dev \
    libonig-dev libxml2-dev libzip-dev libicu-dev \
    $PHPIZE_DEPS \
 && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure gd --with-freetype --with-jpeg

RUN docker-php-ext-install -j"$(nproc)" \
    pdo_mysql \
    mbstring \
    exif \
    pcntl \
    bcmath \
    gd \
    zip \
    intl \
    calendar \
    xml \
    fileinfo

RUN pecl install redis \
 && docker-php-ext-enable redis

# -----------------------------
# Apache (proxy-aware)
# -----------------------------
RUN a2enmod rewrite headers remoteip

ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!'"${APACHE_DOCUMENT_ROOT}"'!g' \
      /etc/apache2/sites-available/*.conf \
 && sed -ri -e 's!/var/www/html!'"${APACHE_DOCUMENT_ROOT}"'!g' \
      /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf || true

# Logar IP real atrás do proxy (opcional, não é o HTTPS)
RUN printf '%s\n' \
'RemoteIPHeader X-Forwarded-For' \
'RemoteIPInternalProxy 10.0.0.0/8' \
'RemoteIPInternalProxy 172.16.0.0/12' \
'RemoteIPInternalProxy 192.168.0.0/16' \
> /etc/apache2/conf-available/remoteip.conf \
 && a2enconf remoteip

# ESSENCIAL: quando Traefik/Coolify manda X-Forwarded-Proto=https,
# marca a request como HTTPS para o PHP/Laravel (evita gerar links http)
RUN printf '%s\n' \
'SetEnvIf X-Forwarded-Proto "https" HTTPS=on' \
'SetEnvIf X-Forwarded-SSL "on" HTTPS=on' \
> /etc/apache2/conf-available/ssl-proxy.conf \
 && a2enconf ssl-proxy

# -----------------------------
# Composer
# -----------------------------
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# Cache de build: só muda quando composer.* muda
COPY src/composer.json src/composer.lock /var/www/html/

RUN git config --global --add safe.directory /var/www/html \
 && composer config -g process-timeout 2000

# IMPORTANTE: sem scripts aqui (senão ele chama artisan e falha)
RUN composer install \
    --no-dev \
    --prefer-dist \
    --optimize-autoloader \
    --no-interaction \
    --no-progress \
    --no-scripts

# Agora sim copia o app (inclui artisan e bootstrap)
COPY src/ /var/www/html

# Agora roda os scripts do Laravel com o código presente
RUN composer dump-autoload -o \
 && php artisan package:discover --ansi

# Permissões Laravel (idempotente)
RUN mkdir -p storage/framework/cache storage/framework/sessions storage/framework/views bootstrap/cache \
 && (rm -rf storage/logs || true) \
 && mkdir -p storage/logs \
 && chown -R www-data:www-data /var/www/html \
 && chmod -R 775 storage bootstrap/cache storage/logs


HEALTHCHECK --interval=15s --timeout=5s --retries=10 \
  CMD curl -fsS http://localhost/ >/dev/null || exit 1

EXPOSE 80
