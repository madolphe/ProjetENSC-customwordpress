<?php get_header(); ?>

<?php //Création de la loop d'articles:
//Verification de la presence de contenu:
//on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
if(have_posts()):
while(have_posts()):
		the_post();
		the_post_thumbnail();
	    the_title('<h2>','</h2>');
	    the_content();
?>
	<hr>
<?php endwhile;
endif;
?>




<?php get_footer(); ?>
