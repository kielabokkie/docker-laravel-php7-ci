FROM php:7.2

MAINTAINER Wouter Peschier <kielabokkie@gmail.com>

RUN apt-get update \
    && apt-get install -y git unzip zlib1g-dev libxml2-dev libgmp-dev libmcrypt-dev \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && pecl install mcrypt-1.0.1 \
    && docker-php-ext-enable mcrypt \
    && docker-php-ext-install bcmath exif gmp pcntl soap zip \
    && (curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer) \
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*
