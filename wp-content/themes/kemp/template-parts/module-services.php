<?php 
	$args = array(
		'post_type' => 'services',
		'posts_per_page' => -1
	);	
	$ii = 1;
	query_posts( $args );
	while( have_posts() ) : the_post();
	$image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' );
	$line_1 = get_field("line_1");
	$line_2 = get_field("line_2");
	if ($ii % 2 == 0) { $color_key = 'white'; } else { $color_key = 'black'; } 
?>

<div class="color-trigger service <?php echo strtolower( get_the_title() ); if(! $image[0]){ echo ' noclip'; } ?>" style="background-image: url(<?php echo $image[0]; ?>)" data-color-key="<?php echo $color_key; ?>">
	<div class="service-wrapper">
		<h2 class="<?php if($image[0]){ echo "clip-text"; } ?> service-title" <?php if($image[0]){ echo "style='background-image: url(" . $image[0] . ")';"; } ?>> <?php the_title(); ?></h2>
		<div class="<?php if($image[0]){ echo "clip-text"; } ?> service-content" <?php if($image[0]){ echo "style='background-image: url(" . $image[0] . ")';"; } ?>><?php echo $line_1; if($line_2){echo "<br />$line_2"; }?></div>
	</div>
</div>

<?php $ii++; endwhile; ?>