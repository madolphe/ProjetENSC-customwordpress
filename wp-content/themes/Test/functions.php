<?php  wp_deregister_script('jquery');
wp_register_script('jquery','http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js', false, '');
wp_enqueue_script('jquery');?>

<!-- register_sidebar prend en argument le nombre de colonnes de la sidebar -->
<?php if ( function_exists('register_sidebar') ) register_sidebar(); ?>

<?php
function theme_styles() {

wp_enqueue_style( 'main_css', get_template_directory_uri() . '/style.css' );
}

add_action( 'wp_enqueue_scripts', 'theme_styles');

function theme_boot_styles(){

	wp_enqueue_style( 'bootstrap_css', get_template_directory_uri() . '/css/bootstrap.min.css' );
}

add_action( 'wp_enqueue_scripts', 'theme_boot_styles');

function theme_js() {
	global $wp_scripts;
	wp_enqueue_script( 'my_custom_js', get_template_directory_uri() . '/js/script.js');
}
add_action( 'wp_enqueue_scripts', 'theme_js');


?>

<?php register_nav_menus( array(
'primary' => __( 'Primary Menu', 'Test' ),
) );
?>

<?php show_admin_bar( false ); ?>
