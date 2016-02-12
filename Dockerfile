FROM gnarea/alpine-php-fpm

RUN \
    apk add --update \
        curl \
        tar \
        libpng-dev \
        libjpeg-turbo-dev

#        libicu-dev \
#        g++ \
#        libmcrypt-dev \
#        imagemagick \
#        libmagickwand-dev \
#        bzip2 \
#        && \
#    rm -rf /var/lib/apt/lists/* && \
#    docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr && \
#    docker-php-ext-install gd intl mcrypt mbstring posix zip mysql && \
#    pecl install imagick && \
#    echo "extension=imagick.so" > /usr/local/etc/php/conf.d/ext-imagick.ini

ENV OWNCLOUD_VERSION 8.0.4
RUN curl --silent --show-error "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2" | \
    tar --extract --bzip2 --strip-components 1 --directory /var/www/html --verbose
