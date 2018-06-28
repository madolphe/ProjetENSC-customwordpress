<!-- page d'exemple que nous n'utiliserons certainement pas mais le mieux serait d'uitiliser l'ID unique de la page -->
<?php get_header(); ?>

<body>

<div class="row titre">
    <div class="col-sm-1"></div>
    <div class="col-sm-6">
    <h1><strong>GET INVOLVED AND PROJECTS </strong></h1>
    </div>
</div>



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
</body>

