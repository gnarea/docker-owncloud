<?php
/*
  This file overrides "config.php", even the options that were originally
  set in "autoconfig.php".
*/

$CONFIG = array(
    'debug' => (bool) getenv('DEBUG'),
    'logfile' => '/proc/self/fd/2',
    'datadirectory' => getenv('OWNCLOUD_DATA_PATH'),

    'dbtype' => getenv('OWNCLOUD_DB_TYPE'),
    'dbhost' => getenv('OWNCLOUD_DB_HOST'),
    'dbuser' => getenv('OWNCLOUD_DB_USER'),
    'dbpassword' => getenv('OWNCLOUD_DB_PASSWORD'),
    'dbname' => getenv('OWNCLOUD_DB_NAME'),
    'dbtableprefix' => getenv('OWNCLOUD_DB_TABLE_PREFIX') ?: "",

    'adminlogin' => getenv('OWNCLOUD_ADMIN_USER'),
    'adminpass' => getenv('OWNCLOUD_ADMIN_PASS'),
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
