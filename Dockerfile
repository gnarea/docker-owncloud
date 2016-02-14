FROM gnarea/alpine-php-fpm

ENV \
    OWNCLOUD_VERSION="8.2.2" \
    OWNCLOUD_DATA_PATH="/var/opt/web-app"

COPY build /tmp
RUN /tmp/build && rm /tmp/build

COPY config.php /opt/web-app/config/config.php
RUN chown www-data:www-data /opt/web-app/config/config.php

VOLUME "${OWNCLOUD_DATA_PATH}"
