<?php

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'nick' );
define( 'DB_PASSWORD', 'mypassword' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8mb4' );

// The Database Collate type. Don't change this if in doubt.
define( 'DB_COLLATE', '' );


define('AUTH_KEY',         ':ZH@+<zTi!!1eOC}+b@53tKa;Qz<[:XOpxQ/@-cAYI%(SaD1~PP5t{T]}!S+TYP ');
define('SECURE_AUTH_KEY',  'CI#>.Q};8$B.||4qpKY`(v5T_+O|Fo6mS7%zUhRwAO>>(>V yT-&vt%S@*s>|aCX');
define('LOGGED_IN_KEY',    '4Bni|ERl30C#B5 5`Khyw%T%62e?ziB8+0T2 x1m#duhl.!Nz3FJaRs?l$s19<$B');
define('NONCE_KEY',        'F`}Kr86]y.w^MKi0<#E.U 5uyP5v1`%UZL#.=|PHh2`W;0b%iX/28Os(}tI++`bX');
define('AUTH_SALT',        'shM_[ &,UmDq_2*!@O=9XiZbF9jk$3-u#>WPjH6My,BC:-PnicM5)Mhg<ZrBxM#b');
define('SECURE_AUTH_SALT', '-}bkE$c|XpN6E?S*F}Tpb+-(-^A:|X`G<T|asN6Ve[DC;GpXr7FI$V}!@9~txx{U');
define('LOGGED_IN_SALT',   'qE.I486Qcwvy(|bSeIq&f[G:pvuw2, s:Wg)|*IDj+[`i;+P-OC#&,8S-O.nD`)L');
define('NONCE_SALT',       'vwYTd|HJWE4_NkDPaOAYbewDGQqI;VuL~I-Fqu{-Pp! {U~s#k632ST!oN?w%O7#');

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );
