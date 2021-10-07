<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('DB_NAME'));

/** MySQL database username */
define( 'DB_USER', getenv('MYSQL_USER') );

/** MySQL database password */
define( 'DB_PASSWORD', getenv('MYSQL_PASSWORD'));

/** MySQL hostname */
define( 'DB_HOST', getenv('DB_HOST'));

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '7>h/?uL5$[jj7`Xzm5iZKpZlPmL<>UT>8,$IhTgw;pisXD70H!QW3sK1HJ64-tl$' );
define( 'SECURE_AUTH_KEY',  'Po3n]IMR/wp[f*rDjWZ@K{WE*Qq[$lMN;.hGGoz%(SlG~Ns|{a>N/^rLzo%!azfL' );
define( 'LOGGED_IN_KEY',    'HMLh67QJUN}Xj=z^o.Y[.Vu5TAys.c^2 [|jd<K4D3%E:rK$V^5L OLB=z./2]JO' );
define( 'NONCE_KEY',        '<<H[9 1<zf2~<tvHo=Qm=XN8kHrBo+s.KZLIt`idPJnZs{WolpxaD-}/p$}|*D:2' );
define( 'AUTH_SALT',        'i[nxD>D7{6pw1nxvU!,_&`8TdjTNdtL:N-(@^`74 kQf%ei&Nqnfa0*ClxPCE+C#' );
define( 'SECURE_AUTH_SALT', '&L0Y1<V)~c!q]C tpf+ygm#5Mnpr~aH$WYFjGR{3[oV2>j:b1@#XNw<%l05[{uOJ' );
define( 'LOGGED_IN_SALT',   '0.AG=Y?mfN(n)4Xf2A|4koKA?Kj$+~os<lfnv(6emh.;j0L x%|-l<61H,CKC#G ' );
define( 'NONCE_SALT',       '^M(*O!-`{oTsk>xC8NAs`?E0EF/s#a7fA(so,.Wid*TRPm/D_zJg<]aSP8c9sm7Z' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

