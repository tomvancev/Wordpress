<?php
require(INCLUDES_PATH . 'tivius-get-products.php');

function handle_web_calc_request($request){
	if( isset( $request['name'] ) &&
	isset( $request['email'] ) &&
	isset( $request['tel'] ) &&
	isset( $request['kW'] )	)
	{
		$response = web_calc_get_products( $request );
	}
	else
	{
		$response = new WP_Error( '400', 'Invalid request data' , $request );
	}

	return $response;
}

function add_web_calc_api(){
	register_rest_route( 'webcalc/v1', '/index', 
		array(	'methods' 	=> 'POST',
			  	'callback'	=> 'web_calc_get_products_old'	
			  ), $override = false );

	register_rest_route( 'webcalc/v2', '/index', 
		array(	'methods' 	=> 'POST',
			  	'callback'	=> 'handle_web_calc_request'	
			  ), $override = false );
}

add_action( 'rest_api_init', 'add_web_calc_api');
