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
    <div class="home_the_association_title">
        <strong>THE MISSIONS</strong>
    </div>
    <div class="row">
        <div class="col-sm-4 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/coding.png'">
            <p>Developpement</p>
        </div>
        <div class="col-sm-4 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/group.png'">
            <p>Workshop</p>
        </div>
        <div class="col-sm-4 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/video-camera.png'">
            <p>Journalism experience</p>
        </div>
        <div class="col-sm-4 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/open-magazine.png'">
            <p>Teaching at schools</p>
        </div>


    </div>
</div>

<?php get_footer(); ?>
