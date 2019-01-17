<?php
/**
 * Storefront engine room
 *
 * @package storefront
 */

/**
 * Assign the Storefront version to a var
 */
$theme              = wp_get_theme( 'storefront' );
$storefront_version = $theme['Version'];

/**
 * Set the content width based on the theme's design and stylesheet.
 */
if ( ! isset( $content_width ) ) {
	$content_width = 980; /* pixels */
}

$storefront = (object) array(
	'version' => $storefront_version,

	/**
	 * Initialize all the things.
	 */
	'main'       => require 'inc/class-storefront.php',
	'customizer' => require 'inc/customizer/class-storefront-customizer.php',
);

require 'inc/storefront-functions.php';
require 'inc/storefront-template-hooks.php';
require 'inc/storefront-template-functions.php';

if ( class_exists( 'Jetpack' ) ) {
	$storefront->jetpack = require 'inc/jetpack/class-storefront-jetpack.php';
}

if ( storefront_is_woocommerce_activated() ) {
	$storefront->woocommerce = require 'inc/woocommerce/class-storefront-woocommerce.php';

	require 'inc/woocommerce/storefront-woocommerce-template-hooks.php';
	require 'inc/woocommerce/storefront-woocommerce-template-functions.php';
}

if ( is_admin() ) {
	$storefront->admin = require 'inc/admin/class-storefront-admin.php';

	require 'inc/admin/class-storefront-plugin-install.php';
}

/**
 * NUX
 * Only load if wp version is 4.7.3 or above because of this issue;
 * https://core.trac.wordpress.org/ticket/39610?cversion=1&cnum_hist=2
 */
if ( version_compare( get_bloginfo( 'version' ), '4.7.3', '>=' ) && ( is_admin() || is_customize_preview() ) ) {
	require 'inc/nux/class-storefront-nux-admin.php';
	require 'inc/nux/class-storefront-nux-guided-tour.php';

	if ( defined( 'WC_VERSION' ) && version_compare( WC_VERSION, '3.0.0', '>=' ) ) {
		require 'inc/nux/class-storefront-nux-starter-content.php';
	}
}

/**
 * Note: Do not add any custom code here. Please use a custom plugin so that your customizations aren't lost during updates.
 * https://github.com/woocommerce/theme-customisations
 */



add_filter('get_next_post_where', 'remove_categorey_from_adjacent_post_where', 10, 5);
add_filter('get_previous_post_where', 'remove_categorey_from_adjacent_post_where', 10, 5);

function remove_categorey_from_adjacent_post_where($where, $in_same_term, $excluded_terms, $taxonomy, $post)
{
	global $wpdb;
	$excluded_cat = 18;
	$currentCat = get_the_category();
	$currentCat = array_map(function ($a) { return $a->term_id; }, $currentCat);
	$currentCat = in_array($excluded_cat,$currentCat);

	if(!$result){
		$where .= " AND ID NOT IN (
                       SELECT p.ID FROM wp_posts AS p 
                       JOIN wp_term_relationships AS tr ON tr.object_id=p.ID 
                       JOIN wp_term_taxonomy AS tt ON tt.term_taxonomy_id = tr.term_taxonomy_id 
                       WHERE tt.term_id= $excluded_cat )";
	}
	return $where;

}


add_action( 'wp_enqueue_scripts', 'infiniteCustomQuery1');

function infiniteCustomQuery1(){

if(get_post_type() != 'post'){
	return;
}

	global $wpdb;

	// Check if should exclude this page from scroll
	$excluded_cats = array(18,27);
	$catArr = get_the_category();

	// Jas sum tuka za sekoj slucaj
	if(!is_array($catArr) OR empty($catArr)){
		return;
	}

	// Check if current page should be excluded from initiation of infinity script 
	$shouldExclude = array_map(function ($a) { return $a->term_id; }, $catArr);
	$shouldExclude = count($excluded_cats) != count(array_diff($excluded_cats,$shouldExclude));

	if($shouldExclude){
		return;
	}
		
		$currId = get_the_ID();

		//SQL LOGIC

		// The base where clause
		$where = "WHERE p.post_type = 'post' 
				AND p.post_status='publish'
				AND p.ID <> {$currId} ";

		//exclude categories		
		foreach ($excluded_cats  as $excluded_cat) {
			$where .= "AND tt.term_id <> {$excluded_cat} \n";
		}

		// initializing string vars
		$sql = '';		
		$excludePrevCat ='';
		$otherCategoriesWhere ='';

		// "group by category and sort bt ID desc" sql logic
		$groupNo = 1;
		foreach ($catArr as $currCatObject) {

		// SQL joins ( 2nd join of term taxonomy is needed only in the case of more than 1 taxonomy but imo should stay in any case)
			$sqlJoin = "SELECT p.ID as \"ID\" , CONCAT((SELECT `option_value` FROM `{$wpdb->prefix}options` WHERE `option_name` = 'siteurl'),'/', p.post_name) as \"permalink\" , {$groupNo} as \"groupNo\" FROM {$wpdb->prefix}posts AS p 
				JOIN {$wpdb->prefix}term_relationships AS tr ON tr.object_id=p.ID 
				JOIN {$wpdb->prefix}term_taxonomy AS tt ON tt.term_taxonomy_id = tr.term_taxonomy_id \n";
				$groupNo++;
		// The base query		
			$sqlTemp = $sqlJoin . $where;


			$currCat = $currCatObject->term_id;
			$whereCurr = "AND tt.term_id = {$currCat} ";
			$sql .= $sqlTemp . $whereCurr . $excludePrevCat . "\n UNION \n";
			$excludePrevCat .= "AND tt.term_id <> {$currCat} ";
			$otherCategoriesWhere .= "AND tt.term_id <> {$currCat} ";
		}
		// finalize query
		$orderBy = "ORDER BY groupNo ASC, ID desc ";
		$sql .= $sqlTemp . $otherCategoriesWhere . $orderBy;
		$finalSQL = "SELECT DISTINCT d.permalink from (" .$sql .") as d"; 
		// Query database
		
		$results = $wpdb->get_results( $finalSQL );

		// Load Scripts to page and pass in sql results to script
		wp_enqueue_script('infiniteScript', get_stylesheet_directory_uri() . '/infiniteScript.js', array('jquery'), '1.0', false);
		wp_localize_script( 'infiniteScript', 'infinityObject', $results );



		echo '<pre>';
		if(!$shouldExclude)
		print_r($finalSQL);
		echo "\n";
		print_r($shouldExclude);
		echo '</pre>';

}





	// echo $currentCat;
	// $sql = "SELECT CONCAT((SELECT `option_value` FROM `{$wpdb->prefix}options` WHERE `option_name` = 'siteurl'),'/', p.post_name) as \"permalink\" FROM {$wpdb->prefix}posts AS p 
	// 		JOIN {$wpdb->prefix}term_relationships AS tr ON tr.object_id=p.ID 
	// 		JOIN {$wpdb->prefix}term_taxonomy AS tt ON tt.term_taxonomy_id = tr.term_taxonomy_id 
	// 		WHERE tt.term_id <> {$excluded_cat} 
	// 		AND p.post_type = 'post' 
	// 		AND p.post_status='publish'
	// 		AND p.ID <> {$currId}
	// 		AND tt.term_id = {$currentCat} 
	// 		UNION
	// 		SELECT CONCAT((SELECT `option_value` FROM `{$wpdb->prefix}options` WHERE `option_name` = 'siteurl'),'/', p.post_name) as \"permalink\" FROM {$wpdb->prefix}posts AS p 
	// 		JOIN {$wpdb->prefix}term_relationships AS tr ON tr.object_id=p.ID 
	// 		JOIN {$wpdb->prefix}term_taxonomy AS tt ON tt.term_taxonomy_id = tr.term_taxonomy_id 
	// 		WHERE tr.term_taxonomy_id <> {$excluded_cat} 
	// 		AND p.post_type = 'post' 
	// 		AND p.post_status='publish'
	// 		AND p.ID <> {$currId} 
	// 		AND tt.term_id <> {$currentCat} ";



	// $results1 = get_the_permalink( 0, $leavename = false );
	// $results1 = home_url('/category-3-3/');
	// wp_localize_script( 'infiniteScript', 'infinityObject1', $currentCat );





// add_action( 'template_redirect', 'functiontoaddforexample' );

// function functiontoaddforexample(){

// 	$result = get_the_category();
// 	$result = array_map(function ($a) { return $a->term_id; }, $result);
// 	$result = in_array(17,$result);
// 	echo '<pre>';
// 	print_r($result);
// 	echo '</pre>';
 

// }

