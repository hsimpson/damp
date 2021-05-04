ARG PHP_VERSION=""
FROM php:${PHP_VERSION:+${PHP_VERSION}-}apache
# FROM php:7.4.15-apache

RUN docker-php-ext-install mysqli \
  && pecl install xdebug \
  && docker-php-ext-enable mysqli \
  && docker-php-ext-enable xdebug

RUN a2enmod ssl && a2enmod rewrite
RUN mkdir -p /etc/apache2/ssl
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

COPY ./ssl/*.pem /etc/apache2/ssl/
COPY ./apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./php/myxdebug.ini "$PHP_INI_DIR/conf.d/myxdebug.ini"

# EXPOSE 80
EXPOSE 443