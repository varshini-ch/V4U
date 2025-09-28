# Use official PHP image with Apache
FROM php:8.2-apache

# Copy all project files into Apache root
COPY . /var/www/html/

# Set permissions (Apache needs read access)
RUN chown -R www-data:www-data /var/www/html/ \
    && chmod -R 755 /var/www/html/

# Enable mysqli extension for MySQL
RUN docker-php-ext-install mysqli

# Expose port 80
EXPOSE 80
