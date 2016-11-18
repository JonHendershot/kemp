<?php 

// Template Name: Home Page	
	
get_header();
setup_postdata( $post );	


// Variables
$page_title = get_field('page_title');
$page_sub_title = get_field('page_sub_title');
$about_title = get_field('about_title');
$about_content = get_field('about_content');
$feat_img = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' )[0];
$contact_img = get_field('contact_background')['url'];


?>
<section class="home-header color-trigger" style="background-image:url(<?php echo $feat_img; ?>);" data-color-key="hidden">
	<h1><?php echo $page_title; ?></h1>
	<p><?php echo $page_sub_title; ?></p>
</section>

<section class="about color-trigger" data-color-key="white">
	<div class="wrapper">
		<h2><?php echo $about_title; ?></h2>
		<p><?php echo $about_content; ?></p>
	</div>
</section>

<section class="services">
	
	<?php get_template_part('template-parts/module-services'); ?>
	
</section>

<section class="home-contact color-trigger" style="background-image:url(<?php echo $contact_img; ?>);" data-color-key="black">
		
		<?php 
			wp_reset_query();
			get_template_part('template-parts/module-contact');
		?>
</section>

<?php get_footer();