<?php

//START WP Force SSL secure cookie set
@ini_set('session.cookie_httponly', true);
@ini_set('session.cookie_secure', true);
@ini_set('session.use_only_cookies', true);
//END WP Force SSL secure cookie set
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
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
define( 'DB_NAME', 'pirated1_wp794' );

/** Database username */
define( 'DB_USER', 'pirated1_wp794' );

/** Database password */
define( 'DB_PASSWORD', '@874pSp)5l' );

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
define( 'AUTH_KEY',         'laq6razzhweax4ttz8uozlck6asbhrvdidtevhzxtkd0zy17xvy0ejawljszt4xr' );
define( 'SECURE_AUTH_KEY',  '4s26erkuedlupeeguntuaq92vhxsitbpwa4uo9kwucdiz2ly9hphb1pvcdnd0yn1' );
define( 'LOGGED_IN_KEY',    '0ialzsliyimdyrudstnk1q3uncdfc0nfkxa3px0igchqjonq5da9ckjk2uomnrds' );
define( 'NONCE_KEY',        'o8hpryxi7zm2pfwuzzdtlq8kuk4oor0twqerjyqvuesuoimf5wyg2fmm8x9wrxt5' );
define( 'AUTH_SALT',        'bkxi7mqcvpnetq80jhzs20fyb5zx4a10tkknpz91ouddjn7vdfnup57vchl6riiv' );
define( 'SECURE_AUTH_SALT', 'ncugiqtg3wa43mqi3jok0jwohn8ea2l1pow49tmewktivd1oafcxsmdvzjvpz9vq' );
define( 'LOGGED_IN_SALT',   'ikgfcpt5axf2dwp4b9vbbtqhs3lfgqe3znf7x5uyzwjgfwvwwst20tzxgvphhci7' );
define( 'NONCE_SALT',       'qfwsjl65squtaucuszgtu6cy5xpzhdjfwk3ojktux03aox8rjmtov09dbk0nvgvc' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wpw8_';

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
