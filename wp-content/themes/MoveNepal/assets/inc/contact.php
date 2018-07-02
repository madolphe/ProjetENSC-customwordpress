<?php
add_action( 'init', 'contact' );

function contact() {
	$labels = array(
		'name'               => _x( 'contacts', 'MoveNepal' ),
		'singular_name'      => _x( 'contact', 'MoveNepal' ),
		'menu_name'          => _x( 'contacts', 'MoveNepal' ),
		'name_admin_bar'     => _x( 'contacts', 'MoveNepal' ),
		'add_new'            => _x( 'Add a contact', 'MoveNepal' ),
		'add_new_item'       => __( 'Add a contact', 'MoveNepal' ),
		'new_item'           => __( 'New contact', 'MoveNepal' ),
		'edit_item'          => __( 'Edit a contact', 'MoveNepal' ),
		'view_item'          => __( 'See the contact', 'MoveNepal' ),
		'all_items'          => __( 'All contacts', 'MoveNepal' ),
		'search_items'       => __( 'Search in contact', 'MoveNepal' ),
		'parent_item_colon'  => __( 'Parent item:', 'MoveNepal' ),
		'not_found'          => __( 'No contact found.', 'MoveNepal' ),
		'not_found_in_trash' => __( 'No contact found in trash.', 'MoveNepal' )
	);

	$args = array(
		'labels'             => $labels,
		'description'        => __( 'description', 'MoveNepal' ),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'contacts' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => 29,
		'supports'           => array( 'title', 'thumbnail'),
	);

	register_post_type( 'contact', $args );
}
?>