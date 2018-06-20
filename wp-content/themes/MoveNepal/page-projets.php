<!-- page d'exemple que nous n'utiliserons certainement pas mais le mieux serait d'uitiliser l'ID unique de la page -->
<?php get_header(); ?>

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
            'posts_per_page' => -1, //posts illimités
            'orderby' => 'title', //classer par ordre alphabetique
        ));
        ?>
        <?php
        if ($projects_posts){
            foreach ( $projects_posts as $post){
                setup_postdata($post);
                ?>
                <p><?php the_title()?></p>
                <p><?php the_field('resume') ?></p>
                <?php
            }
        }
        ?>
        <hr>
    <?php }
endif;
?>

<?php get_footer(); ?>