FROM php:8.1.17-apache-bullseye

RUN apt-get update && apt-get install -y --no-install-recommends \
    pkg-config \
    libicu-dev \
    libzip-dev \
    libxml2-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libc-client-dev \
    libkrb5-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-install -j$(nproc) mysqli pdo pdo_mysql gd intl xml mbstring zip imap calendar \
    && a2enmod rewrite \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./dolibarr /var/www/html

RUN chown -R www-data:www-data /var/www/html

RUN chown -R www-data:www-data /var/www/html \
    && mkdir -p /var/www/documents && chown -R www-data:www-data /var/www/documents

EXPOSE 80
