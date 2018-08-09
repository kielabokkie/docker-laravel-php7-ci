FROM php:7.1

MAINTAINER Wouter Peschier <kielabokkie@gmail.com>

RUN apt-get update \
    && apt-get install -y git unzip zlib1g-dev php7.1-gmp libxml2-dev \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install bcmath soap zip \
    && (curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer) \
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*
