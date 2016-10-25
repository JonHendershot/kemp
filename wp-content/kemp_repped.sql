-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2016 at 10:53 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kemp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-09-16 23:02:21', '2016-09-16 23:02:21', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://brushedredmedia.com', 'yes'),
(2, 'home', 'http://brushedredmedia.com', 'yes'),
(3, 'blogname', 'Jonathan Kemp', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jon@wearethelife.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:102:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"services/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"services/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"services/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"services/([^/]+)/embed/?$";s:41:"index.php?services=$matches[1]&embed=true";s:29:"services/([^/]+)/trackback/?$";s:35:"index.php?services=$matches[1]&tb=1";s:37:"services/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?services=$matches[1]&paged=$matches[2]";s:44:"services/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?services=$matches[1]&cpage=$matches[2]";s:33:"services/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?services=$matches[1]&page=$matches[2]";s:25:"services/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"services/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"services/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kemp', 'yes'),
(41, 'stylesheet', 'kemp', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '38', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1477436541;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1477436550;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1477437646;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1477428153;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(109, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1477428158;s:7:"checked";a:1:{s:4:"kemp";s:5:"1.0.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(110, 'auth_key', 'v$f.oa-orC>>h6GJ)p`[6 yDknU[m{*U~yQ]~]>MDC0YERhx_b`$dw8/pIe7dAjr', 'no'),
(111, 'auth_salt', 'I(?SVVn_)h!:U*m]FD|i_R%KABv4-JH%P~d):Y|P3h{A%isA3qF2?5(YZksmhFNA', 'no'),
(112, 'logged_in_key', '7)%R%CY<%Q^=MsFUUq<QRph$%*..b$y8z h|YsKquDo^.Qp5e[p_c *(#D{Kg|i>', 'no'),
(113, 'logged_in_salt', 'Qm~],;8<% 9_phLWqzpCc?pkgYp$MC{S{_kv3%dF1yLCD5,-vv{~qQJ#Og+`Z]2)', 'no'),
(114, 'nonce_key', '#jP-_WRu`ChRoKuqB!X7ssv7n^JYtDZq}b.1QgEc<%`WY=-%R1R4+oy`L=_G=ugg', 'no'),
(115, 'nonce_salt', 'KgSd v(sVxVXxx-dI5&}czFmy1pdL$.0P1?wMM&OT~p7/(V{PMvNBcoB=U a.D`f', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(122, 'recently_activated', 'a:0:{}', 'yes'),
(125, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.5";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1474066979;s:7:"version";s:3:"4.5";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(126, 'acf_version', '4.4.8', 'yes'),
(130, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1474068084;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(131, 'current_theme', 'kemp', 'yes'),
(132, 'theme_mods_kemp', 'a:1:{i:0;b:0;}', 'yes'),
(133, 'theme_switched', '', 'yes'),
(134, 'cptui_post_types', 'a:1:{s:8:"services";a:28:{s:4:"name";s:8:"services";s:5:"label";s:8:"Services";s:14:"singular_label";s:7:"Service";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(177, '_site_transient_timeout_browser_17d0401aa4a685cc53c7630bda935353', '1477341593', 'no'),
(178, '_site_transient_browser_17d0401aa4a685cc53c7630bda935353', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.143";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(191, '_transient_timeout_plugin_slugs', '1476823210', 'no'),
(192, '_transient_plugin_slugs', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";}', 'no'),
(209, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1476844428', 'no'),
(210, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: cURL error 6: Couldn''t resolve host ''wordpress.org''</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: cURL error 6: Couldn''t resolve host ''planet.wordpress.org''</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(220, '_transient_is_multi_author', '0', 'yes'),
(253, '_site_transient_timeout_theme_roots', '1477429955', 'no'),
(254, '_site_transient_theme_roots', 'a:1:{s:4:"kemp";s:7:"/themes";}', 'no'),
(255, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1477428157;s:8:"response";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":8:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";s:6:"tested";s:5:"4.7.0";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":8:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.5.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.5.1.zip";s:6:"tested";s:5:"4.6.1";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":8:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.4.3";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.4.3.zip";s:6:"tested";s:5:"4.6.1";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_form', '[text* your-name placeholder "Name"]\n[email* your-email placeholder "Email"]\n[text* your-website placeholder "Website"]\n[text your-subject placeholder "Subject"]\n[textarea your-message placeholder "Message"] \n[submit "Send"]'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:30:"Jonathan Kemp "[your-subject]"";s:6:"sender";s:34:"[your-name] <jon@wearethelife.com>";s:4:"body";s:177:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Jonathan Kemp (http://brushedredmedia.com)";s:9:"recipient";s:20:"jon@wearethelife.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"Jonathan Kemp "[your-subject]"";s:6:"sender";s:36:"Jonathan Kemp <jon@wearethelife.com>";s:4:"body";s:119:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Jonathan Kemp (http://brushedredmedia.com)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:30:"Reply-To: jon@wearethelife.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 4, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(11, 6, '_edit_last', '1'),
(12, 6, '_edit_lock', '1476744505:1'),
(13, 6, '_wp_page_template', 'templates/template_home.php'),
(14, 8, '_edit_last', '1'),
(15, 8, '_edit_lock', '1474074100:1'),
(16, 9, '_edit_last', '1'),
(17, 9, '_edit_lock', '1474069729:1'),
(18, 10, '_wp_attached_file', '2016/09/04.05.16-Minneapolis-MN-1.jpg'),
(19, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:1666;s:4:"file";s:37:"2016/09/04.05.16-Minneapolis-MN-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"04.05.16-Minneapolis-MN-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"04.05.16-Minneapolis-MN-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"04.05.16-Minneapolis-MN-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"04.05.16-Minneapolis-MN-1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(20, 11, '_wp_attached_file', '2016/09/norm-2.jpg'),
(21, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:1833;s:4:"file";s:18:"2016/09/norm-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"norm-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"norm-2-300x220.jpg";s:5:"width";i:300;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"norm-2-768x563.jpg";s:5:"width";i:768;s:6:"height";i:563;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"norm-2-1024x751.jpg";s:5:"width";i:1024;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 12, '_wp_attached_file', '2016/09/norm.jpg'),
(23, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:1841;s:4:"file";s:16:"2016/09/norm.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"norm-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"norm-300x221.jpg";s:5:"width";i:300;s:6:"height";i:221;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"norm-768x566.jpg";s:5:"width";i:768;s:6:"height";i:566;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"norm-1024x754.jpg";s:5:"width";i:1024;s:6:"height";i:754;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(24, 9, '_thumbnail_id', '10'),
(25, 13, '_edit_last', '1'),
(26, 13, '_edit_lock', '1474073208:1'),
(27, 13, '_thumbnail_id', '11'),
(28, 14, '_edit_last', '1'),
(29, 14, '_edit_lock', '1474073010:1'),
(30, 14, '_thumbnail_id', '12'),
(40, 18, '_wp_attached_file', '2016/09/05.15.16-Portland-OR-38.jpg'),
(41, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5358;s:6:"height";i:3572;s:4:"file";s:35:"2016/09/05.15.16-Portland-OR-38.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"05.15.16-Portland-OR-38-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"05.15.16-Portland-OR-38-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"05.15.16-Portland-OR-38-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"05.15.16-Portland-OR-38-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1463331141";s:9:"copyright";s:21:"© 2015 Jonathan Kemp";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0025";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(43, 19, '_edit_last', '1'),
(44, 19, 'field_57dc968d00b1d', 'a:14:{s:3:"key";s:19:"field_57dc968d00b1d";s:5:"label";s:10:"Page Title";s:4:"name";s:10:"page_title";s:4:"type";s:4:"text";s:12:"instructions";s:21:"Top title on the page";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(45, 19, 'field_57dc969b00b1e', 'a:14:{s:3:"key";s:19:"field_57dc969b00b1e";s:5:"label";s:14:"Page Sub Title";s:4:"name";s:14:"page_sub_title";s:4:"type";s:4:"text";s:12:"instructions";s:25:"Text under the page title";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(46, 19, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:27:"templates/template_home.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(47, 19, 'position', 'acf_after_title'),
(48, 19, 'layout', 'default'),
(49, 19, 'hide_on_screen', 'a:2:{i:0;s:11:"the_content";i:1;s:7:"excerpt";}'),
(50, 19, '_edit_lock', '1474074164:1'),
(51, 20, '_edit_last', '1'),
(52, 20, 'field_57dc96d54fac4', 'a:14:{s:3:"key";s:19:"field_57dc96d54fac4";s:5:"label";s:11:"About Title";s:4:"name";s:11:"about_title";s:4:"type";s:4:"text";s:12:"instructions";s:39:"Section under header photo on home page";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(53, 20, 'field_57dc97094fac6', 'a:13:{s:3:"key";s:19:"field_57dc97094fac6";s:5:"label";s:13:"About Content";s:4:"name";s:13:"about_content";s:4:"type";s:8:"textarea";s:12:"instructions";s:25:"Content under about title";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:3:"250";s:4:"rows";s:1:"6";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(55, 20, 'position', 'normal'),
(56, 20, 'layout', 'default'),
(57, 20, 'hide_on_screen', 'a:2:{i:0;s:11:"the_content";i:1;s:7:"excerpt";}'),
(58, 20, '_edit_lock', '1476737823:1'),
(59, 21, '_wp_attached_file', '2016/09/garret_header.jpg'),
(60, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:2076;s:4:"file";s:25:"2016/09/garret_header.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"garret_header-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"garret_header-300x249.jpg";s:5:"width";i:300;s:6:"height";i:249;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"garret_header-768x638.jpg";s:5:"width";i:768;s:6:"height";i:638;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"garret_header-1024x850.jpg";s:5:"width";i:1024;s:6:"height";i:850;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 6, '_thumbnail_id', '21'),
(62, 22, 'page_title', 'Jonathan Kemp'),
(63, 22, '_page_title', 'field_57dc968d00b1d'),
(64, 22, 'page_sub_title', 'HERE’S SOME SHIT I’LL DO FOR YOU'),
(65, 22, '_page_sub_title', 'field_57dc969b00b1e'),
(66, 22, 'about_title', 'content is king'),
(67, 22, '_about_title', 'field_57dc96d54fac4'),
(68, 22, 'about_content', 'LOREM IPSUM AND SOME OTHER SHIT ABOUT HOW WHAT YOU’RE OFFERING TO THESE ARTISTS IS A BRANDED LOOK AND FEEL AND STUFF. EXPLAIN YOURSELF A LITTLE BIT HERE AND LET THEM KNOW THAT HAVING ONE DUDE DOING ALL THE VISUALS FOR THEIR TOUR WILL GO A LONG WAY!'),
(69, 22, '_about_content', 'field_57dc97094fac6'),
(70, 6, 'page_title', 'Jonathan Kemp'),
(71, 6, '_page_title', 'field_57dc968d00b1d'),
(72, 6, 'page_sub_title', 'HERE’S SOME SHIT I’LL DO FOR YOU'),
(73, 6, '_page_sub_title', 'field_57dc969b00b1e'),
(74, 6, 'about_title', 'content is king'),
(75, 6, '_about_title', 'field_57dc96d54fac4'),
(76, 6, 'about_content', 'LOREM IPSUM AND SOME OTHER SHIT ABOUT HOW WHAT YOU’RE OFFERING TO THESE ARTISTS IS A BRANDED LOOK AND FEEL AND STUFF. EXPLAIN YOURSELF A LITTLE BIT HERE AND LET THEM KNOW THAT HAVING ONE DUDE DOING ALL THE VISUALS FOR THEIR TOUR WILL GO A LONG WAY!'),
(77, 6, '_about_content', 'field_57dc97094fac6'),
(78, 20, 'field_580539506b913', 'a:11:{s:3:"key";s:19:"field_580539506b913";s:5:"label";s:18:"Contact Background";s:4:"name";s:18:"contact_background";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(79, 20, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:27:"templates/template_home.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(80, 24, '_wp_attached_file', '2016/09/contact_bg.jpg'),
(81, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:1666;s:4:"file";s:22:"2016/09/contact_bg.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"contact_bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"contact_bg-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"contact_bg-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"contact_bg-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(82, 25, 'page_title', 'Jonathan Kemp'),
(83, 25, '_page_title', 'field_57dc968d00b1d'),
(84, 25, 'page_sub_title', 'HERE’S SOME SHIT I’LL DO FOR YOU'),
(85, 25, '_page_sub_title', 'field_57dc969b00b1e'),
(86, 25, 'about_title', 'content is king'),
(87, 25, '_about_title', 'field_57dc96d54fac4'),
(88, 25, 'about_content', 'LOREM IPSUM AND SOME OTHER SHIT ABOUT HOW WHAT YOU’RE OFFERING TO THESE ARTISTS IS A BRANDED LOOK AND FEEL AND STUFF. EXPLAIN YOURSELF A LITTLE BIT HERE AND LET THEM KNOW THAT HAVING ONE DUDE DOING ALL THE VISUALS FOR THEIR TOUR WILL GO A LONG WAY!'),
(89, 25, '_about_content', 'field_57dc97094fac6'),
(90, 25, 'contact_background', '24'),
(91, 25, '_contact_background', 'field_580539506b913'),
(92, 6, 'contact_background', '24'),
(93, 6, '_contact_background', 'field_580539506b913'),
(94, 26, '_edit_last', '1'),
(95, 26, 'field_58053bb8dfb98', 'a:14:{s:3:"key";s:19:"field_58053bb8dfb98";s:5:"label";s:14:"Form Shortcode";s:4:"name";s:14:"form_shortcode";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(97, 26, 'position', 'side'),
(98, 26, 'layout', 'default'),
(99, 26, 'hide_on_screen', ''),
(100, 26, '_edit_lock', '1476739657:1'),
(101, 27, 'page_title', 'Jonathan Kemp'),
(102, 27, '_page_title', 'field_57dc968d00b1d'),
(103, 27, 'page_sub_title', 'HERE’S SOME SHIT I’LL DO FOR YOU'),
(104, 27, '_page_sub_title', 'field_57dc969b00b1e'),
(105, 27, 'form_shortcode', '[contact-form-7 id="4" title="Contact Form"]'),
(106, 27, '_form_shortcode', 'field_58053bb8dfb98'),
(107, 27, 'about_title', 'content is king'),
(108, 27, '_about_title', 'field_57dc96d54fac4'),
(109, 27, 'about_content', 'LOREM IPSUM AND SOME OTHER SHIT ABOUT HOW WHAT YOU’RE OFFERING TO THESE ARTISTS IS A BRANDED LOOK AND FEEL AND STUFF. EXPLAIN YOURSELF A LITTLE BIT HERE AND LET THEM KNOW THAT HAVING ONE DUDE DOING ALL THE VISUALS FOR THEIR TOUR WILL GO A LONG WAY!'),
(110, 27, '_about_content', 'field_57dc97094fac6'),
(111, 27, 'contact_background', '24'),
(112, 27, '_contact_background', 'field_580539506b913'),
(113, 6, 'form_shortcode', '[contact-form-7 id="4" title="Contact Form"]'),
(114, 6, '_form_shortcode', 'field_58053bb8dfb98'),
(117, 28, 'page_title', 'Jonathan Kemp'),
(118, 28, '_page_title', 'field_57dc968d00b1d'),
(119, 28, 'page_sub_title', 'HERE’S SOME SHIT I’LL DO FOR YOU'),
(120, 28, '_page_sub_title', 'field_57dc969b00b1e'),
(121, 28, 'form_shortcode', ''),
(122, 28, '_form_shortcode', 'field_58053bb8dfb98'),
(123, 28, 'about_title', 'content is king'),
(124, 28, '_about_title', 'field_57dc96d54fac4'),
(125, 28, 'about_content', 'LOREM IPSUM AND SOME OTHER SHIT ABOUT HOW WHAT YOU’RE OFFERING TO THESE ARTISTS IS A BRANDED LOOK AND FEEL AND STUFF. EXPLAIN YOURSELF A LITTLE BIT HERE AND LET THEM KNOW THAT HAVING ONE DUDE DOING ALL THE VISUALS FOR THEIR TOUR WILL GO A LONG WAY!'),
(126, 28, '_about_content', 'field_57dc97094fac6'),
(127, 28, 'contact_background', '24'),
(128, 28, '_contact_background', 'field_580539506b913'),
(129, 29, 'page_title', 'Jonathan Kemp'),
(130, 29, '_page_title', 'field_57dc968d00b1d'),
(131, 29, 'page_sub_title', 'HERE’S SOME SHIT I’LL DO FOR YOU'),
(132, 29, '_page_sub_title', 'field_57dc969b00b1e'),
(133, 29, 'form_shortcode', '[contact-form-7 id="4" title="Contact Form"]'),
(134, 29, '_form_shortcode', 'field_58053bb8dfb98'),
(135, 29, 'about_title', 'content is king'),
(136, 29, '_about_title', 'field_57dc96d54fac4'),
(137, 29, 'about_content', 'LOREM IPSUM AND SOME OTHER SHIT ABOUT HOW WHAT YOU’RE OFFERING TO THESE ARTISTS IS A BRANDED LOOK AND FEEL AND STUFF. EXPLAIN YOURSELF A LITTLE BIT HERE AND LET THEM KNOW THAT HAVING ONE DUDE DOING ALL THE VISUALS FOR THEIR TOUR WILL GO A LONG WAY!'),
(138, 29, '_about_content', 'field_57dc97094fac6'),
(139, 29, 'contact_background', '24'),
(140, 29, '_contact_background', 'field_580539506b913'),
(142, 26, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:27:"templates/template_home.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(143, 1, '_wp_trash_meta_status', 'publish'),
(144, 1, '_wp_trash_meta_time', '1476801235'),
(145, 1, '_wp_desired_post_slug', 'hello-world'),
(146, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(147, 31, '_edit_last', '1'),
(148, 31, '_edit_lock', '1476801123:1'),
(149, 31, '_thumbnail_id', '18'),
(152, 33, '_edit_last', '1'),
(153, 33, '_edit_lock', '1476801140:1'),
(154, 33, '_thumbnail_id', '11'),
(157, 35, '_edit_last', '1'),
(158, 35, '_edit_lock', '1476801156:1'),
(159, 35, '_thumbnail_id', '21'),
(162, 38, '_edit_last', '1'),
(163, 38, '_wp_page_template', 'default'),
(164, 38, '_edit_lock', '1476811975:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-09-16 23:02:21', '2016-09-16 23:02:21', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2016-10-18 14:33:55', '2016-10-18 14:33:55', '', 0, 'http://brushedredmedia.com/?p=1', 0, 'post', '', 1),
(4, 1, '2016-09-16 23:02:59', '2016-09-16 23:02:59', '[text* your-name placeholder "Name"]\r\n[email* your-email placeholder "Email"]\r\n[text* your-website placeholder "Website"]\r\n[text your-subject placeholder "Subject"]\r\n[textarea your-message placeholder "Message"] \r\n[submit "Send"]\nJonathan Kemp "[your-subject]"\n[your-name] <jon@wearethelife.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Jonathan Kemp (http://brushedredmedia.com)\njon@wearethelife.com\nReply-To: [your-email]\n\n\n\n\nJonathan Kemp "[your-subject]"\nJonathan Kemp <jon@wearethelife.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Jonathan Kemp (http://brushedredmedia.com)\n[your-email]\nReply-To: jon@wearethelife.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-10-17 21:03:06', '2016-10-17 21:03:06', '', 0, 'http://brushedredmedia.com/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2016-09-16 23:20:57', '2016-09-16 23:20:57', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-10-17 21:30:08', '2016-10-17 21:30:08', '', 0, 'http://brushedredmedia.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-09-16 23:20:57', '2016-09-16 23:20:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-09-16 23:20:57', '2016-09-16 23:20:57', '', 6, 'http://brushedredmedia.com/2016/09/16/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-09-16 23:39:41', '2016-09-16 23:39:41', 'Daily Instagram vidEOS* | Live music video | Tour recap vidEO Track-by-Track album walk-THROUGH', 'Process', '', 'publish', 'closed', 'closed', '', 'process', '', '', '2016-09-17 01:03:36', '2016-09-17 01:03:36', '', 0, 'http://brushedredmedia.com/?post_type=services&#038;p=8', 0, 'services', '', 0),
(9, 1, '2016-09-16 23:39:59', '2016-09-16 23:39:59', 'LOREM IPSUM AND SOME OTHER SHIT ABOUT HOW WHAT YOU’RE OFFERING TO THESE ARTISTS IS A BRANDED LOOK AND FEEL AND STUFF. EXPLAIN YOURSELF A LITTLE BIT HERE AND LET THEM KNOW THAT HAVING ONE DUDE DOING ALL THE VISUALS FOR THEIR TOUR WILL GO A LONG WAY!', 'Branding', '', 'publish', 'closed', 'closed', '', 'branding', '', '', '2016-09-16 23:51:10', '2016-09-16 23:51:10', '', 0, 'http://brushedredmedia.com/?post_type=services&#038;p=9', 0, 'services', '', 0),
(10, 1, '2016-09-16 23:50:48', '2016-09-16 23:50:48', '', '04-05-16-minneapolis-mn-1', '', 'inherit', 'open', 'closed', '', '04-05-16-minneapolis-mn-1', '', '', '2016-09-16 23:50:48', '2016-09-16 23:50:48', '', 9, 'http://brushedredmedia.com/wp-content/uploads/2016/09/04.05.16-Minneapolis-MN-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2016-09-16 23:51:02', '2016-09-16 23:51:02', '', 'norm-2', '', 'inherit', 'open', 'closed', '', 'norm-2', '', '', '2016-09-16 23:51:02', '2016-09-16 23:51:02', '', 9, 'http://brushedredmedia.com/wp-content/uploads/2016/09/norm-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2016-09-16 23:51:05', '2016-09-16 23:51:05', '', 'norm', '', 'inherit', 'open', 'closed', '', 'norm', '', '', '2016-09-16 23:51:05', '2016-09-16 23:51:05', '', 9, 'http://brushedredmedia.com/wp-content/uploads/2016/09/norm.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2016-09-16 23:51:44', '2016-09-16 23:51:44', 'Daily Instagram vidEOS*  |  Live music video  |  Tour recap vidEO\r\nTrack-by-Track album walk-THROUGH', 'VIDEOGRAPHY', '', 'publish', 'closed', 'closed', '', 'videography', '', '', '2016-09-16 23:51:44', '2016-09-16 23:51:44', '', 0, 'http://brushedredmedia.com/?post_type=services&#038;p=13', 0, 'services', '', 0),
(14, 1, '2016-09-16 23:52:10', '2016-09-16 23:52:10', 'Live performance  |  Candid |  Merchandise look booK\r\nBand promos  |  Album covers  |  Portraits', 'PHOTOGRAPHY', '', 'publish', 'closed', 'closed', '', 'photography', '', '', '2016-09-16 23:52:10', '2016-09-16 23:52:10', '', 0, 'http://brushedredmedia.com/?post_type=services&#038;p=14', 0, 'services', '', 0),
(18, 1, '2016-09-17 01:03:02', '2016-09-17 01:03:02', '', '05-15-16-portland-or-38', '', 'inherit', 'open', 'closed', '', '05-15-16-portland-or-38', '', '', '2016-09-17 01:03:02', '2016-09-17 01:03:02', '', 8, 'http://brushedredmedia.com/wp-content/uploads/2016/09/05.15.16-Portland-OR-38.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2016-09-17 01:05:05', '2016-09-17 01:05:05', '', 'Header Content', '', 'publish', 'closed', 'closed', '', 'acf_header-content', '', '', '2016-09-17 01:05:05', '2016-09-17 01:05:05', '', 0, 'http://brushedredmedia.com/?post_type=acf&#038;p=19', 0, 'acf', '', 0),
(20, 1, '2016-09-17 01:07:54', '2016-09-17 01:07:54', '', 'Home Content', '', 'publish', 'closed', 'closed', '', 'acf_home-content', '', '', '2016-10-17 20:49:46', '2016-10-17 20:49:46', '', 0, 'http://brushedredmedia.com/?post_type=acf&#038;p=20', 0, 'acf', '', 0),
(21, 1, '2016-09-17 01:10:18', '2016-09-17 01:10:18', '', 'garret_header', '', 'inherit', 'open', 'closed', '', 'garret_header', '', '', '2016-09-17 01:10:18', '2016-09-17 01:10:18', '', 6, 'http://brushedredmedia.com/wp-content/uploads/2016/09/garret_header.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2016-09-17 01:10:30', '2016-09-17 01:10:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-09-17 01:10:30', '2016-09-17 01:10:30', '', 6, 'http://brushedredmedia.com/2016/09/17/6-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-10-17 20:55:21', '2016-10-17 20:55:21', '', 'contact_bg', '', 'inherit', 'open', 'closed', '', 'contact_bg', '', '', '2016-10-17 20:55:21', '2016-10-17 20:55:21', '', 6, 'http://brushedredmedia.com/wp-content/uploads/2016/09/contact_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2016-10-17 20:55:47', '2016-10-17 20:55:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-10-17 20:55:47', '2016-10-17 20:55:47', '', 6, 'http://brushedredmedia.com/2016/10/17/6-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-10-17 21:00:41', '2016-10-17 21:00:41', '', 'Contact Form Shortcode', '', 'publish', 'closed', 'closed', '', 'acf_contact-form-shortcode', '', '', '2016-10-17 21:29:59', '2016-10-17 21:29:59', '', 0, 'http://brushedredmedia.com/?post_type=acf&#038;p=26', 0, 'acf', '', 0),
(27, 1, '2016-10-17 21:03:22', '2016-10-17 21:03:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-10-17 21:03:22', '2016-10-17 21:03:22', '', 6, 'http://brushedredmedia.com/2016/10/17/6-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-10-17 21:20:07', '2016-10-17 21:20:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-10-17 21:20:07', '2016-10-17 21:20:07', '', 6, 'http://brushedredmedia.com/2016/10/17/6-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-10-17 21:20:16', '2016-10-17 21:20:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-10-17 21:20:16', '2016-10-17 21:20:16', '', 6, 'http://brushedredmedia.com/2016/10/17/6-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-10-18 14:33:55', '2016-10-18 14:33:55', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-10-18 14:33:55', '2016-10-18 14:33:55', '', 1, 'http://brushedredmedia.com/2016/10/18/1-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-10-18 14:34:23', '2016-10-18 14:34:23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog Post 1', '', 'publish', 'open', 'open', '', 'blog-post-1', '', '', '2016-10-18 14:34:23', '2016-10-18 14:34:23', '', 0, 'http://brushedredmedia.com/?p=31', 0, 'post', '', 0),
(32, 1, '2016-10-18 14:34:23', '2016-10-18 14:34:23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog Post 1', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2016-10-18 14:34:23', '2016-10-18 14:34:23', '', 31, 'http://brushedredmedia.com/2016/10/18/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-10-18 14:34:40', '2016-10-18 14:34:40', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog Post 2', '', 'publish', 'open', 'open', '', 'blog-post-2', '', '', '2016-10-18 14:34:40', '2016-10-18 14:34:40', '', 0, 'http://brushedredmedia.com/?p=33', 0, 'post', '', 0),
(34, 1, '2016-10-18 14:34:40', '2016-10-18 14:34:40', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog Post 2', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-10-18 14:34:40', '2016-10-18 14:34:40', '', 33, 'http://brushedredmedia.com/2016/10/18/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-10-18 14:34:57', '2016-10-18 14:34:57', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog Post 3', '', 'publish', 'open', 'open', '', 'blog-post-3', '', '', '2016-10-18 14:34:57', '2016-10-18 14:34:57', '', 0, 'http://brushedredmedia.com/?p=35', 0, 'post', '', 0),
(36, 1, '2016-10-18 14:34:57', '2016-10-18 14:34:57', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog Post 3', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-10-18 14:34:57', '2016-10-18 14:34:57', '', 35, 'http://brushedredmedia.com/2016/10/18/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-10-18 14:35:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-18 14:35:01', '0000-00-00 00:00:00', '', 0, 'http://brushedredmedia.com/?p=37', 0, 'post', '', 0),
(38, 1, '2016-10-18 17:35:15', '2016-10-18 17:35:15', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-10-18 17:35:15', '2016-10-18 17:35:15', '', 0, 'http://brushedredmedia.com/?page_id=38', 0, 'page', '', 0),
(39, 1, '2016-10-18 17:35:15', '2016-10-18 17:35:15', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-10-18 17:35:15', '2016-10-18 17:35:15', '', 38, 'http://brushedredmedia.com/38-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(31, 1, 0),
(33, 1, 0),
(35, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"2d6aac7eb3f35ffda263d8b81c2dac214ce94627938b619ffa2cdd63139c0a1b";a:4:{s:10:"expiration";i:1476909592;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476736792;}s:64:"685035edc75f271b9ea01c7656e36ef6cbdfd46c6df926520f8616dab7223990";a:4:{s:10:"expiration";i:1476974024;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476801224;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '23'),
(16, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1476801260');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BSZGJaH5rcLqqw8l3uCfyvwO7CIdyF/', 'admin', 'jon@wearethelife.com', '', '2016-09-16 23:02:21', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=256;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
