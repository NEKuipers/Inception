<?php

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'joppe' );
define( 'DB_PASSWORD', 'definitelynotasecurityrisk' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8mb4' );

// The Database Collate type. Don't change this if in doubt.
define( 'DB_COLLATE', '' );


define('AUTH_KEY',         'asuperverysecuresalthatnoonewilleverguessorhackintoyouknowyeahmm');
define('SECURE_AUTH_KEY',  'asuperverysecuresalthatnoonewilleverguessorhackintoyouknowyeahmm');
define('LOGGED_IN_KEY',    'asuperverysecuresalthatnoonewilleverguessorhackintoyouknowyeahmm');
define('NONCE_KEY',        'asuperverysecuresalthatnoonewilleverguessorhackintoyouknowyeahmm');
define('AUTH_SALT',        'asuperverysecuresalthatnoonewilleverguessorhackintoyouknowyeahmm');
define('SECURE_AUTH_SALT', 'asuperverysecuresalthatnoonewilleverguessorhackintoyouknowyeahmm');
define('LOGGED_IN_SALT',   'asuperverysecuresalthatnoonewilleverguessorhackintoyouknowyeahmm');
define('NONCE_SALT',       'asuperverysecuresalthatnoonewilleverguessorhackintoyouknowyeahmm');

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );
