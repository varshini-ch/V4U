FROM php:8.1-apache

# Install required PHP extensions
RUN apt-get update && apt-get install -y \
    libonig-dev \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install mysqli pdo pdo_mysql

# Copy your project
COPY . /var/www/html/
WORKDIR /var/www/html/

EXPOSE 80
