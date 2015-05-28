#!/bin/bash

# Example: https://github.com/docker-library/wordpress/blob/master/fpm/docker-entrypoint.sh

chown www-data:www-data /var/www/html/data

exec ${@}
