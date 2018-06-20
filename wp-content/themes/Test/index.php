	<!-- on recupere les infos du header -->


    <?php get_header(); ?>
    <div class="container-fluid">
        <div class="video_row row text-center">
			<?php include "video-acceuil.php"?>
            <div id="video-text">
                <div class="titre pol2"><strong>MOVE</strong><span class="pol3">N</span>epal</div>
                <div class="text-middle">
                    <span style="font-size:0.3em">We help social project in Nepal </span> <br> <span style="font-size:0.3em"> by sending you there!</span><br>
                </div>
                <div class="fleche">
                    <a href="content"><img class="down-arrow" src="<?php echo bloginfo('template_directory');?>/images-videos/down-arrow.png" alt="down_arrow"></a>
                </div>
            </div>
        </div>
<!-- </div> -->
        <div class="row">
            <?php include('navbar.php');?>
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
										<?php the_time('j F Y') ?> par <?php the_author() ?> | Catégorie: <?php the_category(', ') ?> | <?php comments_popup_link('Pas de commentaires', '1 Commentaire', '% Commentaires'); ?> <?php edit_post_link('Editer', ' &#124; ', ''); ?>
                                    </p>
                                    <div class="post_content">
										<?php the_content(); ?>
                                    </div>
                                </div>
							<?php endwhile;?>
                            <div class="navigation"> <?php posts_nav_link(' - ','page suivante','page pr&eacute;c&eacute;dente'); ?> </div>
						<?php else : ?> <h2>Oooopppsss...</h2> <p>Désolé, mais vous cherchez quelque chose qui ne se trouve pas ici .</p> <?php include (TEMPLATEPATH . "/searchform.php"); ?>
						<?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
		<?php get_sidebar(); ?>
		<?php get_footer(); ?>
        </div>

</div>

    </body>
</html>
