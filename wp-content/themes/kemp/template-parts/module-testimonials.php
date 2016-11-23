<div class="testimonials-wrapper">
<?php
	
 	// Variables
 	
	$args = array(
		'post_type' => 'testimonials',
		'posts_per_page' => -1,
		'orderby' => 'menu_order',
	);
	$query = new WP_Query( $args );
	$post_num = $query->found_posts; // number of testimonials
	$tt = 1;
	while($query->have_posts()) : $query->the_post(); // begin loop
	$visible = ($tt === 1) ? 'active' : '';  // if first iteration add active class to testimonial
?>
	<figure class="<?php echo "testimonial test-$tt $visible"; ?>" data-id="<?php echo $tt; ?>">
		<blockquote>
			<p>"<?php echo get_the_content(); ?>"</p>
		</blockquote>
		<figcaption class="source">- <?php echo get_the_title(); ?></figcaption>
	</figure>
<?php $tt++; endwhile;  ?>
<div class="tabs">
	<?php for($ii = 1; $ii <= $post_num; $ii++){
		$active = ($ii === 1) ? 'active' : '';
		echo "<div class='tab tab-$ii $active' data-id='test-$ii'></div>";
	}
	?>
</div>

</div>

