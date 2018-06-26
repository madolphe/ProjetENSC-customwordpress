<?php
add_action( 'init', 'contact' );

function contact() {
	$labels = array(
		'name'               => _x( 'contacts', 'MoveNepal' ),
		'singular_name'      => _x( 'contact', 'MoveNepal' ),
		'menu_name'          => _x( 'contacts', 'MoveNepal' ),
		'name_admin_bar'     => _x( 'contacts', 'MoveNepal' ),
		'add_new'            => _x( 'Ajouter un contact', 'MoveNepal' ),
		'add_new_item'       => __( 'Ajouter un contact', 'MoveNepal' ),
		'new_item'           => __( 'Nouveau contact', 'MoveNepal' ),
		'edit_item'          => __( 'Editer un contact', 'MoveNepal' ),
		'view_item'          => __( 'Voir le contact', 'MoveNepal' ),
		'all_items'          => __( 'Tous les contacts', 'MoveNepal' ),
		'search_items'       => __( 'Rechercher dans contact', 'MoveNepal' ),
		'parent_item_colon'  => __( 'Référence parente:', 'MoveNepal' ),
		'not_found'          => __( 'Aucun contact trouvé.', 'MoveNepal' ),
		'not_found_in_trash' => __( 'Aucun contact dans la corbeille.', 'MoveNepal' )
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