<?php

/*
==================
	Ajout des scripts:
==================
*/

//Création d'une fonction pour inclure les fichiers style et script:
//Bien veiller à prendre un nom unique!

function movenepal_script_enqueue(){
	//(nom, chemin absolu, nombre de dependance, version, tous les supports
	wp_enqueue_style('bootsrap',get_template_directory_uri().'/css/bootstrap.min.css',array(),'3.3.7','all');
	wp_enqueue_style('customstyle',get_template_directory_uri().'/css/movenepal.css',array(),'1.0.0','all');
	//on fait de même avec les scripts JS - le bool a la fin permet de dire ou est print le script
	wp_enqueue_script('bootsrapjs',get_template_directory_uri().'/js/bootstrap.min.js',array(),'3.3.7',true);
	wp_enqueue_script('customjs',get_template_directory_uri().'/js/movenepal.js',array(),'1.0.0',true);
	wp_enqueue_script('jquery');

}
//Quand wordpress génére tous les scripts on ajoute la fonction precedente
add_action('wp_enqueue_scripts','movenepal_script_enqueue');



/*
==================
	Ajout de la personnalisation du menu:
==================
*/
function movenepal_theme_setup(){
	//on rajoute la personnalisation du menu mais d'autres param existent
	add_theme_support('menus');

	//nouveau menu: (nom unique du menu, description)
	register_nav_menu('primary','Primary Menu used for Nav');

	//menu 2, le footer: (nom unique du menu, description)
	register_nav_menu('secondary','Secondary Menu used for footer');
}
//moment 'init'
add_action('init','movenepal_theme_setup');

add_theme_support('custom-background');
add_theme_support('custom-header');
add_theme_support('custom-thumbnails');



/*
==================
	Inclure Walker
==================
*/

require get_template_directory().'/inc/walker.php';
?>
