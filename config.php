<?php

$CONFIG = array(
    'debug' => (bool) getenv('DEBUG'),
    'logfile' => '/proc/self/fd/2',
    'datadirectory' => getenv('OWNCLOUD_DATA_PATH'),
);

$CONFIG['loglevel'] = $CONFIG['debug'] ? 0 : 2;

if (getenv('OWNCLOUD_SECRET')) {
    $CONFIG['secret'] = getenv('OWNCLOUD_SECRET');
}

if (getenv('OWNCLOUD_PASSWORD_SALT')) {
    $CONFIG['passwordsalt'] = getenv('OWNCLOUD_PASSWORD_SALT');
}

if (getenv('OWNCLOUD_TRUSTED_DOMAINS')) {
    $CONFIG['trusted_domains'] = explode(',', getenv('OWNCLOUD_TRUSTED_DOMAINS'));
}
