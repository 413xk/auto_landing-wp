-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 14, 2024 at 12:28 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auto_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-03-14 21:47:10', '2024-03-14 21:47:10', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/auto', 'yes'),
(2, 'home', 'http://localhost:8888/auto', 'yes'),
(3, 'blogname', 'autoexpress', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'island.verity0b@icloud.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'auto', 'yes'),
(41, 'stylesheet', 'auto', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1726004830', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1710805630;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1710841630;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1710841642;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1710884830;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1710884842;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1711144030;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1711150438;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.4.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.3\";s:7:\"version\";s:5:\"6.4.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1710803504;s:15:\"version_checked\";s:5:\"6.4.3\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1710803505;s:7:\"checked\";a:4:{s:4:\"auto\";s:0:\"\";s:16:\"twentytwentyfour\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.3\";s:15:\"twentytwentytwo\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.3.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.6.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(130, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1710453336;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(131, '_site_transient_timeout_browser_dd78878bebc0e6afff80be96516511d7', '1711057642', 'no'),
(132, '_site_transient_browser_dd78878bebc0e6afff80be96516511d7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"122.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_ce267f3653936506950ae9448202043a', '1711057642', 'no'),
(134, '_site_transient_php_check_ce267f3653936506950ae9448202043a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(142, 'can_compress_scripts', '1', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(152, 'current_theme', 'auto', 'yes'),
(153, 'theme_mods_auto', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:29;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(158, 'recovery_mode_email_last_sent', '1710460425', 'yes'),
(175, 'category_children', 'a:0:{}', 'yes'),
(176, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(195, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(196, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":8,\"critical\":0}', 'yes'),
(198, 'recently_activated', 'a:0:{}', 'yes'),
(204, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.9.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1710545644;s:7:\"version\";s:5:\"5.9.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(209, 'site_logo', '29', 'yes'),
(225, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1710803505;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.9.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}}s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.9.2\";}}', 'no'),
(226, 'acf_first_activated_version', '6.2.7', 'yes'),
(227, 'acf_version', '6.2.7', 'yes'),
(296, '_site_transient_timeout_theme_roots', '1710805304', 'no'),
(297, '_site_transient_theme_roots', 'a:4:{s:4:\"auto\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1710527525'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1710527527'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 8, '_edit_lock', '1710803504:1'),
(10, 8, '_wp_page_template', 'home.php'),
(11, 1, '_wp_trash_meta_status', 'publish'),
(12, 1, '_wp_trash_meta_time', '1710530006'),
(13, 1, '_wp_desired_post_slug', 'hello-world'),
(14, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(15, 11, '_edit_lock', '1710530203:1'),
(18, 11, '_wp_trash_meta_status', 'publish'),
(19, 11, '_wp_trash_meta_time', '1710530348'),
(20, 11, '_wp_desired_post_slug', 'infiniti-qx50-2016-%d0%b3'),
(21, 13, '_edit_lock', '1710530535:1'),
(24, 15, '_wp_attached_file', '2024/03/1.jpg'),
(25, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:250;s:4:\"file\";s:13:\"2024/03/1.jpg\";s:8:\"filesize\";i:128755;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"1-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16634;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8024;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 13, '_thumbnail_id', '15'),
(29, 16, '_edit_lock', '1710530481:1'),
(30, 17, '_wp_attached_file', '2024/03/3.jpg'),
(31, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:250;s:4:\"file\";s:13:\"2024/03/3.jpg\";s:8:\"filesize\";i:94922;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"3-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12469;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6040;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 18, '_wp_attached_file', '2024/03/2.jpg'),
(33, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:249;s:4:\"file\";s:13:\"2024/03/2.jpg\";s:8:\"filesize\";i:127485;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"2-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15221;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6710;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 16, '_thumbnail_id', '18'),
(37, 20, '_edit_lock', '1710530750:1'),
(40, 20, '_thumbnail_id', '17'),
(41, 22, '_edit_lock', '1710530733:1'),
(44, 22, '_thumbnail_id', '18'),
(45, 24, '_edit_lock', '1710532897:1'),
(46, 25, '_wp_attached_file', '2024/03/ford-mustang.png'),
(47, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:814;s:6:\"height\";i:462;s:4:\"file\";s:24:\"2024/03/ford-mustang.png\";s:8:\"filesize\";i:344448;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"ford-mustang-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:59116;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"ford-mustang-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31223;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"ford-mustang-768x436.png\";s:5:\"width\";i:768;s:6:\"height\";i:436;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:293257;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 24, '_thumbnail_id', '25'),
(51, 24, '_wp_trash_meta_status', 'publish'),
(52, 24, '_wp_trash_meta_time', '1710533045'),
(53, 24, '_wp_desired_post_slug', 'm'),
(54, 27, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(55, 27, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <island.verity0b@icloud.com>\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(56, 27, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <island.verity0b@icloud.com>\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(57, 27, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(58, 27, '_additional_settings', ''),
(59, 27, '_locale', 'en_US'),
(60, 27, '_hash', 'fb054fc087445a6d14816a6613cacb6894b6a32f'),
(61, 28, '_form', '[text* name class:contacts__input placeholder \"Как Вас Зовут?\"]\n[tel* tel class:contacts__input placeholder \"Ваш номер телефона\"]\n[submit class:contacts__btn class:button \"Отправить заявку\"]'),
(62, 28, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <island.verity0b@icloud.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(63, 28, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <island.verity0b@icloud.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(64, 28, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(65, 28, '_additional_settings', ''),
(66, 28, '_locale', 'en_US'),
(67, 28, '_hash', '938ebbb9e6fc0d1e529474ecf321d3c2223f4bf3'),
(69, 28, '_config_validation', 'a:2:{s:9:\"form.body\";a:1:{i:0;a:2:{s:4:\"code\";s:17:\"unavailable_names\";s:4:\"args\";a:3:{s:7:\"message\";s:55:\"Unavailable names (%names%) are used for form controls.\";s:6:\"params\";a:1:{s:5:\"names\";s:6:\"\"name\"\";}s:4:\"link\";s:63:\"https://contactform7.com/configuration-errors/unavailable-names\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(70, 29, '_wp_attached_file', '2024/03/logo.svg'),
(71, 29, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:5294;}'),
(72, 30, '_edit_lock', '1710547263:1'),
(73, 30, '_wp_trash_meta_status', 'publish'),
(74, 30, '_wp_trash_meta_time', '1710547300'),
(75, 31, '_edit_last', '1'),
(76, 31, '_edit_lock', '1710551515:1'),
(78, 8, 'footnotes', ''),
(80, 33, 'footnotes', ''),
(82, 8, '_edit_last', '1'),
(83, 8, 'phone', '+38 (050) 555 66 77'),
(84, 8, '_phone', 'field_65f4f2095517d'),
(85, 33, 'phone', '380505556677'),
(86, 33, '_phone', 'field_65f4e34521fb9'),
(89, 34, 'footnotes', ''),
(91, 34, 'phone', '+380505556677'),
(92, 34, '_phone', 'field_65f4e34521fb9'),
(95, 36, 'footnotes', ''),
(97, 8, 'phone_call', '+380505556677'),
(98, 8, '_phone_call', 'field_65f4f23f5517e'),
(99, 36, 'phone', '+38 (050) 555 66 77'),
(100, 36, '_phone', 'field_65f4e34521fb9'),
(101, 36, 'phone_call', '+380505556677'),
(102, 36, '_phone_call', 'field_65f4e5dacc689'),
(103, 37, '_edit_last', '1'),
(104, 37, '_edit_lock', '1710792673:1'),
(105, 48, '_wp_attached_file', '2024/03/sprite.svg'),
(106, 48, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6352;}'),
(107, 49, '_wp_attached_file', '2024/03/facebook.svg'),
(108, 49, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1350;}'),
(109, 50, '_wp_attached_file', '2024/03/whatsapp.svg'),
(110, 50, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2465;}'),
(111, 51, '_wp_attached_file', '2024/03/telegram.svg'),
(112, 51, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1114;}'),
(113, 52, '_wp_attached_file', '2024/03/instagram.svg'),
(114, 52, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1481;}'),
(119, 54, 'footnotes', ''),
(121, 8, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(122, 8, '_instagram_link', 'field_65f4e95567e58'),
(123, 8, 'instagram_icon', '52'),
(124, 8, '_instagram_icon', 'field_65f4e9c167e59'),
(125, 8, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(126, 8, '_telegram_link', 'field_65f4e9e867e5a'),
(127, 8, 'telegram_icon', '51'),
(128, 8, '_telegram_icon', 'field_65f4ea0867e5b'),
(129, 8, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(130, 8, '_whatsapp_link', 'field_65f4ea2067e5c'),
(131, 8, 'whatsapp_icon', '50'),
(132, 8, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(133, 8, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(134, 8, '_facebook_link', 'field_65f4ea4467e5e'),
(135, 8, 'facebook_icon', '49'),
(136, 8, '_facebook_icon', 'field_65f4ea5b67e5f'),
(137, 54, 'phone', '+38 (050) 555 66 77'),
(138, 54, '_phone', 'field_65f4e34521fb9'),
(139, 54, 'phone_call', '+380505556677'),
(140, 54, '_phone_call', 'field_65f4e5dacc689'),
(141, 54, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(142, 54, '_instagram_link', 'field_65f4e95567e58'),
(143, 54, 'instagram_icon', '52'),
(144, 54, '_instagram_icon', 'field_65f4e9c167e59'),
(145, 54, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(146, 54, '_telegram_link', 'field_65f4e9e867e5a'),
(147, 54, 'telegram_icon', '51'),
(148, 54, '_telegram_icon', 'field_65f4ea0867e5b'),
(149, 54, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(150, 54, '_whatsapp_link', 'field_65f4ea2067e5c'),
(151, 54, 'whatsapp_icon', '50'),
(152, 54, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(153, 54, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(154, 54, '_facebook_link', 'field_65f4ea4467e5e'),
(155, 54, 'facebook_icon', '49'),
(156, 54, '_facebook_icon', 'field_65f4ea5b67e5f'),
(159, 55, 'footnotes', ''),
(161, 55, 'phone', '+38 (050) 555 66 77'),
(162, 55, '_phone', 'field_65f4f2095517d'),
(163, 55, 'phone_call', '+380505556677'),
(164, 55, '_phone_call', 'field_65f4f23f5517e'),
(165, 55, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(166, 55, '_instagram_link', 'field_65f4e95567e58'),
(167, 55, 'instagram_icon', '52'),
(168, 55, '_instagram_icon', 'field_65f4e9c167e59'),
(169, 55, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(170, 55, '_telegram_link', 'field_65f4e9e867e5a'),
(171, 55, 'telegram_icon', '51'),
(172, 55, '_telegram_icon', 'field_65f4ea0867e5b'),
(173, 55, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(174, 55, '_whatsapp_link', 'field_65f4ea2067e5c'),
(175, 55, 'whatsapp_icon', '50'),
(176, 55, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(177, 55, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(178, 55, '_facebook_link', 'field_65f4ea4467e5e'),
(179, 55, 'facebook_icon', '49'),
(180, 55, '_facebook_icon', 'field_65f4ea5b67e5f'),
(181, 31, '_wp_trash_meta_status', 'publish'),
(182, 31, '_wp_trash_meta_time', '1710551662'),
(183, 31, '_wp_desired_post_slug', 'group_65f4e34580ffa'),
(184, 32, '_wp_trash_meta_status', 'publish'),
(185, 32, '_wp_trash_meta_time', '1710551662'),
(186, 32, '_wp_desired_post_slug', 'field_65f4e34521fb9'),
(187, 35, '_wp_trash_meta_status', 'publish'),
(188, 35, '_wp_trash_meta_time', '1710551662'),
(189, 35, '_wp_desired_post_slug', 'field_65f4e5dacc689'),
(194, 66, 'footnotes', ''),
(196, 8, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(197, 8, '_address', 'field_65f883ba85dc5'),
(198, 8, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(199, 8, '_working_hours', 'field_65f8844885dc6'),
(200, 66, 'phone', '+38 (050) 555 66 77'),
(201, 66, '_phone', 'field_65f4f2095517d'),
(202, 66, 'phone_call', '+380505556677'),
(203, 66, '_phone_call', 'field_65f4f23f5517e'),
(204, 66, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(205, 66, '_instagram_link', 'field_65f4e95567e58'),
(206, 66, 'instagram_icon', '52'),
(207, 66, '_instagram_icon', 'field_65f4e9c167e59'),
(208, 66, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(209, 66, '_telegram_link', 'field_65f4e9e867e5a'),
(210, 66, 'telegram_icon', '51'),
(211, 66, '_telegram_icon', 'field_65f4ea0867e5b'),
(212, 66, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(213, 66, '_whatsapp_link', 'field_65f4ea2067e5c'),
(214, 66, 'whatsapp_icon', '50'),
(215, 66, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(216, 66, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(217, 66, '_facebook_link', 'field_65f4ea4467e5e'),
(218, 66, 'facebook_icon', '49'),
(219, 66, '_facebook_icon', 'field_65f4ea5b67e5f'),
(220, 66, 'address', 'Киев, Подол <br>\r\nул. Константиновская, д.71'),
(221, 66, '_address', 'field_65f883ba85dc5'),
(222, 66, 'working_hours', 'Пн-Сб: с 9:00 до 19:00, <br>\r\nВс: выходной'),
(223, 66, '_working_hours', 'field_65f8844885dc6'),
(226, 67, 'footnotes', ''),
(228, 67, 'phone', '+38 (050) 555 66 77'),
(229, 67, '_phone', 'field_65f4f2095517d'),
(230, 67, 'phone_call', '+380505556677'),
(231, 67, '_phone_call', 'field_65f4f23f5517e'),
(232, 67, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(233, 67, '_instagram_link', 'field_65f4e95567e58'),
(234, 67, 'instagram_icon', '52'),
(235, 67, '_instagram_icon', 'field_65f4e9c167e59'),
(236, 67, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(237, 67, '_telegram_link', 'field_65f4e9e867e5a'),
(238, 67, 'telegram_icon', '51'),
(239, 67, '_telegram_icon', 'field_65f4ea0867e5b'),
(240, 67, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(241, 67, '_whatsapp_link', 'field_65f4ea2067e5c'),
(242, 67, 'whatsapp_icon', '50'),
(243, 67, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(244, 67, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(245, 67, '_facebook_link', 'field_65f4ea4467e5e'),
(246, 67, 'facebook_icon', '49'),
(247, 67, '_facebook_icon', 'field_65f4ea5b67e5f'),
(248, 67, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(249, 67, '_address', 'field_65f883ba85dc5'),
(250, 67, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(251, 67, '_working_hours', 'field_65f8844885dc6'),
(254, 72, 'footnotes', ''),
(256, 8, 'title', 'авто из сша “под ключ” '),
(257, 8, '_title', 'field_65f888b53e6a5'),
(258, 8, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(259, 8, '_trigger', 'field_65f888e3e7945'),
(260, 8, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(261, 8, '_text', 'field_65f8892be7946'),
(262, 72, 'phone', '+38 (050) 555 66 77'),
(263, 72, '_phone', 'field_65f4f2095517d'),
(264, 72, 'phone_call', '+380505556677'),
(265, 72, '_phone_call', 'field_65f4f23f5517e'),
(266, 72, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(267, 72, '_instagram_link', 'field_65f4e95567e58'),
(268, 72, 'instagram_icon', '52'),
(269, 72, '_instagram_icon', 'field_65f4e9c167e59'),
(270, 72, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(271, 72, '_telegram_link', 'field_65f4e9e867e5a'),
(272, 72, 'telegram_icon', '51'),
(273, 72, '_telegram_icon', 'field_65f4ea0867e5b'),
(274, 72, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(275, 72, '_whatsapp_link', 'field_65f4ea2067e5c'),
(276, 72, 'whatsapp_icon', '50'),
(277, 72, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(278, 72, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(279, 72, '_facebook_link', 'field_65f4ea4467e5e'),
(280, 72, 'facebook_icon', '49'),
(281, 72, '_facebook_icon', 'field_65f4ea5b67e5f'),
(282, 72, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(283, 72, '_address', 'field_65f883ba85dc5'),
(284, 72, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(285, 72, '_working_hours', 'field_65f8844885dc6'),
(286, 72, 'title', 'авто из сша “под ключ” '),
(287, 72, '_title', 'field_65f888b53e6a5'),
(288, 72, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(289, 72, '_trigger', 'field_65f888e3e7945'),
(290, 72, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(291, 72, '_text', 'field_65f8892be7946'),
(294, 74, 'footnotes', ''),
(296, 8, 'top_image', '25'),
(297, 8, '_top_image', 'field_65f88fe696d2f'),
(298, 74, 'phone', '+38 (050) 555 66 77'),
(299, 74, '_phone', 'field_65f4f2095517d'),
(300, 74, 'phone_call', '+380505556677'),
(301, 74, '_phone_call', 'field_65f4f23f5517e'),
(302, 74, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(303, 74, '_instagram_link', 'field_65f4e95567e58'),
(304, 74, 'instagram_icon', '52'),
(305, 74, '_instagram_icon', 'field_65f4e9c167e59'),
(306, 74, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(307, 74, '_telegram_link', 'field_65f4e9e867e5a'),
(308, 74, 'telegram_icon', '51'),
(309, 74, '_telegram_icon', 'field_65f4ea0867e5b'),
(310, 74, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(311, 74, '_whatsapp_link', 'field_65f4ea2067e5c'),
(312, 74, 'whatsapp_icon', '50'),
(313, 74, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(314, 74, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(315, 74, '_facebook_link', 'field_65f4ea4467e5e'),
(316, 74, 'facebook_icon', '49'),
(317, 74, '_facebook_icon', 'field_65f4ea5b67e5f'),
(318, 74, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(319, 74, '_address', 'field_65f883ba85dc5'),
(320, 74, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(321, 74, '_working_hours', 'field_65f8844885dc6'),
(322, 74, 'title', 'авто из сша “под ключ” '),
(323, 74, '_title', 'field_65f888b53e6a5'),
(324, 74, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(325, 74, '_trigger', 'field_65f888e3e7945'),
(326, 74, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(327, 74, '_text', 'field_65f8892be7946'),
(328, 74, 'top_image', '25'),
(329, 74, '_top_image', 'field_65f88fe696d2f'),
(334, 78, 'footnotes', ''),
(336, 8, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(337, 8, '_services_text', 'field_65f892eaab86e'),
(338, 8, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(339, 8, '_service_item', 'field_65f89355ab86f'),
(340, 78, 'phone', '+38 (050) 555 66 77'),
(341, 78, '_phone', 'field_65f4f2095517d'),
(342, 78, 'phone_call', '+380505556677'),
(343, 78, '_phone_call', 'field_65f4f23f5517e'),
(344, 78, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(345, 78, '_instagram_link', 'field_65f4e95567e58'),
(346, 78, 'instagram_icon', '52'),
(347, 78, '_instagram_icon', 'field_65f4e9c167e59'),
(348, 78, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(349, 78, '_telegram_link', 'field_65f4e9e867e5a'),
(350, 78, 'telegram_icon', '51'),
(351, 78, '_telegram_icon', 'field_65f4ea0867e5b'),
(352, 78, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(353, 78, '_whatsapp_link', 'field_65f4ea2067e5c'),
(354, 78, 'whatsapp_icon', '50'),
(355, 78, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(356, 78, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(357, 78, '_facebook_link', 'field_65f4ea4467e5e'),
(358, 78, 'facebook_icon', '49'),
(359, 78, '_facebook_icon', 'field_65f4ea5b67e5f'),
(360, 78, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(361, 78, '_address', 'field_65f883ba85dc5'),
(362, 78, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(363, 78, '_working_hours', 'field_65f8844885dc6'),
(364, 78, 'title', 'авто из сша “под ключ” '),
(365, 78, '_title', 'field_65f888b53e6a5'),
(366, 78, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(367, 78, '_trigger', 'field_65f888e3e7945'),
(368, 78, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(369, 78, '_text', 'field_65f8892be7946'),
(370, 78, 'top_image', '25'),
(371, 78, '_top_image', 'field_65f88fe696d2f'),
(372, 78, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(373, 78, '_services_text', 'field_65f892eaab86e'),
(374, 78, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(375, 78, '_service_item', 'field_65f89355ab86f'),
(378, 79, 'footnotes', ''),
(380, 8, 'service_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(381, 8, '_service_text', 'field_65f892eaab86e'),
(382, 79, 'phone', '+38 (050) 555 66 77'),
(383, 79, '_phone', 'field_65f4f2095517d'),
(384, 79, 'phone_call', '+380505556677'),
(385, 79, '_phone_call', 'field_65f4f23f5517e'),
(386, 79, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(387, 79, '_instagram_link', 'field_65f4e95567e58'),
(388, 79, 'instagram_icon', '52'),
(389, 79, '_instagram_icon', 'field_65f4e9c167e59'),
(390, 79, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(391, 79, '_telegram_link', 'field_65f4e9e867e5a'),
(392, 79, 'telegram_icon', '51'),
(393, 79, '_telegram_icon', 'field_65f4ea0867e5b'),
(394, 79, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(395, 79, '_whatsapp_link', 'field_65f4ea2067e5c'),
(396, 79, 'whatsapp_icon', '50'),
(397, 79, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(398, 79, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(399, 79, '_facebook_link', 'field_65f4ea4467e5e'),
(400, 79, 'facebook_icon', '49'),
(401, 79, '_facebook_icon', 'field_65f4ea5b67e5f'),
(402, 79, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(403, 79, '_address', 'field_65f883ba85dc5'),
(404, 79, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(405, 79, '_working_hours', 'field_65f8844885dc6'),
(406, 79, 'title', 'авто из сша “под ключ” '),
(407, 79, '_title', 'field_65f888b53e6a5'),
(408, 79, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(409, 79, '_trigger', 'field_65f888e3e7945'),
(410, 79, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(411, 79, '_text', 'field_65f8892be7946'),
(412, 79, 'top_image', '25'),
(413, 79, '_top_image', 'field_65f88fe696d2f'),
(414, 79, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(415, 79, '_services_text', 'field_65f892eaab86e'),
(416, 79, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(417, 79, '_service_item', 'field_65f89355ab86f'),
(418, 79, 'service_text', '<div class=\"services__content-box\">\r\n            <h6 class=\"services__content-title\">\r\n              Почему ввоз авто из США?\r\n            </h6>\r\n            <div class=\"services__content-textbox\">\r\n              <p class=\"services__content-text\">\r\n                Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько\r\n                раз, как бы\r\n                парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по\r\n                оцениванию состояния авто\r\n                и самим процессом покупки автомобиля.\r\n              </p>\r\n              <p class=\"services__content-text\">\r\n                Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама\r\n                лизинговая компания\r\n                занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для\r\n                автолюбителей Украины.\r\n              </p>\r\n            </div>\r\n          </div>\r\n          <div class=\"services__content-box\">\r\n            <h6 class=\"services__content-title\">\r\n              Из-за чего такая низкая цена?\r\n            </h6>\r\n            <div class=\"services__content-textbox\">\r\n              <p class=\"services__content-text\">\r\n                Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет\r\n                половину цены даже\r\n                из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и\r\n                ремонт, то цена\r\n                аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических\r\n                денег.\r\n              </p>\r\n            </div>'),
(419, 79, '_service_text', 'field_65f892eaab86e'),
(422, 80, 'footnotes', ''),
(424, 80, 'phone', '+38 (050) 555 66 77'),
(425, 80, '_phone', 'field_65f4f2095517d'),
(426, 80, 'phone_call', '+380505556677'),
(427, 80, '_phone_call', 'field_65f4f23f5517e'),
(428, 80, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(429, 80, '_instagram_link', 'field_65f4e95567e58'),
(430, 80, 'instagram_icon', '52'),
(431, 80, '_instagram_icon', 'field_65f4e9c167e59'),
(432, 80, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(433, 80, '_telegram_link', 'field_65f4e9e867e5a'),
(434, 80, 'telegram_icon', '51'),
(435, 80, '_telegram_icon', 'field_65f4ea0867e5b'),
(436, 80, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(437, 80, '_whatsapp_link', 'field_65f4ea2067e5c'),
(438, 80, 'whatsapp_icon', '50'),
(439, 80, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(440, 80, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(441, 80, '_facebook_link', 'field_65f4ea4467e5e'),
(442, 80, 'facebook_icon', '49'),
(443, 80, '_facebook_icon', 'field_65f4ea5b67e5f'),
(444, 80, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(445, 80, '_address', 'field_65f883ba85dc5'),
(446, 80, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(447, 80, '_working_hours', 'field_65f8844885dc6'),
(448, 80, 'title', 'авто из сша “под ключ” '),
(449, 80, '_title', 'field_65f888b53e6a5'),
(450, 80, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(451, 80, '_trigger', 'field_65f888e3e7945'),
(452, 80, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(453, 80, '_text', 'field_65f8892be7946'),
(454, 80, 'top_image', '25'),
(455, 80, '_top_image', 'field_65f88fe696d2f'),
(456, 80, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(457, 80, '_services_text', 'field_65f892eaab86e'),
(458, 80, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(459, 80, '_service_item', 'field_65f89355ab86f'),
(460, 80, 'service_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(461, 80, '_service_text', 'field_65f892eaab86e'),
(464, 81, 'footnotes', ''),
(466, 81, 'phone', '+38 (050) 555 66 77'),
(467, 81, '_phone', 'field_65f4f2095517d'),
(468, 81, 'phone_call', '+380505556677'),
(469, 81, '_phone_call', 'field_65f4f23f5517e'),
(470, 81, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(471, 81, '_instagram_link', 'field_65f4e95567e58'),
(472, 81, 'instagram_icon', '52'),
(473, 81, '_instagram_icon', 'field_65f4e9c167e59'),
(474, 81, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(475, 81, '_telegram_link', 'field_65f4e9e867e5a'),
(476, 81, 'telegram_icon', '51'),
(477, 81, '_telegram_icon', 'field_65f4ea0867e5b'),
(478, 81, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(479, 81, '_whatsapp_link', 'field_65f4ea2067e5c'),
(480, 81, 'whatsapp_icon', '50'),
(481, 81, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(482, 81, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(483, 81, '_facebook_link', 'field_65f4ea4467e5e'),
(484, 81, 'facebook_icon', '49'),
(485, 81, '_facebook_icon', 'field_65f4ea5b67e5f'),
(486, 81, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(487, 81, '_address', 'field_65f883ba85dc5'),
(488, 81, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(489, 81, '_working_hours', 'field_65f8844885dc6'),
(490, 81, 'title', 'авто из сша “под ключ” '),
(491, 81, '_title', 'field_65f888b53e6a5'),
(492, 81, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(493, 81, '_trigger', 'field_65f888e3e7945'),
(494, 81, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(495, 81, '_text', 'field_65f8892be7946'),
(496, 81, 'top_image', '25'),
(497, 81, '_top_image', 'field_65f88fe696d2f'),
(498, 81, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(499, 81, '_services_text', 'field_65f892eaab86e');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(500, 81, 'service_item', '<ol class=\"services__list\">\r\n \r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n</li>\r\n</ol>'),
(501, 81, '_service_item', 'field_65f89355ab86f'),
(502, 81, 'service_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(503, 81, '_service_text', 'field_65f892eaab86e'),
(506, 82, 'footnotes', ''),
(508, 82, 'phone', '+38 (050) 555 66 77'),
(509, 82, '_phone', 'field_65f4f2095517d'),
(510, 82, 'phone_call', '+380505556677'),
(511, 82, '_phone_call', 'field_65f4f23f5517e'),
(512, 82, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(513, 82, '_instagram_link', 'field_65f4e95567e58'),
(514, 82, 'instagram_icon', '52'),
(515, 82, '_instagram_icon', 'field_65f4e9c167e59'),
(516, 82, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(517, 82, '_telegram_link', 'field_65f4e9e867e5a'),
(518, 82, 'telegram_icon', '51'),
(519, 82, '_telegram_icon', 'field_65f4ea0867e5b'),
(520, 82, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(521, 82, '_whatsapp_link', 'field_65f4ea2067e5c'),
(522, 82, 'whatsapp_icon', '50'),
(523, 82, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(524, 82, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(525, 82, '_facebook_link', 'field_65f4ea4467e5e'),
(526, 82, 'facebook_icon', '49'),
(527, 82, '_facebook_icon', 'field_65f4ea5b67e5f'),
(528, 82, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(529, 82, '_address', 'field_65f883ba85dc5'),
(530, 82, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(531, 82, '_working_hours', 'field_65f8844885dc6'),
(532, 82, 'title', 'авто из сша “под ключ” '),
(533, 82, '_title', 'field_65f888b53e6a5'),
(534, 82, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(535, 82, '_trigger', 'field_65f888e3e7945'),
(536, 82, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(537, 82, '_text', 'field_65f8892be7946'),
(538, 82, 'top_image', '25'),
(539, 82, '_top_image', 'field_65f88fe696d2f'),
(540, 82, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(541, 82, '_services_text', 'field_65f892eaab86e'),
(542, 82, 'service_item', '<ol class=\"services__list\">\r\n \r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(543, 82, '_service_item', 'field_65f89355ab86f'),
(544, 82, 'service_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(545, 82, '_service_text', 'field_65f892eaab86e'),
(548, 83, 'footnotes', ''),
(550, 83, 'phone', '+38 (050) 555 66 77'),
(551, 83, '_phone', 'field_65f4f2095517d'),
(552, 83, 'phone_call', '+380505556677'),
(553, 83, '_phone_call', 'field_65f4f23f5517e'),
(554, 83, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(555, 83, '_instagram_link', 'field_65f4e95567e58'),
(556, 83, 'instagram_icon', '52'),
(557, 83, '_instagram_icon', 'field_65f4e9c167e59'),
(558, 83, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(559, 83, '_telegram_link', 'field_65f4e9e867e5a'),
(560, 83, 'telegram_icon', '51'),
(561, 83, '_telegram_icon', 'field_65f4ea0867e5b'),
(562, 83, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(563, 83, '_whatsapp_link', 'field_65f4ea2067e5c'),
(564, 83, 'whatsapp_icon', '50'),
(565, 83, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(566, 83, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(567, 83, '_facebook_link', 'field_65f4ea4467e5e'),
(568, 83, 'facebook_icon', '49'),
(569, 83, '_facebook_icon', 'field_65f4ea5b67e5f'),
(570, 83, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(571, 83, '_address', 'field_65f883ba85dc5'),
(572, 83, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(573, 83, '_working_hours', 'field_65f8844885dc6'),
(574, 83, 'title', 'авто из сша “под ключ” '),
(575, 83, '_title', 'field_65f888b53e6a5'),
(576, 83, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(577, 83, '_trigger', 'field_65f888e3e7945'),
(578, 83, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(579, 83, '_text', 'field_65f8892be7946'),
(580, 83, 'top_image', '25'),
(581, 83, '_top_image', 'field_65f88fe696d2f'),
(582, 83, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(583, 83, '_services_text', 'field_65f892eaab86e'),
(584, 83, 'service_item', '<ol class=\"services__list\">\r\n \r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n\r\n<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n\r\n</ol>'),
(585, 83, '_service_item', 'field_65f89355ab86f'),
(586, 83, 'service_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(587, 83, '_service_text', 'field_65f892eaab86e'),
(588, 86, '_wp_attached_file', '2024/03/car.png'),
(589, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:320;s:6:\"height\";i:606;s:4:\"file\";s:15:\"2024/03/car.png\";s:8:\"filesize\";i:175139;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"car-158x300.png\";s:5:\"width\";i:158;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49721;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"car-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:27311;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(592, 87, 'footnotes', ''),
(594, 8, 'benefits_img', '86'),
(595, 8, '_benefits_img', 'field_65f89e5578449'),
(596, 8, 'benefits-text', '<ul class=\"benefits__list\">\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">5</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(597, 8, '_benefits-text', 'field_65f89f0b128f2'),
(598, 87, 'phone', '+38 (050) 555 66 77'),
(599, 87, '_phone', 'field_65f4f2095517d'),
(600, 87, 'phone_call', '+380505556677'),
(601, 87, '_phone_call', 'field_65f4f23f5517e'),
(602, 87, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(603, 87, '_instagram_link', 'field_65f4e95567e58'),
(604, 87, 'instagram_icon', '52'),
(605, 87, '_instagram_icon', 'field_65f4e9c167e59'),
(606, 87, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(607, 87, '_telegram_link', 'field_65f4e9e867e5a'),
(608, 87, 'telegram_icon', '51'),
(609, 87, '_telegram_icon', 'field_65f4ea0867e5b'),
(610, 87, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(611, 87, '_whatsapp_link', 'field_65f4ea2067e5c'),
(612, 87, 'whatsapp_icon', '50'),
(613, 87, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(614, 87, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(615, 87, '_facebook_link', 'field_65f4ea4467e5e'),
(616, 87, 'facebook_icon', '49'),
(617, 87, '_facebook_icon', 'field_65f4ea5b67e5f'),
(618, 87, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(619, 87, '_address', 'field_65f883ba85dc5'),
(620, 87, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(621, 87, '_working_hours', 'field_65f8844885dc6'),
(622, 87, 'title', 'авто из сша “под ключ” '),
(623, 87, '_title', 'field_65f888b53e6a5'),
(624, 87, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(625, 87, '_trigger', 'field_65f888e3e7945'),
(626, 87, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(627, 87, '_text', 'field_65f8892be7946'),
(628, 87, 'top_image', '25'),
(629, 87, '_top_image', 'field_65f88fe696d2f'),
(630, 87, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(631, 87, '_services_text', 'field_65f892eaab86e'),
(632, 87, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(633, 87, '_service_item', 'field_65f89355ab86f'),
(634, 87, 'service_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(635, 87, '_service_text', 'field_65f892eaab86e'),
(636, 87, 'benefits_img', '86'),
(637, 87, '_benefits_img', 'field_65f89e5578449'),
(638, 87, 'benefits-text', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">5</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(639, 87, '_benefits-text', 'field_65f89f0b128f2'),
(642, 88, 'footnotes', ''),
(644, 88, 'phone', '+38 (050) 555 66 77'),
(645, 88, '_phone', 'field_65f4f2095517d'),
(646, 88, 'phone_call', '+380505556677'),
(647, 88, '_phone_call', 'field_65f4f23f5517e'),
(648, 88, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(649, 88, '_instagram_link', 'field_65f4e95567e58'),
(650, 88, 'instagram_icon', '52'),
(651, 88, '_instagram_icon', 'field_65f4e9c167e59'),
(652, 88, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(653, 88, '_telegram_link', 'field_65f4e9e867e5a'),
(654, 88, 'telegram_icon', '51'),
(655, 88, '_telegram_icon', 'field_65f4ea0867e5b'),
(656, 88, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(657, 88, '_whatsapp_link', 'field_65f4ea2067e5c'),
(658, 88, 'whatsapp_icon', '50'),
(659, 88, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(660, 88, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(661, 88, '_facebook_link', 'field_65f4ea4467e5e'),
(662, 88, 'facebook_icon', '49'),
(663, 88, '_facebook_icon', 'field_65f4ea5b67e5f'),
(664, 88, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(665, 88, '_address', 'field_65f883ba85dc5'),
(666, 88, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(667, 88, '_working_hours', 'field_65f8844885dc6'),
(668, 88, 'title', 'авто из сша “под ключ” '),
(669, 88, '_title', 'field_65f888b53e6a5'),
(670, 88, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(671, 88, '_trigger', 'field_65f888e3e7945'),
(672, 88, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(673, 88, '_text', 'field_65f8892be7946'),
(674, 88, 'top_image', '25'),
(675, 88, '_top_image', 'field_65f88fe696d2f'),
(676, 88, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(677, 88, '_services_text', 'field_65f892eaab86e'),
(678, 88, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(679, 88, '_service_item', 'field_65f89355ab86f'),
(680, 88, 'service_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(681, 88, '_service_text', 'field_65f892eaab86e'),
(682, 88, 'benefits_img', '86'),
(683, 88, '_benefits_img', 'field_65f89e5578449'),
(684, 88, 'benefits-text', '<ul class=\"benefits__list\">\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">5</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(685, 88, '_benefits-text', 'field_65f89f0b128f2'),
(688, 89, 'footnotes', ''),
(690, 8, 'benefits_text', '<ul class=\"benefits__list\">\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">5</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(691, 8, '_benefits_text', 'field_65f89f0b128f2'),
(692, 89, 'phone', '+38 (050) 555 66 77'),
(693, 89, '_phone', 'field_65f4f2095517d'),
(694, 89, 'phone_call', '+380505556677'),
(695, 89, '_phone_call', 'field_65f4f23f5517e'),
(696, 89, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(697, 89, '_instagram_link', 'field_65f4e95567e58'),
(698, 89, 'instagram_icon', '52'),
(699, 89, '_instagram_icon', 'field_65f4e9c167e59'),
(700, 89, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(701, 89, '_telegram_link', 'field_65f4e9e867e5a'),
(702, 89, 'telegram_icon', '51'),
(703, 89, '_telegram_icon', 'field_65f4ea0867e5b'),
(704, 89, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(705, 89, '_whatsapp_link', 'field_65f4ea2067e5c'),
(706, 89, 'whatsapp_icon', '50'),
(707, 89, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(708, 89, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(709, 89, '_facebook_link', 'field_65f4ea4467e5e'),
(710, 89, 'facebook_icon', '49'),
(711, 89, '_facebook_icon', 'field_65f4ea5b67e5f'),
(712, 89, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(713, 89, '_address', 'field_65f883ba85dc5'),
(714, 89, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(715, 89, '_working_hours', 'field_65f8844885dc6'),
(716, 89, 'title', 'авто из сша “под ключ” '),
(717, 89, '_title', 'field_65f888b53e6a5'),
(718, 89, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(719, 89, '_trigger', 'field_65f888e3e7945'),
(720, 89, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(721, 89, '_text', 'field_65f8892be7946'),
(722, 89, 'top_image', '25'),
(723, 89, '_top_image', 'field_65f88fe696d2f'),
(724, 89, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(725, 89, '_services_text', 'field_65f892eaab86e'),
(726, 89, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(727, 89, '_service_item', 'field_65f89355ab86f'),
(728, 89, 'service_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(729, 89, '_service_text', 'field_65f892eaab86e'),
(730, 89, 'benefits_img', '86'),
(731, 89, '_benefits_img', 'field_65f89e5578449'),
(732, 89, 'benefits-text', '<ul class=\"benefits__list\">\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">5</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(733, 89, '_benefits-text', 'field_65f89f0b128f2'),
(734, 89, 'benefits_text', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">5</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(735, 89, '_benefits_text', 'field_65f89f0b128f2'),
(738, 90, 'footnotes', ''),
(740, 90, 'phone', '+38 (050) 555 66 77'),
(741, 90, '_phone', 'field_65f4f2095517d'),
(742, 90, 'phone_call', '+380505556677'),
(743, 90, '_phone_call', 'field_65f4f23f5517e'),
(744, 90, 'instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"https://instagram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(745, 90, '_instagram_link', 'field_65f4e95567e58'),
(746, 90, 'instagram_icon', '52'),
(747, 90, '_instagram_icon', 'field_65f4e9c167e59'),
(748, 90, 'telegram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://telegram.com\";s:6:\"target\";s:6:\"_blank\";}'),
(749, 90, '_telegram_link', 'field_65f4e9e867e5a'),
(750, 90, 'telegram_icon', '51'),
(751, 90, '_telegram_icon', 'field_65f4ea0867e5b'),
(752, 90, 'whatsapp_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://whatsapp.com\";s:6:\"target\";s:6:\"_blank\";}'),
(753, 90, '_whatsapp_link', 'field_65f4ea2067e5c'),
(754, 90, 'whatsapp_icon', '50'),
(755, 90, '_whatsapp_icon', 'field_65f4ea3467e5d'),
(756, 90, 'facebook_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://facebook.com\";s:6:\"target\";s:6:\"_blank\";}'),
(757, 90, '_facebook_link', 'field_65f4ea4467e5e'),
(758, 90, 'facebook_icon', '49'),
(759, 90, '_facebook_icon', 'field_65f4ea5b67e5f'),
(760, 90, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(761, 90, '_address', 'field_65f883ba85dc5'),
(762, 90, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(763, 90, '_working_hours', 'field_65f8844885dc6'),
(764, 90, 'title', 'авто из сша “под ключ” '),
(765, 90, '_title', 'field_65f888b53e6a5'),
(766, 90, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(767, 90, '_trigger', 'field_65f888e3e7945'),
(768, 90, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(769, 90, '_text', 'field_65f8892be7946'),
(770, 90, 'top_image', '25'),
(771, 90, '_top_image', 'field_65f88fe696d2f'),
(772, 90, 'services_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(773, 90, '_services_text', 'field_65f892eaab86e'),
(774, 90, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(775, 90, '_service_item', 'field_65f89355ab86f'),
(776, 90, 'service_text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(777, 90, '_service_text', 'field_65f892eaab86e'),
(778, 90, 'benefits_img', '86'),
(779, 90, '_benefits_img', 'field_65f89e5578449'),
(780, 90, 'benefits-text', '<ul class=\"benefits__list\">\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">5</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(781, 90, '_benefits-text', 'field_65f89f0b128f2'),
(782, 90, 'benefits_text', '<ul class=\"benefits__list\">\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">5</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n\r\n<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(783, 90, '_benefits_text', 'field_65f89f0b128f2'),
(784, 91, '_edit_lock', '1710794921:1'),
(789, 91, '_wp_old_slug', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0-%d0%ba%d0%be%d0%bd%d1%84%d0%b8%d0%b4%d0%b5%d0%bd%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-03-14 21:47:10', '2024-03-14 21:47:10', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2024-03-15 19:13:26', '2024-03-15 19:13:26', '', 0, 'http://localhost:8888/auto/?p=1', 0, 'post', '', 1),
(2, 1, '2024-03-14 21:47:10', '2024-03-14 21:47:10', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/auto/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2024-03-15 18:32:07', '2024-03-15 18:32:07', '', 0, 'http://localhost:8888/auto/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-03-14 21:47:10', '2024-03-14 21:47:10', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888/auto.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2024-03-15 18:32:05', '2024-03-15 18:32:05', '', 0, 'http://localhost:8888/auto/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-03-14 21:47:11', '2024-03-14 21:47:11', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-03-14 21:47:11', '2024-03-14 21:47:11', '', 0, 'http://localhost:8888/auto/2024/03/14/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-03-14 21:47:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-03-14 21:47:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/auto/?p=5', 0, 'post', '', 0),
(6, 1, '2024-03-15 18:32:05', '2024-03-15 18:32:05', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888/auto.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-03-15 18:32:05', '2024-03-15 18:32:05', '', 3, 'http://localhost:8888/auto/?p=6', 0, 'revision', '', 0),
(7, 1, '2024-03-15 18:32:07', '2024-03-15 18:32:07', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/auto/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-03-15 18:32:07', '2024-03-15 18:32:07', '', 2, 'http://localhost:8888/auto/?p=7', 0, 'revision', '', 0),
(8, 1, '2024-03-15 18:35:15', '2024-03-15 18:35:15', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-03-18 20:14:21', '2024-03-18 20:14:21', '', 0, 'http://localhost:8888/auto/?page_id=8', 0, 'page', '', 0),
(9, 1, '2024-03-15 18:35:15', '2024-03-15 18:35:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-15 18:35:15', '2024-03-15 18:35:15', '', 8, 'http://localhost:8888/auto/?p=9', 0, 'revision', '', 0),
(10, 1, '2024-03-15 19:13:26', '2024-03-15 19:13:26', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-03-15 19:13:26', '2024-03-15 19:13:26', '', 1, 'http://localhost:8888/auto/?p=10', 0, 'revision', '', 0),
(11, 1, '2024-03-15 19:18:41', '2024-03-15 19:18:41', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'INFINITI QX50 2016 г.', '', 'trash', 'open', 'open', '', 'infiniti-qx50-2016-%d0%b3__trashed', '', '', '2024-03-15 19:19:08', '2024-03-15 19:19:08', '', 0, 'http://localhost:8888/auto/?p=11', 0, 'post', '', 0),
(12, 1, '2024-03-15 19:18:41', '2024-03-15 19:18:41', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'INFINITI QX50 2016 г.', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-03-15 19:18:41', '2024-03-15 19:18:41', '', 11, 'http://localhost:8888/auto/?p=12', 0, 'revision', '', 0),
(13, 1, '2024-03-15 19:19:35', '2024-03-15 19:19:35', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'INFINITI QX50 2016 г.', '', 'publish', 'open', 'open', '', 'infiniti-qx50-2016-%d0%b3', '', '', '2024-03-15 19:21:04', '2024-03-15 19:21:04', '', 0, 'http://localhost:8888/auto/?p=13', 0, 'post', '', 0),
(14, 1, '2024-03-15 19:19:35', '2024-03-15 19:19:35', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'INFINITI QX50 2016 г.', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-03-15 19:19:35', '2024-03-15 19:19:35', '', 13, 'http://localhost:8888/auto/?p=14', 0, 'revision', '', 0),
(15, 1, '2024-03-15 19:20:54', '2024-03-15 19:20:54', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2024-03-15 19:20:54', '2024-03-15 19:20:54', '', 13, 'http://localhost:8888/auto/wp-content/uploads/2024/03/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2024-03-15 19:23:43', '2024-03-15 19:23:43', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2018 г.', '', 'publish', 'open', 'open', '', 'tesla-model-3-2018-%d0%b3', '', '', '2024-03-15 19:23:43', '2024-03-15 19:23:43', '', 0, 'http://localhost:8888/auto/?p=16', 0, 'post', '', 0),
(17, 1, '2024-03-15 19:23:33', '2024-03-15 19:23:33', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2024-03-15 19:23:33', '2024-03-15 19:23:33', '', 16, 'http://localhost:8888/auto/wp-content/uploads/2024/03/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2024-03-15 19:23:33', '2024-03-15 19:23:33', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2024-03-15 19:23:33', '2024-03-15 19:23:33', '', 16, 'http://localhost:8888/auto/wp-content/uploads/2024/03/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2024-03-15 19:23:43', '2024-03-15 19:23:43', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2018 г.', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2024-03-15 19:23:43', '2024-03-15 19:23:43', '', 16, 'http://localhost:8888/auto/?p=19', 0, 'revision', '', 0),
(20, 1, '2024-03-15 19:26:04', '2024-03-15 19:26:04', '<!-- wp:paragraph -->\n<p>Экономия 5000 $</p>\n<!-- /wp:paragraph -->', 'LEXUS LS250 2020 г.', '', 'publish', 'open', 'open', '', 'lexus-ls250-2020-%d0%b3', '', '', '2024-03-15 19:26:04', '2024-03-15 19:26:04', '', 0, 'http://localhost:8888/auto/?p=20', 0, 'post', '', 0),
(21, 1, '2024-03-15 19:26:04', '2024-03-15 19:26:04', '<!-- wp:paragraph -->\n<p>Экономия 5000 $</p>\n<!-- /wp:paragraph -->', 'LEXUS LS250 2020 г.', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2024-03-15 19:26:04', '2024-03-15 19:26:04', '', 20, 'http://localhost:8888/auto/?p=21', 0, 'revision', '', 0),
(22, 1, '2024-03-15 19:27:56', '2024-03-15 19:27:56', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2018 г.', '', 'publish', 'open', 'open', '', 'tesla-model-3-2018-%d0%b3-2', '', '', '2024-03-15 19:27:56', '2024-03-15 19:27:56', '', 0, 'http://localhost:8888/auto/?p=22', 0, 'post', '', 0),
(23, 1, '2024-03-15 19:27:56', '2024-03-15 19:27:56', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2018 г.', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-03-15 19:27:56', '2024-03-15 19:27:56', '', 22, 'http://localhost:8888/auto/?p=23', 0, 'revision', '', 0),
(24, 1, '2024-03-15 20:03:35', '2024-03-15 20:03:35', '<!-- wp:paragraph -->\n<p>m</p>\n<!-- /wp:paragraph -->', 'm', '', 'trash', 'open', 'open', '', 'm__trashed', '', '', '2024-03-15 20:04:05', '2024-03-15 20:04:05', '', 0, 'http://localhost:8888/auto/?p=24', 0, 'post', '', 0),
(25, 1, '2024-03-15 20:03:30', '2024-03-15 20:03:30', '', 'ford-mustang', '', 'inherit', 'open', 'closed', '', 'ford-mustang', '', '', '2024-03-15 20:03:30', '2024-03-15 20:03:30', '', 24, 'http://localhost:8888/auto/wp-content/uploads/2024/03/ford-mustang.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2024-03-15 20:03:35', '2024-03-15 20:03:35', '<!-- wp:paragraph -->\n<p>m</p>\n<!-- /wp:paragraph -->', 'm', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2024-03-15 20:03:35', '2024-03-15 20:03:35', '', 24, 'http://localhost:8888/auto/?p=26', 0, 'revision', '', 0),
(27, 1, '2024-03-15 23:34:04', '2024-03-15 23:34:04', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <island.verity0b@icloud.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <island.verity0b@icloud.com>\nMessage Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2024-03-15 23:34:04', '2024-03-15 23:34:04', '', 0, 'http://localhost:8888/auto/?post_type=wpcf7_contact_form&p=27', 0, 'wpcf7_contact_form', '', 0),
(28, 1, '2024-03-15 23:46:26', '2024-03-15 23:46:26', '[text* name class:contacts__input placeholder \"Как Вас Зовут?\"]\r\n[tel* tel class:contacts__input placeholder \"Ваш номер телефона\"]\r\n[submit class:contacts__btn class:button \"Отправить заявку\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <island.verity0b@icloud.com>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <island.verity0b@icloud.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Оставить заявку', '', 'publish', 'closed', 'closed', '', '%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%b8%d1%82%d1%8c-%d0%b7%d0%b0%d1%8f%d0%b2%d0%ba%d1%83', '', '', '2024-03-15 23:52:10', '2024-03-15 23:52:10', '', 0, 'http://localhost:8888/auto/?post_type=wpcf7_contact_form&#038;p=28', 0, 'wpcf7_contact_form', '', 0),
(29, 1, '2024-03-15 23:56:07', '2024-03-15 23:56:07', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2024-03-15 23:56:07', '2024-03-15 23:56:07', '', 0, 'http://localhost:8888/auto/wp-content/uploads/2024/03/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(30, 1, '2024-03-16 00:01:40', '2024-03-16 00:01:40', '{\n    \"auto::custom_logo\": {\n        \"value\": 29,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-03-15 23:56:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '87609f3a-a43d-4c09-bad5-628681d9f5c9', '', '', '2024-03-16 00:01:40', '2024-03-16 00:01:40', '', 0, 'http://localhost:8888/auto/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2024-03-16 00:11:59', '2024-03-16 00:11:59', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Phone', 'phone', 'trash', 'closed', 'closed', '', 'group_65f4e34580ffa__trashed', '', '', '2024-03-16 01:14:22', '2024-03-16 01:14:22', '', 0, 'http://localhost:8888/auto/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2024-03-16 00:11:59', '2024-03-16 00:11:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Введите номер телефона\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Phone', 'phone', 'trash', 'closed', 'closed', '', 'field_65f4e34521fb9__trashed', '', '', '2024-03-16 01:14:22', '2024-03-16 01:14:22', '', 31, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=32', 0, 'acf-field', '', 0),
(33, 1, '2024-03-16 00:12:56', '2024-03-16 00:12:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-16 00:12:56', '2024-03-16 00:12:56', '', 8, 'http://localhost:8888/auto/?p=33', 0, 'revision', '', 0),
(34, 1, '2024-03-16 00:18:02', '2024-03-16 00:18:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-16 00:18:02', '2024-03-16 00:18:02', '', 8, 'http://localhost:8888/auto/?p=34', 0, 'revision', '', 0),
(35, 1, '2024-03-16 00:21:40', '2024-03-16 00:21:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:83:\"Введите номер телефона, без скобок и пробелов\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Phone_call', 'phone_call', 'trash', 'closed', 'closed', '', 'field_65f4e5dacc689__trashed', '', '', '2024-03-16 01:14:22', '2024-03-16 01:14:22', '', 31, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=35', 1, 'acf-field', '', 0),
(36, 1, '2024-03-16 00:23:09', '2024-03-16 00:23:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-16 00:23:09', '2024-03-16 00:23:09', '', 8, 'http://localhost:8888/auto/?p=36', 0, 'revision', '', 0),
(37, 1, '2024-03-16 00:40:08', '2024-03-16 00:40:08', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Main page', 'main-page', 'publish', 'closed', 'closed', '', 'group_65f4e955897f4', '', '', '2024-03-18 20:12:43', '2024-03-18 20:12:43', '', 0, 'http://localhost:8888/auto/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2024-03-16 00:40:08', '2024-03-16 00:40:08', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'instagram link', 'instagram_link', 'publish', 'closed', 'closed', '', 'field_65f4e95567e58', '', '', '2024-03-18 19:05:34', '2024-03-18 19:05:34', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=38', 6, 'acf-field', '', 0),
(40, 1, '2024-03-16 00:40:08', '2024-03-16 00:40:08', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'telegram link', 'telegram_link', 'publish', 'closed', 'closed', '', 'field_65f4e9e867e5a', '', '', '2024-03-18 19:05:34', '2024-03-18 19:05:34', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=40', 7, 'acf-field', '', 0),
(42, 1, '2024-03-16 00:40:08', '2024-03-16 00:40:08', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'whatsapp link', 'whatsapp_link', 'publish', 'closed', 'closed', '', 'field_65f4ea2067e5c', '', '', '2024-03-18 19:05:34', '2024-03-18 19:05:34', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=42', 8, 'acf-field', '', 0),
(44, 1, '2024-03-16 00:40:08', '2024-03-16 00:40:08', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'facebook link', 'facebook_link', 'publish', 'closed', 'closed', '', 'field_65f4ea4467e5e', '', '', '2024-03-18 19:05:34', '2024-03-18 19:05:34', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=44', 9, 'acf-field', '', 0),
(48, 1, '2024-03-16 00:43:33', '2024-03-16 00:43:33', '', 'sprite', '', 'inherit', 'open', 'closed', '', 'sprite', '', '', '2024-03-16 00:43:33', '2024-03-16 00:43:33', '', 8, 'http://localhost:8888/auto/wp-content/uploads/2024/03/sprite.svg', 0, 'attachment', 'image/svg+xml', 0),
(49, 1, '2024-03-16 00:43:34', '2024-03-16 00:43:34', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2024-03-16 00:43:34', '2024-03-16 00:43:34', '', 8, 'http://localhost:8888/auto/wp-content/uploads/2024/03/facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(50, 1, '2024-03-16 00:43:34', '2024-03-16 00:43:34', '', 'whatsapp', '', 'inherit', 'open', 'closed', '', 'whatsapp', '', '', '2024-03-16 00:43:34', '2024-03-16 00:43:34', '', 8, 'http://localhost:8888/auto/wp-content/uploads/2024/03/whatsapp.svg', 0, 'attachment', 'image/svg+xml', 0),
(51, 1, '2024-03-16 00:43:34', '2024-03-16 00:43:34', '', 'telegram', '', 'inherit', 'open', 'closed', '', 'telegram', '', '', '2024-03-16 00:43:34', '2024-03-16 00:43:34', '', 8, 'http://localhost:8888/auto/wp-content/uploads/2024/03/telegram.svg', 0, 'attachment', 'image/svg+xml', 0),
(52, 1, '2024-03-16 00:43:34', '2024-03-16 00:43:34', '', 'instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2024-03-16 00:43:34', '2024-03-16 00:43:34', '', 8, 'http://localhost:8888/auto/wp-content/uploads/2024/03/instagram.svg', 0, 'attachment', 'image/svg+xml', 0),
(54, 1, '2024-03-16 00:44:36', '2024-03-16 00:44:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-16 00:44:36', '2024-03-16 00:44:36', '', 8, 'http://localhost:8888/auto/?p=54', 0, 'revision', '', 0),
(55, 1, '2024-03-16 00:58:05', '2024-03-16 00:58:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-16 00:58:05', '2024-03-16 00:58:05', '', 8, 'http://localhost:8888/auto/?p=55', 0, 'revision', '', 0),
(56, 1, '2024-03-16 01:14:16', '2024-03-16 01:14:16', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Соц.Сети', 'соцсети', 'publish', 'closed', 'closed', '', 'field_65f4f1e15517c', '', '', '2024-03-18 19:05:34', '2024-03-18 19:05:34', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=56', 5, 'acf-field', '', 0),
(58, 1, '2024-03-16 01:14:16', '2024-03-16 01:14:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Введите номер телефона\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Телефон', 'phone', 'publish', 'closed', 'closed', '', 'field_65f4f2095517d', '', '', '2024-03-18 20:08:22', '2024-03-18 20:08:22', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=58', 17, 'acf-field', '', 0),
(59, 1, '2024-03-16 01:14:16', '2024-03-16 01:14:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:83:\"Введите номер телефона, без скобок и пробелов\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Телефон для звонка', 'phone_call', 'publish', 'closed', 'closed', '', 'field_65f4f23f5517e', '', '', '2024-03-18 20:08:22', '2024-03-18 20:08:22', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=59', 18, 'acf-field', '', 0),
(60, 1, '2024-03-16 01:16:58', '2024-03-16 01:16:58', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Наши услуги', 'services', 'publish', 'closed', 'closed', '', 'field_65f4f2c8e94fa', '', '', '2024-03-18 19:05:34', '2024-03-18 19:05:34', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=60', 10, 'acf-field', '', 0),
(61, 1, '2024-03-16 01:16:58', '2024-03-16 01:16:58', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Почему мы?', 'почему_мы', 'publish', 'closed', 'closed', '', 'field_65f4f2fee94fb', '', '', '2024-03-18 19:19:20', '2024-03-18 19:19:20', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=61', 13, 'acf-field', '', 0),
(62, 1, '2024-03-16 01:17:33', '2024-03-16 01:17:33', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Контакты', 'контакты', 'publish', 'closed', 'closed', '', 'field_65f4f32152fa9', '', '', '2024-03-18 20:08:22', '2024-03-18 20:08:22', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=62', 16, 'acf-field', '', 0),
(63, 1, '2024-03-18 18:15:13', '2024-03-18 18:15:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Адрес', 'address', 'publish', 'closed', 'closed', '', 'field_65f883ba85dc5', '', '', '2024-03-18 20:08:22', '2024-03-18 20:08:22', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=63', 19, 'acf-field', '', 0),
(64, 1, '2024-03-18 18:15:13', '2024-03-18 18:15:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Время работы', 'working_hours', 'publish', 'closed', 'closed', '', 'field_65f8844885dc6', '', '', '2024-03-18 20:08:22', '2024-03-18 20:08:22', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=64', 20, 'acf-field', '', 0),
(66, 1, '2024-03-18 18:16:47', '2024-03-18 18:16:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 18:16:47', '2024-03-18 18:16:47', '', 8, 'http://localhost:8888/auto/?p=66', 0, 'revision', '', 0),
(67, 1, '2024-03-18 18:28:59', '2024-03-18 18:28:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 18:28:59', '2024-03-18 18:28:59', '', 8, 'http://localhost:8888/auto/?p=67', 0, 'revision', '', 0),
(68, 1, '2024-03-18 18:32:39', '2024-03-18 18:32:39', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_65f888b53e6a5', '', '', '2024-03-18 18:57:41', '2024-03-18 18:57:41', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=68', 1, 'acf-field', '', 0),
(69, 1, '2024-03-18 18:34:52', '2024-03-18 18:34:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Триггер', 'trigger', 'publish', 'closed', 'closed', '', 'field_65f888e3e7945', '', '', '2024-03-18 18:57:41', '2024-03-18 18:57:41', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=69', 2, 'acf-field', '', 0),
(70, 1, '2024-03-18 18:34:52', '2024-03-18 18:34:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст на главном экране', 'text', 'publish', 'closed', 'closed', '', 'field_65f8892be7946', '', '', '2024-03-18 18:57:41', '2024-03-18 18:57:41', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=70', 3, 'acf-field', '', 0),
(71, 1, '2024-03-18 18:57:40', '2024-03-18 18:57:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Баннер', 'баннер', 'publish', 'closed', 'closed', '', 'field_65f88e6afc932', '', '', '2024-03-18 18:57:40', '2024-03-18 18:57:40', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2024-03-18 18:58:53', '2024-03-18 18:58:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 18:58:53', '2024-03-18 18:58:53', '', 8, 'http://localhost:8888/auto/?p=72', 0, 'revision', '', 0),
(73, 1, '2024-03-18 19:04:58', '2024-03-18 19:04:58', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'Изображение на главной', 'top_image', 'publish', 'closed', 'closed', '', 'field_65f88fe696d2f', '', '', '2024-03-18 19:05:34', '2024-03-18 19:05:34', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=73', 4, 'acf-field', '', 0),
(74, 1, '2024-03-18 19:06:57', '2024-03-18 19:06:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 19:06:57', '2024-03-18 19:06:57', '', 8, 'http://localhost:8888/auto/?p=74', 0, 'revision', '', 0),
(75, 1, '2024-03-18 19:18:37', '2024-03-18 19:18:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Текст услуг', 'service_text', 'publish', 'closed', 'closed', '', 'field_65f892eaab86e', '', '', '2024-03-18 19:28:44', '2024-03-18 19:28:44', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=75', 11, 'acf-field', '', 0),
(76, 1, '2024-03-18 19:18:37', '2024-03-18 19:18:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Услуги', 'service_item', 'publish', 'closed', 'closed', '', 'field_65f89355ab86f', '', '', '2024-03-18 19:19:20', '2024-03-18 19:19:20', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=76', 12, 'acf-field', '', 0),
(78, 1, '2024-03-18 19:24:08', '2024-03-18 19:24:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 19:24:08', '2024-03-18 19:24:08', '', 8, 'http://localhost:8888/auto/?p=78', 0, 'revision', '', 0),
(79, 1, '2024-03-18 19:30:19', '2024-03-18 19:30:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 19:30:19', '2024-03-18 19:30:19', '', 8, 'http://localhost:8888/auto/?p=79', 0, 'revision', '', 0),
(80, 1, '2024-03-18 19:31:12', '2024-03-18 19:31:12', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 19:31:12', '2024-03-18 19:31:12', '', 8, 'http://localhost:8888/auto/?p=80', 0, 'revision', '', 0),
(81, 1, '2024-03-18 19:52:42', '2024-03-18 19:52:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 19:52:42', '2024-03-18 19:52:42', '', 8, 'http://localhost:8888/auto/?p=81', 0, 'revision', '', 0),
(82, 1, '2024-03-18 19:53:11', '2024-03-18 19:53:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 19:53:11', '2024-03-18 19:53:11', '', 8, 'http://localhost:8888/auto/?p=82', 0, 'revision', '', 0),
(83, 1, '2024-03-18 19:53:29', '2024-03-18 19:53:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 19:53:29', '2024-03-18 19:53:29', '', 8, 'http://localhost:8888/auto/?p=83', 0, 'revision', '', 0),
(84, 1, '2024-03-18 20:05:27', '2024-03-18 20:05:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'Изображение', 'benefits_img', 'publish', 'closed', 'closed', '', 'field_65f89e5578449', '', '', '2024-03-18 20:12:18', '2024-03-18 20:12:18', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=84', 14, 'acf-field', '', 0),
(85, 1, '2024-03-18 20:07:59', '2024-03-18 20:07:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Текст', 'benefits_text', 'publish', 'closed', 'closed', '', 'field_65f89f0b128f2', '', '', '2024-03-18 20:12:43', '2024-03-18 20:12:43', '', 37, 'http://localhost:8888/auto/?post_type=acf-field&#038;p=85', 15, 'acf-field', '', 0),
(86, 1, '2024-03-18 20:09:24', '2024-03-18 20:09:24', '', 'car', '', 'inherit', 'open', 'closed', '', 'car', '', '', '2024-03-18 20:09:24', '2024-03-18 20:09:24', '', 8, 'http://localhost:8888/auto/wp-content/uploads/2024/03/car.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2024-03-18 20:09:29', '2024-03-18 20:09:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 20:09:29', '2024-03-18 20:09:29', '', 8, 'http://localhost:8888/auto/?p=87', 0, 'revision', '', 0),
(88, 1, '2024-03-18 20:10:45', '2024-03-18 20:10:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 20:10:45', '2024-03-18 20:10:45', '', 8, 'http://localhost:8888/auto/?p=88', 0, 'revision', '', 0),
(89, 1, '2024-03-18 20:14:03', '2024-03-18 20:14:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 20:14:03', '2024-03-18 20:14:03', '', 8, 'http://localhost:8888/auto/?p=89', 0, 'revision', '', 0),
(90, 1, '2024-03-18 20:14:21', '2024-03-18 20:14:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-03-18 20:14:21', '2024-03-18 20:14:21', '', 8, 'http://localhost:8888/auto/?p=90', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(91, 1, '2024-03-18 20:24:36', '2024-03-18 20:24:36', '<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\"><strong>Политика в&nbsp;отношении обработки персональных данных</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">1. Общие положения</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Настоящая политика обработки персональных данных составлена в&nbsp;соответствии с&nbsp;требованиями Федерального закона от&nbsp;27.07.2006. №&nbsp;152-ФЗ «О&nbsp;персональных данных» (далее&nbsp;— Закон о&nbsp;персональных данных) и&nbsp;определяет порядок обработки персональных данных и&nbsp;меры по&nbsp;обеспечению безопасности персональных данных, предпринимаемые&nbsp;Михайловым Иваном Сергеевичем&nbsp;(далее&nbsp;— Оператор).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.1. Оператор ставит своей важнейшей целью и&nbsp;условием осуществления своей деятельности соблюдение прав и&nbsp;свобод человека и&nbsp;гражданина при обработке его персональных данных, в&nbsp;том числе защиты прав на&nbsp;неприкосновенность частной жизни, личную и&nbsp;семейную тайну.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.2. Настоящая политика Оператора в&nbsp;отношении обработки персональных данных (далее&nbsp;— Политика) применяется ко&nbsp;всей информации, которую Оператор может получить о&nbsp;посетителях веб-сайта&nbsp;httpsː//thismywebsite·com.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">2. Основные понятия, используемые в&nbsp;Политике</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>2.1. Автоматизированная обработка персональных данных&nbsp;— обработка персональных данных с&nbsp;помощью средств вычислительной техники.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.2. Блокирование персональных данных&nbsp;— временное прекращение обработки персональных данных (за&nbsp;исключением случаев, если обработка необходима для уточнения персональных данных).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.3. Веб-сайт&nbsp;— совокупность графических и&nbsp;информационных материалов, а&nbsp;также программ для ЭВМ и&nbsp;баз данных, обеспечивающих их&nbsp;доступность в&nbsp;сети интернет по&nbsp;сетевому адресу&nbsp;httpsː//thismywebsite·com.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.4. Информационная система персональных данных&nbsp;— совокупность содержащихся в&nbsp;базах данных персональных данных и&nbsp;обеспечивающих их&nbsp;обработку информационных технологий и&nbsp;технических средств.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.5. Обезличивание персональных данных&nbsp;— действия, в&nbsp;результате которых невозможно определить без использования дополнительной информации принадлежность персональных данных конкретному Пользователю или иному субъекту персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.6. Обработка персональных данных&nbsp;— любое действие (операция) или совокупность действий (операций), совершаемых с&nbsp;использованием средств автоматизации или без использования таких средств с&nbsp;персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.7. Оператор&nbsp;— государственный орган, муниципальный орган, юридическое или физическое лицо, самостоятельно или совместно с&nbsp;другими лицами организующие и/или&nbsp;осуществляющие обработку персональных данных, а&nbsp;также определяющие цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с&nbsp;персональными данными.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.8. Персональные данные&nbsp;— любая информация, относящаяся прямо или косвенно к&nbsp;определенному или определяемому Пользователю веб-сайта&nbsp;httpsː//thismywebsite·com.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.9. Персональные данные, разрешенные субъектом персональных данных для распространения,&nbsp;— персональные данные, доступ неограниченного круга лиц к&nbsp;которым предоставлен субъектом персональных данных путем дачи согласия на&nbsp;обработку персональных данных, разрешенных субъектом персональных данных для распространения в&nbsp;порядке, предусмотренном Законом о&nbsp;персональных данных (далее&nbsp;— персональные данные, разрешенные для распространения).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.10. Пользователь&nbsp;— любой посетитель веб-сайта&nbsp;httpsː//thismywebsite·com.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.11. Предоставление персональных данных&nbsp;— действия, направленные на&nbsp;раскрытие персональных данных определенному лицу или определенному кругу лиц.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.12. Распространение персональных данных&nbsp;— любые действия, направленные на&nbsp;раскрытие персональных данных неопределенному кругу лиц (передача персональных данных) или на&nbsp;ознакомление с&nbsp;персональными данными неограниченного круга лиц, в&nbsp;том числе обнародование персональных данных в&nbsp;средствах массовой информации, размещение в&nbsp;информационно-телекоммуникационных сетях или предоставление доступа к&nbsp;персональным данным каким-либо иным способом.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.13. Трансграничная передача персональных данных&nbsp;— передача персональных данных на&nbsp;территорию иностранного государства органу власти иностранного государства, иностранному физическому или иностранному юридическому лицу.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.14. Уничтожение персональных данных&nbsp;— любые действия, в&nbsp;результате которых персональные данные уничтожаются безвозвратно с&nbsp;невозможностью дальнейшего восстановления содержания персональных данных в&nbsp;информационной системе персональных данных и/или&nbsp;уничтожаются материальные носители персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">3. Основные права и&nbsp;обязанности Оператора</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>3.1. Оператор имеет право:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;получать от&nbsp;субъекта персональных данных достоверные информацию и/или&nbsp;документы, содержащие персональные данные;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;в&nbsp;случае отзыва субъектом персональных данных согласия на&nbsp;обработку персональных данных, а&nbsp;также, направления обращения с&nbsp;требованием о&nbsp;прекращении обработки персональных данных, Оператор вправе продолжить обработку персональных данных без согласия субъекта персональных данных при наличии оснований, указанных в&nbsp;Законе о&nbsp;персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;самостоятельно определять состав и&nbsp;перечень мер, необходимых и&nbsp;достаточных для обеспечения выполнения обязанностей, предусмотренных Законом о&nbsp;персональных данных и&nbsp;принятыми в&nbsp;соответствии с&nbsp;ним нормативными правовыми актами, если иное не&nbsp;предусмотрено Законом о&nbsp;персональных данных или другими федеральными законами.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3.2. Оператор обязан:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;предоставлять субъекту персональных данных по&nbsp;его просьбе информацию, касающуюся обработки его персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;организовывать обработку персональных данных в&nbsp;порядке, установленном действующим законодательством&nbsp;РФ;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;отвечать на&nbsp;обращения и&nbsp;запросы субъектов персональных данных и&nbsp;их&nbsp;законных представителей в&nbsp;соответствии с&nbsp;требованиями Закона о&nbsp;персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;сообщать в&nbsp;уполномоченный орган по&nbsp;защите прав субъектов персональных данных по&nbsp;запросу этого органа необходимую информацию в&nbsp;течение 10&nbsp;дней с&nbsp;даты получения такого запроса;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;публиковать или иным образом обеспечивать неограниченный доступ к&nbsp;настоящей Политике в&nbsp;отношении обработки персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;принимать правовые, организационные и&nbsp;технические меры для защиты персональных данных от&nbsp;неправомерного или случайного доступа к&nbsp;ним, уничтожения, изменения, блокирования, копирования, предоставления, распространения персональных данных, а&nbsp;также от&nbsp;иных неправомерных действий в&nbsp;отношении персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;прекратить передачу (распространение, предоставление, доступ) персональных данных, прекратить обработку и&nbsp;уничтожить персональные данные в&nbsp;порядке и&nbsp;случаях, предусмотренных Законом о&nbsp;персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;исполнять иные обязанности, предусмотренные Законом о&nbsp;персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">4. Основные права и&nbsp;обязанности субъектов персональных данных</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>4.1. Субъекты персональных данных имеют право:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;получать информацию, касающуюся обработки его персональных данных, за&nbsp;исключением случаев, предусмотренных федеральными законами. Сведения предоставляются субъекту персональных данных Оператором в&nbsp;доступной форме, и&nbsp;в&nbsp;них не&nbsp;должны содержаться персональные данные, относящиеся к&nbsp;другим субъектам персональных данных, за&nbsp;исключением случаев, когда имеются законные основания для раскрытия таких персональных данных. Перечень информации и&nbsp;порядок ее&nbsp;получения установлен Законом о&nbsp;персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;требовать от&nbsp;оператора уточнения его персональных данных, их&nbsp;блокирования или уничтожения в&nbsp;случае, если персональные данные являются неполными, устаревшими, неточными, незаконно полученными или не&nbsp;являются необходимыми для заявленной цели обработки, а&nbsp;также принимать предусмотренные законом меры по&nbsp;защите своих прав;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;выдвигать условие предварительного согласия при обработке персональных данных в&nbsp;целях продвижения на&nbsp;рынке товаров, работ и&nbsp;услуг;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;на&nbsp;отзыв согласия на&nbsp;обработку персональных данных, а&nbsp;также, на&nbsp;направление требования о&nbsp;прекращении обработки персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;обжаловать в&nbsp;уполномоченный орган по&nbsp;защите прав субъектов персональных данных или в&nbsp;судебном порядке неправомерные действия или бездействие Оператора при обработке его персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;на&nbsp;осуществление иных прав, предусмотренных законодательством&nbsp;РФ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.2. Субъекты персональных данных обязаны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;предоставлять Оператору достоверные данные о&nbsp;себе;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;сообщать Оператору об&nbsp;уточнении (обновлении, изменении) своих персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.3. Лица, передавшие Оператору недостоверные сведения о&nbsp;себе, либо сведения о&nbsp;другом субъекте персональных данных без согласия последнего, несут ответственность в&nbsp;соответствии с&nbsp;законодательством&nbsp;РФ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">5. Принципы обработки персональных данных</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>5.1. Обработка персональных данных осуществляется на&nbsp;законной и&nbsp;справедливой основе.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.2. Обработка персональных данных ограничивается достижением конкретных, заранее определенных и&nbsp;законных целей. Не&nbsp;допускается обработка персональных данных, несовместимая с&nbsp;целями сбора персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.3. Не&nbsp;допускается объединение баз данных, содержащих персональные данные, обработка которых осуществляется в&nbsp;целях, несовместимых между собой.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.4. Обработке подлежат только персональные данные, которые отвечают целям их&nbsp;обработки.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.5. Содержание и&nbsp;объем обрабатываемых персональных данных соответствуют заявленным целям обработки. Не&nbsp;допускается избыточность обрабатываемых персональных данных по&nbsp;отношению к&nbsp;заявленным целям их&nbsp;обработки.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.6. При обработке персональных данных обеспечивается точность персональных данных, их&nbsp;достаточность, а&nbsp;в&nbsp;необходимых случаях и&nbsp;актуальность по&nbsp;отношению к&nbsp;целям обработки персональных данных. Оператор принимает необходимые меры и/или&nbsp;обеспечивает их&nbsp;принятие по&nbsp;удалению или уточнению неполных или неточных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.7. Хранение персональных данных осуществляется в&nbsp;форме, позволяющей определить субъекта персональных данных, не&nbsp;дольше, чем этого требуют цели обработки персональных данных, если срок хранения персональных данных не&nbsp;установлен федеральным законом, договором, стороной которого, выгодоприобретателем или поручителем по&nbsp;которому является субъект персональных данных. Обрабатываемые персональные данные уничтожаются либо обезличиваются по&nbsp;достижении целей обработки или в&nbsp;случае утраты необходимости в&nbsp;достижении этих целей, если иное не&nbsp;предусмотрено федеральным законом.</p>\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'publish', 'open', 'open', '', 'conf', '', '', '2024-03-18 20:30:12', '2024-03-18 20:30:12', '', 0, 'http://localhost:8888/auto/?p=91', 0, 'post', '', 0),
(92, 1, '2024-03-18 20:24:36', '2024-03-18 20:24:36', '<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\"><strong>Политика в&nbsp;отношении обработки персональных данных</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">1. Общие положения</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Настоящая политика обработки персональных данных составлена в&nbsp;соответствии с&nbsp;требованиями Федерального закона от&nbsp;27.07.2006. №&nbsp;152-ФЗ «О&nbsp;персональных данных» (далее&nbsp;— Закон о&nbsp;персональных данных) и&nbsp;определяет порядок обработки персональных данных и&nbsp;меры по&nbsp;обеспечению безопасности персональных данных, предпринимаемые&nbsp;Михайловым Иваном Сергеевичем&nbsp;(далее&nbsp;— Оператор).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.1. Оператор ставит своей важнейшей целью и&nbsp;условием осуществления своей деятельности соблюдение прав и&nbsp;свобод человека и&nbsp;гражданина при обработке его персональных данных, в&nbsp;том числе защиты прав на&nbsp;неприкосновенность частной жизни, личную и&nbsp;семейную тайну.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.2. Настоящая политика Оператора в&nbsp;отношении обработки персональных данных (далее&nbsp;— Политика) применяется ко&nbsp;всей информации, которую Оператор может получить о&nbsp;посетителях веб-сайта&nbsp;httpsː//thismywebsite·com.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">2. Основные понятия, используемые в&nbsp;Политике</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>2.1. Автоматизированная обработка персональных данных&nbsp;— обработка персональных данных с&nbsp;помощью средств вычислительной техники.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.2. Блокирование персональных данных&nbsp;— временное прекращение обработки персональных данных (за&nbsp;исключением случаев, если обработка необходима для уточнения персональных данных).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.3. Веб-сайт&nbsp;— совокупность графических и&nbsp;информационных материалов, а&nbsp;также программ для ЭВМ и&nbsp;баз данных, обеспечивающих их&nbsp;доступность в&nbsp;сети интернет по&nbsp;сетевому адресу&nbsp;httpsː//thismywebsite·com.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.4. Информационная система персональных данных&nbsp;— совокупность содержащихся в&nbsp;базах данных персональных данных и&nbsp;обеспечивающих их&nbsp;обработку информационных технологий и&nbsp;технических средств.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.5. Обезличивание персональных данных&nbsp;— действия, в&nbsp;результате которых невозможно определить без использования дополнительной информации принадлежность персональных данных конкретному Пользователю или иному субъекту персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.6. Обработка персональных данных&nbsp;— любое действие (операция) или совокупность действий (операций), совершаемых с&nbsp;использованием средств автоматизации или без использования таких средств с&nbsp;персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.7. Оператор&nbsp;— государственный орган, муниципальный орган, юридическое или физическое лицо, самостоятельно или совместно с&nbsp;другими лицами организующие и/или&nbsp;осуществляющие обработку персональных данных, а&nbsp;также определяющие цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с&nbsp;персональными данными.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.8. Персональные данные&nbsp;— любая информация, относящаяся прямо или косвенно к&nbsp;определенному или определяемому Пользователю веб-сайта&nbsp;httpsː//thismywebsite·com.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.9. Персональные данные, разрешенные субъектом персональных данных для распространения,&nbsp;— персональные данные, доступ неограниченного круга лиц к&nbsp;которым предоставлен субъектом персональных данных путем дачи согласия на&nbsp;обработку персональных данных, разрешенных субъектом персональных данных для распространения в&nbsp;порядке, предусмотренном Законом о&nbsp;персональных данных (далее&nbsp;— персональные данные, разрешенные для распространения).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.10. Пользователь&nbsp;— любой посетитель веб-сайта&nbsp;httpsː//thismywebsite·com.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.11. Предоставление персональных данных&nbsp;— действия, направленные на&nbsp;раскрытие персональных данных определенному лицу или определенному кругу лиц.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.12. Распространение персональных данных&nbsp;— любые действия, направленные на&nbsp;раскрытие персональных данных неопределенному кругу лиц (передача персональных данных) или на&nbsp;ознакомление с&nbsp;персональными данными неограниченного круга лиц, в&nbsp;том числе обнародование персональных данных в&nbsp;средствах массовой информации, размещение в&nbsp;информационно-телекоммуникационных сетях или предоставление доступа к&nbsp;персональным данным каким-либо иным способом.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.13. Трансграничная передача персональных данных&nbsp;— передача персональных данных на&nbsp;территорию иностранного государства органу власти иностранного государства, иностранному физическому или иностранному юридическому лицу.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.14. Уничтожение персональных данных&nbsp;— любые действия, в&nbsp;результате которых персональные данные уничтожаются безвозвратно с&nbsp;невозможностью дальнейшего восстановления содержания персональных данных в&nbsp;информационной системе персональных данных и/или&nbsp;уничтожаются материальные носители персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">3. Основные права и&nbsp;обязанности Оператора</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>3.1. Оператор имеет право:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;получать от&nbsp;субъекта персональных данных достоверные информацию и/или&nbsp;документы, содержащие персональные данные;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;в&nbsp;случае отзыва субъектом персональных данных согласия на&nbsp;обработку персональных данных, а&nbsp;также, направления обращения с&nbsp;требованием о&nbsp;прекращении обработки персональных данных, Оператор вправе продолжить обработку персональных данных без согласия субъекта персональных данных при наличии оснований, указанных в&nbsp;Законе о&nbsp;персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;самостоятельно определять состав и&nbsp;перечень мер, необходимых и&nbsp;достаточных для обеспечения выполнения обязанностей, предусмотренных Законом о&nbsp;персональных данных и&nbsp;принятыми в&nbsp;соответствии с&nbsp;ним нормативными правовыми актами, если иное не&nbsp;предусмотрено Законом о&nbsp;персональных данных или другими федеральными законами.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3.2. Оператор обязан:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;предоставлять субъекту персональных данных по&nbsp;его просьбе информацию, касающуюся обработки его персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;организовывать обработку персональных данных в&nbsp;порядке, установленном действующим законодательством&nbsp;РФ;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;отвечать на&nbsp;обращения и&nbsp;запросы субъектов персональных данных и&nbsp;их&nbsp;законных представителей в&nbsp;соответствии с&nbsp;требованиями Закона о&nbsp;персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;сообщать в&nbsp;уполномоченный орган по&nbsp;защите прав субъектов персональных данных по&nbsp;запросу этого органа необходимую информацию в&nbsp;течение 10&nbsp;дней с&nbsp;даты получения такого запроса;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;публиковать или иным образом обеспечивать неограниченный доступ к&nbsp;настоящей Политике в&nbsp;отношении обработки персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;принимать правовые, организационные и&nbsp;технические меры для защиты персональных данных от&nbsp;неправомерного или случайного доступа к&nbsp;ним, уничтожения, изменения, блокирования, копирования, предоставления, распространения персональных данных, а&nbsp;также от&nbsp;иных неправомерных действий в&nbsp;отношении персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;прекратить передачу (распространение, предоставление, доступ) персональных данных, прекратить обработку и&nbsp;уничтожить персональные данные в&nbsp;порядке и&nbsp;случаях, предусмотренных Законом о&nbsp;персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;исполнять иные обязанности, предусмотренные Законом о&nbsp;персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">4. Основные права и&nbsp;обязанности субъектов персональных данных</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>4.1. Субъекты персональных данных имеют право:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;получать информацию, касающуюся обработки его персональных данных, за&nbsp;исключением случаев, предусмотренных федеральными законами. Сведения предоставляются субъекту персональных данных Оператором в&nbsp;доступной форме, и&nbsp;в&nbsp;них не&nbsp;должны содержаться персональные данные, относящиеся к&nbsp;другим субъектам персональных данных, за&nbsp;исключением случаев, когда имеются законные основания для раскрытия таких персональных данных. Перечень информации и&nbsp;порядок ее&nbsp;получения установлен Законом о&nbsp;персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;требовать от&nbsp;оператора уточнения его персональных данных, их&nbsp;блокирования или уничтожения в&nbsp;случае, если персональные данные являются неполными, устаревшими, неточными, незаконно полученными или не&nbsp;являются необходимыми для заявленной цели обработки, а&nbsp;также принимать предусмотренные законом меры по&nbsp;защите своих прав;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;выдвигать условие предварительного согласия при обработке персональных данных в&nbsp;целях продвижения на&nbsp;рынке товаров, работ и&nbsp;услуг;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;на&nbsp;отзыв согласия на&nbsp;обработку персональных данных, а&nbsp;также, на&nbsp;направление требования о&nbsp;прекращении обработки персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;обжаловать в&nbsp;уполномоченный орган по&nbsp;защите прав субъектов персональных данных или в&nbsp;судебном порядке неправомерные действия или бездействие Оператора при обработке его персональных данных;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;на&nbsp;осуществление иных прав, предусмотренных законодательством&nbsp;РФ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.2. Субъекты персональных данных обязаны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;предоставлять Оператору достоверные данные о&nbsp;себе;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>—&nbsp;сообщать Оператору об&nbsp;уточнении (обновлении, изменении) своих персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.3. Лица, передавшие Оператору недостоверные сведения о&nbsp;себе, либо сведения о&nbsp;другом субъекте персональных данных без согласия последнего, несут ответственность в&nbsp;соответствии с&nbsp;законодательством&nbsp;РФ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">5. Принципы обработки персональных данных</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>5.1. Обработка персональных данных осуществляется на&nbsp;законной и&nbsp;справедливой основе.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.2. Обработка персональных данных ограничивается достижением конкретных, заранее определенных и&nbsp;законных целей. Не&nbsp;допускается обработка персональных данных, несовместимая с&nbsp;целями сбора персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.3. Не&nbsp;допускается объединение баз данных, содержащих персональные данные, обработка которых осуществляется в&nbsp;целях, несовместимых между собой.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.4. Обработке подлежат только персональные данные, которые отвечают целям их&nbsp;обработки.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.5. Содержание и&nbsp;объем обрабатываемых персональных данных соответствуют заявленным целям обработки. Не&nbsp;допускается избыточность обрабатываемых персональных данных по&nbsp;отношению к&nbsp;заявленным целям их&nbsp;обработки.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.6. При обработке персональных данных обеспечивается точность персональных данных, их&nbsp;достаточность, а&nbsp;в&nbsp;необходимых случаях и&nbsp;актуальность по&nbsp;отношению к&nbsp;целям обработки персональных данных. Оператор принимает необходимые меры и/или&nbsp;обеспечивает их&nbsp;принятие по&nbsp;удалению или уточнению неполных или неточных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.7. Хранение персональных данных осуществляется в&nbsp;форме, позволяющей определить субъекта персональных данных, не&nbsp;дольше, чем этого требуют цели обработки персональных данных, если срок хранения персональных данных не&nbsp;установлен федеральным законом, договором, стороной которого, выгодоприобретателем или поручителем по&nbsp;которому является субъект персональных данных. Обрабатываемые персональные данные уничтожаются либо обезличиваются по&nbsp;достижении целей обработки или в&nbsp;случае утраты необходимости в&nbsp;достижении этих целей, если иное не&nbsp;предусмотрено федеральным законом.</p>\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2024-03-18 20:24:36', '2024-03-18 20:24:36', '', 91, 'http://localhost:8888/auto/?p=92', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'slider', 'slider', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 1, 0),
(13, 2, 0),
(16, 2, 0),
(20, 2, 0),
(22, 2, 0),
(24, 2, 0),
(91, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"4f29cb9535e1d3bf05520ca82529557560c668cc7217ae1f5b4087c79dbff063\";a:4:{s:10:\"expiration\";i:1710957991;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36\";s:5:\"login\";i:1710785191;}s:64:\"a50a90e5028a3af7cafca22fc669ca26d8ac0eb51c2688aaf4466c6245efa64a\";a:4:{s:10:\"expiration\";i:1711994907;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36\";s:5:\"login\";i:1710785307;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:6:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:24:\"yoast-seo/document-panel\";i:3;s:14:\"featured-image\";i:4;s:23:\"taxonomy-panel-post_tag\";i:5;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2024-03-15T19:18:35.272Z\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1710792839'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BNuv5uCCOGgoB/DZxW/bP4XNOrI4tX0', 'admin', 'island.verity0b@icloud.com', 'http://localhost:8888/auto', '2024-03-14 21:47:10', '', 0, 'admin');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=790;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
