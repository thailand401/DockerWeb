FROM php:8.2-apache
COPY ./source /var/www/html
WORKDIR /var/www/html
EXPOSE 80