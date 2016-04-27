FROM gnarea/alpine-php-fpm

ENV \
    OWNCLOUD_VERSION="9.0.1" \
    OWNCLOUD_DATA_PATH="/var/opt/owncloud"

COPY build /tmp
RUN /tmp/build && rm /tmp/build

COPY autoconfig.php /opt/web-app/config/autoconfig.php
RUN chown www-data:www-data /opt/web-app/config/autoconfig.php

VOLUME "${OWNCLOUD_DATA_PATH}"
