<?php get_header(); ?>

<?php //Création de la loop d'articles:
//Verification de la presence de contenu:
//on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
?>
<div class = "container">
	<h2 class="pagetitle">Get in touch</h2>
</div>
	<?php echo do_shortcode('[gmap-embed id="282"]');	?>
<div class = "container">
<?php
	if(have_posts()):
	while(have_posts()):
			the_post();
			the_post_thumbnail();
			the_content();
	endwhile;
	endif;
?>
	<?php 
	$contact = get_posts(array(
		'post_type' => 'contact',
		'posts_per_page' => -1, //posts illimités
	));
	?>
	<div class="row text-center">
	<?php
	if ($contact){
		foreach ($contact as $post){
			//On créée des objets avec les QR
			setup_postdata($post);
			//taille de la liste ie nombre de catégorie
			?>
			<br/>
			<div class = "col-xs-3 col-sm-offset-2 col-xs-offset-1"><strong>Physical adress</strong><br/><?php the_field('physical_adress'); ?></div>
			<div class = "col-xs-3 contact"><strong>Phone</strong><br/><?php the_field('phone'); ?><br/><strong>Mobile</strong><br/><?php the_field('mobile'); ?><br/></div>
			<div class = "col-xs-3"><strong>E-mail</strong><br/><?php the_field('e-mail'); ?></div><?php
		}
	}
	?>
	</div>
	<br/>
	<div class = "row">
		<div class= "jumbotron col-sm-8 col-sm-offset-2 col-xs-8 col-xs-offset-2">
			<?php include('contactForm.php') ?>
		</div>
	</div>
	<div>
		<p class= "text-center">Move Nepal a venture of IEC Nepal
		<br/>For more information: Media Kit
		</p>
	</div>
</div>


<?php get_footer(); ?>