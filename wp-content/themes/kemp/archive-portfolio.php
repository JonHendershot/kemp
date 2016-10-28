<?php
	
	get_header();
	echo '<div class="portfolio-container">
			<div class="gridlock-container portfolio">';
				get_template_part( 'template-parts/gridlock' );
	echo '</div></div>';
	echo '<div class="lightbox image-container">
			<div class="lightbox-content">		
				<div class="image-wrapper">
					<div class="prev-arrow arrow">
						<i class="fa fa-chevron-left"></i>
					</div>
					<img src="" class="lightbox-img" />
					<div class="next-arrow arrow">
						<i class="fa fa-chevron-right"></i>
					</div>
				</div>
			</div>
		</div>';
	get_footer();