<?php get_header(); ?>

<div class="row">
	
	<div class="col-md-12">
	
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
</div>


<?php 

$pageID = get_the_ID();
$topID = wp_get_post_parent_id( $pageID ) ? wp_get_post_parent_id( $pageID ) : $pageID;
$subPages = get_pages('child_of=' . $topID);

if ( have_posts() ) : the_post();
	?>

	

	<div class="row" id="page-content">

		<div class="col-md-12">

				<?php include 'ApplyForm.php';?>

		</div>

	</div>

	<?php
endif; 
?>

<div class="row">
	<div class="col-sm-5 offset-sm-1">
		<?php previous_link(); ?>
		<?php next_link(); ?>
	</div>
</div>

<?php get_footer(); ?>