<?php
get_header(); ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<section  class="wrapper travel-dates">
				<h1 class="default">Travel Dates</h1>
				<?php
		
				while ( have_posts() ) : the_post();
	
					get_template_part( 'template-parts/content', 'travel-dates' );
	
				endwhile; // End of the loop.
				?>
			</section>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php

get_footer();
