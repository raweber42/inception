<?php

/* MySQL settings */
define( 'DB_NAME',     'wordpress' );
define( 'DB_USER',     'wordpress' );
define( 'DB_PASSWORD', 'secret' );
define( 'DB_HOST',     'mariadb' );
define( 'DB_CHARSET',  'utf8mb4' );


/* MySQL database table prefix. */
$table_prefix = 'wp_';


/* Authentication Unique Keys and Salts. */
/* https://api.wordpress.org/secret-key/1.1/salt/ */
define( 'AUTH_KEY',         'unique_phrase' );
define( 'SECURE_AUTH_KEY',  'unique_phrase' );
define( 'LOGGED_IN_KEY',    'unique_phrase' );
define( 'NONCE_KEY',        'unique_phrase' );
define( 'AUTH_SALT',        'unique_phrase' );
define( 'SECURE_AUTH_SALT', 'unique_phrase' );
define( 'LOGGED_IN_SALT',   'unique_phrase' );
define( 'NONCE_SALT',       'unique_phrase' );


/* Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/* Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');