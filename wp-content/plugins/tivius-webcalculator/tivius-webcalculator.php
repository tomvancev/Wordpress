<?php 

/*
Plugin Name: Tivius Web Calculator
Description: Calculator for wooden pellet heating systems.
Version: 1.0
Author: Tom Vancev
*/


add_action( 'rest_api_init', 'add_web_calc_api');

function add_web_calc_api(){
	register_rest_route( 'webcalc/v1', '/index', 
		array(	'methods' 	=> 'POST',
			  	'callback'	=> 'web_calc_get_products'	
			  ), $override = false );
}

function web_calc_get_products($request){
	$name = $request['name'];
	$email = $request['email'];
	$tel = $request['tel'];
	$metres = (float)$request['metres'];
	$cm = (float)$request['cm'];
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
 
    return rest_ensure_response( $products );
}

add_action('wp_enqueue_scripts', 'enqueue_calculator_scripts');

function enqueue_calculator_scripts() {
	wp_enqueue_script( 'knockoutjs', plugin_dir_url( __FILE__ ) . 'knockout.min.js', array('jquery'),  false, true );
	wp_enqueue_script( 'bootstrapjs', plugin_dir_url( __FILE__ ) . 'bootstrap.min.js', array('jquery'),  false, true );
	wp_enqueue_script( 'calcscripts', plugin_dir_url( __FILE__ ) . 'scripts.js', array('jquery', 'knockoutjs', 'bootstrapjs'),  false, true );
	wp_enqueue_style( 'calcstyles', plugin_dir_url( __FILE__ ) . 'style.css');
	wp_enqueue_style( 'bootstrapcss', plugin_dir_url( __FILE__ ) . 'bootstrap.min.css');
	 

	 if ( is_page('calculator2') ) {
	wp_enqueue_script( 'calcscripts2', plugin_dir_url( __FILE__ ) . '/assets/bundle.js', array('jquery'),  false, true );
	wp_enqueue_style( 'calcstyles2', plugin_dir_url( __FILE__ ) . 'styles.css');
	}


}





add_action('template_redirect','calculator_page');
function calculator_page(){
 if ( is_page('calculator') ) {
   add_filter('the_content','web_calculator');
 }
 if ( is_page('calculator2') ) {
   add_filter('the_content','web_calculator2');
 }
}
function web_calculator2($content){
	$content = '<div id="app"></div>';
	return $content;
}

function web_calculator($content){

	$content = '<div class="row"><div class="web-calc col-lg-8"> <input class="web-calc-input form-control" type="text" placeholder="Your Name" id="calc-name"> <input class="web-calc-input form-control" type="email" placeholder="Your Email" id="calc-email"> <input class="web-calc-input form-control" type="tel" placeholder="Your Telephone" id="calc-tel"> <input class="web-calc-input form-control" type="text" placeholder="Povrsina m2" id="calc-m2"> <input class="web-calc-input form-control" type="text" placeholder="Visina u cm" id="calc-cm"><select name="debelina" id="debelina" class="form-control web-calc-select"><option value="71.77">0 cm</option><option value="52.26">5 cm</option><option value="50.87">6 cm</option><option value="49.76">7 cm</option><option value="49.76">8 cm</option><option value="47.41">10 cm</option><option value="45.21">15 cm</option> </select> <button id="submit" class="web-calc-button">Submit</button></div></div><div id="results"><div class="list-group" data-bind="foreach: suggestedProducts"> <a href="#" class="calc-list-item" data-bind="attr: {href: permalink }" ><div class="row"><div class="media col-md-3"> <figure class="pull-left"> <img class="media-object img-rounded img-responsive" src="http://placehold.it/350x250" alt="placehold.it/350x250" data-bind="attr: {src: thumbnail }" > </figure></div><div class="col-md-8"><h4 class="list-group-item-heading" data-bind="text: title"> List group heading</h4><p class="list-group-item-text" data-bind="text: content"> Qui diam libris ei, vidisse incorrupte at mel. His euismod salutandi dissentiunt eu. Habeo offendit ea mea.</p></div></div> </a></div></div>';
	
	return $content;
}

# UNMINIFIED HTML CODE
/*  
	<div class="row">
		
		<div class="web-calc col-lg-8">
			
			<input class="web-calc-input form-control" type="text" placeholder="Your Name" id="calc-name">
			<input class="web-calc-input form-control" type="email" placeholder="Your Email" id="calc-email">
			<input class="web-calc-input form-control" type="tel" placeholder="Your Telephone" id="calc-tel">
			<input class="web-calc-input form-control" type="text" placeholder="Povrsina m2" id="calc-m2">
			<input class="web-calc-input form-control" type="text" placeholder="Visina u cm" id="calc-cm">

			<select name="debelina" id="debelina" class="form-control web-calc-select">
				<option value="71.77">0 cm</option>
				<option value="52.26">5 cm</option>
				<option value="50.87">6 cm</option>
				<option value="49.76">7 cm</option>
				<option value="49.76">8 cm</option>
				<option value="47.41">10 cm</option>
				<option value="45.21">15 cm</option>
			</select>
			<button id="submit" class="web-calc-button">Submit</button>
		</div>	
	</div>
		

	<div id="results">
		<div class="list-group" data-bind="foreach: suggestedProducts">
			<a href="#" class="calc-list-item" data-bind="attr: {href: permalink }" >
				<div class="row">

		                <div class="media col-md-3">
		                    <figure class="pull-left">
		                        <img class="media-object img-rounded img-responsive"  src="http://placehold.it/350x250" alt="placehold.it/350x250" data-bind="attr: {src: thumbnail }" >
		                    </figure>
		                </div>
		                <div class="col-md-8">
		                    <h4 class="list-group-item-heading" data-bind="text: title"> List group heading </h4>
		                    <p class="list-group-item-text" data-bind="text: content"> Qui diam libris ei, vidisse incorrupte at mel. His euismod salutandi dissentiunt eu. Habeo offendit ea mea. Nostro blandit sea ea, viris timeam molestiae an has. At nisl platonem eum. 
		                        Vel et nonumy gubergren, ad has tota facilis probatus. Ea legere legimus tibique cum, sale tantas vim ea, eu vivendo expetendis vim. Voluptua vituperatoribus et mel, ius no elitr deserunt mediocrem. Mea facilisi torquatos ad.
		                    </p>
		                </div>
				</div>
			</a>
		</div>
	</div>

	*/