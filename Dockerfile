FROM php:8.2-apache

# -----------------------------
# System deps + PHP extensions
# -----------------------------
RUN apt-get update && apt-get install -y --no-install-recommends \
    git curl unzip ca-certificates \
    libpng-dev libjpeg-dev libfreetype6-dev \
    libonig-dev libxml2-dev libzip-dev \
    libicu-dev \
    mariadb-client \
 && docker-php-ext-configure gd --with-freetype --with-jpeg \
 && docker-php-ext-install -j"$(nproc)" \
    pdo_mysql \
    mbstring \
    exif \
    pcntl \
    bcmath \
    gd \
    zip \
    intl \
    calendar \
 && pecl install redis-6.0.2 \
 && docker-php-ext-enable redis \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# -----------------------------
# Apache modules (proxy-aware)
# -----------------------------
RUN a2enmod rewrite headers remoteip

# Define DocumentRoot do Apache
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public

RUN sed -ri -e 's!/var/www/html!'"${APACHE_DOCUMENT_ROOT}"'!g' \
      /etc/apache2/sites-available/*.conf \
 && sed -ri -e 's!/var/www/html!'"${APACHE_DOCUMENT_ROOT}"'!g' \
      /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf || true

# Confia no proxy interno do Docker/Coolify para IP real
RUN printf '%s\n' \
'RemoteIPHeader X-Forwarded-For' \
'RemoteIPInternalProxy 10.0.0.0/8' \
'RemoteIPInternalProxy 172.16.0.0/12' \
'RemoteIPInternalProxy 192.168.0.0/16' \
> /etc/apache2/conf-available/remoteip.conf \
 && a2enconf remoteip

# Garante que o app enxergue HTTPS via header (evita Mixed Content)
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

# Copia manifests primeiro (cache de build)
COPY src/composer.json src/composer.lock /var/www/html/

# Evita erro de safe.directory em ambientes de build
RUN git config --global --add safe.directory /var/www/html

# Instala dependências (cacheável)
RUN composer install \
    --no-dev \
    --prefer-dist \
    --optimize-autoloader \
    --no-interaction \
    --no-progress

# Copia o restante do código
COPY src/ /var/www/html

# -----------------------------
# Laravel / Krayin permissions
# -----------------------------
RUN mkdir -p \
    storage/framework/cache \
    storage/framework/sessions \
    storage/framework/views \
    bootstrap/cache \
 && chown -R www-data:www-data /var/www/html \
 && chmod -R 775 storage bootstrap/cache

# -----------------------------
# Healthcheck HTTP
# -----------------------------
HEALTHCHECK --interval=15s --timeout=5s --retries=10 \
  CMD curl -fsS http://localhost/ >/dev/null || exit 1

EXPOSE 80
