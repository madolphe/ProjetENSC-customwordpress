<?php get_header(); ?>

<?php //Création de la loop d'articles:
//Verification de la presence de contenu:
//on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
if(have_posts()):
while(have_posts()):
		the_post();
	    the_title('<h2>','</h2>');
	    the_content();
?>
	<hr>
<?php endwhile;
endif;
$thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'full' );
?>

<?php include_once( 'banniere.php' );?>





<?php get_footer(); ?>
