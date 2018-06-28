<?php get_header(); ?>

<div class="home_the_association">
    <div class="home_the_association_title">
            <?php echo get_the_title( 13 ); ?>
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
</div>

<?php get_footer(); ?>
