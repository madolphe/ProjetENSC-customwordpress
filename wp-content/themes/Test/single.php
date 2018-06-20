<div class="page">
	<!-- on recupere les infos du header -->
	<?php get_header(); ?>

	<h1><a href="<?php bloginfo('url'); ?>"><?php bloginfo('name'); ?></a></h1>
	<?php bloginfo('description'); ?>
	<div class= "post">
		<div class= "post_content">
			<div id="content"> <?php if(have_posts()) : ?>
					<?php while(have_posts()) : the_post(); ?>
						<!-- On recupère l'ID et on fait une div différente pour chaque article-->
						<div class="post" id="post-<?php the_ID(); ?>" >
							<!-- On recupère le lien et le titre pour pouvoir les afficher-->
							<h2><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h2>
							<!-- mais aussi le contenu -->
							<p class="postmetadata">
								<?php the_time('j F Y') ?> par <?php the_author() ?> | Catégorie: <?php the_category(', ') ?>
							</p>
							<div class="post_content">
								<?php the_content(); ?>
								<div class="comments-template"> <?php comments_template(); ?> </div>

							</div>
						</div>
					<?php endwhile;?>
					<?php previous_post_link() ?> <?php next_post_link() ?>
				<?php else : ?> <h2>Oooopppsss...</h2> <p>Désolé, mais vous cherchez quelque chose qui ne se trouve pas ici .</p> <?php include (TEMPLATEPATH . "/searchform.php"); ?>
				<?php endif; ?>

			</div>
		</div>
	</div>
</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>
</body>
</html>
