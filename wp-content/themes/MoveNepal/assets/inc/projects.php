<?php
add_action( 'init', 'projects' );

function projects() {
    $labels = array(
        'name'               => _x( 'projets', 'MoveNepal' ),
        'singular_name'      => _x( 'project', 'MoveNepal' ),
        'menu_name'          => _x( 'Projects', 'MoveNepal' ),
        'name_admin_bar'     => _x( 'projects', 'MoveNepal' ),
        'add_new'            => _x( 'Ajouter un projet', 'MoveNepal' ),
        'add_new_item'       => __( 'Ajouter un projet', 'MoveNepal' ),
        'new_item'           => __( 'Nouveau projet', 'MoveNepal' ),
        'edit_item'          => __( 'Editer un projet', 'MoveNepal' ),
        'view_item'          => __( 'Voir le projet', 'MoveNepal' ),
        'all_items'          => __( 'Tous les projets', 'MoveNepal' ),
        'search_items'       => __( 'Rechercher dans projets', 'MoveNepal' ),
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
        'rewrite'            => array( 'slug' => 'projects' ),
        'capability_type'    => 'post',
        'has_archive'        => true,
        'hierarchical'       => false,
        'menu_position'      => 29,
        'supports'           => array( 'title', 'thumbnail'),
    );

    register_post_type( 'projects', $args );
}
?>