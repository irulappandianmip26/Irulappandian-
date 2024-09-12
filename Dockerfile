# Use the official PHP-FPM image as the base image
FROM php:7.4-fpm

# Install Nginx
RUN apt-get update && apt-get install -y nginx
RUN mkdir /app
# Copy Nginx config
#COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy PHP app
#COPY ./app /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start both PHP-FPM and Nginx
CMD service nginx start && php-fpm

