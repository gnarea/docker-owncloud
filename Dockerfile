FROM gnarea/alpine-php-fpm

ENV \
    OWNCLOUD_VERSION="9.0.1" \
    OWNCLOUD_DATA_PATH="/var/opt/web-app"

COPY build /tmp
RUN /tmp/build && rm /tmp/build

COPY config.php /opt/web-app/config/docker.config.php
RUN chown www-data:www-data /opt/web-app/config/docker.config.php

VOLUME "${OWNCLOUD_DATA_PATH}"
