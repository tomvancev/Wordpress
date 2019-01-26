<?php
function web_calc_shortcode( $atts ){
    ob_start(); ?> 

    <div id="app"></div>

<?php
    return ob_get_clean();
}

function register_shortcodes(){
	add_shortcode( 'tivius-webcalculator', 'web_calc_shortcode' );
}

add_action( 'init', 'register_shortcodes');
