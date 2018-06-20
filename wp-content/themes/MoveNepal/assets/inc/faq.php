<?php
add_action( 'init', 'faqs' );

function faq() {
	$labels = array(
		'name'               => _x( 'faqs', 'MoveNepal' ),
		'singular_name'      => _x( 'faq', 'MoveNepal' ),
		'menu_name'          => _x( 'faqs', 'MoveNepal' ),
		'name_admin_bar'     => _x( 'faqs', 'MoveNepal' ),
		'add_new'            => _x( 'Ajouter un faq', 'MoveNepal' ),
		'add_new_item'       => __( 'Ajouter un faq', 'MoveNepal' ),
		'new_item'           => __( 'Nouveau faq', 'MoveNepal' ),
		'edit_item'          => __( 'Editer un faq', 'MoveNepal' ),
		'view_item'          => __( 'Voir le faq', 'MoveNepal' ),
		'all_items'          => __( 'Tous les faq', 'MoveNepal' ),
		'search_items'       => __( 'Rechercher dans faq', 'MoveNepal' ),
		'parent_item_colon'  => __( 'Référence parente:', 'MoveNepal' ),
		'not_found'          => __( 'Aucun faq trouvé.', 'MoveNepal' ),
		'not_found_in_trash' => __( 'Aucun faq dans la corbeille.', 'MoveNepal' )
	);

	$args = array(
		'labels'             => $labels,
		'description'        => __( 'description', 'MoveNepal' ),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'faqs' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => 29,
		'supports'           => array( 'title', 'thumbnail'),
		'menu_icon'          => 'dashicons-share-alt'
	);

	register_post_type( 'faqs', $args );
}
?>