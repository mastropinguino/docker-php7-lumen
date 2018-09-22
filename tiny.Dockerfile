FROM php:7-apache

LABEL version="1.0" \
    maintainer="Vincenzo Farruggia <vincenzo.farruggia@gmail.com>"

EXPOSE 80

RUN apt-get update \
 && apt-get install -y git zlib1g-dev \
 && docker-php-ext-install pdo pdo_mysql zip \
 && a2enmod rewrite \
 && apt-get clean \
 && sed -i 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/000-default.conf

WORKDIR /var/www