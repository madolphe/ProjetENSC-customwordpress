<?php get_header();
$pageID = get_the_ID();
$topID = wp_get_post_parent_id( $pageID ) ? wp_get_post_parent_id( $pageID ) : $pageID;
$subPages = get_pages('child_of=' . $topID);

if ( have_posts() ) : the_post();
	?>
			<div class="container">
								<?php include 'ApplyForm.php';?>

	<?php
endif; 
?>
<div class="row">
	<div class="col-sm-5 offset-sm-1">
		<?php previous_link(); ?>
		<?php next_link(); ?>
	</div>
</div>
			</div>

<?php get_footer(); ?>