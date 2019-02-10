<?php
function web_calc_get_products($request){
	$name = $request['name'];
	$email = $request['email'];
	$tel = $request['tel'];
	$kWrequest = $request['kW'];

    $args = array(
        'post_type'      => 'product',
        'posts_per_page' => -1,
        'meta_key'   => 'hcf_kw',
		  	'orderby'    => 'meta_value_num',
		  	'order'      => 'ASC'
    );

    $loop = new WP_Query( $args );
    $products = array();

	while ( $loop->have_posts() ) : $loop->the_post();
		$kWloop = get_post_meta( get_the_ID(), $key = 'hcf_kw', $single = false )[0];

		$product = array(
				"permalink"	 => get_permalink(),
				"thumbnail"  => get_the_post_thumbnail_url(),
				"title"		 => get_the_title(),
				"content"	 => get_the_content(),
				"post_id"    => get_the_ID(),
				"kw" 		 => $kWloop,
				"Q"		     => $kWrequest
			);
		$products[] = $product;
    endwhile;
    	$closestKw = PHP_INT_MAX;
    	$theProduct = null;
 		foreach ($products as $index => $value) {
 			if($kWrequest < $value["kw"] ){
 				$theProduct = $value;
 				break;
 			}
 		}
 		if(is_null($theProduct)){
 			// if no value found return the one with the highest kw value
 			$theProduct = end($products);
 		}
 		return $theProduct;
}

# OLD IMPLEMENTATION
function web_calc_get_products_old($request){
 // old and not in function

	$name = $request['name'];
	$email = $request['email'];
	$tel = $request['tel'];
	$metres = (float)$request['metres'];
	$cm = (float)$request['visina'];
	$qV = (float)$request['isolation'];
	$V =  $metres * $cm;
	$Q = $V * $qV;

    $args = array(
        'post_type'      => 'product',
        'posts_per_page' => 10
    );

    $loop = new WP_Query( $args );
    $products = array();

	while ( $loop->have_posts() ) : $loop->the_post();
		$product = array(
				"permalink"	 => get_permalink(),
				"thumbnail"  => get_the_post_thumbnail_url(),
				"title"		 => get_the_title(),
				"content"	 => get_the_content()

			);
		$products[] = $product;
    endwhile;

    rest_ensure_response( $products);
 }
