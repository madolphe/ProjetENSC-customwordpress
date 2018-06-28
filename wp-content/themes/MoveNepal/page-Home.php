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
        <div class="col-sm-2"></div>
        <div class="col-sm-2 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/coding.png'">
            <div class="p">Developpement</div>
        </div>
        <div class="col-sm-2 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/group.png'">
            <div class="p"> Workshop</div>
        </div>
        <div class="col-sm-2 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/video-camera.png'">
            <div class="p">Journalism experience</div>
        </div>
        <div class="col-sm-2 home_missions">
            <img class="home_logo" src="<?php bloginfo('template_directory')?>'/images/open-magazine.png'">
            <div class="p">Teaching at schools</div>
        </div>



    </div>
</div>

<?php get_footer(); ?>
