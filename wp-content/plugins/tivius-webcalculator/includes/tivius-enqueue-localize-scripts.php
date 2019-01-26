<?php

add_action('wp_enqueue_scripts', 'enqueue_calculator_scripts');


function enqueue_calculator_scripts() {
    global $post;
    if( is_a( $post, 'WP_Post' ) && has_shortcode( $post->post_content, 'tivius-webcalculator') ) {

		wp_register_script( 'calcscripts2', CD_PLUGIN_URL . '/assets/bundle.js', array('jquery'),  false, true );
		add_javascript_api_url();
		wp_enqueue_script( 'calcscripts2' );

		wp_enqueue_style( 'calcstyles2', CD_PLUGIN_URL . 'styles.css');
    }
}


function add_javascript_api_url(){
	$api_url = get_site_url( null, 'wp-json/webcalc/v2/index' );
	wp_localize_script( 'calcscripts2', 'TIVIUS_API_URL', $api_url );
}


// OLD AND NOT IN FUNCTIOON 
/*

function enqueue_calculator_scripts_old() {
 // old and not in function
	wp_enqueue_script( 'knockoutjs', plugin_dir_url( __FILE__ ) . 'knockout.min.js', array('jquery'),  false, true );
	wp_enqueue_script( 'bootstrapjs', plugin_dir_url( __FILE__ ) . 'bootstrap.min.js', array('jquery'),  false, true );
	wp_enqueue_script( 'calcscripts', plugin_dir_url( __FILE__ ) . 'scripts.js', array('jquery', 'knockoutjs', 'bootstrapjs'),  false, true );
	wp_enqueue_style( 'calcstyles', plugin_dir_url( __FILE__ ) . 'style.css');
	wp_enqueue_style( 'bootstrapcss', plugin_dir_url( __FILE__ ) . 'bootstrap.min.css');
 // end old and not in function
	 

	 if ( is_page('calculator2') ) {
	wp_enqueue_script( 'calcscripts2', plugin_dir_url( __FILE__ ) . '/assets/bundle.js', array('jquery'),  false, true );
	wp_enqueue_style( 'calcstyles2', plugin_dir_url( __FILE__ ) . 'styles.css');
	}


}

*/