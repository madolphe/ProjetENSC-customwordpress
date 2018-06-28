<?php
add_action( 'init', 'footer' );

function footer() {
    $labels = array(
        'name'               => _x( 'footer', 'MoveNepal' ),
        'singular_name'      => _x( 'footer', 'MoveNepal' ),
        'menu_name'          => _x( 'Footer', 'MoveNepal' ),
        'name_admin_bar'     => _x( 'Footers', 'MoveNepal' ),
        'add_new'            => _x( 'Ajouter un footer', 'MoveNepal' ),
        'add_new_item'       => __( 'Ajouter un footer', 'MoveNepal' ),
        'new_item'           => __( 'Nouveau footer', 'MoveNepal' ),
        'edit_item'          => __( 'Editer un footer', 'MoveNepal' ),
        'view_item'          => __( 'Voir le footer', 'MoveNepal' ),
        'all_items'          => __( 'Tous les footer', 'MoveNepal' ),
        'search_items'       => __( 'Rechercher dans footer', 'MoveNepal' ),
        'parent_item_colon'  => __( 'Référence parente:', 'MoveNepal' ),
        'not_found'          => __( 'Aucun projet trouvé.', 'MoveNepal' ),
        'not_found_in_trash' => __( 'Aucun projet dans la corbeille.', 'MoveNepal' )
    );

    $args = array(
        'labels'             => $labels,
        'description'        => __( 'description', 'MoveNepal' ),
        'public'             => true,
        'publicly_queryable' => true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'query_var'          => true,
        'rewrite'            => array( 'slug' => 'footer' ),
        'capability_type'    => 'post',
        'has_archive'        => true,
        'hierarchical'       => false,
        'menu_position'      => 29,
        'supports'           => array( 'title', 'thumbnail'),
    );

    register_post_type( 'footer', $args );
}
?>