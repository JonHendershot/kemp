<div class="contact-wrapper">
	<h2>Contact</h2>
	<ul class="socials">
		<li class="social fb">
			<a href="http://www.facebook.com/jonathanhkemp">
				<span class="social-text">facebook</span>
				<i class="fa fa-facebook"></i>
			</a>
		</li>
		<li class="divider">
			|
		</li>
		<li class="social tw">
			<a href="http://www.twitter.com/jonathanhkemp">
				<span class="social-text">twitter</span>
				<i class="fa fa-twitter"></i>
			</a>
		</li>
		<li class="divider">
			|
		</li>
		<li class="social insta">
			<a href="http://www.instagram.com/jonathankemp">
				<span class="social-text">instagram</span>
				<i class="fa fa-instagram"></i>
			</a>
			
		</li>
		<li class="divider">
			|
		</li>
		<li class="social linked">
			<a href="http://jonathankemp.tumblr.com">
				<span class="social-text">tumblr</span>
				<i class="fa fa-tumblr"></i>
			</a>
		</li>
	</ul>
	<div class="contact-form">
	
	<?php
			$form_code = get_field('form_shortcode');
			echo do_shortcode( $form_code );
	?>
	</div>
</div>