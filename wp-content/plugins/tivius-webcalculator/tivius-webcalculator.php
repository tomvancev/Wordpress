<?php

/*
Plugin Name: Tivius Web Calculator
Description: Calculator for wooden pellet heating systems.
Version: 1.0
Author: Tom Vancev
*/

define( 'CD_PLUGIN_PATH', realpath ( plugin_dir_path( __FILE__ ) ) . DIRECTORY_SEPARATOR );
define( 'CD_PLUGIN_URL', plugin_dir_url( __FILE__ ) );
define( 'INCLUDES_PATH', CD_PLUGIN_PATH . 'includes' . DIRECTORY_SEPARATOR);

//autoload classes
spl_autoload_register( 'tivius_autoloader' );
function tivius_autoloader( $class_name ) {
  if ( false !== strpos( $class_name, 'Tivius' ) ) {
      $classes_dir = INCLUDES_PATH . 'classes' . DIRECTORY_SEPARATOR;
    $class_file = str_replace( '_', DIRECTORY_SEPARATOR, $class_name ) . '.php';
    require_once $classes_dir . $class_file;
  }
}

require(INCLUDES_PATH . 'tivius-constants.php');
require(INCLUDES_PATH . 'tivius-meta-box.php');
require(INCLUDES_PATH . 'tivius-rest-api.php');
require(INCLUDES_PATH . 'tivius-enqueue-localize-scripts.php');
require(INCLUDES_PATH . 'tivius-shortcodes.php');
require(INCLUDES_PATH . 'tivius-setup-menu-page.php');




// require(INCLUDES_PATH . 'tivius-old-template-redirect.php');
