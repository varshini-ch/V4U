# Use official PHP with Apache
FROM php:8.1-apache

# Enable PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy project files into Apache's root directory
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Expose port 80
EXPOSE 80
