<?php 
/*
Plugin Name: Infinity Scroll Plugin
Description: Custom Plugin For Vcerasni Novosti. Infinity scroll on posts.
Author: Tom Vancev
*/

add_action( 'wp_enqueue_scripts', 'infiniteCustomQuery');

function infiniteCustomQuery(){

	if(get_post_type() != 'post'){
		return;
	}

	global $wpdb;

	// Check if should exclude this page from scroll
	$excluded_cat = 18;
	$catArr = get_the_category();

	// Jas sum tuka za sekoj slucaj
	if(!is_array($catArr) OR empty($catArr)){
		return;
	}

	// Check if current page should be excluded from initiation of infinity script 
	$shouldNotExclude = array_map(function ($a) { return $a->term_id; }, $catArr);
	$shouldNotExclude = in_array($excluded_cat,$shouldNotExclude);

	if($shouldNotExclude){
		return;
	}
		
		$currId = get_the_ID();

		//SQL LOGIC

		// SQL joins ( 2nd join of term taxonomy is needed only in the case of more than 1 taxonomy but imo should stay in any case)
		$sqlJoin = "SELECT CONCAT((SELECT `option_value` FROM `{$wpdb->prefix}options` WHERE `option_name` = 'siteurl'),'/', p.post_name) as \"permalink\" FROM {$wpdb->prefix}posts AS p 
				JOIN {$wpdb->prefix}term_relationships AS tr ON tr.object_id=p.ID 
				JOIN {$wpdb->prefix}term_taxonomy AS tt ON tt.term_taxonomy_id = tr.term_taxonomy_id \n";
		// The base where clause
		$where = "WHERE tt.term_id <> {$excluded_cat}
				AND p.post_type = 'post' 
				AND p.post_status='publish'
				AND p.ID <> {$currId} ";
		// The base query		
		$sqlTemp = $sqlJoin . $where;

		// initializing string vars
		$sql = '';		
		$excludePrevCat ='';
		$otherCategoriesWhere ='';

		// "sort by category" sql logic
		foreach ($catArr as $currCatObject) {
			$currCat = $currCatObject->term_id;
			$whereCurr = "AND tt.term_id = {$currCat} \n ";
			$sql .= $sqlTemp . $whereCurr . $excludePrevCat . "\n UNION \n";
			$excludePrevCat .= "AND tt.term_id <> {$currCat} ";
			$otherCategoriesWhere .= "AND tt.term_id <> {$currCat} ";
		}
		// finalize query
		$sql .= $sqlTemp . $otherCategoriesWhere;

		// Query database
		
		$results = $wpdb->get_results( $sql );

		// Load Scripts to page and pass in sql results to script
		wp_register_script('infinityScroll', plugin_dir_url( __FILE__ ) . 'infinity-scroll-script.js', array('jquery'), '1.0', true);
		wp_localize_script('infinityScroll', 'infinityObject', $results);
		wp_enqueue_script('infinityScroll');
}