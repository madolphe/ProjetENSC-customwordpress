<?php
add_action( 'init', 'projects' );

function projects() {
    $labels = array(
        'Image'               => _x( 'image', 'MoveNepal' ),
        'Resume'               => _x( 'resume', 'MoveNepal' ),
        'Accomodation'               => _x( 'accomodation', 'MoveNepal' ),
        'Skills'               => _x( 'skills', 'MoveNepal' ),
        'Program Start'               => _x( 'program_start', 'MoveNepal' ),
        'Program Duration'               => _x( 'program_duration', 'MoveNepal' ),
        'Who can apply'               => _x( 'who_can_apply', 'MoveNepal' ),

    );

    $args = array(
        'labels'             => $labels,
        'description'        => __( 'projects', 'MoveNepal' ),
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