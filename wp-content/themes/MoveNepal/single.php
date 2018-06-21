<!-- page d'exemple que nous n'utiliserons certainement pas mais le mieux serait d'uitiliser l'ID unique de la page -->
<?php get_header(); ?>

<div class="row titre">
    <div class="col-sm-1"></div>
    <div class="col-sm-11">
        <h1><strong><?php the_title();?>  </strong></h1>
    </div>
</div>
<?php



get_field('image');
?>

<div class="container">
    <p><?php echo get_field('resume'); ?></p>
</div>



<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <div class="logo">
               <img src="<?php echo bloginfo('template_directory')?>/images/bed.png">
            </div>
            <div>
                <strong class="sous-titre"> ACCOMODATION: </strong>
            </div>
            <div>
            <p><?php echo get_field('accomodation'); ?></p>
            </div>
        </div>


        <div class="col-sm-6">
            <div class="logo">
                <img src="<?php echo bloginfo('template_directory')?>/images/tools.png">
            </div>
            <div>
                <strong class="sous-titre"> REQUIRED SKILLS / CHALLENGES: </strong>
            </div>
            <div>
                <p><?php echo get_field('skills'); ?></p>
            </div>


        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <div class="logo">
                <img src="<?php echo bloginfo('template_directory')?>/images/clock.png">
            </div>
            <div>
                <strong class="sous-titre"> PROGRAM START:  </strong>
            </div>
            <div>
                <p><?php echo get_field('start'); ?></p>
            </div>
        </div>


        <div class="col-sm-4">
            <div class="logo">
                <img src="<?php echo bloginfo('template_directory')?>/images/alarm-clock.png">
            </div>
            <div>
                <strong class="sous-titre"> PROGRAM DURATION: </strong>
            </div>
            <div>
                <p><?php echo get_field('duration'); ?></p>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="logo">
                <img src="<?php echo bloginfo('template_directory')?>/images/cv.png">
            </div>
            <div>
                <strong class="sous-titre"> WHO CAN APPLY: </strong>
            </div>
            <div>
                <p><?php echo get_field('apply'); ?></p>
            </div>
        </div>
    </div>
</div>