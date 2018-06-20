		<footer>
			<div class="row">
                <div class="col-sm-3 border-right">
                    <div class="container-fluid">
                        <div class="row">
                            <img src=<?php bloginfo('template_directory')?>/images/logo4.png" alt="logo">
                        </div>
                        <div class="row">

                        </div>
                    </div>
                </div>
                <div class="col-sm-3 border-right"> j </div>
                <div class="col-sm-3 border-right"> <?php  //on choisit d'abord quel theme
					wp_nav_menu(array('theme_location'=>'secondary')); ?></div>
                <div class="col-sm-3"><?php bloginfo('name');?> <br> <?php bloginfo('admin_email');?></div>
            </div>
		</footer>
        </div> <!-- .container -->
        <?php //zone d'écriture des scripts JS
		 wp_footer() ?>
	</body>
</html>

