FROM php:7.4-cli-alpine

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

RUN mkdir -p /root/.composer

WORKDIR /app

ENTRYPOINT composer install --ignore-platform-reqs
