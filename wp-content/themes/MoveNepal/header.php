<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>MoveNepal</title>
	<?php //On dit à worpress que c'est ici que doivent se print les styles:
	wp_head(); ?>
</head>

<body <?php body_class();?>

<div class="container-fluid">
    <div class="video_row row text-center">
        <video class="video_background" preload="auto" autoplay loop muted  style="background: url(<?php echo bloginfo('template_directory') ;?>/images-videos/BM.mp4) center center no-repeat;">
            <source src=<?php echo bloginfo('template_directory');?>/images/video.mp4 type="video/mp4">
        </video>
        <div id="video-text">
            <div class="titre pol2"><strong>MOVE</strong><span class="pol3">N</span>epal</div>
            <div class="text-middle">
                <span style="font-size:0.3em">We help social project in Nepal </span> <br> <span style="font-size:0.3em"> by sending you there!</span><br>
            </div>
            <div class="fleche">
                <a href="content"><img class="down-arrow" src="<?php echo bloginfo('template_directory');?>/images/down-arrow.png" alt="down_arrow"></a>
            </div>
        </div>
    </div>
</div>

<header>
    <div class="container-fluid navb">

        <div class="row ligne1 text-center">
            <div class="col-sm-3 header_logo">
                <img src="<?php echo bloginfo('template_directory')?>/images/logo4.png">
            </div>
            <div class="col-sm-5"></div>
            <div class="col-sm-2 experience">
                <strong> <?php bloginfo('description')?> </strong>
            </div>
            <div class="col-sm-2 ">
                <button type="button" class="btn apply"> <a href=<?php bloginfo('template_directory') ?>"/page-contact.php"?> <strong>APPLY</strong> <img src="<?php echo bloginfo('template_directory')?>/images/right-arrow.png"></a></button>
            </div>
        </div>

        <div class="row ligne2">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
							<?php  //on choisit d'abord quel theme
							$arg = (array(
								'theme_location'=>'primary',
								'container'=>false,
								'menu_class'=> 'nav navbar-nav navbar-right',
								'walker'=> new Walker_Nav_Primary()
							)
							);
							wp_nav_menu($arg);?>
                        </ul>
                    </div><!-- /.navbar-collapse -->
            </nav>
        </div>

    </div>
    
    <div class="container">
                <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>"><?php bloginfo('name'); ?></a></li>
            <?php 
            $parentID = wp_get_post_parent_id( get_the_ID() );
            while ($parentID){
                ?>
                <li class="breadcrumb-item"><a href="<?php echo get_page_link( $parentID ); ?>"><?php echo get_the_title( $parentID ); ?></a></li>
                <?php
                $parentID = wp_get_post_parent_id( $parentID );
            }
            ?>
            <li class="breadcrumb-item active"><?php echo get_the_title(); ?></li>
        </ol>
    </div>

</header>
