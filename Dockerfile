# Image PHP officielle
FROM php:8.1-apache

# Copier les fichiers dans Apache
COPY . /var/www/html/

# Exposer le port 80
EXPOSE 80