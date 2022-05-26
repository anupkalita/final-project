FROM php:7.4-apache

RUN apt-get update
RUN apt-get install -y wget vim git zip unzip zlib1g-dev libzip-dev libpng-dev
RUN docker-php-ext-install -j$(nproc) mysqli pdo_mysql gd zip pcntl exif

RUN useradd -ms /bin/bash admin
COPY ./src /var/www/html

RUN chown -R admin:admin /var/www/html/admin

RUN chmod 777 /var/www/html/admin/add_event_process.php
RUN chmod 777 /var/www/html/admin/event

ENV DB_PASSWORD=kinddevil