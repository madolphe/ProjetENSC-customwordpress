<?php
add_action( 'init', 'faqpositions' );

function faqpositions() {
	$labels = array(
		'name'               => _x( 'faqpositions', 'MoveNepal' ),
		'singular_name'      => _x( 'faqpositions', 'MoveNepal' ),
		'menu_name'          => _x( 'faqpositions', 'MoveNepal' ),
		'name_admin_bar'     => _x( 'faqpositions', 'MoveNepal' ),
		'add_new'            => _x( 'Ajouter une hierarchie', 'MoveNepal' ),
		'add_new_item'       => __( 'Ajouter une nouvelle categorie', 'MoveNepal' ),
		'new_item'           => __( 'Nouvelle categorie', 'MoveNepal' ),
		'edit_item'          => __( 'Editer une categorie', 'MoveNepal' ),
		'view_item'          => __( 'Voir la categorie', 'MoveNepal' ),
		'all_items'          => __( 'Toutes les categories', 'MoveNepal' ),
		'search_items'       => __( 'Rechercher dans les categories', 'MoveNepal' ),
		'parent_item_colon'  => __( 'Référence parente:', 'MoveNepal' ),
		'not_found'          => __( 'Aucun categorie trouvée.', 'MoveNepal' ),
		'not_found_in_trash' => __( 'Aucun categorie dans la corbeille.', 'MoveNepal' )
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

	register_post_type( 'faqpositions', $args );
}
?>