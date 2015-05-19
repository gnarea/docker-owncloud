FROM php:5.6-fpm
MAINTAINER Gustavo Narea "me@gustavonarea.net"

VOLUME /var/www/owncloud/data

RUN apt-get update && \
    apt-get install --no-install-recommends -y libpng12-dev libjpeg-dev libicu-dev g++ libmcrypt-dev && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr && \
    docker-php-ext-install gd json mysql intl mcrypt

# TODO: Install imagick extension!
