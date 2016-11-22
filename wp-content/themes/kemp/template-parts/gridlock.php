<?php
	


	// Settings :: Used to create number of elements and create a ceiling 
	$category_name = ( isset($_GET['spcn']) ) ? $_GET['spcn'] : 'published';
	$category = ( isset($_GET['spcn']) ) ? get_cat_ID( $category_name ) : '-' . get_cat_ID( $category_name );
	$args = array(
		'post_type' => 'portfolio',
		'posts_per_page' => -1,
		'orderby' => 'menu_order',
		'cat' => $category
	);
	$query = new WP_Query( $args );
	$post_num = $query->found_posts; // Number of Elements 
	$iterations = $post_num; // Max Number
	
	// Preparation :: Setup Grid Numbers to ensure the last row is full [used for evaluation in Display Logic]
	$grid_lock = array(
		"grid_a" => array(
				"key" => "norm",
				"values" => array() 
			),
		"grid_b" => array(
				"key" => "alt",
				"values" => array() 
			),
		"grid_c" => array(
				"key" => "alt-inv",
				"values" => array() 
			),
		"grid_d" => array(
				"key" => "r-1",
				"values" => array() 
			),
		"grid_e" => array(
				"key" => "r-2",
				"values" => array()
		)
	);
	
	// Evaluation :: Push in to arrays
	for($nn = 5; $nn <= $iterations; $nn++){
		if($nn % 3 == 0){ // is divisible by 3
			$grid_lock["grid_a"]["values"][] = $nn;
		} else if($nn % 5 == 0 || $nn % 5 === 3){
			$grid_lock["grid_b"]["values"][] = $nn;
		} else if($nn % 5 == 2){
			$grid_lock["grid_c"]["values"][] = $nn;
		} else if($nn % 3 == 1){
			$grid_lock["grid_d"]["values"][] = $nn;
		} else if($nn % 3 == 2){
			$grid_lock["grid_e"]["values"][] = $nn;
		} else { // catchall
			$grid_lock["grid_f"]["values"][] = $nn;
		}
	}

// Display Arrays
/*
	echo "<pre>";
	print_r($grid_lock);
	echo "</pre>";
*/
	
	// Display Logic :: Check post count in arrays and setup class
	foreach($grid_lock as $set){
		if(in_array($post_num, $set["values"])){
			$display_class = $set["key"];
		}
	}
	
	// Begin Loop
	$ii = 1;
	if( $query->have_posts() ) : while( $query->have_posts() ) : $query->the_post(); 
		
		
	$subtitle = get_field('photo_information');	
	$thumb = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'large' );
	$image_large = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' );
	$framing = get_field('framing');
	
	?>
		<div class="grid-item <?php echo "$display_class item-$ii"; ?> lightbox-trigger photo" data-light='{"url": "<?php echo $image_large[0]; ?>", "title" : "<?php echo get_the_title(); ?>", "subtitle" : "<?php echo $subtitle; ?>", "item_number": "<?php echo $ii; ?>" }'>
			<div class="grid-content <?php echo $framing; ?>" style="background-image: url(<?php echo $thumb[0]; ?>);">
				<div class="wrapper">
					<div class="grid-overlay"></div>
					<div class="grid-text">
						<div class="content-wrapper">
							<h2><?php the_title(); ?></h2>
							<?php if($subtitle){ echo "<p class='subtitle'>$subtitle</p>"; } ?>
						</div>
					</div>
				</div>
			</div>
		</div>	 
	
	<?php $ii++; endwhile; wp_reset_postdata(); endif; ?> <!-- end loop -->
