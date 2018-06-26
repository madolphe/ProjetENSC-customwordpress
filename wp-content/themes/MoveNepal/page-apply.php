<?php get_header(); ?>

<?php //Création de la loop d'articles:
//Verification de la presence de contenu:
//on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
if(have_posts()):
while(have_posts()):
		the_post();
<<<<<<< HEAD
	    //the_title('<h2 class="titre">','</h2 class="titre">');
	    $Bigtitle=strtoupper(get_the_title());
	    echo "<h2 class='\pagetitle\'>".$Bigtitle;
	    echo "</h2>";
=======
	    the_title('<div class="container"><h2>','</h2></div>');
>>>>>>> e41c5b6872cf99a67d18a797819d1a948d6b2a06
	    the_content();
	?>
	<hr>
	<?php endwhile;
	endif;
	$pageID = get_the_ID();
	$topID = wp_get_post_parent_id( $pageID ) ? wp_get_post_parent_id( $pageID ) : $pageID;
	$subPages = get_pages('child_of=' . $topID);
		?>
		<div class="container shadow_container">
			<?php include 'ApplyForm.php';?>
		<div class="row">
			<div class="col-sm-5 offset-sm-1">
				<?php previous_link(); ?>
				<?php next_link(); ?>
			</div>
		</div>
	</div>

<?php get_footer(); ?>