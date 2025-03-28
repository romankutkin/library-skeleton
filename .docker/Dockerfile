ARG PHP_VERSION=8.3

FROM php:${PHP_VERSION}-cli-alpine

RUN apk add --no-cache bash

# Copies composer binary file from pre build image
COPY --from=composer/composer:latest-bin /composer /usr/bin/composer

# Install Xdebug for debug and code coverage
RUN apk add --no-cache linux-headers autoconf g++ make \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
