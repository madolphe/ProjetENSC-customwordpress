<!-- page d'exemple que nous n'utiliserons certainement pas mais le mieux serait d'uitiliser l'ID unique de la page -->
<?php get_header(); ?>

<?php //Création de la loop d'articles:
//Verification de la presence de contenu:
//on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
if(have_posts()):
	while(have_posts()){
		the_post();?>

		<?php the_content(); ?>
		<h2><?php the_title(); ?> </h2>

		<hr>
	<?php }
endif;
?>

<?php get_footer(); ?>i