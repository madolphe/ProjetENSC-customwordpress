<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>MoveNepal</title>
	<?php //On dit à worpress que c'est ici que doivent se print les styles:
	wp_head(); ?>
</head>

<body <?php body_class();?>

<header>
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
        </div><!-- /.container-fluid -->
    </nav>

    <!-- il est possible de determiner si on est sur la frontpage ou non avec is_front_page() -->
</header>
