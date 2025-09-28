# Dockerfile (paste exactly, save as "Dockerfile" in repo root)
FROM php:8.1-apache

# Install system deps and PHP extensions
RUN apt-get update && apt-get install -y libzip-dev zip unzip git \
  && docker-php-ext-install mysqli pdo pdo_mysql \
  && a2enmod rewrite

# Install composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copy app
COPY . /var/www/html/
WORKDIR /var/www/html/

# Fix permissions (optional but helpful)
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]
