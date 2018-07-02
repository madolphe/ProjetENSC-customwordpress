<?php
add_action( 'init', 'faqposition' );

function faqposition() {
	$labels = array(
		'name'               => _x( 'faqposition', 'MoveNepal' ),
		'singular_name'      => _x( 'faqposition', 'MoveNepal' ),
		'menu_name'          => _x( 'faqposition', 'MoveNepal' ),
		'name_admin_bar'     => _x( 'faqposition', 'MoveNepal' ),
		'add_new'            => _x( 'Add a hierarchy', 'MoveNepal' ),
		'add_new_item'       => __( 'Add a new item', 'MoveNepal' ),
		'new_item'           => __( 'New category', 'MoveNepal' ),
		'edit_item'          => __( 'Edit category', 'MoveNepal' ),
		'view_item'          => __( 'See category', 'MoveNepal' ),
		'all_items'          => __( 'All categories', 'MoveNepal' ),
		'search_items'       => __( 'Search in category', 'MoveNepal' ),
		'parent_item_colon'  => __( 'Parent item:', 'MoveNepal' ),
		'not_found'          => __( 'No category found', 'MoveNepal' ),
		'not_found_in_trash' => __( 'No category found in the trash.', 'MoveNepal' )
	);

	$args = array(
		'labels'             => $labels,
		'description'        => __( 'description', 'MoveNepal' ),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'faqpositions' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => 29,
		'supports'           => array( 'title', 'thumbnail'),
		'menu_icon'          => 'dashicons-share-alt'
	);

	register_post_type( 'faqposition', $args );
}
?>