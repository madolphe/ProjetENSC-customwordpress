
<div class="container-fluid">
    <footer>

        <?php //Création de la loop d'articles:
        //Verification de la presence de contenu:
        //on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
        if(have_posts()):
        while(have_posts()){
        ?>

        <?php
        the_post();
        // Get 'valeurs' posts
        $footer = get_posts(array(
            'post_type' => 'Footer',
            'posts_per_page' => -1, //posts illimités
        ));
        ?>


        <?php
        if ($footer){ ?>

            <?php
            foreach ( $footer as $post){
                setup_postdata($post);
                ?>
                <div class="row container2">


                    <div class="col-md-3 col-lg-3 col-xs-3 border-right footer_div">
                        <div class="footer_logo" >
                            <img src="<?php echo get_field('logo')['url']; ?>">
                        </div>
                        <div class="footer_police adress">
                            <?php echo get_field('adress')?>
                        </div>
                    </div>


                    <div class="col-md-3 col-lg-3 col-xs-3 footer_center border-right footer_div">

                        <div class="footer_police">
                            <strong><?php echo get_field('title_1') ;?></strong>
                        </div>
                        <div class="footer_police contain">
                            <?php echo get_field('container_title_1') ;?>
                        </div>

                        <div class="footer_police">
                            <strong><?php echo get_field('title_2') ;?></strong>
                        </div>
                        <div class="footer_police" >
                            <a href="http://betterplace.org"><img src="<?php echo get_field('link_1')['url']; ?>"></a>
                        </div>
                        <div class="footer_police logo2">
                            <a href="http://iec.org"><img src="<?php echo get_field('link_2')['url']; ?>"></a>
                        </div>

                    </div>
                    <div class="col-md-3 col-lg-3 col-xs-3  border-right footer_div">
                        <div class="div_3"><?php wp_nav_menu(array('theme_location'=>'secondary')); ?> </div>
                    </div>

                    <div class="col-md-3 col-lg-3 col-xs-3 footer_div div_4 footer_center">
                        <div class="footer_police"><a href="mailto:info@move-nepal.org"> <?php echo get_field('email') ;?> </a> </div>
                        <div class="footer_police"><a href="tel:+97761441947"><?php echo get_field('phone') ;?></a></div>
                        <div class="footer_police" href="betterplace.org"><a href="http://facebook.com">
                                <img src="<?php echo get_field('logo_facebook')['url']; ?>"></a>
                        </div>
                    </div>


                </div>

                <?php
            }
        }
        ?>
</div>
</div>
<?php }
endif;
?>
</footer>
</div>


<?php //zone d'écriture des scripts JS
wp_footer() ?>
</body>
</html>