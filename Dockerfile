FROM php:8.2-apache
COPY ./source /var/www/html
WORKDIR /root
RUN apt update -y
RUN apt install -y nano
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

// Enable apache mods.
RUN a2enmod rewrite
RUN a2enmod headers

EXPOSE 80