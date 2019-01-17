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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress_db');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         'TF~7O|,5h@@8)nBz_vf0ICk_aUctjKE1QHiIux2_}e2/`,yQ`0t~xhuep6Z-Vs>D');
define('SECURE_AUTH_KEY',  'zBU9 W=`X^B3/SLD<*O7qaj,@i8P@dg=MgRl0$mu<HM@E/%9Kg._F[(I;>(Y4`B9');
define('LOGGED_IN_KEY',    'G4B;3srtZ#oEAk-IHHS!:+M4]Ux65RQFKX4Lc;tg;Jec1IC0;`Xw)DV?%59,_Nwr');
define('NONCE_KEY',        'k3?Ji{{3{%&OwaSPCWYgT-Y5hyZ/cJ}{CTlK9](y X4:T$Wzs`LL8qXTlxO731QQ');
define('AUTH_SALT',        'Vk6J.+]#v8.](]_{7/Kjl*=]9kl)5FHnI.VN@QYxr_d$[nhR?rs yfC#|rq);YD8');
define('SECURE_AUTH_SALT', 'y129m.B:Apyf7!T|x/&^dtSwoT_n *:#|?p^r)/eGVAEGWtpKm(<U<-7%XN|<yf[');
define('LOGGED_IN_SALT',   '4_NNXjMoV61[io{y+i]u@yW>v*^fG=XCr(tX?[m~0]2F|_vGj-knlRwUm2eN*Xg<');
define('NONCE_SALT',       'm!LV%#=[,Y.ES38fB=Wlamtl?+7+Yh$XSqph+BAv0as={r?#zA-H6`rT3N|o$AXp');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
