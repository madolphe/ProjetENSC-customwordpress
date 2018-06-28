<?php get_header(); ?>

<div class="container home_the_association ">
    <div class="home_the_association_title pagetitle">
            <strong>THE ASSOCIATION</strong>
    </div>

            <?php

            $content = get_post_field( 'post_content', 13 );

            // Get content parts
            $content_parts = get_extended( $content );
            ?>
    <div class="home_content">
            <?php
                // Output part before <!--more--> tag
            echo $content_parts['main'];
            ?>
    </div>
    <div class="Read_More"> <a href=<?php bloginfo('template_directory')?>"/the-association/"> Read More </a></div>
</div>
<div class="container home_the_mission">
    <div class="home_the_association_title pagetitle">
        <strong>THE MISSIONS</strong>
    </div>
    <div class="row">
        <div class="col-sm-3 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/coding.png'">
            <div class="p">Developpement</div>
        </div>
        <div class="col-sm-3 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/group.png'">
            <div class="p"> Workshop</div>
        </div>
        <div class="col-sm-3 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/video-camera.png'">
            <div class="p">Journalism experience</div>
        </div>
        <div class="col-sm-3 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/open-magazine.png'">
            <div class="p">Teaching at schools</div>
        </div>
    </div>
</div>

<div class="container feedbacks">
    <div class="home_the_association_title pagetitle">
        <strong>FEEDBACKS</strong>
    </div>
    <div class="row">

        <?php //Création de la loop d'articles:
        //Verification de la presence de contenu:
        //on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
        if(have_posts()):
            while(have_posts()){
                ?>

                <?php
                the_post();
                // Get 'valeurs' posts
                $projects_posts = get_posts(array(
                    'post_type' => 'projects',
                    'posts_per_page' => 3, //posts illimités
                    'orderby' => 'title', //classer par ordre alphabetique
                ));
                ?>
                <div class="container">
                    <div class="row">


                        <?php
                        if ($projects_posts){ ?>

                            <?php
                            foreach ( $projects_posts as $post){
                                setup_postdata($post);

                                ?>


                                <div class ="col-sm-4">


                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-9">

                                        <div class="row" >
                                            <div class="boite text-center">
                                                <a  href="<?php echo get_permalink(); ?>">
                                                    <div class="square"  style="background-image: url('<?php echo get_field('image')['url']; ?>')"></div>
                                                    <div class="caption">
                                                        <p class="titre_projects"><?php the_title();?></p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-1"></div>

                                </div>


                                <?php
                            }
                        }
                        ?>
                        <hr>
                    </div>
                </div>
            <?php }
        endif;
        ?>


    </div>
    <div class="Read_More"> <a href=<?php bloginfo('template_directory')?>"/projets/"> See More </a></div>

</div>

<div class="container home_apply">
    <div class="home_ready"><strong>Ready to go ?</strong></div>
    <div class="home_apply_btn ">
        <button type="button" class="btn apply"> <a href=<?php bloginfo('template_directory') ?>"the-volunteers/apply"?> <strong>APPLY</strong> <img src="<?php echo bloginfo('template_directory')?>/images/right-arrow.png"></a></button>
    </div>
</div>

<?php get_footer(); ?>
