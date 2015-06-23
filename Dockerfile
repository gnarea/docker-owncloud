FROM php:5.6-apache
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

VOLUME /var/www/html/data

ENV OWNCLOUD_VERSION 8.0.4
RUN curl --silent --show-error https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2 | \
    tar --extract --bzip2 --strip-components 1 --directory /var/www/html --verbose

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]
