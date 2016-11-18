<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package plate
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<?php if( is_front_page() ){echo '<div class="menu-scope"></div>';} ?>
<div id="page" class="site">
<header class="<?php if( ! is_front_page() ){ echo 'static-nav';} ?> menu-header">
			<div class="nav-bar nav-white">
				<a href="<?php echo get_home_url(); ?>">
					<div class="site-logo">
						<span class="letter">k</span>
					</div>
				</a>
				<div class="menu-trigger">
					<span class="letter">m</span>
					<?php get_template_part('template-parts/module-menu-trigger'); ?>
				</div>
			</div>
			<div class="nav-bar nav-black">
				<a href="<?php echo get_home_url(); ?>">
					<div class="site-logo">
						<span class="letter">k</span>
					</div>
				</a>
				<div class="menu-trigger">
					<span class="letter">m</span>
					<?php get_template_part('template-parts/module-menu-trigger'); ?>
				</div>
			</div>
			<div class="menu-container">
				<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
			</div>
		</header>
		<?php if(is_post_type_archive('portfolio')){
			get_template_part('template-parts/module-lightbox');
			$categories = get_categories( array('parent'=>2) );

		echo'	<div class="toolbox">
				<div class="filter tool-container">
					<i class="fa fa-filter"></i>
					<ul class="filter-items tool">
						<li>
							<a href="' . get_home_url() . '/portfolio">All</a>
						</li>';
						
					foreach($categories as $cat){
						
						echo "
						<li>
							<a href='" . get_home_url() . "/portfolio/?spcn=$cat->name'>" . $cat->name . "</a>
						</li>
						";
					}
	echo '
					</ul>
				</div>
				<div class="search tool-container">
					<i class="fa fa-search"></i>
					<div class="search-wrapper tool">';
						get_search_form();
	echo			'</div>
				</div>
			</div>';
		}
				
		?>
	<div id="content" class="site-content">
		<!-- 		<div class="main-content-wrapper"> -->
