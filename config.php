<?php

$CONFIG = array(
    'logfile' => '/proc/self/fd/2',
    'datadirectory' => getenv('OWNCLOUD_DATA_PATH'),
);

if (getenv('OWNCLOUD_SECRET')) {
    $CONFIG['secret'] = getenv('OWNCLOUD_SECRET');
}

if (getenv('OWNCLOUD_PASSWORD_SALT')) {
    $CONFIG['passwordsalt'] = getenv('OWNCLOUD_PASSWORD_SALT');
}

if (getenv('OWNCLOUD_TRUSTED_DOMAINS')) {
    $CONFIG['trusted_domains'] = explode(',', getenv('OWNCLOUD_TRUSTED_DOMAINS'));
}
