<?php
/**
 * kemp functions and definitions.
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package kemp
 */

if ( ! function_exists( 'kemp_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function kemp_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on kemp, use a find and replace
	 * to change 'kemp' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'kemp', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary', 'kemp' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'kemp_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );
}
endif;
add_action( 'after_setup_theme', 'kemp_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function kemp_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'kemp_content_width', 640 );
}
add_action( 'after_setup_theme', 'kemp_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function kemp_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'kemp' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'kemp' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'kemp_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function kemp_scripts() {
	wp_enqueue_style( 'kemp-style', get_stylesheet_uri() );
	wp_enqueue_style('kemp-main', get_template_directory_uri() . '/scss/main.css');
	wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/font_awesome/css/font-awesome.min.css' );


	wp_enqueue_script( 'kemp-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'kemp-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );
	wp_enqueue_script( 'kemp-main-js', get_template_directory_uri() . '/js/kemp.js', 'jquery', '1', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'kemp_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';
/**
 * Load theme options file.
 */
require get_template_directory() . '/theme_options.php';

// *************************************************************** //
// ******* ADD FEATURED IMAGE THUMBNAIL TO POST TYPE MENU ******** //
// *************************************************************** //

// GET FEATURED IMAGE
function kemp_get_featured_image($post_ID) {
    $post_thumbnail_id = get_post_thumbnail_id($post_ID);
    if ($post_thumbnail_id) {
        $post_thumbnail_img = wp_get_attachment_image_src($post_thumbnail_id, 'thumbnail');
        return $post_thumbnail_img[0];
    }
}

// ADD NEW COLUMN
function kemp_columns_head($defaults) {
    $defaults['featured_image'] = 'Featured Image';
    return $defaults;
}
 
// SHOW THE FEATURED IMAGE
function kemp_columns_content($column_name, $post_ID) {
    if ($column_name == 'featured_image') {
        $post_featured_image = kemp_get_featured_image($post_ID);
        if ($post_featured_image) {
            echo '<img height="50px" width="auto" style="margin-left: 20px;" src="' . $post_featured_image . '" />';
        }
    }
}

add_filter('manage_posts_columns', 'kemp_columns_head');
add_action('manage_posts_custom_column', 'kemp_columns_content', 10, 2);

// *************************************************************** //
// ******* END ADD FEATURED IMAGE THUMBNAIL TO POST TYPE  ******** //
// *************************************************************** //