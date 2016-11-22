<?php
/**
 * Template part for displaying page content in page.php.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package plate
 */

?>

<article id="post-<?php the_ID(); ?>" class="default-post">
	<header class="entry-header">
		<?php the_title( '<h2 class="travel-set">', '</h2>' ); ?>
	</header><!-- .entry-header -->

	<div class="entry-content">
		<?php
			the_content();
		?>
	</div><!-- .entry-content -->

</article><!-- #post-## -->
