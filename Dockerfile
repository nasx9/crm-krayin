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

# GD precisa de configure antes
RUN docker-php-ext-configure gd --with-freetype --with-jpeg

# Extensões PHP comuns para Laravel/Krayin
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
    xml

# Redis via PECL (precisa do $PHPIZE_DEPS)
RUN pecl install redis \
 && docker-php-ext-enable redis

# -----------------------------
# Apache (proxy-aware para HTTPS no Coolify)
# -----------------------------
RUN a2enmod rewrite headers remoteip

ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!'"${APACHE_DOCUMENT_ROOT}"'!g' \
      /etc/apache2/sites-available/*.conf \
 && sed -ri -e 's!/var/www/html!'"${APACHE_DOCUMENT_ROOT}"'!g' \
      /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf || true

# Confia no proxy interno (Docker/Coolify)
RUN printf '%s\n' \
'RemoteIPHeader X-Forwarded-For' \
'RemoteIPInternalProxy 10.0.0.0/8' \
'RemoteIPInternalProxy 172.16.0.0/12' \
'RemoteIPInternalProxy 192.168.0.0/16' \
> /etc/apache2/conf-available/remoteip.conf \
 && a2enconf remoteip

# Garante que o app enxergue HTTPS (evita Mixed Content)
RUN printf '%s\n' \
'<IfModule mod_headers.c>' \
'Header always set X-Forwarded-Proto "https"' \
'</IfModule>' \
> /etc/apache2/conf-available/forwarded-proto.conf \
 && a2enconf forwarded-proto

# -----------------------------
# Composer
# -----------------------------
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# -----------------------------
# App
# -----------------------------
WORKDIR /var/www/html

# Cache de build do composer
COPY src/composer.json src/composer.lock /var/www/html/

RUN git config --global --add safe.directory /var/www/html

RUN composer install \
    --no-dev \
    --prefer-dist \
    --optimize-autoloader \
    --no-interaction \
    --no-progress

# Código
COPY src/ /var/www/html

# Permissões Laravel
RUN mkdir -p storage/framework/cache storage/framework/sessions storage/framework/views bootstrap/cache \
 && chown -R www-data:www-data /var/www/html \
 && chmod -R 775 storage bootstrap/cache

HEALTHCHECK --interval=15s --timeout=5s --retries=10 \
  CMD curl -fsS http://localhost/ >/dev/null || exit 1

EXPOSE 80
