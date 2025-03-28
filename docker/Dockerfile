ARG PHP_VERSION=8.3

FROM php:${PHP_VERSION}-cli-alpine

RUN apk add --no-cache bash

COPY --from=composer/composer:latest-bin /composer /usr/bin/composer
