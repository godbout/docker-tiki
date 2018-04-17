FROM php:7.1-apache

MAINTAINER Guill Lo guill.bout@gmail.com

RUN apt-get update && apt-get install -y \
    git unzip libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng-dev \
    && docker-php-ext-install zip mbstring pdo pdo_mysql mysqli \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd

COPY . /srv/www/app
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /srv/www/app

RUN chown -R www-data:www-data /srv/www/app

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

