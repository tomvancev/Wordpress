<?php 

/*
Plugin Name: Tivius Web Calculator
Description: Calculator for wooden pellet heating systems.
Version: 1.0
Author: Tom Vancev
*/

define( 'CD_PLUGIN_PATH', plugin_dir_path( __FILE__ ) );
define( 'CD_PLUGIN_URL', plugin_dir_url( __FILE__ ) );
define( 'INCLUDES_PATH', CD_PLUGIN_PATH . 'includes/');

require(INCLUDES_PATH . 'tivius-constants.php');
require(INCLUDES_PATH . 'tivius-meta-box.php');
require(INCLUDES_PATH . 'tivius-rest-api.php');
require(INCLUDES_PATH . 'tivius-enqueue-localize-scripts.php');
require(INCLUDES_PATH . 'tivius-shortcodes.php');

// require(INCLUDES_PATH . 'tivius-old-template-redirect.php');
