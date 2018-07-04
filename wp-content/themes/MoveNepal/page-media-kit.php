<?php get_header(); ?>

<?php //Création de la loop d'articles:
//Verification de la presence de contenu:
//on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
if(have_posts()):
while(have_posts()):
		the_post();
	    the_title('<h2 class="pagetitle container">','</h2>');
?>
<?php endwhile;
endif;
$thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'full' );
?>

<?php include_once( 'banniere.php' );?>
<div class="container">
<?php 	    the_content(); ?>
<p> Click here <a href="<?php echo bloginfo('template_directory')?>/images/mediakit.png" download> to download our flyer</a></p>
</div>


<?php get_footer(); ?>
