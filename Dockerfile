FROM php:5.6-fpm
MAINTAINER Gustavo Narea "me@gustavonarea.net"

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        libpng12-dev \
        libjpeg-dev \
        libicu-dev \
        g++ \
        libmcrypt-dev \
        imagemagick \
        libmagickwand-dev \
        bzip2 \
        && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr && \
    docker-php-ext-install gd intl mcrypt mbstring posix zip mysql && \
    pecl install imagick && \
    echo "extension=imagick.so" > /usr/local/etc/php/conf.d/ext-imagick.ini

ENV OWNCLOUD_VERSION 8.0.3

RUN curl --silent --show-error --location https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2 | \
    tar --extract --bzip2 --directory /var/www --owner=www-data --group=www-data --verbose

VOLUME /var/www/owncloud

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]
