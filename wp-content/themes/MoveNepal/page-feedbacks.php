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
<div class="row">
	
	<div class="col-md-12">
	
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>"><?php bloginfo('name'); ?></a></li>
			<?php 
			$parentID = wp_get_post_parent_id( get_the_ID() );
			while ($parentID){
				?>
				<li class="breadcrumb-item"><a href="<?php echo get_page_link( $parentID ); ?>"><?php echo get_the_title( $parentID ); ?></a></li>
				<?php
				$parentID = wp_get_post_parent_id( $parentID );
			}
			?>
			<li class="breadcrumb-item active"><?php echo get_the_title(); ?></li>
		</ol>
		
	</div>
</div>
<?php echo do_shortcode('[timeline-express]'); ?>



<?php get_footer(); ?>
