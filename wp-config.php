<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_my_theme' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ';<Z5gCDLu> 9^8/A0tV8T*Jk<9na.xm=F@Uj05C56j-BRi?NUO@FJ4?j/AIe(bQ[' );
define( 'SECURE_AUTH_KEY',  '##kdlAW+wUBvZ{qdo.53l;0}H;f!;o{Sbi2RUXQt2nN5Oa% g^rhh/ma}iy(OGTt' );
define( 'LOGGED_IN_KEY',    'E28me`$tja;|xa+YtV:]` j4d*&?G,.LKC%+UoQ(d^n|K9L,7BTiQ/phP{%.i|ah' );
define( 'NONCE_KEY',        '3u_|&AiN?wYs(k&!y4MEZ?O9F5Kj4o`eW|r;S|87X)|EKgr/?zq$2>_yWRq6Fq:&' );
define( 'AUTH_SALT',        '!=lHUW^<[BgQo#E67TYtr)4<He:J^utwbGT<J|]]5}?*W]dI$Xw#h|B|V7]i]0sR' );
define( 'SECURE_AUTH_SALT', 'ia4p?62vV/t=Zv;A-Ju))sRV*xhJLVmUS:6dC:hhus/V#p9[x,Aa(Hb+H1  eYH2' );
define( 'LOGGED_IN_SALT',   '-?Zjp<!%N:w?,5Yqwj3^l1q|fhoKy,}n9kSH~wCv~15<9-z(8`i%3ek;zOfg0#UM' );
define( 'NONCE_SALT',       'PV6u&_f0&5}j?gNNW0G+4^CKVGT*}sYZl#$wCzv wkxJ{3?5TgH ~wW9q]4v&C4E' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
