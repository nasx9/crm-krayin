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
# Apache
# -----------------------------
RUN a2enmod rewrite headers

# Define DocumentRoot no Apache (forma limpa)
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!'"${APACHE_DOCUMENT_ROOT}"'!g' \
    /etc/apache2/sites-available/*.conf \
 && sed -ri -e 's!/var/www/!'"${APACHE_DOCUMENT_ROOT%/public}"'/!g' \
    /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf || true

# -----------------------------
# Composer
# -----------------------------
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# -----------------------------
# App
# -----------------------------
WORKDIR /var/www/html

# Copia primeiro os manifests do composer para cache de build
COPY src/composer.json src/composer.lock /var/www/html/

# Git safe dir (evita erro em build quando a pasta vira repo)
RUN git config --global --add safe.directory /var/www/html

# Instala dependências PHP (cacheável)
RUN composer install \
    --no-dev \
    --prefer-dist \
    --optimize-autoloader \
    --no-interaction \
    --no-progress

# Agora copia o restante do código
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
 && chmod -R 775 storage bootstrap

# -----------------------------
# Opcional: otimizações Laravel (não falhar build se faltar env)
# -----------------------------
# Se você quiser, pode ativar depois que o runtime tiver env:
# RUN php artisan config:cache || true
# RUN php artisan route:cache || true
# RUN php artisan view:cache || true

# -----------------------------
# Healthcheck HTTP (melhor que só Redis)
# -----------------------------
HEALTHCHECK --interval=15s --timeout=5s --retries=10 \
  CMD curl -fsS http://localhost/ >/dev/null || exit 1

EXPOSE 80
