<?php
	// Template Name: About
	get_header();
	wp_reset_query();
	// Variables
	$content = get_the_content( $post );
	$image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'large' );
	$testimonials = get_field('testimonials');
	$second_img = get_field('testimonial_photo')['url']
?>
<div class="about-container">
	<div class="about-wrapper bio">
		<div class="headshot">
			<img src="<?php echo $image[0]; ?>" />
	<!-- 		<p class="cred">Photo by:</p> -->
		</div>
		<div class="content">
			<div class="wrapper">
				<h2>About</h2>
				<p>
					<?php echo $content; ?>
				</p>
			</div>
		</div>
	</div>
	<div class="about-wrapper testimonials">
		<div class="content">
			<div class="wrapper">
				<h2>Testimonials</h2>
				<p>
					<?php echo $testimonials; ?>
				</p>
			</div>
		</div>
		<div class="headshot">
			<img src="<?php echo $second_img; ?>" />
		</div>
	
	</div>
</div>

<?php
	get_footer();