<?php
	
	$fi_url = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' );
	$title = get_the_title();
	$getlength = strlen($title);
	$title_length = 50;
	$the_title = substr($title, 0, $title_length);


	
	?>
<div class="archive-post">
	<a class="post-thumb-container" href="<?php the_permalink(); ?>">
		<div class="post-thumb" style="background-image: url(<?php echo $fi_url[0]; ?>)">
			<div></div>
		</div>
	</a>
	<div class="archive-post-content">
		<a href="<?php the_permalink(); ?>">
			<h1><?php echo $the_title; if ($getlength > $title_length) echo "...";
 ?></h1>
		</a>
		<div class="entry-meta">
			<span class="post-meta"><?php the_time(get_option('date_format')); ?> by <?php the_author_posts_link(); ?></span>
		</div><!-- .entry-meta -->
		<p class="post-excerpt"><?php echo substr(get_the_content(), 0, 750) . '[...]'; ?></p>
		<div class="archive-content-footer">
			<a href="<?php the_permalink(); ?>" class="main-btn">Read More</a>
			<span class="number-comments"><?php comments_number( 'No Comments Yet', '1 Comment', '% Comments' ); ?></span>
		</div>
	</div>
</div>
