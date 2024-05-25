-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 08:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_my_theme`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-04-29 12:24:37', '2024-04-29 12:24:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 1, 'admin', 'kabadiana327@gmail.com', 'http://localhost/wp-my-themes', '::1', '2024-05-01 16:35:01', '2024-05-01 16:35:01', 'Hello :)', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp-my-themes', 'yes'),
(2, 'home', 'http://localhost/wp-my-themes', 'yes'),
(3, 'blogname', 'My Theme', 'yes'),
(4, 'blogdescription', 'Welcome to our site!', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'kabadiana327@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '4', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:57:\"wp-dummy-content-generator/wp_dummy_content_generator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bootdi', 'yes'),
(41, 'stylesheet', 'bootdi', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '28', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1729945476', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '11', 'no'),
(104, 'widget_block', 'a:8:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:359:\"<!-- wp:social-links {\"align\":\"center\"} -->\n<ul class=\"wp-block-social-links aligncenter\"><!-- wp:social-link {\"url\":\"instagram.com\",\"service\":\"instagram\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://www.facebook.com/\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://web.telegram.org/k/\",\"service\":\"telegram\"} /--></ul>\n<!-- /wp:social-links -->\";}i:8;a:1:{s:7:\"content\";s:21:\"<!-- wp:calendar /-->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:14:\"bootdi_sidebar\";a:2:{i:0;s:7:\"block-8\";i:1;s:7:\"block-7\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:9:{i:1716308677;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716337477;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716337504;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716380677;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716380704;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716380707;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716812802;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716899077;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.2\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.3-partial-2.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.2\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-rollback-2.zip\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1716294312;s:15:\"version_checked\";s:5:\"6.5.2\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1714394175;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(138, 'can_compress_scripts', '1', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(152, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(158, 'WPLANG', '', 'yes'),
(159, 'new_admin_email', 'kabadiana327@gmail.com', 'yes'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(167, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(172, 'category_children', 'a:0:{}', 'yes'),
(176, 'current_theme', 'Bootdi', 'yes'),
(177, 'theme_mods_bydiana', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:73;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1715626294;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(178, 'theme_switched', '', 'yes'),
(185, 'site_logo', '28', 'yes'),
(210, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(211, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":2}', 'yes'),
(300, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716293754;s:7:\"checked\";a:7:{s:6:\"bootdi\";s:3:\"1.0\";s:7:\"bootdi5\";s:3:\"2.0\";s:7:\"bydiana\";s:3:\"1.1\";s:16:\"twentytwentyfour\";s:3:\"1.1\";s:15:\"twentytwentyone\";s:3:\"2.2\";s:17:\"twentytwentythree\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.2.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.4.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.7.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(302, 'theme_mods_twentytwentyone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1715626464;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'no'),
(304, 'theme_mods_bootdi', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:15;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1715773143;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(322, 'theme_mods_bootdi5', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716045852;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(327, '_site_transient_timeout_browser_ef6c1824c2c4d2e2dd0ed5a2ca40bef3', '1716649633', 'no'),
(328, '_site_transient_browser_ef6c1824c2c4d2e2dd0ed5a2ca40bef3', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"124.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(346, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(373, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1716899104', 'no'),
(374, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(376, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716294313;s:8:\"response\";a:1:{s:57:\"wp-dummy-content-generator/wp_dummy_content_generator.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:40:\"w.org/plugins/wp-dummy-content-generator\";s:4:\"slug\";s:26:\"wp-dummy-content-generator\";s:6:\"plugin\";s:57:\"wp-dummy-content-generator/wp_dummy_content_generator.php\";s:11:\"new_version\";s:5:\"3.4.1\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/wp-dummy-content-generator/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/wp-dummy-content-generator.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-dummy-content-generator/assets/icon.svg?rev=3022566\";s:3:\"svg\";s:71:\"https://ps.w.org/wp-dummy-content-generator/assets/icon.svg?rev=3022566\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/wp-dummy-content-generator/assets/banner-772x250.png?rev=3022563\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"5.3.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:57:\"wp-dummy-content-generator/wp_dummy_content_generator.php\";s:5:\"3.3.1\";}}', 'no'),
(380, '_site_transient_timeout_theme_roots', '1716307904', 'no'),
(381, '_site_transient_theme_roots', 'a:7:{s:6:\"bootdi\";s:7:\"/themes\";s:7:\"bootdi5\";s:7:\"/themes\";s:7:\"bydiana\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 6, 'wp_dummy_content_generator_post', 'true'),
(5, 7, '_wp_attached_file', '2024/04/wp_dummy_content_generator_6.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:40:\"2024/04/wp_dummy_content_generator_6.jpg\";s:8:\"filesize\";i:28880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, 'wp_dummy_content_generator_attachment', 'true'),
(8, 6, '_thumbnail_id', '7'),
(10, 8, 'wp_dummy_content_generator_post', 'true'),
(11, 9, '_wp_attached_file', '2024/04/wp_dummy_content_generator_8.jpg'),
(12, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:40:\"2024/04/wp_dummy_content_generator_8.jpg\";s:8:\"filesize\";i:28880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 9, 'wp_dummy_content_generator_attachment', 'true'),
(14, 8, '_thumbnail_id', '9'),
(16, 10, 'wp_dummy_content_generator_post', 'true'),
(17, 11, '_wp_attached_file', '2024/04/wp_dummy_content_generator_10.jpg'),
(18, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/04/wp_dummy_content_generator_10.jpg\";s:8:\"filesize\";i:10460;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 11, 'wp_dummy_content_generator_attachment', 'true'),
(20, 10, '_thumbnail_id', '11'),
(22, 12, 'wp_dummy_content_generator_post', 'true'),
(23, 13, '_wp_attached_file', '2024/04/wp_dummy_content_generator_12.jpg'),
(24, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/04/wp_dummy_content_generator_12.jpg\";s:8:\"filesize\";i:33004;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 13, 'wp_dummy_content_generator_attachment', 'true'),
(26, 12, '_thumbnail_id', '13'),
(28, 14, 'wp_dummy_content_generator_post', 'true'),
(29, 15, '_wp_attached_file', '2024/04/wp_dummy_content_generator_14.jpg'),
(30, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/04/wp_dummy_content_generator_14.jpg\";s:8:\"filesize\";i:17154;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 15, 'wp_dummy_content_generator_attachment', 'true'),
(32, 14, '_thumbnail_id', '15'),
(34, 16, 'wp_dummy_content_generator_post', 'true'),
(35, 17, '_wp_attached_file', '2024/04/wp_dummy_content_generator_16.jpg'),
(36, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/04/wp_dummy_content_generator_16.jpg\";s:8:\"filesize\";i:10460;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 17, 'wp_dummy_content_generator_attachment', 'true'),
(38, 16, '_thumbnail_id', '17'),
(40, 18, 'wp_dummy_content_generator_post', 'true'),
(41, 19, '_wp_attached_file', '2024/04/wp_dummy_content_generator_18.jpg'),
(42, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/04/wp_dummy_content_generator_18.jpg\";s:8:\"filesize\";i:10218;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 19, 'wp_dummy_content_generator_attachment', 'true'),
(44, 18, '_thumbnail_id', '19'),
(46, 20, 'wp_dummy_content_generator_post', 'true'),
(47, 21, '_wp_attached_file', '2024/04/wp_dummy_content_generator_20.jpg'),
(48, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/04/wp_dummy_content_generator_20.jpg\";s:8:\"filesize\";i:28880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 21, 'wp_dummy_content_generator_attachment', 'true'),
(50, 20, '_thumbnail_id', '21'),
(52, 22, 'wp_dummy_content_generator_post', 'true'),
(53, 23, '_wp_attached_file', '2024/04/wp_dummy_content_generator_22.jpg'),
(54, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/04/wp_dummy_content_generator_22.jpg\";s:8:\"filesize\";i:28880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 23, 'wp_dummy_content_generator_attachment', 'true'),
(56, 22, '_thumbnail_id', '23'),
(58, 24, 'wp_dummy_content_generator_post', 'true'),
(59, 25, '_wp_attached_file', '2024/04/wp_dummy_content_generator_24.jpg'),
(60, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/04/wp_dummy_content_generator_24.jpg\";s:8:\"filesize\";i:10218;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 25, 'wp_dummy_content_generator_attachment', 'true'),
(62, 24, '_thumbnail_id', '25'),
(63, 28, '_wp_attached_file', '2024/04/logo-theme.png'),
(64, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:22:\"2024/04/logo-theme.png\";s:8:\"filesize\";i:28890;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 29, '_wp_attached_file', '2024/04/logo-theme-1.png'),
(66, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:24:\"2024/04/logo-theme-1.png\";s:8:\"filesize\";i:1935;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 1, '_edit_lock', '1714413964:1'),
(70, 41, 'origin', 'theme'),
(71, 49, 'origin', 'theme'),
(73, 72, '_wp_trash_meta_status', 'publish'),
(74, 72, '_wp_trash_meta_time', '1714654897'),
(75, 75, '_wp_trash_meta_status', 'publish'),
(76, 75, '_wp_trash_meta_time', '1714654956'),
(78, 89, '_menu_item_type', 'custom'),
(79, 89, '_menu_item_menu_item_parent', '0'),
(80, 89, '_menu_item_object_id', '89'),
(81, 89, '_menu_item_object', 'custom'),
(82, 89, '_menu_item_target', ''),
(83, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 89, '_menu_item_xfn', ''),
(85, 89, '_menu_item_url', 'http://localhost/wp-my-themes/'),
(86, 89, '_menu_item_orphaned', '1716046228'),
(87, 90, '_menu_item_type', 'post_type'),
(88, 90, '_menu_item_menu_item_parent', '0'),
(89, 90, '_menu_item_object_id', '2'),
(90, 90, '_menu_item_object', 'page'),
(91, 90, '_menu_item_target', ''),
(92, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 90, '_menu_item_xfn', ''),
(94, 90, '_menu_item_url', ''),
(95, 90, '_menu_item_orphaned', '1716046228'),
(96, 91, '_menu_item_type', 'custom'),
(97, 91, '_menu_item_menu_item_parent', '0'),
(98, 91, '_menu_item_object_id', '91'),
(99, 91, '_menu_item_object', 'custom'),
(100, 91, '_menu_item_target', ''),
(101, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 91, '_menu_item_xfn', ''),
(103, 91, '_menu_item_url', 'http://localhost/wp-my-themes/'),
(104, 91, '_menu_item_orphaned', '1716046267'),
(106, 92, 'wp_dummy_content_generator_post', 'true'),
(107, 93, '_wp_attached_file', '2024/05/wp_dummy_content_generator_92.jpg'),
(108, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/05/wp_dummy_content_generator_92.jpg\";s:8:\"filesize\";i:33004;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 93, 'wp_dummy_content_generator_attachment', 'true'),
(110, 92, '_thumbnail_id', '93'),
(112, 94, 'wp_dummy_content_generator_post', 'true'),
(113, 95, '_wp_attached_file', '2024/05/wp_dummy_content_generator_94.jpg'),
(114, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/05/wp_dummy_content_generator_94.jpg\";s:8:\"filesize\";i:28880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 95, 'wp_dummy_content_generator_attachment', 'true'),
(116, 94, '_thumbnail_id', '95'),
(118, 96, 'wp_dummy_content_generator_post', 'true'),
(119, 97, '_wp_attached_file', '2024/05/wp_dummy_content_generator_96.jpg'),
(120, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/05/wp_dummy_content_generator_96.jpg\";s:8:\"filesize\";i:32712;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 97, 'wp_dummy_content_generator_attachment', 'true'),
(122, 96, '_thumbnail_id', '97'),
(124, 98, 'wp_dummy_content_generator_post', 'true'),
(125, 99, '_wp_attached_file', '2024/05/wp_dummy_content_generator_98.jpg'),
(126, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2024/05/wp_dummy_content_generator_98.jpg\";s:8:\"filesize\";i:33004;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 99, 'wp_dummy_content_generator_attachment', 'true'),
(128, 98, '_thumbnail_id', '99'),
(130, 100, 'wp_dummy_content_generator_post', 'true'),
(131, 101, '_wp_attached_file', '2024/05/wp_dummy_content_generator_100.jpg'),
(132, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:42:\"2024/05/wp_dummy_content_generator_100.jpg\";s:8:\"filesize\";i:54338;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 101, 'wp_dummy_content_generator_attachment', 'true'),
(134, 100, '_thumbnail_id', '101'),
(136, 102, 'wp_dummy_content_generator_post', 'true'),
(137, 103, '_wp_attached_file', '2024/05/wp_dummy_content_generator_102.jpg'),
(138, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:42:\"2024/05/wp_dummy_content_generator_102.jpg\";s:8:\"filesize\";i:28880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 103, 'wp_dummy_content_generator_attachment', 'true'),
(140, 102, '_thumbnail_id', '103'),
(142, 104, 'wp_dummy_content_generator_post', 'true'),
(143, 105, '_wp_attached_file', '2024/05/wp_dummy_content_generator_104.jpg'),
(144, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:42:\"2024/05/wp_dummy_content_generator_104.jpg\";s:8:\"filesize\";i:33004;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 105, 'wp_dummy_content_generator_attachment', 'true'),
(146, 104, '_thumbnail_id', '105'),
(148, 106, 'wp_dummy_content_generator_post', 'true'),
(149, 107, '_wp_attached_file', '2024/05/wp_dummy_content_generator_106.jpg'),
(150, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:42:\"2024/05/wp_dummy_content_generator_106.jpg\";s:8:\"filesize\";i:17154;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 107, 'wp_dummy_content_generator_attachment', 'true'),
(152, 106, '_thumbnail_id', '107'),
(154, 108, 'wp_dummy_content_generator_post', 'true'),
(155, 109, '_wp_attached_file', '2024/05/wp_dummy_content_generator_108.jpg'),
(156, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:42:\"2024/05/wp_dummy_content_generator_108.jpg\";s:8:\"filesize\";i:10460;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 109, 'wp_dummy_content_generator_attachment', 'true'),
(158, 108, '_thumbnail_id', '109'),
(160, 110, 'wp_dummy_content_generator_post', 'true'),
(161, 111, '_wp_attached_file', '2024/05/wp_dummy_content_generator_110.jpg'),
(162, 111, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:42:\"2024/05/wp_dummy_content_generator_110.jpg\";s:8:\"filesize\";i:28880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 111, 'wp_dummy_content_generator_attachment', 'true'),
(164, 110, '_thumbnail_id', '111'),
(165, 112, '_menu_item_type', 'custom'),
(166, 112, '_menu_item_menu_item_parent', '0'),
(167, 112, '_menu_item_object_id', '112'),
(168, 112, '_menu_item_object', 'custom'),
(169, 112, '_menu_item_target', ''),
(170, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(171, 112, '_menu_item_xfn', ''),
(172, 112, '_menu_item_url', 'http://localhost/wp-my-themes/'),
(174, 113, '_menu_item_type', 'post_type'),
(175, 113, '_menu_item_menu_item_parent', '0'),
(176, 113, '_menu_item_object_id', '2'),
(177, 113, '_menu_item_object', 'page'),
(178, 113, '_menu_item_target', ''),
(179, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(180, 113, '_menu_item_xfn', ''),
(181, 113, '_menu_item_url', ''),
(182, 113, '_menu_item_orphaned', '1716046311'),
(183, 114, '_menu_item_type', 'post_type'),
(184, 114, '_menu_item_menu_item_parent', '0'),
(185, 114, '_menu_item_object_id', '92'),
(186, 114, '_menu_item_object', 'post'),
(187, 114, '_menu_item_target', ''),
(188, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 114, '_menu_item_xfn', ''),
(190, 114, '_menu_item_url', ''),
(192, 115, '_menu_item_type', 'post_type'),
(193, 115, '_menu_item_menu_item_parent', '114'),
(194, 115, '_menu_item_object_id', '100'),
(195, 115, '_menu_item_object', 'post'),
(196, 115, '_menu_item_target', ''),
(197, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 115, '_menu_item_xfn', ''),
(199, 115, '_menu_item_url', ''),
(201, 116, '_menu_item_type', 'post_type'),
(202, 116, '_menu_item_menu_item_parent', '0'),
(203, 116, '_menu_item_object_id', '6'),
(204, 116, '_menu_item_object', 'post'),
(205, 116, '_menu_item_target', ''),
(206, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(207, 116, '_menu_item_xfn', ''),
(208, 116, '_menu_item_url', ''),
(210, 117, '_menu_item_type', 'post_type'),
(211, 117, '_menu_item_menu_item_parent', '114'),
(212, 117, '_menu_item_object_id', '20'),
(213, 117, '_menu_item_object', 'post'),
(214, 117, '_menu_item_target', ''),
(215, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(216, 117, '_menu_item_xfn', ''),
(217, 117, '_menu_item_url', ''),
(219, 94, '_edit_lock', '1716307481:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-04-29 12:24:37', '2024-04-29 12:24:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-04-29 12:24:37', '2024-04-29 12:24:37', '', 0, 'http://localhost/wp-my-themes/?p=1', 0, 'post', '', 2),
(2, 1, '2024-04-29 12:24:37', '2024-04-29 12:24:37', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wp-my-themes/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2024-04-29 12:24:37', '2024-04-29 12:24:37', '', 0, 'http://localhost/wp-my-themes/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-04-29 12:24:37', '2024-04-29 12:24:37', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wp-my-themes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-04-29 12:24:37', '2024-04-29 12:24:37', '', 0, 'http://localhost/wp-my-themes/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-04-29 12:24:40', '2024-04-29 12:24:40', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-04-29 12:24:40', '2024-04-29 12:24:40', '', 0, 'http://localhost/wp-my-themes/2024/04/29/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Quis nobis omnis culpa modi quaerat corrupti. Ducimus est et ut repellendus ab neque et repellendus. Illo quia ducimus ipsum voluptatem voluptatum debitis accusantium quidem. Voluptas velit et cumque iure illo tempora.\n\nLaudantium est placeat veritatis quae eos. Reprehenderit cum tenetur vero possimus odio reprehenderit.\n\nOdit similique est totam aperiam ut ratione. Nobis consequuntur quod eaque non suscipit. Maxime dolorem eum in.Dolor maiores omnis reiciendis nesciunt. Accusantium consequatur minima dolor. Perspiciatis excepturi qui ipsa nulla similique. Quo doloremque sint dolores. Dolores cupiditate provident ducimus maiores illo dolore. Non et deleniti aut minima aliquam ea. Quo consequatur maxime dolorem quo laboriosam tempora facere. Id saepe velit dolorum tenetur praesentium. Facilis qui at dolores velit magni. Eos saepe cumque aut sed. Dolorum eos eius rerum quae minima ea. Voluptas facilis autem perferendis voluptate ut tempore. Ut distinctio dignissimos in expedita distinctio suscipit. Aliquam odit quos similique qui.', 'Eius ullam dolore ex ipsa dolorem.', '', 'publish', 'open', 'open', '', 'eius-ullam-dolore-ex-ipsa-dolorem', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/eius-ullam-dolore-ex-ipsa-dolorem/', 0, 'post', '', 0),
(7, 1, '2024-04-29 12:28:05', '2024-04-29 12:28:05', '', 'wp_dummy_content_generator_6.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_6-jpg', '', '', '2024-04-29 12:28:05', '2024-04-29 12:28:05', '', 6, 'http://localhost/wp-my-themes/eius-ullam-dolore-ex-ipsa-dolorem/wp_dummy_content_generator_6-jpg/', 0, 'attachment', 'image/jpg', 0),
(8, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Laborum rem qui veritatis cumque nisi. Repudiandae in quia et iusto maiores blanditiis. Facere in ut ut rerum.\n\nDolorum ut et ipsa et et necessitatibus nesciunt magni. Consequuntur laborum labore exercitationem non minus aliquid. Et fuga ut temporibus at sit. Laudantium quod maxime perferendis impedit accusantium sit. Unde explicabo facilis est quod.\n\nOfficiis eos in est iusto dolores aliquam fugiat vitae. Non quia quibusdam aperiam.Eos ea eos autem quia ut quia. Minima sunt quo quasi eum aspernatur. Architecto aut est voluptas rem. Fugit harum autem quos minus quo. Nam quidem doloribus delectus nesciunt qui atque tenetur omnis. Id omnis rerum tempora consequatur ut. Eveniet libero animi aut nam. Et ad aut tenetur. Ut tempora quam corporis unde harum velit. Repellat asperiores ipsum et itaque pariatur. Officiis tempore asperiores nihil aut. Repudiandae distinctio quia ratione laudantium voluptate neque aperiam animi. Accusantium voluptas perferendis beatae pariatur vero debitis vitae. Quia nihil eum nesciunt iure.', 'Quam repellendus et quam.', '', 'publish', 'open', 'open', '', 'quam-repellendus-et-quam', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/quam-repellendus-et-quam/', 0, 'post', '', 0),
(9, 1, '2024-04-29 12:28:06', '2024-04-29 12:28:06', '', 'wp_dummy_content_generator_8.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_8-jpg', '', '', '2024-04-29 12:28:06', '2024-04-29 12:28:06', '', 8, 'http://localhost/wp-my-themes/quam-repellendus-et-quam/wp_dummy_content_generator_8-jpg/', 0, 'attachment', 'image/jpg', 0),
(10, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Cum cumque molestias ea soluta libero. Atque dolorum accusantium eum dignissimos qui corporis. Natus voluptatem iure earum mollitia accusantium provident dolorem. Rerum velit quia consequatur accusantium explicabo reiciendis quia id.\n\nTenetur eius reiciendis cum ut cum ad. Qui in nulla consequatur omnis. Tempora omnis voluptates repudiandae blanditiis assumenda nihil perferendis. Provident sequi ducimus fugit.\n\nSed fugiat error eos natus hic. Ut odio saepe est quia dolor voluptas officia sed. Recusandae rem incidunt accusamus nobis aut sapiente adipisci ipsum.Sed quo voluptatem vel alias. Consequatur harum maiores et sit aut in eaque. Nihil officia debitis eum rerum. Hic error veniam commodi deleniti quia recusandae quae. Et numquam amet unde iusto. Deleniti sit aperiam dolorum quam consequatur fuga autem. Doloremque laboriosam quo cumque voluptate architecto repudiandae et maxime. Corporis quia aut iste officia nisi et voluptatibus. Quia amet sed eligendi at praesentium blanditiis quia. In provident laudantium harum dicta beatae. Ipsum esse eius sunt eos dolorum qui et. Officia sunt sit molestiae ipsa quos. Sit incidunt labore dolores et officiis eum.', 'Inventore excepturi voluptates in vero.', '', 'publish', 'open', 'open', '', 'inventore-excepturi-voluptates-in-vero', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/inventore-excepturi-voluptates-in-vero/', 0, 'post', '', 0),
(11, 1, '2024-04-29 12:28:07', '2024-04-29 12:28:07', '', 'wp_dummy_content_generator_10.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_10-jpg', '', '', '2024-04-29 12:28:07', '2024-04-29 12:28:07', '', 10, 'http://localhost/wp-my-themes/inventore-excepturi-voluptates-in-vero/wp_dummy_content_generator_10-jpg/', 0, 'attachment', 'image/jpg', 0),
(12, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Eaque voluptas nostrum vitae mollitia sunt id ducimus. Accusamus at rerum qui. Autem aliquid incidunt neque ad suscipit. Tempore consequatur mollitia autem iure sint accusantium enim voluptatibus. Voluptas sit doloribus totam omnis.\n\nDignissimos voluptatum consequatur quis minima. Fugiat velit rerum qui voluptas quia. Illo dolor atque ut possimus. Reprehenderit quia sit ut harum.\n\nQuia dolores omnis et eos. Modi minus distinctio quisquam quas totam. Sint quam et eveniet deleniti.Ut iste molestiae et ducimus. Odit inventore architecto et est rerum tempora autem. Et repellat eligendi sapiente eveniet dignissimos dolor et id. Non neque ut debitis id. Inventore et tempora asperiores saepe ut. Facere quaerat rem autem atque ut. Quod nisi deleniti esse dolores architecto sunt. Et harum est quis saepe. Facilis illo ducimus dolorem nobis neque. Deleniti praesentium amet aperiam impedit. Voluptatum architecto alias et dolores natus sequi. Quia non labore nulla aliquam natus. Cum ut odio et occaecati. Omnis architecto incidunt dicta debitis aliquid. Autem delectus occaecati tenetur qui consequatur saepe non.', 'Ut labore tempore quae omnis.', '', 'publish', 'open', 'open', '', 'ut-labore-tempore-quae-omnis', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/ut-labore-tempore-quae-omnis/', 0, 'post', '', 0),
(13, 1, '2024-04-29 12:28:07', '2024-04-29 12:28:07', '', 'wp_dummy_content_generator_12.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_12-jpg', '', '', '2024-04-29 12:28:07', '2024-04-29 12:28:07', '', 12, 'http://localhost/wp-my-themes/ut-labore-tempore-quae-omnis/wp_dummy_content_generator_12-jpg/', 0, 'attachment', 'image/jpg', 0),
(14, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Amet autem est omnis quae consequatur. Qui et voluptate nisi vitae quia. Voluptatum voluptatem expedita impedit vitae labore exercitationem natus.\n\nEt doloribus incidunt aspernatur tenetur. Dolorem qui praesentium modi et est velit optio sunt. Velit culpa et veniam laboriosam dolorem. Enim eos et sunt cupiditate officia expedita quia accusamus.\n\nIpsum minus amet ut praesentium et facilis voluptas. Reprehenderit qui quasi vitae rerum. Optio quasi eligendi nam.Quos maxime quisquam reiciendis esse ipsum qui sapiente. Ea provident labore exercitationem reiciendis. Ipsa quisquam vitae laborum impedit saepe. Inventore libero autem vel atque non. Laboriosam eos quam aliquam id nihil dolor quas. Excepturi quam asperiores qui adipisci et adipisci fugit. Rerum quam est iste aut in at et. Voluptatem officiis nihil eum est magni. Accusantium mollitia qui et debitis iste cum reprehenderit. Ipsam ut deleniti ipsum quia amet. Molestiae quas maiores inventore alias. Atque perspiciatis perferendis ea consequatur itaque numquam ut assumenda. Ut illum numquam est culpa. Quod eligendi sint accusamus cumque labore.', 'Et quas sapiente nesciunt itaque.', '', 'publish', 'open', 'open', '', 'et-quas-sapiente-nesciunt-itaque', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/et-quas-sapiente-nesciunt-itaque/', 0, 'post', '', 0),
(15, 1, '2024-04-29 12:28:08', '2024-04-29 12:28:08', '', 'wp_dummy_content_generator_14.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_14-jpg', '', '', '2024-04-29 12:28:08', '2024-04-29 12:28:08', '', 14, 'http://localhost/wp-my-themes/et-quas-sapiente-nesciunt-itaque/wp_dummy_content_generator_14-jpg/', 0, 'attachment', 'image/jpg', 0),
(16, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Consequatur placeat adipisci consequatur. Nemo hic et eos autem aut tenetur sapiente. Quis maiores officia id asperiores magnam voluptas voluptatem.\n\nAccusantium sint at eos culpa. Sequi alias voluptatem optio saepe qui est. Dignissimos eius corporis perferendis.\n\nAd aliquid et perspiciatis et sequi velit. Ipsam ipsum inventore est est hic corporis. Et blanditiis dolorem quas et facere nihil. Et ratione voluptatem laborum fugit porro commodi.Qui sit vel consequatur qui nostrum excepturi qui provident. Provident inventore reiciendis et. Vero itaque nisi qui aut. Quia fugit ut facilis aut provident quidem voluptatibus rem. Hic voluptatem omnis facere sunt repudiandae. Est qui quos ut mollitia voluptas. Aut atque quia ex harum. Repellat sunt sint inventore quos qui. Sint dolores ex sequi sed explicabo enim dolorum. Ut sint eum voluptas itaque eos. Distinctio quo velit sit. Natus aut libero aliquid omnis. Ex sequi ut totam veniam. Repellendus reprehenderit debitis non tempore molestiae animi sit. Dolores aperiam itaque adipisci vero.', 'Ut ut a id saepe soluta.', '', 'publish', 'open', 'open', '', 'ut-ut-a-id-saepe-soluta', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/ut-ut-a-id-saepe-soluta/', 0, 'post', '', 0),
(17, 1, '2024-04-29 12:28:08', '2024-04-29 12:28:08', '', 'wp_dummy_content_generator_16.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_16-jpg', '', '', '2024-04-29 12:28:08', '2024-04-29 12:28:08', '', 16, 'http://localhost/wp-my-themes/ut-ut-a-id-saepe-soluta/wp_dummy_content_generator_16-jpg/', 0, 'attachment', 'image/jpg', 0),
(18, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Qui ut beatae optio. Autem nemo possimus aut odit. Quia et quo nihil et est.\n\nVoluptatem libero ea quo libero mollitia est maiores. Iste incidunt praesentium et consequatur cupiditate autem. Quo numquam sint quia reprehenderit nostrum optio. Dolores sint deleniti qui officia est vero. Aut similique maiores aliquid odio labore commodi doloribus.\n\nQuaerat deserunt ullam dolor qui rem. Qui modi qui quia ad.At beatae ab consequatur reprehenderit autem amet est aut. Placeat est aut ut enim. Et saepe corrupti at molestias nemo tempora. Quod facere quos quisquam consectetur atque. Neque vero voluptatum aliquid odio deleniti. Aspernatur facere quo eaque id. Voluptates maiores consequuntur illum voluptas. Nam illum minima molestiae qui. Perspiciatis tempora aspernatur velit est. Vero quae molestiae in reiciendis ad. Tempore quibusdam eum sunt nam minima sunt. Perferendis et magnam voluptate officia aut ratione soluta. Rerum et debitis nulla eligendi. Officia vel nihil ut magnam ratione iste fuga. Quo et temporibus quod. Et qui sapiente ut nemo officiis assumenda. Itaque dolore aut voluptatem quae.', 'Quisquam dolorem a quasi ut.', '', 'publish', 'open', 'open', '', 'quisquam-dolorem-a-quasi-ut', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/quisquam-dolorem-a-quasi-ut/', 0, 'post', '', 0),
(19, 1, '2024-04-29 12:28:09', '2024-04-29 12:28:09', '', 'wp_dummy_content_generator_18.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_18-jpg', '', '', '2024-04-29 12:28:09', '2024-04-29 12:28:09', '', 18, 'http://localhost/wp-my-themes/quisquam-dolorem-a-quasi-ut/wp_dummy_content_generator_18-jpg/', 0, 'attachment', 'image/jpg', 0),
(20, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Aperiam natus omnis eaque at nam placeat. Molestiae non voluptatem nihil reiciendis. Facilis ab rerum qui inventore provident ea. Sed ut facilis totam quae minus ut ipsum.\n\nAt beatae et commodi. Molestiae quia aperiam corrupti voluptatem aut. Ea qui enim qui quia repudiandae. Nihil eos temporibus et enim officiis ipsa.\n\nRecusandae qui beatae minus molestiae atque. Sed libero animi aliquid quia minima quas. Voluptatem sunt dolore tempora voluptates sit. Doloremque qui harum necessitatibus quia.Architecto consectetur accusamus earum mollitia eligendi ea. Beatae rerum esse rerum accusamus sequi non nam. Animi qui et sed sit eum et vel earum. Ut magni dolorem reprehenderit voluptatibus aperiam velit sapiente maxime. Veritatis error dicta illo. Repellat necessitatibus odio consequuntur expedita quia. Dignissimos enim adipisci qui nostrum sunt recusandae. Quibusdam quos tenetur aut et placeat dolore. Ut totam iure voluptas aut nihil. Fugiat libero voluptate eaque inventore eum aperiam. Dignissimos adipisci unde dolorum quae. Ea sunt id est laudantium. Deleniti esse assumenda voluptates in sed.', 'Est unde consequuntur aut consequuntur.', '', 'publish', 'open', 'open', '', 'est-unde-consequuntur-aut-consequuntur', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/est-unde-consequuntur-aut-consequuntur/', 0, 'post', '', 0),
(21, 1, '2024-04-29 12:28:09', '2024-04-29 12:28:09', '', 'wp_dummy_content_generator_20.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_20-jpg', '', '', '2024-04-29 12:28:09', '2024-04-29 12:28:09', '', 20, 'http://localhost/wp-my-themes/est-unde-consequuntur-aut-consequuntur/wp_dummy_content_generator_20-jpg/', 0, 'attachment', 'image/jpg', 0),
(22, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Deleniti fuga deserunt sit et dolore. Et ea eos eaque ad dolorum laudantium voluptatem. Facilis earum consectetur quo incidunt libero et blanditiis.\n\nSunt veritatis aut cum consectetur rem voluptatum. Eum ea iure aut fugiat cumque. Voluptate eos explicabo sequi ut. Est nulla est voluptatem est voluptate consequuntur.\n\nId esse consequatur eos molestiae ipsa sunt. Maxime quas quod necessitatibus modi. Non soluta facere provident cum molestiae. Sit et amet excepturi voluptas culpa. Ut voluptatem non architecto in rem velit tempora.Dolorum alias molestiae aut possimus odit. Voluptatem consequatur cupiditate eum deleniti at excepturi at. Non et quo nobis. Deleniti accusamus qui placeat et. Ullam eos tenetur sit sed ut in. Voluptas voluptatem quia unde. Occaecati praesentium architecto quidem. Cumque eligendi est tempora suscipit est voluptate culpa. Blanditiis reiciendis amet pariatur libero quasi. Soluta suscipit error dolor optio qui reprehenderit id. Quia deleniti nobis provident ab quo. Sed rerum dolorem et ut. Non nostrum perferendis consequatur omnis optio. Eligendi rerum commodi sit esse vitae nesciunt dolor quia. Aut ipsum hic tempore maiores. Expedita eos iusto explicabo in ducimus.', 'Optio et harum expedita et.', '', 'publish', 'open', 'open', '', 'optio-et-harum-expedita-et', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/optio-et-harum-expedita-et/', 0, 'post', '', 0),
(23, 1, '2024-04-29 12:28:09', '2024-04-29 12:28:09', '', 'wp_dummy_content_generator_22.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_22-jpg', '', '', '2024-04-29 12:28:09', '2024-04-29 12:28:09', '', 22, 'http://localhost/wp-my-themes/optio-et-harum-expedita-et/wp_dummy_content_generator_22-jpg/', 0, 'attachment', 'image/jpg', 0),
(24, 1, '2024-04-29 00:00:00', '2024-04-29 00:00:00', 'Numquam amet sint ut nobis quia sint et. Voluptatem repellendus at ipsum quis sed numquam nam. Enim asperiores omnis ratione magni. Iusto nesciunt adipisci dolores modi fugit eum dolorum. Enim in ducimus voluptas.\n\nLaboriosam quia maxime vel praesentium voluptatibus. Consequatur libero nisi alias est magni quibusdam neque. Accusantium hic aspernatur eos et eos numquam commodi. Et earum quae debitis et.\n\nOmnis nobis et nulla aut pariatur ut. Quae a sunt sint omnis. Laborum odit recusandae aspernatur architecto fuga ullam dolorem.Nulla minima autem neque nemo nihil. Et officia et iste. Voluptatem architecto a laudantium et et inventore. Quia ut qui eligendi provident ut similique. Ut quasi autem voluptatem. Voluptas perspiciatis qui eum voluptas et ipsam tempore. Consequuntur necessitatibus autem error exercitationem. Aspernatur facilis animi est quia ea eum eveniet alias. Repudiandae nulla maiores ducimus nihil cupiditate pariatur autem. Consequatur dolores ad nemo rerum est quam labore. Nulla amet laborum hic nam enim. Qui sed ut inventore beatae saepe veritatis a laboriosam. Qui reiciendis inventore iusto ab cupiditate totam et qui. Eaque est quis iste est inventore facere iste. Illum sed nam in doloremque.', 'Quia iure mollitia sapiente ipsa.', '', 'publish', 'open', 'open', '', 'quia-iure-mollitia-sapiente-ipsa', '', '', '2024-04-29 00:00:00', '2024-04-29 00:00:00', '', 0, 'http://localhost/wp-my-themes/quia-iure-mollitia-sapiente-ipsa/', 0, 'post', '', 0),
(25, 1, '2024-04-29 12:28:09', '2024-04-29 12:28:09', '', 'wp_dummy_content_generator_24.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_24-jpg', '', '', '2024-04-29 12:28:09', '2024-04-29 12:28:09', '', 24, 'http://localhost/wp-my-themes/quia-iure-mollitia-sapiente-ipsa/wp_dummy_content_generator_24-jpg/', 0, 'attachment', 'image/jpg', 0),
(28, 1, '2024-04-29 12:56:56', '2024-04-29 12:56:56', '', 'logo-theme', '', 'inherit', 'open', 'closed', '', 'logo-theme', '', '', '2024-04-29 12:56:56', '2024-04-29 12:56:56', '', 0, 'http://localhost/wp-my-themes/wp-content/uploads/2024/04/logo-theme.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2024-04-29 12:58:12', '2024-04-29 12:58:12', '', 'logo-theme (1)', '', 'inherit', 'open', 'closed', '', 'logo-theme-1', '', '', '2024-04-29 12:58:12', '2024-04-29 12:58:12', '', 0, 'http://localhost/wp-my-themes/wp-content/uploads/2024/04/logo-theme-1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2024-04-29 15:08:38', '2024-04-29 15:08:38', '{\"styles\":{\"color\":{\"background\":\"var:preset|color|white\"}},\"isGlobalStylesUserThemeJSON\":true,\"version\":2}', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-bydiana', '', '', '2024-04-29 18:11:14', '2024-04-29 18:11:14', '', 0, 'http://localhost/wp-my-themes/wp-global-styles-bydiana/', 0, 'wp_global_styles', '', 0),
(37, 1, '2024-04-29 18:11:14', '2024-04-29 18:11:14', '{\"styles\":{\"color\":{\"background\":\"var:preset|color|white\"}},\"isGlobalStylesUserThemeJSON\":true,\"version\":2}', 'Custom Styles', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-04-29 18:11:14', '2024-04-29 18:11:14', '', 31, 'http://localhost/wp-my-themes/?p=37', 0, 'revision', '', 0),
(41, 1, '2024-05-01 13:37:44', '2024-05-01 13:37:44', '<!-- wp:site-logo {\"shouldSyncIcon\":true,\"align\":\"center\"} /-->\n\n<!-- wp:group {\"style\":{\"color\":{\"gradient\":\"linear-gradient(180deg,rgb(179,255,238) 0%,rgb(187,225,216) 100%)\"},\"border\":{\"radius\":\"5px\"},\"spacing\":{\"margin\":{\"top\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group has-background\" style=\"border-radius:5px;background:linear-gradient(180deg,rgb(179,255,238) 0%,rgb(187,225,216) 100%);margin-top:var(--wp--preset--spacing--30);margin-bottom:var(--wp--preset--spacing--30)\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:site-title {\"textAlign\":\"center\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|black\"}}},\"typography\":{\"fontSize\":\"40px\",\"textDecoration\":\"none\"}},\"textColor\":\"black\"} /-->\n\n<!-- wp:site-tagline {\"textAlign\":\"center\"} /-->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->', 'Header', '', 'publish', 'closed', 'closed', '', 'header', '', '', '2024-05-01 13:56:41', '2024-05-01 13:56:41', '', 0, 'http://localhost/wp-my-themes/header/', 0, 'wp_template_part', '', 0),
(44, 1, '2024-05-01 13:56:41', '2024-05-01 13:56:41', '<!-- wp:site-logo {\"shouldSyncIcon\":true,\"align\":\"center\"} /-->\n\n<!-- wp:group {\"style\":{\"color\":{\"gradient\":\"linear-gradient(180deg,rgb(179,255,238) 0%,rgb(187,225,216) 100%)\"},\"border\":{\"radius\":\"5px\"},\"spacing\":{\"margin\":{\"top\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group has-background\" style=\"border-radius:5px;background:linear-gradient(180deg,rgb(179,255,238) 0%,rgb(187,225,216) 100%);margin-top:var(--wp--preset--spacing--30);margin-bottom:var(--wp--preset--spacing--30)\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:site-title {\"textAlign\":\"center\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|black\"}}},\"typography\":{\"fontSize\":\"40px\",\"textDecoration\":\"none\"}},\"textColor\":\"black\"} /-->\n\n<!-- wp:site-tagline {\"textAlign\":\"center\"} /-->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->', 'Header', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2024-05-01 13:56:41', '2024-05-01 13:56:41', '', 41, 'http://localhost/wp-my-themes/?p=44', 0, 'revision', '', 0),
(49, 1, '2024-05-01 13:59:57', '2024-05-01 13:59:57', '<!-- wp:group {\"style\":{\"color\":{\"gradient\":\"linear-gradient(180deg,rgb(179,255,238) 0%,rgb(187,225,216) 100%)\"},\"border\":{\"radius\":\"5px\"}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group has-background\" style=\"border-radius:5px;background:linear-gradient(180deg,rgb(179,255,238) 0%,rgb(187,225,216) 100%)\"><!-- wp:spacer {\"height\":\"50px\"} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|black\"}}},\"typography\":{\"fontSize\":\"28px\"}},\"textColor\":\"black\"} -->\n<p class=\"has-text-align-center has-black-color has-text-color has-link-color\" style=\"font-size:28px\"><strong><a href=\"https://wordpress.com/\" target=\"_blank\" rel=\"noreferrer noopener\">WordPress</a> 2024</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"50px\"} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->', 'Footer', '', 'publish', 'closed', 'closed', '', 'footer', '', '', '2024-05-03 07:55:28', '2024-05-03 07:55:28', '', 0, 'http://localhost/wp-my-themes/footer/', 0, 'wp_template_part', '', 0),
(72, 1, '2024-05-02 13:01:37', '2024-05-02 13:01:37', '{\n    \"custom_css[bydiana]\": {\n        \"value\": \".social {\\n\\ttarget: \\\"_blank\\\";\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-02 13:01:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1464d709-ffa1-4576-9fdb-916fbe1af921', '', '', '2024-05-02 13:01:37', '2024-05-02 13:01:37', '', 0, 'http://localhost/wp-my-themes/1464d709-ffa1-4576-9fdb-916fbe1af921/', 0, 'customize_changeset', '', 0),
(73, 1, '2024-05-02 13:01:37', '2024-05-02 13:01:37', '', 'bydiana', '', 'publish', 'closed', 'closed', '', 'bydiana', '', '', '2024-05-02 13:02:36', '2024-05-02 13:02:36', '', 0, 'http://localhost/wp-my-themes/bydiana/', 0, 'custom_css', '', 0),
(74, 1, '2024-05-02 13:01:37', '2024-05-02 13:01:37', '.social {\n	target: \"_blank\";\n}', 'bydiana', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2024-05-02 13:01:37', '2024-05-02 13:01:37', '', 73, 'http://localhost/wp-my-themes/?p=74', 0, 'revision', '', 0),
(75, 1, '2024-05-02 13:02:36', '2024-05-02 13:02:36', '{\n    \"custom_css[bydiana]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-02 13:02:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec6f9888-7164-4b84-b138-1eb066da4836', '', '', '2024-05-02 13:02:36', '2024-05-02 13:02:36', '', 0, 'http://localhost/wp-my-themes/ec6f9888-7164-4b84-b138-1eb066da4836/', 0, 'customize_changeset', '', 0),
(76, 1, '2024-05-02 13:02:36', '2024-05-02 13:02:36', '', 'bydiana', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2024-05-02 13:02:36', '2024-05-02 13:02:36', '', 73, 'http://localhost/wp-my-themes/?p=76', 0, 'revision', '', 0),
(87, 1, '2024-05-03 07:55:28', '2024-05-03 07:55:28', '<!-- wp:group {\"style\":{\"color\":{\"gradient\":\"linear-gradient(180deg,rgb(179,255,238) 0%,rgb(187,225,216) 100%)\"},\"border\":{\"radius\":\"5px\"}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group has-background\" style=\"border-radius:5px;background:linear-gradient(180deg,rgb(179,255,238) 0%,rgb(187,225,216) 100%)\"><!-- wp:spacer {\"height\":\"50px\"} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|black\"}}},\"typography\":{\"fontSize\":\"28px\"}},\"textColor\":\"black\"} -->\n<p class=\"has-text-align-center has-black-color has-text-color has-link-color\" style=\"font-size:28px\"><strong><a href=\"https://wordpress.com/\" target=\"_blank\" rel=\"noreferrer noopener\">WordPress</a> 2024</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"50px\"} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->', 'Footer', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2024-05-03 07:55:28', '2024-05-03 07:55:28', '', 49, 'http://localhost/wp-my-themes/?p=87', 0, 'revision', '', 0),
(89, 1, '2024-05-18 15:30:28', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-05-18 15:30:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-my-themes/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2024-05-18 15:30:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-05-18 15:30:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-my-themes/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2024-05-18 15:31:07', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-05-18 15:31:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-my-themes/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Unde corrupti dignissimos id et et et. Laboriosam ea possimus et dolorem provident. Tenetur quia sit qui quis ea a est. Sint porro at vel ipsa. Quia alias voluptas impedit hic laboriosam.\n\nMolestiae et animi soluta eius id accusamus. Impedit nihil eos ratione aliquid voluptatum dolorem.\n\nQui natus dolorem iusto ut et consequatur maiores excepturi. Et quaerat nemo dolor quibusdam. Doloremque soluta veritatis corrupti. Aut impedit neque sed unde.Veritatis molestias beatae magnam dolore. Maiores ut quis ut qui occaecati illo. Voluptates tempore occaecati quia illo fugiat. Reprehenderit dicta et magni. Et ducimus sit quisquam nulla ab. In rerum sapiente quia sapiente voluptatem. Sint rem voluptatum doloremque placeat hic sequi. Vel itaque quibusdam provident et nulla. Minus perspiciatis doloribus molestiae quia qui. Error qui repudiandae et ut rerum deserunt odit. Vero quas voluptas aperiam vitae.', 'Ea sed tempora fugiat dolor non.', '', 'publish', 'open', 'open', '', 'ea-sed-tempora-fugiat-dolor-non', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/ea-sed-tempora-fugiat-dolor-non/', 0, 'post', '', 0),
(93, 1, '2024-05-18 15:31:44', '2024-05-18 15:31:44', '', 'wp_dummy_content_generator_92.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_92-jpg', '', '', '2024-05-18 15:31:44', '2024-05-18 15:31:44', '', 92, 'http://localhost/wp-my-themes/ea-sed-tempora-fugiat-dolor-non/wp_dummy_content_generator_92-jpg/', 0, 'attachment', 'image/jpg', 0),
(94, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Tenetur similique totam alias repudiandae non laborum. Sit occaecati quos non aut voluptatum tempora ut. Amet eum sed hic a. Non alias omnis voluptate ipsam.\n\nCupiditate laudantium aut est earum. Aut repellendus similique repellendus eum voluptates. Expedita accusamus repellendus fuga non corporis.\n\nLaudantium nostrum accusantium suscipit voluptatem vitae deleniti vero. Tempore officia qui odio nulla soluta architecto. Et aliquid dolorem omnis delectus voluptatem. Voluptatem possimus explicabo ex recusandae eos vel.Aut a repellat quaerat ut et officiis dolorem. Quasi aut sint perspiciatis sunt est quo autem. Totam voluptatibus atque ut consequatur. Quaerat ratione hic magni accusamus cupiditate. Numquam necessitatibus quae et maxime corrupti. Dicta dolor et mollitia facere corporis. Voluptas voluptas corporis non et impedit nesciunt dignissimos adipisci. Quasi alias quo aliquam sint est natus consequatur. Nostrum voluptatibus in quia ut officiis assumenda dolorum vel. Velit voluptatibus dignissimos ut ut eaque. Reiciendis alias ea qui animi. Eveniet in ex odio dolorum quod quod dolores. Qui repudiandae repellat quia sequi ab accusamus.', 'Ut ratione sit voluptatem corporis.', '', 'publish', 'open', 'open', '', 'ut-ratione-sit-voluptatem-corporis', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/ut-ratione-sit-voluptatem-corporis/', 0, 'post', '', 0),
(95, 1, '2024-05-18 15:31:44', '2024-05-18 15:31:44', '', 'wp_dummy_content_generator_94.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_94-jpg', '', '', '2024-05-18 15:31:44', '2024-05-18 15:31:44', '', 94, 'http://localhost/wp-my-themes/ut-ratione-sit-voluptatem-corporis/wp_dummy_content_generator_94-jpg/', 0, 'attachment', 'image/jpg', 0),
(96, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Earum eligendi asperiores corporis autem. Aut quia nam expedita animi rerum. Voluptatibus quibusdam quidem non voluptatem asperiores eos eum. Enim optio sit minima dignissimos.\n\nNon vero ut ab inventore. Officiis nemo necessitatibus ut veritatis suscipit aspernatur. Exercitationem enim rerum fugiat aspernatur.\n\nVoluptas ab modi voluptate commodi consectetur sed. Molestiae quo ullam veniam dolor. Exercitationem necessitatibus repudiandae fugiat quam maiores nobis.Ut velit ullam sed perspiciatis iusto quod. Expedita repellendus sed tempore qui. Sint quo similique et distinctio. Dicta aut consequuntur ea. Et earum occaecati sit quasi. Et et aut amet modi omnis omnis. Modi officiis alias ea omnis. Perferendis dolores vel fugit accusantium enim quaerat pariatur. Ipsum voluptatem et distinctio modi et fuga dolorem. Excepturi et perferendis aspernatur cupiditate sed rerum. Deleniti ipsam omnis beatae pariatur. Dolore fuga at repellat sint non voluptatem. Laudantium consequatur sunt enim modi aut est. Amet expedita nisi vel quidem distinctio.', 'Ipsam dolore eum vel tempora maiores.', '', 'publish', 'open', 'open', '', 'ipsam-dolore-eum-vel-tempora-maiores', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/ipsam-dolore-eum-vel-tempora-maiores/', 0, 'post', '', 0),
(97, 1, '2024-05-18 15:31:45', '2024-05-18 15:31:45', '', 'wp_dummy_content_generator_96.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_96-jpg', '', '', '2024-05-18 15:31:45', '2024-05-18 15:31:45', '', 96, 'http://localhost/wp-my-themes/ipsam-dolore-eum-vel-tempora-maiores/wp_dummy_content_generator_96-jpg/', 0, 'attachment', 'image/jpg', 0),
(98, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Minima et sit eaque veniam et nemo ut error. Et et quaerat velit labore eum numquam. Veniam nesciunt voluptatem minus nulla et.\n\nQui sit corporis necessitatibus ab soluta minima doloremque minus. Incidunt cum reiciendis dolores eius et debitis dicta at. Harum cumque accusamus quis aperiam. Earum quia sit aut beatae praesentium doloribus esse.\n\nQuo est velit animi nisi id exercitationem vitae iste. Quis sed veritatis repellat non ducimus. Qui sunt voluptates sapiente aut et. Vel voluptas omnis rerum sit quam.Assumenda totam est eum iste quis ab ex sed. Minima quia beatae accusamus rerum. Facilis laudantium placeat dolor delectus amet. Ratione itaque qui accusantium debitis non perspiciatis. Dolorum eos ipsa sint quis. Assumenda qui rem rerum et quidem. Voluptatibus doloribus ullam quo. At et voluptatem sed minus quia. Doloremque est reprehenderit ut et. Ut soluta porro facilis architecto. Voluptas earum reprehenderit doloremque placeat et. Sed at enim accusamus esse. Libero officia ut rem voluptatibus. Natus eos quisquam nisi ipsa. Ipsam distinctio rerum dicta sapiente. Itaque laborum et itaque iste aut quasi repellat quia. Non dolor suscipit blanditiis doloremque exercitationem. Et ad ut et.', 'Modi et non aliquam illo.', '', 'publish', 'open', 'open', '', 'modi-et-non-aliquam-illo', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/modi-et-non-aliquam-illo/', 0, 'post', '', 0),
(99, 1, '2024-05-18 15:31:45', '2024-05-18 15:31:45', '', 'wp_dummy_content_generator_98.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_98-jpg', '', '', '2024-05-18 15:31:45', '2024-05-18 15:31:45', '', 98, 'http://localhost/wp-my-themes/modi-et-non-aliquam-illo/wp_dummy_content_generator_98-jpg/', 0, 'attachment', 'image/jpg', 0),
(100, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Dolor in blanditiis optio ducimus veritatis dignissimos. Voluptas doloremque totam non et nemo consequatur sint.\n\nEt vel reiciendis consequuntur illum quidem totam. Consequuntur et dolores minus quam omnis harum omnis. Est nisi dolorum assumenda animi laboriosam eveniet.\n\nAdipisci dignissimos incidunt doloribus sunt qui quibusdam tenetur. Et ducimus at aperiam reprehenderit.Dignissimos nesciunt eos voluptatem enim. Eos eum doloribus consequatur itaque. Debitis dolorem enim aut asperiores. Id sit quas molestiae soluta veniam vitae dolor. Nemo est maiores vero in ut et voluptatem iure. Nostrum velit non eos voluptatem. At velit sit labore aliquid eum dicta. Voluptatem optio ipsum amet corporis et hic. Quidem qui et et nesciunt. Error error pariatur nostrum voluptatibus distinctio temporibus. Et veritatis laudantium nulla earum ullam. Repudiandae quis corporis consectetur minima tempore cumque. Aut ut hic in ut veritatis. Non et delectus dolorem illo voluptates ipsam.', 'Earum reiciendis cum id ab in tempore.', '', 'publish', 'open', 'open', '', 'earum-reiciendis-cum-id-ab-in-tempore', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/earum-reiciendis-cum-id-ab-in-tempore/', 0, 'post', '', 0),
(101, 1, '2024-05-18 15:31:46', '2024-05-18 15:31:46', '', 'wp_dummy_content_generator_100.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_100-jpg', '', '', '2024-05-18 15:31:46', '2024-05-18 15:31:46', '', 100, 'http://localhost/wp-my-themes/earum-reiciendis-cum-id-ab-in-tempore/wp_dummy_content_generator_100-jpg/', 0, 'attachment', 'image/jpg', 0),
(102, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Nisi deleniti quos numquam vel sit dignissimos ullam. Numquam rerum distinctio quae omnis ut qui quia. Non praesentium nobis omnis sapiente ab voluptates laborum.\n\nCulpa eos omnis natus voluptas non. Totam a asperiores nulla vero. Est ratione rerum at ducimus.\n\nVoluptatem velit nisi quia voluptatem earum officiis quibusdam. Reiciendis facilis tenetur autem placeat. Alias minima deleniti quaerat. Qui tempora ipsum ea atque.Quam cum et dolor cupiditate qui architecto ex. Autem nam nulla dignissimos debitis voluptas. Et molestias est vel praesentium et et non. Rerum repudiandae et sed expedita. Quia quis laudantium est consequatur. Et omnis at quia doloribus dignissimos. Natus deleniti sint aut temporibus voluptatem repudiandae corrupti. Occaecati corrupti eos blanditiis rerum quam culpa. Consequatur laudantium aliquam ut reiciendis in sit eligendi. Hic autem non dicta nihil consectetur molestias expedita placeat. In unde temporibus vero eos asperiores perspiciatis. Ipsa et ut eos possimus. Facere rerum accusamus quod harum perferendis labore dolore.', 'Ut ducimus est neque ad ad ullam.', '', 'publish', 'open', 'open', '', 'ut-ducimus-est-neque-ad-ad-ullam', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/ut-ducimus-est-neque-ad-ad-ullam/', 0, 'post', '', 0),
(103, 1, '2024-05-18 15:31:46', '2024-05-18 15:31:46', '', 'wp_dummy_content_generator_102.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_102-jpg', '', '', '2024-05-18 15:31:46', '2024-05-18 15:31:46', '', 102, 'http://localhost/wp-my-themes/ut-ducimus-est-neque-ad-ad-ullam/wp_dummy_content_generator_102-jpg/', 0, 'attachment', 'image/jpg', 0),
(104, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Maxime iure quibusdam consequatur expedita blanditiis. Natus dolorem eum dolores. Sit eum sunt modi quidem possimus sequi voluptatum.\n\nVoluptas error quia sunt quis. Ea nostrum et tenetur tempore vel quis. Deserunt est dolorem doloribus harum aut nemo atque.\n\nSoluta iste pariatur consequatur id. Sit voluptatibus delectus et quo eum autem. Ut dolor impedit aut nemo.Placeat at veritatis dolor commodi similique molestiae dolore. Cum nemo architecto iure praesentium enim nihil non explicabo. Doloremque est dolorem fugiat mollitia itaque harum magnam. Consequatur id laborum a natus voluptatibus quaerat. Nemo in beatae aspernatur qui error molestias. Dolores perferendis eius deserunt minima quibusdam. Et corrupti sint non dolor sapiente. Eum consequatur quia itaque esse. Omnis quisquam alias voluptate molestias debitis. Ipsa dolorem facere aut et est. At sit necessitatibus quaerat ipsa quaerat rem omnis magni. Quia perspiciatis et ratione ut voluptas rerum est. Eaque ut vel consequatur ipsa aliquam. Neque quasi soluta quisquam ut facilis totam.', 'Qui est at ut corporis corporis.', '', 'publish', 'open', 'open', '', 'qui-est-at-ut-corporis-corporis', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/qui-est-at-ut-corporis-corporis/', 0, 'post', '', 0),
(105, 1, '2024-05-18 15:31:47', '2024-05-18 15:31:47', '', 'wp_dummy_content_generator_104.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_104-jpg', '', '', '2024-05-18 15:31:47', '2024-05-18 15:31:47', '', 104, 'http://localhost/wp-my-themes/qui-est-at-ut-corporis-corporis/wp_dummy_content_generator_104-jpg/', 0, 'attachment', 'image/jpg', 0),
(106, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Sit beatae asperiores ea ducimus ut quam et. Incidunt non incidunt qui et corporis. Ab hic rerum est. Sit rerum nihil repellat ea sit et quos.\n\nVoluptatem et iure omnis aut nihil. Ea officiis et vero est praesentium. Quibusdam perspiciatis beatae earum expedita laborum molestiae.\n\nIllum quibusdam odio sit. Est et vel commodi voluptas et delectus amet. Dolor iure rerum ducimus culpa harum modi. Pariatur tenetur ipsa doloribus quisquam velit.Minima excepturi nobis possimus ducimus est. Aut cum fugiat itaque vel vel odio et. Nostrum ullam porro iste et officia deleniti velit ratione. In nesciunt aut quis. Et eius non placeat in eum. Sint qui sequi est voluptate dicta qui expedita. Debitis dolor facere earum. Magni reprehenderit ad in distinctio amet assumenda consequuntur. Voluptatum recusandae nobis consequatur fuga magni culpa labore. Voluptatem reprehenderit nostrum laudantium et magni minima neque. Et quis rerum animi sit. At nesciunt vel itaque eum quia. Fugiat ut qui dolorem omnis molestiae et. Sit culpa explicabo id ipsam ducimus. Aut eligendi consectetur rem occaecati.', 'Voluptatem ut a ut.', '', 'publish', 'open', 'open', '', 'voluptatem-ut-a-ut', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/voluptatem-ut-a-ut/', 0, 'post', '', 0),
(107, 1, '2024-05-18 15:31:47', '2024-05-18 15:31:47', '', 'wp_dummy_content_generator_106.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_106-jpg', '', '', '2024-05-18 15:31:47', '2024-05-18 15:31:47', '', 106, 'http://localhost/wp-my-themes/voluptatem-ut-a-ut/wp_dummy_content_generator_106-jpg/', 0, 'attachment', 'image/jpg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Optio eos ab quod officia et omnis. Ipsa et quia iusto nemo exercitationem voluptas. Sit sint quis rem voluptas labore dolores asperiores. Voluptate beatae nostrum praesentium ut maxime voluptatem non natus.\n\nCumque quia nobis impedit explicabo fugit voluptas sit. Molestiae maiores ducimus quas id. Ipsa ut perspiciatis eius veritatis eaque praesentium. Molestiae aut sit est voluptatem quo labore quam quibusdam.\n\nProvident provident vero a qui minus asperiores. Accusamus quasi quis eum suscipit. Occaecati neque necessitatibus deleniti sunt aliquid autem.Dolor laudantium praesentium et quia. Consequatur quibusdam illum adipisci aut dolorem. Quo eaque sunt culpa suscipit eum earum praesentium. Et vel repellendus sed aut. Ratione hic natus reprehenderit et nihil. Accusamus iste eos dolorem enim. Facere soluta amet odit qui sit neque explicabo mollitia. Eum aut pariatur vero neque et aut. Maiores repudiandae quo natus consequuntur. Soluta placeat ut eius enim neque tenetur non. Ad deserunt ut quae. Repellat facilis corporis expedita hic enim quis. Unde qui sed dolorum qui delectus. Asperiores quibusdam molestias neque voluptatem. Consectetur autem sint ut animi. Eius enim eos qui doloribus illum omnis doloribus.', 'Sint unde possimus repellat ipsam.', '', 'publish', 'open', 'open', '', 'sint-unde-possimus-repellat-ipsam', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/sint-unde-possimus-repellat-ipsam/', 0, 'post', '', 0),
(109, 1, '2024-05-18 15:31:48', '2024-05-18 15:31:48', '', 'wp_dummy_content_generator_108.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_108-jpg', '', '', '2024-05-18 15:31:48', '2024-05-18 15:31:48', '', 108, 'http://localhost/wp-my-themes/sint-unde-possimus-repellat-ipsam/wp_dummy_content_generator_108-jpg/', 0, 'attachment', 'image/jpg', 0),
(110, 1, '2024-05-18 00:00:00', '2024-05-18 00:00:00', 'Rerum animi sed sint vitae doloribus qui corporis sit. Numquam facilis beatae esse ut. Possimus quam error eos eius voluptate.\n\nQuaerat iure aut non repellat quo et. Aliquam tempora aut excepturi odit culpa adipisci.\n\nDistinctio quis saepe quo quo. Ea minus voluptate voluptate asperiores asperiores totam temporibus sint. Repellat tempora quae quae id est.Ad totam sed voluptatibus et. Consequatur omnis est temporibus fugit. Ratione dolorem et autem pariatur. In labore ut numquam earum. Velit eveniet occaecati blanditiis voluptas soluta. Qui veniam voluptas numquam voluptas. Animi hic earum cupiditate totam molestiae voluptatem iste. Iste eos non neque voluptas architecto. Quidem voluptatem ipsa eveniet sed officia ea. Sed enim dolores aut incidunt alias ullam. Mollitia repellat voluptas eum et ullam. Voluptas rerum nemo reiciendis in maxime aut. Dolore qui voluptatem ducimus non. Perspiciatis minus est alias molestias totam qui. Omnis neque distinctio sed consequuntur.', 'Qui eos qui velit consequatur et.', '', 'publish', 'open', 'open', '', 'qui-eos-qui-velit-consequatur-et', '', '', '2024-05-18 00:00:00', '2024-05-18 00:00:00', '', 0, 'http://localhost/wp-my-themes/qui-eos-qui-velit-consequatur-et/', 0, 'post', '', 0),
(111, 1, '2024-05-18 15:31:48', '2024-05-18 15:31:48', '', 'wp_dummy_content_generator_110.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_110-jpg', '', '', '2024-05-18 15:31:48', '2024-05-18 15:31:48', '', 110, 'http://localhost/wp-my-themes/qui-eos-qui-velit-consequatur-et/wp_dummy_content_generator_110-jpg/', 0, 'attachment', 'image/jpg', 0),
(112, 1, '2024-05-18 15:33:33', '2024-05-18 15:33:26', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-05-18 15:33:33', '2024-05-18 15:33:33', '', 0, 'http://localhost/wp-my-themes/?p=112', 1, 'nav_menu_item', '', 0),
(113, 1, '2024-05-18 15:31:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-05-18 15:31:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-my-themes/?p=113', 1, 'nav_menu_item', '', 0),
(114, 1, '2024-05-18 15:33:33', '2024-05-18 15:33:26', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2024-05-18 15:33:33', '2024-05-18 15:33:33', '', 0, 'http://localhost/wp-my-themes/?p=114', 2, 'nav_menu_item', '', 0),
(115, 1, '2024-05-18 15:33:33', '2024-05-18 15:33:26', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2024-05-18 15:33:33', '2024-05-18 15:33:33', '', 0, 'http://localhost/wp-my-themes/?p=115', 3, 'nav_menu_item', '', 0),
(116, 1, '2024-05-18 15:33:33', '2024-05-18 15:33:26', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2024-05-18 15:33:33', '2024-05-18 15:33:33', '', 0, 'http://localhost/wp-my-themes/?p=116', 5, 'nav_menu_item', '', 0),
(117, 1, '2024-05-18 15:33:33', '2024-05-18 15:33:26', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2024-05-18 15:33:33', '2024-05-18 15:33:33', '', 0, 'http://localhost/wp-my-themes/?p=117', 4, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'tenetur', 'tenetur', 0),
(3, 'illum', 'illum', 0),
(4, 'amet', 'amet', 0),
(5, 'dolores', 'dolores', 0),
(6, 'reiciendis', 'reiciendis', 0),
(7, 'dolor', 'dolor', 0),
(8, 'molestias', 'molestias', 0),
(9, 'ipsam', 'ipsam', 0),
(10, 'voluptate', 'voluptate', 0),
(11, 'ea', 'ea', 0),
(12, 'bydiana', 'bydiana', 0),
(13, 'header', 'header', 0),
(14, 'footer', 'footer', 0),
(15, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(6, 10, 0),
(8, 4, 0),
(8, 8, 0),
(10, 6, 0),
(10, 10, 0),
(12, 5, 0),
(12, 8, 0),
(14, 4, 0),
(14, 10, 0),
(16, 3, 0),
(16, 7, 0),
(18, 4, 0),
(18, 10, 0),
(20, 5, 0),
(20, 10, 0),
(22, 1, 0),
(22, 9, 0),
(24, 4, 0),
(24, 11, 0),
(31, 12, 0),
(41, 12, 0),
(41, 13, 0),
(49, 12, 0),
(49, 14, 0),
(92, 2, 0),
(92, 8, 0),
(94, 3, 0),
(94, 11, 0),
(96, 6, 0),
(96, 11, 0),
(98, 6, 0),
(98, 11, 0),
(100, 1, 0),
(100, 7, 0),
(102, 1, 0),
(102, 9, 0),
(104, 5, 0),
(104, 8, 0),
(106, 1, 0),
(106, 8, 0),
(108, 2, 0),
(108, 10, 0),
(110, 4, 0),
(110, 10, 0),
(112, 15, 0),
(114, 15, 0),
(115, 15, 0),
(116, 15, 0),
(117, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 5),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 3),
(7, 7, 'post_tag', '', 0, 2),
(8, 8, 'post_tag', '', 0, 5),
(9, 9, 'post_tag', '', 0, 2),
(10, 10, 'post_tag', '', 0, 7),
(11, 11, 'post_tag', '', 0, 4),
(12, 12, 'wp_theme', '', 0, 3),
(13, 13, 'wp_template_part_area', '', 0, 1),
(14, 14, 'wp_template_part_area', '', 0, 1),
(15, 15, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"1430db62d6587ebdc3502ee6fec9f3a833b34da112d7723935235a1b41202021\";a:4:{s:10:\"expiration\";i:1716835812;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1715626212;}s:64:\"2f048bcae7a0893a57d83de2f54cb4d1a13b72f30055fd644c101fbabca88bd0\";a:4:{s:10:\"expiration\";i:1717254431;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0\";s:5:\"login\";i:1716044831;}s:64:\"a07893c379b8931a626c82d66abe8b661768a0422d831df56caeeb5d7f440bc6\";a:4:{s:10:\"expiration\";i:1717255812;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0\";s:5:\"login\";i:1716046212;}s:64:\"1745733b77fc7dc75ebe3634798f89022f30fcb621a313068c41bb3aa42f4087\";a:4:{s:10:\"expiration\";i:1717255823;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0\";s:5:\"login\";i:1716046223;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '88'),
(18, 2, 'nickname', 'alexandrea20'),
(19, 2, 'first_name', 'Kelly'),
(20, 2, 'last_name', 'Abbott'),
(21, 2, 'description', 'Beatae quas placeat autem. Ipsa occaecati vel voluptatibus dolor qui deleniti. Numquam quis odio dolorem sint aut est. Fuga aperiam iure numquam sapiente.'),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', ''),
(29, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(30, 2, 'wp_user_level', '0'),
(31, 2, 'dismissed_wp_pointers', ''),
(32, 2, 'wp_dummy_content_generator_user', 'true'),
(33, 3, 'nickname', 'mohammad31'),
(34, 3, 'first_name', 'Brody'),
(35, 3, 'last_name', 'Heaney'),
(36, 3, 'description', 'Eos ratione est incidunt beatae. Occaecati aut fugit quis error repudiandae. Ut odit quam eligendi error omnis officia. Aliquam odit architecto atque dicta.'),
(37, 3, 'rich_editing', 'true'),
(38, 3, 'syntax_highlighting', 'true'),
(39, 3, 'comment_shortcuts', 'false'),
(40, 3, 'admin_color', 'fresh'),
(41, 3, 'use_ssl', '0'),
(42, 3, 'show_admin_bar_front', 'true'),
(43, 3, 'locale', ''),
(44, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(45, 3, 'wp_user_level', '0'),
(46, 3, 'dismissed_wp_pointers', ''),
(47, 3, 'wp_dummy_content_generator_user', 'true'),
(48, 4, 'nickname', 'metz.julie'),
(49, 4, 'first_name', 'Herminia'),
(50, 4, 'last_name', 'Pfeffer'),
(51, 4, 'description', 'Voluptatem vitae explicabo officiis ipsam id. Consequatur et fugiat id iste neque in cumque. Unde nobis molestiae laudantium cupiditate. Rerum similique fugiat ipsam eius.'),
(52, 4, 'rich_editing', 'true'),
(53, 4, 'syntax_highlighting', 'true'),
(54, 4, 'comment_shortcuts', 'false'),
(55, 4, 'admin_color', 'fresh'),
(56, 4, 'use_ssl', '0'),
(57, 4, 'show_admin_bar_front', 'true'),
(58, 4, 'locale', ''),
(59, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(60, 4, 'wp_user_level', '0'),
(61, 4, 'dismissed_wp_pointers', ''),
(62, 4, 'wp_dummy_content_generator_user', 'true'),
(63, 5, 'nickname', 'marina14'),
(64, 5, 'first_name', 'Thea'),
(65, 5, 'last_name', 'Bogan'),
(66, 5, 'description', 'Praesentium facere ex consequuntur ratione voluptatem. Et ut similique ea dolorem nulla et. Consequuntur qui tempora dolor consequatur omnis.'),
(67, 5, 'rich_editing', 'true'),
(68, 5, 'syntax_highlighting', 'true'),
(69, 5, 'comment_shortcuts', 'false'),
(70, 5, 'admin_color', 'fresh'),
(71, 5, 'use_ssl', '0'),
(72, 5, 'show_admin_bar_front', 'true'),
(73, 5, 'locale', ''),
(74, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(75, 5, 'wp_user_level', '0'),
(76, 5, 'dismissed_wp_pointers', ''),
(77, 5, 'wp_dummy_content_generator_user', 'true'),
(78, 6, 'nickname', 'clesch'),
(79, 6, 'first_name', 'Doyle'),
(80, 6, 'last_name', 'Rolfson'),
(81, 6, 'description', 'Qui quaerat expedita voluptatem tempora impedit dignissimos. Quia maiores voluptas magni delectus laborum. Cupiditate culpa id neque omnis quidem et.'),
(82, 6, 'rich_editing', 'true'),
(83, 6, 'syntax_highlighting', 'true'),
(84, 6, 'comment_shortcuts', 'false'),
(85, 6, 'admin_color', 'fresh'),
(86, 6, 'use_ssl', '0'),
(87, 6, 'show_admin_bar_front', 'true'),
(88, 6, 'locale', ''),
(89, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(90, 6, 'wp_user_level', '0'),
(91, 6, 'dismissed_wp_pointers', ''),
(92, 6, 'wp_dummy_content_generator_user', 'true'),
(93, 7, 'nickname', 'cristal.koss'),
(94, 7, 'first_name', 'Wendy'),
(95, 7, 'last_name', 'Brakus'),
(96, 7, 'description', 'Praesentium aut totam corporis ut. Sunt incidunt laudantium et ut et. Ut repudiandae odio optio eos consequatur tempore. Ut aut assumenda reiciendis praesentium.'),
(97, 7, 'rich_editing', 'true'),
(98, 7, 'syntax_highlighting', 'true'),
(99, 7, 'comment_shortcuts', 'false'),
(100, 7, 'admin_color', 'fresh'),
(101, 7, 'use_ssl', '0'),
(102, 7, 'show_admin_bar_front', 'true'),
(103, 7, 'locale', ''),
(104, 7, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(105, 7, 'wp_user_level', '0'),
(106, 7, 'dismissed_wp_pointers', ''),
(107, 7, 'wp_dummy_content_generator_user', 'true'),
(108, 8, 'nickname', 'zachery.prohaska'),
(109, 8, 'first_name', 'Amber'),
(110, 8, 'last_name', 'Bogan'),
(111, 8, 'description', 'Ea aperiam autem rerum ducimus porro corporis incidunt voluptatem. Laudantium doloribus aut et eum.'),
(112, 8, 'rich_editing', 'true'),
(113, 8, 'syntax_highlighting', 'true'),
(114, 8, 'comment_shortcuts', 'false'),
(115, 8, 'admin_color', 'fresh'),
(116, 8, 'use_ssl', '0'),
(117, 8, 'show_admin_bar_front', 'true'),
(118, 8, 'locale', ''),
(119, 8, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(120, 8, 'wp_user_level', '0'),
(121, 8, 'dismissed_wp_pointers', ''),
(122, 8, 'wp_dummy_content_generator_user', 'true'),
(123, 9, 'nickname', 'vwindler'),
(124, 9, 'first_name', 'Hermann'),
(125, 9, 'last_name', 'Becker'),
(126, 9, 'description', 'Et ut ratione nam. Omnis nihil architecto dolores voluptas delectus odio non culpa. Ut aut quaerat voluptas ut labore. Vel eos explicabo ad dignissimos error culpa.'),
(127, 9, 'rich_editing', 'true'),
(128, 9, 'syntax_highlighting', 'true'),
(129, 9, 'comment_shortcuts', 'false'),
(130, 9, 'admin_color', 'fresh'),
(131, 9, 'use_ssl', '0'),
(132, 9, 'show_admin_bar_front', 'true'),
(133, 9, 'locale', ''),
(134, 9, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(135, 9, 'wp_user_level', '0'),
(136, 9, 'dismissed_wp_pointers', ''),
(137, 9, 'wp_dummy_content_generator_user', 'true'),
(138, 10, 'nickname', 'ziemann.lynn'),
(139, 10, 'first_name', 'Armani'),
(140, 10, 'last_name', 'Pfannerstill'),
(141, 10, 'description', 'Voluptas fugit excepturi libero. Quia blanditiis expedita sed optio aliquid amet fugiat. Praesentium quae velit vel quisquam id officia laboriosam neque. Et alias dolor voluptatem ipsa rerum.'),
(142, 10, 'rich_editing', 'true'),
(143, 10, 'syntax_highlighting', 'true'),
(144, 10, 'comment_shortcuts', 'false'),
(145, 10, 'admin_color', 'fresh'),
(146, 10, 'use_ssl', '0'),
(147, 10, 'show_admin_bar_front', 'true'),
(148, 10, 'locale', ''),
(149, 10, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(150, 10, 'wp_user_level', '0'),
(151, 10, 'dismissed_wp_pointers', ''),
(152, 10, 'wp_dummy_content_generator_user', 'true'),
(153, 11, 'nickname', 'doyle.ted'),
(154, 11, 'first_name', 'Rodrick'),
(155, 11, 'last_name', 'Kunze'),
(156, 11, 'description', 'Dolor nobis explicabo nam eius expedita. Quam ducimus asperiores omnis. Totam suscipit ea sed dolor est porro ut aut. Aliquid adipisci vel laboriosam explicabo.'),
(157, 11, 'rich_editing', 'true'),
(158, 11, 'syntax_highlighting', 'true'),
(159, 11, 'comment_shortcuts', 'false'),
(160, 11, 'admin_color', 'fresh'),
(161, 11, 'use_ssl', '0'),
(162, 11, 'show_admin_bar_front', 'true'),
(163, 11, 'locale', ''),
(164, 11, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(165, 11, 'wp_user_level', '0'),
(166, 11, 'dismissed_wp_pointers', ''),
(167, 11, 'wp_dummy_content_generator_user', 'true'),
(168, 1, 'wp_persisted_preferences', 'a:6:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-18T16:18:50.252Z\";s:14:\"core/edit-site\";a:3:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:1;s:18:\"welcomeGuideStyles\";b:0;}s:4:\"core\";a:1:{s:10:\"editorMode\";s:4:\"text\";}s:17:\"core/block-editor\";a:1:{s:25:\"linkControlSettingsDrawer\";b:1;}s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(169, 1, 'wp_user-settings', 'libraryContent=browse'),
(170, 1, 'wp_user-settings-time', '1714395494'),
(171, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(172, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(173, 1, 'enable_custom_fields', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bvc4.5Ju/lAaOKCJc6qQDnTS8R.UPU.', 'admin', 'kabadiana327@gmail.com', 'http://localhost/wp-my-themes', '2024-04-29 12:24:36', '', 0, 'admin'),
(2, 'alexandrea20', '$P$BWeF.e5Xs4ts1dbiv1YteaxhuuJDP5.', 'alexandrea20', 'armstrong.delpha@gmail.com', '', '2024-04-29 12:27:56', '', 0, 'alexandrea20'),
(3, 'mohammad31', '$P$BfgMIPU1QJWRHcLQ1djAKcSy9.4hTt1', 'mohammad31', 'tavares.carter@yahoo.com', '', '2024-04-29 12:27:56', '', 0, 'mohammad31'),
(4, 'metz.julie', '$P$BH6IddimZemyWhhLmrb0INiZH.qo.N/', 'metz-julie', 'corine02@gmail.com', '', '2024-04-29 12:27:57', '', 0, 'metz.julie'),
(5, 'marina14', '$P$BQ4pDJ3w0NtsQngAtLLB.YHxXyUZFh/', 'marina14', 'marjolaine62@hotmail.com', '', '2024-04-29 12:27:57', '', 0, 'marina14'),
(6, 'clesch', '$P$Bbzr8QMrzdsAO6CNmBvKtftxJ83NcN/', 'clesch', 'arthur.yundt@yahoo.com', '', '2024-04-29 12:27:57', '', 0, 'clesch'),
(7, 'cristal.koss', '$P$BLdqVwcG.6Dy/mEytbG.xmdBBFqp6u.', 'cristal-koss', 'angie.hoppe@gmail.com', '', '2024-04-29 12:27:57', '', 0, 'cristal.koss'),
(8, 'zachery.prohaska', '$P$BWfyAObvRViCExeSulUf/jT2xhnk0y1', 'zachery-prohaska', 'wyman.jarrod@yahoo.com', '', '2024-04-29 12:27:58', '', 0, 'zachery.prohaska'),
(9, 'vwindler', '$P$BUgKOYZ0bRKftKDrOjjDLqLdDoZlx..', 'vwindler', 'leora.gerlach@yahoo.com', '', '2024-04-29 12:27:58', '', 0, 'vwindler'),
(10, 'ziemann.lynn', '$P$BKrGC/8YFSc88RTTC5G4cZpYZo4vMB.', 'ziemann-lynn', 'weffertz@gmail.com', '', '2024-04-29 12:27:59', '', 0, 'ziemann.lynn'),
(11, 'doyle.ted', '$P$B0DsZ14IJotGfUTYwx3oe7bI/5qgFe.', 'doyle-ted', 'pwaters@hotmail.com', '', '2024-04-29 12:27:59', '', 0, 'doyle.ted');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
