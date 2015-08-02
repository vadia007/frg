<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('WP_CACHE', true); //Added by WP-Cache Manager
define( 'WPCACHEHOME', '/var/www/html/frg.loc/wp-content/plugins/wp-super-cache/' ); //Added by WP-Cache Manager
define('DB_NAME', 'frg');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '1');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '@E4^%|Q>+`ym;G{dB&)+6|[S?SK Kq -iIL$H`gOpyml&PfpM~Vk-mxk5HAXCDK+');
define('SECURE_AUTH_KEY',  '61]XUjo-l2(@8Y7T^du&DL.pj|Zwh(~7F/%!4:L.nLMuA@fcnILYgpY[nVAeMH`6');
define('LOGGED_IN_KEY',    'YWtp9^TTj;u]=x*=E`nW-y6o,+IF n3~,ntVqQ#cEO0}?|oZ.S19&-r0l|upo@mQ');
define('NONCE_KEY',        'q|mDMwanCmYl>,SHvQcQWagPF~CX,S6 wN| }^T8!WC.--rI~Gf4bYg*{6[,n65D');
define('AUTH_SALT',        '{whBl[3b3O?1M$Xsj#+KG5%_bT-X?QJg+2]CO+dv~b7kdR|cySa+F9UgNgr1b=+V');
define('SECURE_AUTH_SALT', 'WGpwcu$M0^14,OKy|04:kQ>r*Mb/5|V}|Sf|o>{%SYaoS_7uo;}r/ g#w0Nqse@<');
define('LOGGED_IN_SALT',   'U4@X&=Kqp}gN|%ps5u=9i}5h.le|0-*F-$bq|`n1#H2ON3I`-8?dY>A<Vu{xt>>L');
define('NONCE_SALT',       '}v.)=j3<:tgjhV-r=d.:uK@r1?C}&U*,iK lIbbN3_G.&5e~xoH_Z#|B0aI5_ Tw');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

define('FS_METHOD', 'direct');

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
define('PHOTOCRATI_CACHE', FALSE);