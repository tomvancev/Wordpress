-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2019 at 09:54 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-11 14:17:59', '2018-06-11 14:17:59', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
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
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.wordpress.lan', 'yes'),
(2, 'home', 'http://www.wordpress.lan', 'yes'),
(3, 'blogname', 'Prodavame Pecki', 'yes'),
(4, 'blogdescription', 'Da navistina prodavame pecki', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tomvancev@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:154:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=23&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:\"jetpack/jetpack.php\";i:2;s:45:\"tivius-webcalculator/tivius-webcalculator.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:108:\"C:\\xampp\\htdocs\\wordpress/wp-content/plugins/tivius-infinity-scroll-plugin/tivius-infinity-scroll-plugin.php\";i:2;s:64:\"C:\\xampp\\htdocs\\wordpress/wp-content/plugins/akismet/akismet.php\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '24', 'yes'),
(84, 'page_on_front', '23', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:13:{i:1546703704;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1546705081;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1546705246;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1546708745;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546719545;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1546732800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546741081;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1546784298;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546784345;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546784355;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546784472;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1549022400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528726819;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(144, 'woocommerce_store_address', '12 asd lane', 'yes'),
(145, 'woocommerce_store_address_2', '', 'yes'),
(146, 'woocommerce_store_city', 'Skopje', 'yes'),
(147, 'woocommerce_default_country', 'MK:*', 'yes'),
(148, 'woocommerce_store_postcode', '1000', 'yes'),
(149, 'woocommerce_allowed_countries', 'all', 'yes'),
(150, 'woocommerce_all_except_countries', '', 'yes'),
(151, 'woocommerce_specific_allowed_countries', '', 'yes'),
(152, 'woocommerce_ship_to_countries', '', 'yes'),
(153, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(154, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(155, 'woocommerce_calc_taxes', 'no', 'yes'),
(156, 'woocommerce_enable_coupons', 'yes', 'yes'),
(157, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(158, 'woocommerce_currency', 'MKD', 'yes'),
(159, 'woocommerce_currency_pos', 'left', 'yes'),
(160, 'woocommerce_price_thousand_sep', ',', 'yes'),
(161, 'woocommerce_price_decimal_sep', '.', 'yes'),
(162, 'woocommerce_price_num_decimals', '2', 'yes'),
(163, 'woocommerce_shop_page_id', '5', 'yes'),
(164, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(165, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(166, 'woocommerce_weight_unit', 'kg', 'yes'),
(167, 'woocommerce_dimension_unit', 'cm', 'yes'),
(168, 'woocommerce_enable_reviews', 'yes', 'yes'),
(169, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(170, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(171, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(172, 'woocommerce_review_rating_required', 'yes', 'no'),
(173, 'woocommerce_manage_stock', 'yes', 'yes'),
(174, 'woocommerce_hold_stock_minutes', '60', 'no'),
(175, 'woocommerce_notify_low_stock', 'yes', 'no'),
(176, 'woocommerce_notify_no_stock', 'yes', 'no'),
(177, 'woocommerce_stock_email_recipient', 'tomvancev@gmail.com', 'no'),
(178, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(179, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(180, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(181, 'woocommerce_stock_format', '', 'yes'),
(182, 'woocommerce_file_download_method', 'force', 'no'),
(183, 'woocommerce_downloads_require_login', 'no', 'no'),
(184, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(185, 'woocommerce_prices_include_tax', 'no', 'yes'),
(186, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(187, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(188, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(189, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(190, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(191, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(192, 'woocommerce_price_display_suffix', '', 'yes'),
(193, 'woocommerce_tax_total_display', 'itemized', 'no'),
(194, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(195, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(196, 'woocommerce_ship_to_destination', 'billing', 'no'),
(197, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(198, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(199, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(200, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(201, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(202, 'woocommerce_registration_generate_username', 'yes', 'no'),
(203, 'woocommerce_registration_generate_password', 'yes', 'no'),
(204, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(205, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(206, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(207, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(208, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(209, 'woocommerce_trash_pending_orders', '', 'no'),
(210, 'woocommerce_trash_failed_orders', '', 'no'),
(211, 'woocommerce_trash_cancelled_orders', '', 'no'),
(212, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(213, 'woocommerce_email_from_name', 'Wordpress Site', 'no'),
(214, 'woocommerce_email_from_address', 'tomvancev@gmail.com', 'no'),
(215, 'woocommerce_email_header_image', '', 'no'),
(216, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(217, 'woocommerce_email_base_color', '#96588a', 'no'),
(218, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(219, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(220, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(221, 'woocommerce_cart_page_id', '6', 'yes'),
(222, 'woocommerce_checkout_page_id', '7', 'yes'),
(223, 'woocommerce_myaccount_page_id', '8', 'yes'),
(224, 'woocommerce_terms_page_id', '', 'no'),
(225, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(226, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(227, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(228, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(229, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(230, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(231, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(232, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(233, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(234, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(235, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(236, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(237, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(238, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(239, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(240, 'woocommerce_api_enabled', 'no', 'yes'),
(241, 'woocommerce_single_image_width', '600', 'yes'),
(242, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(243, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(244, 'woocommerce_demo_store', 'no', 'no'),
(245, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(246, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(247, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(248, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(249, 'product_cat_children', 'a:0:{}', 'yes'),
(250, 'default_product_cat', '15', 'yes'),
(253, 'woocommerce_version', '3.4.2', 'yes'),
(254, 'woocommerce_db_version', '3.4.2', 'yes'),
(255, 'recently_activated', 'a:1:{s:63:\"tivius-infinity-scroll-plugin/tivius-infinity-scroll-plugin.php\";i:1533695514;}', 'yes'),
(256, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(257, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(258, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(279, 'woocommerce_product_type', 'both', 'yes'),
(280, 'woocommerce_allow_tracking', 'no', 'yes'),
(281, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(282, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(283, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(284, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(290, 'current_theme', 'Storefront', 'yes'),
(291, 'theme_mods_storefront', 'a:21:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:27;s:24:\"storefront_heading_color\";s:7:\"#4f4f4f\";s:21:\"storefront_text_color\";s:7:\"#494949\";s:23:\"storefront_accent_color\";s:7:\"#8f66ad\";s:34:\"storefront_button_background_color\";s:7:\"#89aef9\";s:28:\"storefront_button_text_color\";s:7:\"#ffffff\";s:38:\"storefront_button_alt_background_color\";s:7:\"#2b2b2b\";s:17:\"storefront_layout\";s:5:\"right\";s:29:\"storefront_sticky_add_to_cart\";b:0;s:12:\"header_image\";s:84:\"http://www.wordpress.lan/wp-content/uploads/2018/06/cropped-banner2-1920x5001.jpeg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:31;s:3:\"url\";s:84:\"http://www.wordpress.lan/wp-content/uploads/2018/06/cropped-banner2-1920x5001.jpeg\";s:13:\"thumbnail_url\";s:84:\"http://www.wordpress.lan/wp-content/uploads/2018/06/cropped-banner2-1920x5001.jpeg\";s:6:\"height\";i:493;s:5:\"width\";i:1920;}s:28:\"storefront_header_text_color\";s:7:\"#fcfcfc\";s:28:\"storefront_header_link_color\";s:7:\"#a8f972\";s:34:\"storefront_footer_background_color\";s:7:\"#528cbf\";s:16:\"background_color\";s:6:\"ffffff\";s:31:\"storefront_footer_heading_color\";s:7:\"#333333\";s:28:\"storefront_footer_text_color\";s:7:\"#e0e0e0\";s:28:\"storefront_footer_link_color\";s:7:\"#ffffff\";}', 'yes'),
(292, 'theme_switched', '', 'yes'),
(293, 'storefront_nux_fresh_site', '0', 'yes'),
(294, 'woocommerce_catalog_rows', '2', 'yes'),
(295, 'woocommerce_catalog_columns', '2', 'yes'),
(296, 'woocommerce_maybe_regenerate_images_hash', '9ac00c28f11fe198489ae62a823ae8d4', 'yes'),
(301, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(304, 'jetpack_activated', '1', 'yes'),
(307, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(308, 'jetpack_sync_settings_disable', '0', 'yes'),
(311, 'jetpack_available_modules', 'a:1:{s:5:\"6.2.1\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(312, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"6.2.1:1528726847\";s:11:\"old_version\";s:16:\"6.2.1:1528726847\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:1;}', 'yes'),
(313, 'jetpack_tos_agreed', '1', 'yes'),
(314, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"gJSeuBpCgo0sUf4quQCca03s591mCp5a\";s:8:\"secret_2\";s:32:\"XR2KJ979UXx2ow0MeNK9sDqviK97ICT8\";s:3:\"exp\";i:1528727453;}}', 'no'),
(315, 'jetpack_testimonial', '0', 'yes'),
(317, 'do_activate', '0', 'yes'),
(322, '_transient_shipping-transient-version', '1528726872', 'yes'),
(325, '_transient_product_query-transient-version', '1531909708', 'yes'),
(326, '_transient_product-transient-version', '1528727303', 'yes'),
(333, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(351, 'storefront_nux_dismissed', '1', 'yes'),
(352, 'storefront_nux_guided_tour', '1', 'yes'),
(387, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(388, 'woocommerce_thumbnail_cropping', 'custom', 'yes'),
(389, 'woocommerce_category_archive_display', 'subcategories', 'yes'),
(390, 'woocommerce_thumbnail_cropping_custom_width', '5', 'yes'),
(391, 'woocommerce_thumbnail_cropping_custom_height', '4', 'yes'),
(508, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"tomvancev@gmail.com\";s:7:\"version\";s:5:\"4.9.9\";s:9:\"timestamp\";i:1546700122;}', 'no'),
(823, 'category_children', 'a:0:{}', 'yes'),
(935, '_transient_is_multi_author', '0', 'yes'),
(955, '_transient_timeout_external_ip_address_::1', '1547304903', 'no'),
(956, '_transient_external_ip_address_::1', '46.217.86.42', 'no'),
(958, '_transient_timeout_wc_term_counts', '1549292105', 'no'),
(959, '_transient_wc_term_counts', 'a:1:{i:15;s:1:\"6\";}', 'no'),
(960, '_transient_timeout_wc_product_loop308c1531909708', '1549292105', 'no'),
(961, '_transient_wc_product_loop308c1531909708', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:21;i:1;i:19;i:2;i:17;i:3;i:15;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(962, '_transient_timeout_wc_product_loopa5b41531909708', '1549292106', 'no'),
(963, '_transient_wc_product_loopa5b41531909708', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(964, '_transient_timeout_wc_product_loop1a121531909708', '1549292106', 'no'),
(965, '_transient_wc_product_loop1a121531909708', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:9;i:1;i:13;i:2;i:15;i:3;i:17;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(966, '_transient_timeout_wc_products_onsale', '1549292106', 'no'),
(967, '_transient_wc_products_onsale', 'a:0:{}', 'no'),
(968, '_transient_timeout_wc_product_loopc8d51531909708', '1549292106', 'no'),
(969, '_transient_wc_product_loopc8d51531909708', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(970, '_transient_timeout_wc_product_loop73ac1531909708', '1549292106', 'no'),
(971, '_transient_wc_product_loop73ac1531909708', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:21;i:1;i:19;i:2;i:17;i:3;i:15;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(973, '_site_transient_timeout_theme_roots', '1546701910', 'no'),
(974, '_site_transient_theme_roots', 'a:4:{s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(976, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1546700120;s:15:\"version_checked\";s:5:\"4.9.9\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(977, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1546700121;s:7:\"checked\";a:4:{s:10:\"storefront\";s:5:\"2.3.2\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:4:{s:10:\"storefront\";a:4:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.4.2\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.4.2.zip\";}s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.2.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.9.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(978, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1546700123;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";s:63:\"tivius-infinity-scroll-plugin/tivius-infinity-scroll-plugin.php\";s:0:\"\";s:19:\"jetpack/jetpack.php\";s:5:\"6.2.1\";s:45:\"tivius-webcalculator/tivius-webcalculator.php\";s:3:\"1.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.2\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"6.8.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.6.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(980, '_transient_timeout_jetpack_idc_allowed', '1546703725', 'no'),
(981, '_transient_jetpack_idc_allowed', '1', 'no'),
(982, '_transient_timeout_wc_featured_products', '1549292126', 'no'),
(984, '_transient_wc_featured_products', 'a:0:{}', 'no'),
(986, '_transient_timeout_wc_product_loop040c1531909708', '1549292126', 'no'),
(987, '_transient_wc_product_loop040c1531909708', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:21;i:1;i:19;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(989, '_transient_timeout_wc_product_loopa47f1531909708', '1549292126', 'no'),
(991, '_transient_wc_product_loopa47f1531909708', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:9;i:1;i:13;i:2;i:15;i:3;i:17;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(996, '_transient_timeout_wc_related_21', '1546786538', 'no'),
(997, '_transient_wc_related_21', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=21\";a:5:{i:0;s:1:\"9\";i:1;s:2:\"13\";i:2;s:2:\"15\";i:3;s:2:\"17\";i:4;s:2:\"19\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 9, '_wc_review_count', '0'),
(4, 9, '_wc_rating_count', 'a:0:{}'),
(5, 9, '_wc_average_rating', '0'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1531920408:1'),
(8, 10, '_wp_attached_file', '2018/06/10501.jpg'),
(9, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5616;s:6:\"height\";i:3744;s:4:\"file\";s:17:\"2018/06/10501.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"10501-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"10501-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"10501-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"10501-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"10501-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"10501-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"10501-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"10501-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"10501-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"10501-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"10501-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"9\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1497353810\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"84\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(10, 9, '_thumbnail_id', '10'),
(11, 9, '_sku', ''),
(12, 9, '_regular_price', ''),
(13, 9, '_sale_price', ''),
(14, 9, '_sale_price_dates_from', ''),
(15, 9, '_sale_price_dates_to', ''),
(16, 9, 'total_sales', '0'),
(17, 9, '_tax_status', 'taxable'),
(18, 9, '_tax_class', ''),
(19, 9, '_manage_stock', 'no'),
(20, 9, '_backorders', 'no'),
(21, 9, '_sold_individually', 'no'),
(22, 9, '_weight', ''),
(23, 9, '_length', ''),
(24, 9, '_width', ''),
(25, 9, '_height', ''),
(26, 9, '_upsell_ids', 'a:0:{}'),
(27, 9, '_crosssell_ids', 'a:0:{}'),
(28, 9, '_purchase_note', ''),
(29, 9, '_default_attributes', 'a:0:{}'),
(30, 9, '_virtual', 'no'),
(31, 9, '_downloadable', 'no'),
(32, 9, '_product_image_gallery', ''),
(33, 9, '_download_limit', '-1'),
(34, 9, '_download_expiry', '-1'),
(35, 9, '_stock', NULL),
(36, 9, '_stock_status', 'instock'),
(37, 9, '_product_version', '3.4.2'),
(38, 9, '_price', ''),
(45, 13, '_wc_review_count', '0'),
(46, 13, '_wc_rating_count', 'a:0:{}'),
(47, 13, '_wc_average_rating', '0'),
(48, 14, '_wp_attached_file', '2018/06/20kw1.jpg'),
(49, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2018/06/20kw1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"20kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"20kw1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"20kw1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"20kw1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"20kw1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"20kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"20kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"20kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"20kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"20kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"20kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 13, '_edit_last', '1'),
(51, 13, '_thumbnail_id', '14'),
(52, 13, '_sku', ''),
(53, 13, '_regular_price', ''),
(54, 13, '_sale_price', ''),
(55, 13, '_sale_price_dates_from', ''),
(56, 13, '_sale_price_dates_to', ''),
(57, 13, 'total_sales', '0'),
(58, 13, '_tax_status', 'taxable'),
(59, 13, '_tax_class', ''),
(60, 13, '_manage_stock', 'no'),
(61, 13, '_backorders', 'no'),
(62, 13, '_sold_individually', 'no'),
(63, 13, '_weight', ''),
(64, 13, '_length', ''),
(65, 13, '_width', ''),
(66, 13, '_height', ''),
(67, 13, '_upsell_ids', 'a:0:{}'),
(68, 13, '_crosssell_ids', 'a:0:{}'),
(69, 13, '_purchase_note', ''),
(70, 13, '_default_attributes', 'a:0:{}'),
(71, 13, '_virtual', 'no'),
(72, 13, '_downloadable', 'no'),
(73, 13, '_product_image_gallery', ''),
(74, 13, '_download_limit', '-1'),
(75, 13, '_download_expiry', '-1'),
(76, 13, '_stock', NULL),
(77, 13, '_stock_status', 'instock'),
(78, 13, '_product_version', '3.4.2'),
(79, 13, '_price', ''),
(80, 13, '_edit_lock', '1531910938:1'),
(81, 15, '_wc_review_count', '0'),
(82, 15, '_wc_rating_count', 'a:0:{}'),
(83, 15, '_wc_average_rating', '0'),
(84, 16, '_wp_attached_file', '2018/06/35kw1.jpg'),
(85, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2018/06/35kw1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"35kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"35kw1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"35kw1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"35kw1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"35kw1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"35kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"35kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"35kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"35kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"35kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"35kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 15, '_edit_last', '1'),
(87, 15, '_thumbnail_id', '16'),
(88, 15, '_sku', ''),
(89, 15, '_regular_price', ''),
(90, 15, '_sale_price', ''),
(91, 15, '_sale_price_dates_from', ''),
(92, 15, '_sale_price_dates_to', ''),
(93, 15, 'total_sales', '0'),
(94, 15, '_tax_status', 'taxable'),
(95, 15, '_tax_class', ''),
(96, 15, '_manage_stock', 'no'),
(97, 15, '_backorders', 'no'),
(98, 15, '_sold_individually', 'no'),
(99, 15, '_weight', ''),
(100, 15, '_length', ''),
(101, 15, '_width', ''),
(102, 15, '_height', ''),
(103, 15, '_upsell_ids', 'a:0:{}'),
(104, 15, '_crosssell_ids', 'a:0:{}'),
(105, 15, '_purchase_note', ''),
(106, 15, '_default_attributes', 'a:0:{}'),
(107, 15, '_virtual', 'no'),
(108, 15, '_downloadable', 'no'),
(109, 15, '_product_image_gallery', ''),
(110, 15, '_download_limit', '-1'),
(111, 15, '_download_expiry', '-1'),
(112, 15, '_stock', NULL),
(113, 15, '_stock_status', 'instock'),
(114, 15, '_product_version', '3.4.2'),
(115, 15, '_price', ''),
(116, 15, '_edit_lock', '1531910889:1'),
(117, 17, '_wc_review_count', '0'),
(118, 17, '_wc_rating_count', 'a:0:{}'),
(119, 17, '_wc_average_rating', '0'),
(120, 18, '_wp_attached_file', '2018/06/50kw1.jpg'),
(121, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2018/06/50kw1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"50kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"50kw1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"50kw1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"50kw1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"50kw1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"50kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"50kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"50kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"50kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"50kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"50kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 17, '_edit_last', '1'),
(123, 17, '_thumbnail_id', '18'),
(124, 17, '_sku', ''),
(125, 17, '_regular_price', ''),
(126, 17, '_sale_price', ''),
(127, 17, '_sale_price_dates_from', ''),
(128, 17, '_sale_price_dates_to', ''),
(129, 17, 'total_sales', '0'),
(130, 17, '_tax_status', 'taxable'),
(131, 17, '_tax_class', ''),
(132, 17, '_manage_stock', 'no'),
(133, 17, '_backorders', 'no'),
(134, 17, '_sold_individually', 'no'),
(135, 17, '_weight', ''),
(136, 17, '_length', ''),
(137, 17, '_width', ''),
(138, 17, '_height', ''),
(139, 17, '_upsell_ids', 'a:0:{}'),
(140, 17, '_crosssell_ids', 'a:0:{}'),
(141, 17, '_purchase_note', ''),
(142, 17, '_default_attributes', 'a:0:{}'),
(143, 17, '_virtual', 'no'),
(144, 17, '_downloadable', 'no'),
(145, 17, '_product_image_gallery', ''),
(146, 17, '_download_limit', '-1'),
(147, 17, '_download_expiry', '-1'),
(148, 17, '_stock', NULL),
(149, 17, '_stock_status', 'instock'),
(150, 17, '_product_version', '3.4.2'),
(151, 17, '_price', ''),
(152, 17, '_edit_lock', '1531910859:1'),
(153, 19, '_wc_review_count', '0'),
(154, 19, '_wc_rating_count', 'a:0:{}'),
(155, 19, '_wc_average_rating', '0'),
(156, 20, '_wp_attached_file', '2018/06/75-200kw1.jpg'),
(157, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/06/75-200kw1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"75-200kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"75-200kw1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"75-200kw1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"75-200kw1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"75-200kw1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"75-200kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"75-200kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"75-200kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"75-200kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"75-200kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:21:\"75-200kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 19, '_edit_last', '1'),
(159, 19, '_thumbnail_id', '20'),
(160, 19, '_sku', ''),
(161, 19, '_regular_price', ''),
(162, 19, '_sale_price', ''),
(163, 19, '_sale_price_dates_from', ''),
(164, 19, '_sale_price_dates_to', ''),
(165, 19, 'total_sales', '0'),
(166, 19, '_tax_status', 'taxable'),
(167, 19, '_tax_class', ''),
(168, 19, '_manage_stock', 'no'),
(169, 19, '_backorders', 'no'),
(170, 19, '_sold_individually', 'no'),
(171, 19, '_weight', ''),
(172, 19, '_length', ''),
(173, 19, '_width', ''),
(174, 19, '_height', ''),
(175, 19, '_upsell_ids', 'a:0:{}'),
(176, 19, '_crosssell_ids', 'a:0:{}'),
(177, 19, '_purchase_note', ''),
(178, 19, '_default_attributes', 'a:0:{}'),
(179, 19, '_virtual', 'no'),
(180, 19, '_downloadable', 'no'),
(181, 19, '_product_image_gallery', ''),
(182, 19, '_download_limit', '-1'),
(183, 19, '_download_expiry', '-1'),
(184, 19, '_stock', NULL),
(185, 19, '_stock_status', 'instock'),
(186, 19, '_product_version', '3.4.2'),
(187, 19, '_price', ''),
(188, 19, '_edit_lock', '1531910836:1'),
(189, 21, '_wc_review_count', '0'),
(190, 21, '_wc_rating_count', 'a:0:{}'),
(191, 21, '_wc_average_rating', '0'),
(192, 22, '_wp_attached_file', '2018/06/300-600kw1.jpg'),
(193, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:22:\"2018/06/300-600kw1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"300-600kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"300-600kw1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"300-600kw1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"300-600kw1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"300-600kw1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"300-600kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"300-600kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"300-600kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"300-600kw1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"300-600kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:22:\"300-600kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 21, '_edit_last', '1'),
(195, 21, '_thumbnail_id', '22'),
(196, 21, '_sku', ''),
(197, 21, '_regular_price', ''),
(198, 21, '_sale_price', ''),
(199, 21, '_sale_price_dates_from', ''),
(200, 21, '_sale_price_dates_to', ''),
(201, 21, 'total_sales', '0'),
(202, 21, '_tax_status', 'taxable'),
(203, 21, '_tax_class', ''),
(204, 21, '_manage_stock', 'no'),
(205, 21, '_backorders', 'no'),
(206, 21, '_sold_individually', 'no'),
(207, 21, '_weight', ''),
(208, 21, '_length', ''),
(209, 21, '_width', ''),
(210, 21, '_height', ''),
(211, 21, '_upsell_ids', 'a:0:{}'),
(212, 21, '_crosssell_ids', 'a:0:{}'),
(213, 21, '_purchase_note', ''),
(214, 21, '_default_attributes', 'a:0:{}'),
(215, 21, '_virtual', 'no'),
(216, 21, '_downloadable', 'no'),
(217, 21, '_product_image_gallery', ''),
(218, 21, '_download_limit', '-1'),
(219, 21, '_download_expiry', '-1'),
(220, 21, '_stock', NULL),
(221, 21, '_stock_status', 'instock'),
(222, 21, '_product_version', '3.4.2'),
(223, 21, '_price', ''),
(224, 21, '_edit_lock', '1531910797:1'),
(225, 23, '_wp_page_template', 'template-homepage.php'),
(227, 23, '_customize_changeset_uuid', '67de047e-3361-4104-b92c-ca653ae7be0c'),
(229, 24, '_customize_changeset_uuid', '67de047e-3361-4104-b92c-ca653ae7be0c'),
(230, 26, '_wp_attached_file', '2018/06/abstract-colorful-floral-shape-with-logo_1035-89821.jpg'),
(231, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:338;s:6:\"height\";i:338;s:4:\"file\";s:63:\"2018/06/abstract-colorful-floral-shape-with-logo_1035-89821.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:63:\"abstract-colorful-floral-shape-with-logo_1035-89821-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"abstract-colorful-floral-shape-with-logo_1035-89821-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"abstract-colorful-floral-shape-with-logo_1035-89821-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:63:\"abstract-colorful-floral-shape-with-logo_1035-89821-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:63:\"abstract-colorful-floral-shape-with-logo_1035-89821-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:63:\"abstract-colorful-floral-shape-with-logo_1035-89821-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 27, '_wp_attached_file', '2018/06/cropped-abstract-colorful-floral-shape-with-logo_1035-89821.jpg'),
(233, 27, '_wp_attachment_context', 'custom-logo'),
(234, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:175;s:6:\"height\";i:110;s:4:\"file\";s:71:\"2018/06/cropped-abstract-colorful-floral-shape-with-logo_1035-89821.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:71:\"cropped-abstract-colorful-floral-shape-with-logo_1035-89821-150x110.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:71:\"cropped-abstract-colorful-floral-shape-with-logo_1035-89821-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:71:\"cropped-abstract-colorful-floral-shape-with-logo_1035-89821-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 28, '_customize_changeset_uuid', '67de047e-3361-4104-b92c-ca653ae7be0c'),
(238, 29, '_wp_attached_file', '2018/06/cropped-35kw1.jpg'),
(239, 29, '_wp_attachment_context', 'custom-header'),
(240, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:308;s:4:\"file\";s:25:\"2018/06/cropped-35kw1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"cropped-35kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-35kw1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-35kw1-300x77.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"cropped-35kw1-768x197.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"cropped-35kw1-1024x263.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"cropped-35kw1-416x107.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-35kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"cropped-35kw1-324x259.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"cropped-35kw1-416x107.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-35kw1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 30, '_wp_attached_file', '2018/06/banner2-1920x5001.jpeg'),
(244, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2018/06/banner2-1920x5001.jpeg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"banner2-1920x5001-324x259.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"banner2-1920x5001-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"banner2-1920x5001-300x78.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"banner2-1920x5001-768x200.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"banner2-1920x5001-1024x267.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"banner2-1920x5001-416x108.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"banner2-1920x5001-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"banner2-1920x5001-324x259.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"banner2-1920x5001-416x108.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"banner2-1920x5001-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(245, 31, '_wp_attached_file', '2018/06/cropped-banner2-1920x5001.jpeg'),
(246, 31, '_wp_attachment_context', 'custom-header'),
(247, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:493;s:4:\"file\";s:38:\"2018/06/cropped-banner2-1920x5001.jpeg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"cropped-banner2-1920x5001-324x259.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-banner2-1920x5001-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-banner2-1920x5001-300x77.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"cropped-banner2-1920x5001-768x197.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"cropped-banner2-1920x5001-1024x263.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"cropped-banner2-1920x5001-416x107.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-banner2-1920x5001-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"cropped-banner2-1920x5001-324x259.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"cropped-banner2-1920x5001-416x107.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-banner2-1920x5001-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 31, '_wp_attachment_custom_header_last_used_storefront', '1528728333'),
(249, 31, '_wp_attachment_is_custom_header', 'storefront'),
(250, 35, '_menu_item_type', 'custom'),
(251, 35, '_menu_item_menu_item_parent', '0'),
(252, 35, '_menu_item_object_id', '35'),
(253, 35, '_menu_item_object', 'custom'),
(254, 35, '_menu_item_target', ''),
(255, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 35, '_menu_item_xfn', ''),
(257, 35, '_menu_item_url', 'http://www.wordpress.lan'),
(258, 36, '_menu_item_type', 'post_type'),
(259, 36, '_menu_item_menu_item_parent', '0'),
(260, 36, '_menu_item_object_id', '5'),
(261, 36, '_menu_item_object', 'page'),
(262, 36, '_menu_item_target', ''),
(263, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(264, 36, '_menu_item_xfn', ''),
(265, 36, '_menu_item_url', ''),
(266, 37, '_menu_item_type', 'post_type'),
(267, 37, '_menu_item_menu_item_parent', '0'),
(268, 37, '_menu_item_object_id', '28'),
(269, 37, '_menu_item_object', 'page'),
(270, 37, '_menu_item_target', ''),
(271, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 37, '_menu_item_xfn', ''),
(273, 37, '_menu_item_url', ''),
(276, 23, '_edit_lock', '1528728277:1'),
(282, 1, '_edit_lock', '1532866586:1'),
(283, 43, '_edit_last', '1'),
(284, 43, '_edit_lock', '1532866604:1'),
(287, 43, '_wp_old_slug', 'asdfasdf'),
(288, 46, '_edit_last', '1'),
(289, 46, '_edit_lock', '1532866549:1'),
(292, 1, '_edit_last', '1'),
(295, 43, '_wp_old_slug', 'cat1'),
(302, 52, '_edit_last', '1'),
(303, 52, '_edit_lock', '1532646125:1'),
(305, 54, '_edit_last', '1'),
(306, 54, '_edit_lock', '1532646142:1'),
(309, 56, '_edit_last', '1'),
(310, 56, '_edit_lock', '1532692628:1'),
(312, 58, '_edit_last', '1'),
(313, 58, '_edit_lock', '1532692651:1'),
(315, 60, '_edit_last', '1'),
(316, 60, '_edit_lock', '1532692664:1'),
(318, 62, '_edit_last', '1'),
(319, 62, '_edit_lock', '1532808220:1'),
(321, 64, '_edit_last', '1'),
(322, 64, '_edit_lock', '1532808237:1'),
(324, 66, '_edit_last', '1'),
(325, 66, '_edit_lock', '1532809041:1'),
(327, 46, '_wp_old_slug', 'category-2'),
(329, 43, '_wp_old_slug', 'cat3'),
(331, 1, '_wp_old_slug', 'hello-world'),
(333, 69, '_edit_last', '1'),
(334, 69, '_edit_lock', '1532866513:1'),
(336, 71, '_edit_last', '1'),
(337, 71, '_edit_lock', '1532866537:1'),
(340, 74, '_edit_last', '1'),
(341, 74, '_edit_lock', '1532866736:1'),
(343, 76, '_edit_last', '1'),
(344, 76, '_edit_lock', '1532866778:1'),
(348, 78, '_edit_last', '1'),
(349, 78, '_edit_lock', '1532866608:1'),
(351, 80, '_edit_last', '1'),
(352, 80, '_edit_lock', '1532866618:1'),
(356, 82, '_edit_last', '1'),
(357, 82, '_edit_lock', '1532876377:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-11 14:17:59', '2018-06-11 14:17:59', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Category 1', '', 'publish', 'open', 'open', '', 'category-1', '', '', '2018-07-29 12:16:26', '2018-07-29 12:16:26', '', 0, 'http://www.wordpress.lan/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-11 14:17:59', '2018-06-11 14:17:59', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://www.wordpress.lan/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-11 14:17:59', '2018-06-11 14:17:59', '', 0, 'http://www.wordpress.lan/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-11 14:17:59', '2018-06-11 14:17:59', '<h2>Who we are</h2><p>Our website address is: http://www.wordpress.lan.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-06-11 14:17:59', '2018-06-11 14:17:59', '', 0, 'http://www.wordpress.lan/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-06-11 14:19:35', '2018-06-11 14:19:35', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-06-11 14:19:35', '2018-06-11 14:19:35', '', 0, 'http://www.wordpress.lan/shop/', 0, 'page', '', 0),
(6, 1, '2018-06-11 14:19:36', '2018-06-11 14:19:36', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-06-11 14:19:36', '2018-06-11 14:19:36', '', 0, 'http://www.wordpress.lan/cart/', 0, 'page', '', 0),
(7, 1, '2018-06-11 14:19:36', '2018-06-11 14:19:36', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-06-11 14:19:36', '2018-06-11 14:19:36', '', 0, 'http://www.wordpress.lan/checkout/', 0, 'page', '', 0),
(8, 1, '2018-06-11 14:19:36', '2018-06-11 14:19:36', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-06-11 14:19:36', '2018-06-11 14:19:36', '', 0, 'http://www.wordpress.lan/my-account/', 0, 'page', '', 0),
(9, 1, '2018-06-11 14:23:48', '2018-06-11 14:23:48', 'Unapređena verzija 10,5 kW kamina namjenjena za kotlovnicu ili prostoriju koja se ne zagrijava. Proizvod je izoliran kamenom vunom ,što omogućava da se komplentna toplptna energija usmjeri u prostorije koje se zagrijavaju.', 'EKOLINE HOME 10.50 KW', '', 'publish', 'open', 'closed', '', 'ekoline-home-10-50-kw', '', '', '2018-06-11 14:23:49', '2018-06-11 14:23:49', '', 0, 'http://www.wordpress.lan/?post_type=product&#038;p=9', 0, 'product', '', 0),
(10, 1, '2018-06-11 14:23:34', '2018-06-11 14:23:34', '', '1050[1]', '', 'inherit', 'open', 'closed', '', '10501', '', '', '2018-06-11 14:23:34', '2018-06-11 14:23:34', '', 9, 'http://www.wordpress.lan/wp-content/uploads/2018/06/10501.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-06-11 14:24:59', '2018-06-11 14:24:59', 'Kotao EKOLINE Home do 20kW ima mogućnost da zagrijava privatni i stambeno poslovni prostor do 180m2.Modeli su lijeve lijeve i desne izvedbe zavisno od potrebe kupca. Kotao do 20kW troši u prosjeku od 3-6 tona peleta za jednu grejnu sezonu,u ovisnosti od stanja objekta,površine koja se zagrijava i ostalih faktora.', 'EKOLINE HOME 20 KW', '', 'publish', 'open', 'closed', '', 'ekoline-home-20-kw', '', '', '2018-06-11 14:25:00', '2018-06-11 14:25:00', '', 0, 'http://www.wordpress.lan/?post_type=product&#038;p=13', 0, 'product', '', 0),
(14, 1, '2018-06-11 14:24:53', '2018-06-11 14:24:53', '', '20kw[1]', '', 'inherit', 'open', 'closed', '', '20kw1', '', '', '2018-06-11 14:24:53', '2018-06-11 14:24:53', '', 13, 'http://www.wordpress.lan/wp-content/uploads/2018/06/20kw1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-06-11 14:25:52', '2018-06-11 14:25:52', 'Kotao EKOLINE Home do 35kW ima mogućnost da zagrijava stambeno poslovni prostor do 250m2. Modeli su lijeve i desne izvedbe zavisno od potrebe kupca. Kotao do 35kW troši u prosjeku od 4-8 tona peleta za jednu grejnu sezonu,u ovisnosti od stanja objekta,površine koja se zagrijava i ostalih faktora.', 'EKOLINE HOME 35 KW', '', 'publish', 'open', 'closed', '', 'ekoline-home-35-kw', '', '', '2018-06-11 14:25:54', '2018-06-11 14:25:54', '', 0, 'http://www.wordpress.lan/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2018-06-11 14:25:36', '2018-06-11 14:25:36', '', '35kw[1]', '', 'inherit', 'open', 'closed', '', '35kw1', '', '', '2018-06-11 14:25:36', '2018-06-11 14:25:36', '', 15, 'http://www.wordpress.lan/wp-content/uploads/2018/06/35kw1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-06-11 14:26:42', '2018-06-11 14:26:42', 'Kotao EKOLINE Home do 50kW ima mogućnost da zagrijava stambeno poslovni prostor do 350m2. Modeli su lijeve i desne izvedbe zavisno od potrebe kupca. Kotao do 50kW troši u prosjeku od 5-10 tona peleta za jednu grejnu sezonu u ovisnosti od stanja objekta,površine koja se zagrijava i ostalih faktora.', 'EKOLINE HOME 50 KW', '', 'publish', 'open', 'closed', '', 'ekoline-home-50-kw', '', '', '2018-06-11 14:26:44', '2018-06-11 14:26:44', '', 0, 'http://www.wordpress.lan/?post_type=product&#038;p=17', 0, 'product', '', 0),
(18, 1, '2018-06-11 14:26:33', '2018-06-11 14:26:33', '', '50kw[1]', '', 'inherit', 'open', 'closed', '', '50kw1', '', '', '2018-06-11 14:26:33', '2018-06-11 14:26:33', '', 17, 'http://www.wordpress.lan/wp-content/uploads/2018/06/50kw1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-06-11 14:27:42', '2018-06-11 14:27:42', 'NEMAMO TEXTA ZA OVAJ PROZIVOD', 'EKOLINE INDUSTRY 75-200 KW', '', 'publish', 'open', 'closed', '', 'ekoline-industry-75-200-kw', '', '', '2018-06-11 14:27:44', '2018-06-11 14:27:44', '', 0, 'http://www.wordpress.lan/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2018-06-11 14:27:37', '2018-06-11 14:27:37', '', '75-200kw[1]', '', 'inherit', 'open', 'closed', '', '75-200kw1', '', '', '2018-06-11 14:27:37', '2018-06-11 14:27:37', '', 19, 'http://www.wordpress.lan/wp-content/uploads/2018/06/75-200kw1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-06-11 14:28:21', '2018-06-11 14:28:21', 'NEMAMO TEXTA ZA OVAJ PROZIVOD', 'EKOLINE INDUSTRY 300-600 KW', '', 'publish', 'open', 'closed', '', 'ekoline-industry-300-600-kw', '', '', '2018-06-11 14:28:23', '2018-06-11 14:28:23', '', 0, 'http://www.wordpress.lan/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2018-06-11 14:28:16', '2018-06-11 14:28:16', '', '300-600kw[1]', '', 'inherit', 'open', 'closed', '', '300-600kw1', '', '', '2018-06-11 14:28:16', '2018-06-11 14:28:16', '', 21, 'http://www.wordpress.lan/wp-content/uploads/2018/06/300-600kw1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-06-11 14:45:29', '2018-06-11 14:45:29', 'This is your homepage which is what most visitors will see when they first visit your shop.\r\n\r\nYou can change this text by editing the &quot;Welcome&quot; page via the &quot;Pages&quot; menu in your dashboard.', 'Welcome', '', 'publish', 'closed', 'closed', '', 'welcome', '', '', '2018-06-11 14:45:29', '2018-06-11 14:45:29', '', 0, 'http://www.wordpress.lan/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 0, 'http://www.wordpress.lan/?page_id=24', 0, 'page', '', 0),
(26, 1, '2018-06-11 14:33:16', '2018-06-11 14:33:16', '', 'abstract-colorful-floral-shape-with-logo_1035-8982[1]', '', 'inherit', 'open', 'closed', '', 'abstract-colorful-floral-shape-with-logo_1035-89821', '', '', '2018-06-11 14:33:16', '2018-06-11 14:33:16', '', 0, 'http://www.wordpress.lan/wp-content/uploads/2018/06/abstract-colorful-floral-shape-with-logo_1035-89821.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-06-11 14:33:25', '2018-06-11 14:33:25', 'http://www.wordpress.lan/wp-content/uploads/2018/06/cropped-abstract-colorful-floral-shape-with-logo_1035-89821.jpg', 'cropped-abstract-colorful-floral-shape-with-logo_1035-89821.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-abstract-colorful-floral-shape-with-logo_1035-89821-jpg', '', '', '2018-06-11 14:33:25', '2018-06-11 14:33:25', '', 0, 'http://www.wordpress.lan/wp-content/uploads/2018/06/cropped-abstract-colorful-floral-shape-with-logo_1035-89821.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 'Calculator', '', 'publish', 'closed', 'closed', '', 'calculator', '', '', '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 0, 'http://www.wordpress.lan/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-06-11 14:40:56', '2018-06-11 14:40:56', '', 'cropped-35kw1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-35kw1-jpg', '', '', '2018-06-11 14:40:56', '2018-06-11 14:40:56', '', 0, 'http://www.wordpress.lan/wp-content/uploads/2018/06/cropped-35kw1.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-06-11 14:42:01', '2018-06-11 14:42:01', '', 'banner2-1920x500[1]', '', 'inherit', 'open', 'closed', '', 'banner2-1920x5001', '', '', '2018-06-11 14:42:01', '2018-06-11 14:42:01', '', 0, 'http://www.wordpress.lan/wp-content/uploads/2018/06/banner2-1920x5001.jpeg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-06-11 14:42:06', '2018-06-11 14:42:06', '', 'cropped-banner2-1920x5001.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-banner2-1920x5001-jpeg', '', '', '2018-06-11 14:42:06', '2018-06-11 14:42:06', '', 0, 'http://www.wordpress.lan/wp-content/uploads/2018/06/cropped-banner2-1920x5001.jpeg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-06-11 14:45:29', '2018-06-11 14:45:29', 'This is your homepage which is what most visitors will see when they first visit your shop.\r\n\r\nYou can change this text by editing the &quot;Welcome&quot; page via the &quot;Pages&quot; menu in your dashboard.', 'Welcome', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-06-11 14:45:29', '2018-06-11 14:45:29', '', 23, 'http://www.wordpress.lan/2018/06/11/23-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 24, 'http://www.wordpress.lan/2018/06/11/24-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 'Calculator', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 28, 'http://www.wordpress.lan/2018/06/11/28-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-06-11 14:45:30', '2018-06-11 14:45:30', '', 0, 'http://www.wordpress.lan/2018/06/11/home/', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-06-11 14:45:31', '2018-06-11 14:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-06-11 14:45:31', '2018-06-11 14:45:31', '', 0, 'http://www.wordpress.lan/2018/06/11/36/', 2, 'nav_menu_item', '', 0),
(37, 1, '2018-06-11 14:45:31', '2018-06-11 14:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-06-11 14:45:31', '2018-06-11 14:45:31', '', 0, 'http://www.wordpress.lan/2018/06/11/37/', 3, 'nav_menu_item', '', 0),
(40, 1, '2018-07-18 10:49:01', '2018-07-18 10:49:01', 'NEMAMO TEXTA ZA OVAJ PROZIVOD', 'EKOLINE INDUSTRY 300-600 KW', '<p><br data-mce-bogus=\"1\"></p>', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2018-07-18 10:49:01', '2018-07-18 10:49:01', '', 21, 'http://www.wordpress.lan/2018/07/18/21-autosave-v1/', 0, 'revision', '', 0),
(43, 1, '2018-07-26 11:32:58', '2018-07-26 11:32:58', 'asdfasdfasdf', 'Category 2', '', 'publish', 'open', 'open', '', 'category-2', '', '', '2018-07-29 12:16:44', '2018-07-29 12:16:44', '', 0, 'http://www.wordpress.lan/?p=43', 0, 'post', '', 0),
(44, 1, '2018-07-26 11:32:58', '2018-07-26 11:32:58', 'asdfasdfasdf', 'asdfasdf', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-07-26 11:32:58', '2018-07-26 11:32:58', '', 43, 'http://www.wordpress.lan/2018/07/26/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-07-26 11:33:26', '2018-07-26 11:33:26', 'asdfasdfasdf', 'Category1', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-07-26 11:33:26', '2018-07-26 11:33:26', '', 43, 'http://www.wordpress.lan/2018/07/26/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-07-26 11:33:51', '2018-07-26 11:33:51', 'asdfasdfasdf', 'Category 3', '', 'publish', 'open', 'open', '', 'category-3', '', '', '2018-07-29 12:15:48', '2018-07-29 12:15:48', '', 0, 'http://www.wordpress.lan/?p=46', 0, 'post', '', 0),
(47, 1, '2018-07-26 11:33:51', '2018-07-26 11:33:51', 'asdfasdfasdf', 'Category 2', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-07-26 11:33:51', '2018-07-26 11:33:51', '', 46, 'http://www.wordpress.lan/2018/07/26/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-07-26 11:34:09', '2018-07-26 11:34:09', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Category 1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-26 11:34:09', '2018-07-26 11:34:09', '', 1, 'http://www.wordpress.lan/2018/07/26/1-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-07-26 11:34:22', '2018-07-26 11:34:22', 'asdfasdfasdf', 'Category3', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-07-26 11:34:22', '2018-07-26 11:34:22', '', 43, 'http://www.wordpress.lan/2018/07/26/43-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-07-26 22:04:03', '2018-07-26 22:04:03', 'asdfasdfasdf', 'Category2', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-07-26 22:04:03', '2018-07-26 22:04:03', '', 43, 'http://www.wordpress.lan/2018/07/26/43-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-07-26 22:04:10', '2018-07-26 22:04:10', 'asdfasdfasdf', 'Category 3', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-07-26 22:04:10', '2018-07-26 22:04:10', '', 46, 'http://www.wordpress.lan/2018/07/26/46-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-07-26 23:04:26', '2018-07-26 23:04:26', 'asdfasdfa sdf', 'Category 2 1', '', 'publish', 'open', 'open', '', 'category-2-1', '', '', '2018-07-26 23:04:26', '2018-07-26 23:04:26', '', 0, 'http://www.wordpress.lan/?p=52', 0, 'post', '', 0),
(53, 1, '2018-07-26 23:04:26', '2018-07-26 23:04:26', 'asdfasdfa sdf', 'Category 2 1', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-07-26 23:04:26', '2018-07-26 23:04:26', '', 52, 'http://www.wordpress.lan/2018/07/26/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-07-26 23:04:37', '2018-07-26 23:04:37', 'asdf asdf asd fas dfasd f', 'Category 2 2', '', 'publish', 'open', 'open', '', 'category-2-2', '', '', '2018-07-26 23:04:42', '2018-07-26 23:04:42', '', 0, 'http://www.wordpress.lan/?p=54', 0, 'post', '', 0),
(55, 1, '2018-07-26 23:04:37', '2018-07-26 23:04:37', 'asdf asdf asd fas dfasd f', 'Category 2 2', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-07-26 23:04:37', '2018-07-26 23:04:37', '', 54, 'http://www.wordpress.lan/2018/07/26/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-07-26 23:04:56', '2018-07-26 23:04:56', 'asdf asdf as dfas dfsdf', 'Category 2 3', '', 'publish', 'open', 'open', '', 'category-2-3', '', '', '2018-07-26 23:04:56', '2018-07-26 23:04:56', '', 0, 'http://www.wordpress.lan/?p=56', 0, 'post', '', 0),
(57, 1, '2018-07-26 23:04:56', '2018-07-26 23:04:56', 'asdf asdf as dfas dfsdf', 'Category 2 3', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-07-26 23:04:56', '2018-07-26 23:04:56', '', 56, 'http://www.wordpress.lan/2018/07/26/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-07-27 11:59:52', '2018-07-27 11:59:52', 'asdfasdf asdf asdf', 'Category 3 1', '', 'publish', 'open', 'open', '', 'category-3-1', '', '', '2018-07-27 11:59:52', '2018-07-27 11:59:52', '', 0, 'http://www.wordpress.lan/?p=58', 0, 'post', '', 0),
(59, 1, '2018-07-27 11:59:52', '2018-07-27 11:59:52', 'asdfasdf asdf asdf', 'Category 3 1', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-07-27 11:59:52', '2018-07-27 11:59:52', '', 58, 'http://www.wordpress.lan/2018/07/27/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-07-27 12:00:05', '2018-07-27 12:00:05', 'sadf asdfasdf as dfa sdfasdfa', 'Category 3 2', '', 'publish', 'open', 'open', '', 'category-3-2', '', '', '2018-07-27 12:00:05', '2018-07-27 12:00:05', '', 0, 'http://www.wordpress.lan/?p=60', 0, 'post', '', 0),
(61, 1, '2018-07-27 12:00:05', '2018-07-27 12:00:05', 'sadf asdfasdf as dfa sdfasdfa', 'Category 3 2', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-07-27 12:00:05', '2018-07-27 12:00:05', '', 60, 'http://www.wordpress.lan/2018/07/27/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-07-27 12:00:16', '2018-07-27 12:00:16', '', 'Category 3 3', '', 'publish', 'open', 'open', '', 'category-3-3', '', '', '2018-07-27 12:00:16', '2018-07-27 12:00:16', '', 0, 'http://www.wordpress.lan/?p=62', 0, 'post', '', 0),
(63, 1, '2018-07-27 12:00:16', '2018-07-27 12:00:16', '', 'Category 3 3', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-07-27 12:00:16', '2018-07-27 12:00:16', '', 62, 'http://www.wordpress.lan/2018/07/27/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-07-28 20:06:12', '2018-07-28 20:06:12', 'a sdf asdf as dfasdf as', 'Category 1 1', '', 'publish', 'open', 'open', '', 'category-1-1', '', '', '2018-07-28 20:06:12', '2018-07-28 20:06:12', '', 0, 'http://www.wordpress.lan/?p=64', 0, 'post', '', 0),
(65, 1, '2018-07-28 20:06:12', '2018-07-28 20:06:12', 'a sdf asdf as dfasdf as', 'Category 1 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-07-28 20:06:12', '2018-07-28 20:06:12', '', 64, 'http://www.wordpress.lan/2018/07/28/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-07-28 20:06:30', '2018-07-28 20:06:30', 'asdf adf asd fasd fas dfas', 'Category 1 2', '', 'publish', 'open', 'open', '', 'category-1-2', '', '', '2018-07-28 20:06:30', '2018-07-28 20:06:30', '', 0, 'http://www.wordpress.lan/?p=66', 0, 'post', '', 0),
(67, 1, '2018-07-28 20:06:30', '2018-07-28 20:06:30', 'asdf adf asd fasd fas dfas', 'Category 1 2', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-28 20:06:30', '2018-07-28 20:06:30', '', 66, 'http://www.wordpress.lan/2018/07/28/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-07-29 12:16:44', '2018-07-29 12:16:44', 'asdfasdfasdf', 'Category 2', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-07-29 12:16:44', '2018-07-29 12:16:44', '', 43, 'http://www.wordpress.lan/43-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-07-29 12:17:35', '2018-07-29 12:17:35', 'asdfasdfasdfasdfasdf', 'Category 4 cat 1', '', 'publish', 'open', 'open', '', 'category-4-cat-1', '', '', '2018-07-29 12:17:35', '2018-07-29 12:17:35', '', 0, 'http://www.wordpress.lan/?p=69', 0, 'post', '', 0),
(70, 1, '2018-07-29 12:17:35', '2018-07-29 12:17:35', 'asdfasdfasdfasdfasdf', 'Category 4 cat 1', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-07-29 12:17:35', '2018-07-29 12:17:35', '', 69, 'http://www.wordpress.lan/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-07-29 12:17:53', '2018-07-29 12:17:53', 'asdfasdfas dfas dfas df', 'Category 4 cat 3', '', 'publish', 'open', 'open', '', 'category-4-cat-3', '', '', '2018-07-29 12:17:58', '2018-07-29 12:17:58', '', 0, 'http://www.wordpress.lan/?p=71', 0, 'post', '', 0),
(72, 1, '2018-07-29 12:17:53', '2018-07-29 12:17:53', '', 'Category 4 cat 3', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-07-29 12:17:53', '2018-07-29 12:17:53', '', 71, 'http://www.wordpress.lan/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-07-29 12:17:58', '2018-07-29 12:17:58', 'asdfasdfas dfas dfas df', 'Category 4 cat 3', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-07-29 12:17:58', '2018-07-29 12:17:58', '', 71, 'http://www.wordpress.lan/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-07-29 12:18:14', '2018-07-29 12:18:14', 'asdfa sdfasdf asdfa sdfasdf', 'Category 5 cat 1 cat 3', '', 'publish', 'open', 'open', '', 'category-5-cat-1-cat-3', '', '', '2018-07-29 12:18:56', '2018-07-29 12:18:56', '', 0, 'http://www.wordpress.lan/?p=74', 0, 'post', '', 0),
(75, 1, '2018-07-29 12:18:14', '2018-07-29 12:18:14', 'asdfa sdfasdf asdfa sdfasdf', 'Category 5 cat 1 cat 3', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-07-29 12:18:14', '2018-07-29 12:18:14', '', 74, 'http://www.wordpress.lan/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-07-29 12:18:33', '2018-07-29 12:18:33', 'asdf as dfasdf asdfa sdfa sdf', 'Category 5 cat 1 cat 3 cat 4', '', 'publish', 'open', 'open', '', 'category-5-cat-1-cat-3-cat-4', '', '', '2018-07-29 12:19:38', '2018-07-29 12:19:38', '', 0, 'http://www.wordpress.lan/?p=76', 0, 'post', '', 0),
(77, 1, '2018-07-29 12:18:33', '2018-07-29 12:18:33', 'asdf as dfasdf asdfa sdfa sdf', 'Category 5 cat 1 cat 3 cat 4', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-07-29 12:18:33', '2018-07-29 12:18:33', '', 76, 'http://www.wordpress.lan/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-07-29 12:19:09', '2018-07-29 12:19:09', 'asdf asdf asfd asdf', 'Category 5', '', 'publish', 'open', 'open', '', 'category-5', '', '', '2018-07-29 12:19:09', '2018-07-29 12:19:09', '', 0, 'http://www.wordpress.lan/?p=78', 0, 'post', '', 0),
(79, 1, '2018-07-29 12:19:09', '2018-07-29 12:19:09', 'asdf asdf asfd asdf', 'Category 5', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-07-29 12:19:09', '2018-07-29 12:19:09', '', 78, 'http://www.wordpress.lan/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-07-29 12:19:19', '2018-07-29 12:19:19', 'asdf asd fas dfa sdfa sdfa', 'Category 4', '', 'publish', 'open', 'open', '', 'category-4', '', '', '2018-07-29 12:19:19', '2018-07-29 12:19:19', '', 0, 'http://www.wordpress.lan/?p=80', 0, 'post', '', 0),
(81, 1, '2018-07-29 12:19:19', '2018-07-29 12:19:19', 'asdf asd fas dfa sdfa sdfa', 'Category 4', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-29 12:19:19', '2018-07-29 12:19:19', '', 80, 'http://www.wordpress.lan/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-07-29 13:24:41', '2018-07-29 13:24:41', 'asda sadf asdf asd fasd f', 'Uncategorized', '', 'publish', 'open', 'open', '', 'uncategorized', '', '', '2018-07-29 13:24:41', '2018-07-29 13:24:41', '', 0, 'http://www.wordpress.lan/?p=82', 0, 'post', '', 0),
(83, 1, '2018-07-29 13:24:41', '2018-07-29 13:24:41', 'asda sadf asdf asd fasd f', 'Uncategorized', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-07-29 13:24:41', '2018-07-29 13:24:41', '', 82, 'http://www.wordpress.lan/82-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '6');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Primary Menu', 'primary-menu', 0),
(17, 'cat1', 'cat1', 0),
(18, 'cat2', 'cat2', 0),
(19, 'cat3', 'cat3', 0),
(20, 'cat4', 'cat4', 0),
(21, 'cat5', 'cat5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 17, 0),
(9, 2, 0),
(9, 15, 0),
(13, 2, 0),
(13, 15, 0),
(15, 2, 0),
(15, 15, 0),
(17, 2, 0),
(17, 15, 0),
(19, 2, 0),
(19, 15, 0),
(21, 2, 0),
(21, 15, 0),
(35, 16, 0),
(36, 16, 0),
(37, 16, 0),
(43, 18, 0),
(46, 19, 0),
(52, 18, 0),
(54, 18, 0),
(56, 18, 0),
(58, 19, 0),
(60, 19, 0),
(62, 19, 0),
(64, 17, 0),
(66, 17, 0),
(69, 17, 0),
(69, 20, 0),
(71, 19, 0),
(71, 20, 0),
(74, 1, 0),
(74, 17, 0),
(74, 19, 0),
(74, 21, 0),
(76, 1, 0),
(76, 17, 0),
(76, 19, 0),
(76, 20, 0),
(76, 21, 0),
(78, 21, 0),
(80, 20, 0),
(82, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'product_type', '', 0, 6),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 6),
(16, 16, 'nav_menu', '', 0, 3),
(17, 17, 'category', '', 0, 6),
(18, 18, 'category', '', 0, 4),
(19, 19, 'category', '', 0, 7),
(20, 20, 'category', '', 0, 4),
(21, 21, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"35ff2a6bc1b9779b0cfa1d3559321f3998e7dbf0229bade7f8b494458720e474\";a:4:{s:10:\"expiration\";i:1533862048;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1533689248;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '84'),
(18, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(19, 1, 'jetpack_tracks_anon_id', 'jetpack:7xqbyP8AYPza2CjfuI8ABtb0'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1528727025'),
(22, 1, 'dismissed_no_shipping_methods_notice', '1'),
(23, 1, 'dismissed_no_secure_connection_notice', '1'),
(24, 1, 'wc_last_active', '1533686400'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BQCjcib1aQeiLZx605VhQ2xm32X9bI.', 'admin', 'tomvancev@gmail.com', '', '2018-06-11 14:17:59', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=998;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `wp_wc_download_log_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
