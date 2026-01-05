FROM php:8.2-apache

# -----------------------------
# System dependencies + PHP ext
# -----------------------------
RUN apt-get update && apt-get install -y \
    git curl unzip \
    libpng-dev libonig-dev libxml2-dev libzip-dev \
    libicu-dev \
    zip mariadb-client \
 && pecl install redis \
 && docker-php-ext-enable redis \
 && docker-php-ext-install \
    pdo_mysql \
    mbstring \
    exif \
    pcntl \
    bcmath \
    gd \
    zip \
    intl \
    calendar \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# -----------------------------
# Apache
# -----------------------------
RUN a2enmod rewrite

# -----------------------------
# Composer
# -----------------------------
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# -----------------------------
# App
# -----------------------------
WORKDIR /var/www/html

# Copia o código
COPY src/ /var/www/html

# Git safe dir (evita erro em build)
RUN git config --global --add safe.directory /var/www/html

# Permissões base
RUN chown -R www-data:www-data /var/www/html

# -----------------------------
# Laravel / Krayin
# -----------------------------
# Cria paths críticos ANTES do composer
RUN mkdir -p \
    storage/framework/cache \
    storage/framework/sessions \
    storage/framework/views \
 && chown -R www-data:www-data storage bootstrap \
 && chmod -R 775 storage bootstrap

# Instala dependências PHP
RUN composer install \
    --no-dev \
    --optimize-autoloader \
    --no-interaction \
    --no-progress

# Permissões finais (garantia)
RUN chown -R www-data:www-data storage bootstrap \
 && chmod -R 775 storage bootstrap

# -----------------------------
# Apache document root
# -----------------------------
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' \
    /etc/apache2/sites-available/*.conf \
    /etc/apache2/apache2.conf

# -----------------------------
# Healthcheck (opcional)
# -----------------------------
HEALTHCHECK CMD php -r "echo class_exists('Redis') ? 'OK' : exit(1);"
