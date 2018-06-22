<?php get_header(); ?>

<?php //Création de la loop d'articles:
//Verification de la presence de contenu:
//on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
?>
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
<div class = "container">
	<h1> GET IN TOUCH</h1>
</div>
	<?php echo do_shortcode('[wpgmza id="1"]');	?>
<div class = "container">
	<hr>
	<div class= "text-center">
		<p>Feel free to contact us as anytime, we are available 24 hours 7 days a week.
		<br/>If you don't get answer, please leave a message and we shall get to you as soon as possible.</p>
	</div>
	<hr>

<?php
	if(have_posts()):
	while(have_posts()):

			the_post();
			the_post_thumbnail();
			the_content();
	endwhile;
	endif;
?>
<hr>

	<div class = "row">
		<div class = "col-sm-3 col-sm-offset-2">
			<strong>Physical address</strong>
			<br/>Pokhara – 16, Shanti Deep. 
			<br/>Kaski District -Nepal
		</div>
		<div class = "col-sm-3 border-left border-right">
			<strong>Phone</strong>
			<br/>+977  61441947
			<br/><strong>Mobile</strong>
			<br/>+977  61441947
		</div>
		<div class = "col-sm-3">
			<strong>Email</strong>
			<br/>info@move-nepal.org
			<br/>khomrajsharma@gmail.com
		</div>
	</div>
	<br/>
	<div class ="row">
		<div class ="jumbotron col-sm-8 col-sm-offset-2">
			<form action="" method="post" enctype="text/plain" id="application-form">

				<div class="card-block">
					<div class="form-group row">
						<div class = "row">
							<div class="col-sm-6 col-sm-offset-3">
								<label class="form-control-label" for="name">First name</label>
								<input class="form-control" type="text" placeholder="Enter your name" id="first-name" name="a-first-name">
							</div>
						</div>
						<br/>
						<div class = "row">
							<div class="col-sm-6 col-sm-offset-3">
								<label class="form-control-label" for="surname">Last name</label>
								<input class="form-control" type="text" placeholder="Enter your surname" id="last-name" name="a-last-name">
							</div>
						</div>
						<br/>
						<div class = "row">
							<div class="col-sm-6 col-sm-offset-3">
								<label class="form-control-label" for="email">Email</label>
								<input class="form-control" type="text" placeholder="Enter your email" id="email" name="a-email">
							</div>
						</div>
						<br/>
						<div class = "row">
							<div class="col-sm-6 col-sm-offset-3">
								<label class="form-control-label" for="describe-text">Subject</label>
								<textarea class="form-control" id="describe-text" name="a-describe-text" placeholder="Subject" rows="4"></textarea>
							</div>
						</div>
					</div>
					<br/>
					<div class = "row">
						<div class="form-group">
							<div class="col-sm-6 col-sm-offset-5">
								<input type="submit" value = "submit" class="btn btn-default btn-info btn-lg" onclick="return validateApplicationForm()">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class= "text-center">
		<p>Move Nepal a venture of IEC Nepal
		<br/>For more information: Media Kit
		</p>
	</div>
</div>


<?php get_footer(); ?>