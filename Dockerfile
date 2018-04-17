FROM php:7.1-apache

MAINTAINER Guillaum Leclerc guill.bout@gmail.com

RUN apt-get update && apt-get install -y \
    git unzip libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng-dev \
    && docker-php-ext-install zip mbstring pdo pdo_mysql mysqli \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && rm -rf /var/lib/apt/lists/*

COPY apache/vhost.conf /etc/apache2/sites-available/000-default.conf
