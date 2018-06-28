-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  jeu. 28 juin 2018 à 10:17
-- Version du serveur :  5.6.38
-- Version de PHP :  7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-11 11:28:15', '2018-06-11 09:28:15', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Move Nepal', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'madolphe@ensc.fr', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:216:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"projects/?$\";s:28:\"index.php?post_type=projects\";s:41:\"projects/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=projects&feed=$matches[1]\";s:36:\"projects/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=projects&feed=$matches[1]\";s:28:\"projects/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=projects&paged=$matches[1]\";s:11:\"contacts/?$\";s:27:\"index.php?post_type=contact\";s:41:\"contacts/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=contact&feed=$matches[1]\";s:36:\"contacts/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=contact&feed=$matches[1]\";s:28:\"contacts/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=contact&paged=$matches[1]\";s:9:\"footer/?$\";s:26:\"index.php?post_type=footer\";s:39:\"footer/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=footer&feed=$matches[1]\";s:34:\"footer/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=footer&feed=$matches[1]\";s:26:\"footer/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=footer&paged=$matches[1]\";s:15:\"faqpositions/?$\";s:32:\"index.php?post_type=faqpositions\";s:45:\"faqpositions/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=faqpositions&feed=$matches[1]\";s:40:\"faqpositions/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=faqpositions&feed=$matches[1]\";s:32:\"faqpositions/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=faqpositions&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"projects/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"projects/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"projects/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"projects/([^/]+)/embed/?$\";s:41:\"index.php?projects=$matches[1]&embed=true\";s:29:\"projects/([^/]+)/trackback/?$\";s:35:\"index.php?projects=$matches[1]&tb=1\";s:49:\"projects/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?projects=$matches[1]&feed=$matches[2]\";s:44:\"projects/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?projects=$matches[1]&feed=$matches[2]\";s:37:\"projects/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&paged=$matches[2]\";s:44:\"projects/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&cpage=$matches[2]\";s:33:\"projects/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?projects=$matches[1]&page=$matches[2]\";s:25:\"projects/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"projects/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"projects/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"faqs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"faqs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"faqs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"faqs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"faqs/([^/]+)/embed/?$\";s:37:\"index.php?faqs=$matches[1]&embed=true\";s:25:\"faqs/([^/]+)/trackback/?$\";s:31:\"index.php?faqs=$matches[1]&tb=1\";s:33:\"faqs/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&paged=$matches[2]\";s:40:\"faqs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&cpage=$matches[2]\";s:29:\"faqs/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?faqs=$matches[1]&page=$matches[2]\";s:21:\"faqs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"faqs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"faqs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"faqs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"faqposition/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"faqposition/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"faqposition/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"faqposition/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"faqposition/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"faqposition/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"faqposition/([^/]+)/embed/?$\";s:44:\"index.php?faqposition=$matches[1]&embed=true\";s:32:\"faqposition/([^/]+)/trackback/?$\";s:38:\"index.php?faqposition=$matches[1]&tb=1\";s:40:\"faqposition/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?faqposition=$matches[1]&paged=$matches[2]\";s:47:\"faqposition/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?faqposition=$matches[1]&cpage=$matches[2]\";s:36:\"faqposition/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?faqposition=$matches[1]&page=$matches[2]\";s:28:\"faqposition/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"faqposition/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"faqposition/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"faqposition/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"faqposition/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"faqposition/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"contacts/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"contacts/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"contacts/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"contacts/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"contacts/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"contacts/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"contacts/([^/]+)/embed/?$\";s:40:\"index.php?contact=$matches[1]&embed=true\";s:29:\"contacts/([^/]+)/trackback/?$\";s:34:\"index.php?contact=$matches[1]&tb=1\";s:49:\"contacts/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?contact=$matches[1]&feed=$matches[2]\";s:44:\"contacts/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?contact=$matches[1]&feed=$matches[2]\";s:37:\"contacts/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?contact=$matches[1]&paged=$matches[2]\";s:44:\"contacts/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?contact=$matches[1]&cpage=$matches[2]\";s:33:\"contacts/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?contact=$matches[1]&page=$matches[2]\";s:25:\"contacts/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"contacts/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"contacts/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"contacts/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"contacts/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"contacts/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"footer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"footer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"footer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"footer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"footer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"footer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"footer/([^/]+)/embed/?$\";s:39:\"index.php?footer=$matches[1]&embed=true\";s:27:\"footer/([^/]+)/trackback/?$\";s:33:\"index.php?footer=$matches[1]&tb=1\";s:47:\"footer/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?footer=$matches[1]&feed=$matches[2]\";s:42:\"footer/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?footer=$matches[1]&feed=$matches[2]\";s:35:\"footer/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?footer=$matches[1]&paged=$matches[2]\";s:42:\"footer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?footer=$matches[1]&cpage=$matches[2]\";s:31:\"footer/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?footer=$matches[1]&page=$matches[2]\";s:23:\"footer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"footer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"footer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"footer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"footer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"footer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"faqpositions/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"faqpositions/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"faqpositions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"faqpositions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"faqpositions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"faqpositions/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"faqpositions/([^/]+)/embed/?$\";s:45:\"index.php?faqpositions=$matches[1]&embed=true\";s:33:\"faqpositions/([^/]+)/trackback/?$\";s:39:\"index.php?faqpositions=$matches[1]&tb=1\";s:53:\"faqpositions/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?faqpositions=$matches[1]&feed=$matches[2]\";s:48:\"faqpositions/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?faqpositions=$matches[1]&feed=$matches[2]\";s:41:\"faqpositions/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?faqpositions=$matches[1]&paged=$matches[2]\";s:48:\"faqpositions/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?faqpositions=$matches[1]&cpage=$matches[2]\";s:37:\"faqpositions/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?faqpositions=$matches[1]&page=$matches[2]\";s:29:\"faqpositions/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"faqpositions/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"faqpositions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"faqpositions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"faqpositions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"faqpositions/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=105&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:2;s:34:\"video-background/candide-vidbg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:85:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/Test/footer.php\";i:2;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/Test/style.css\";i:3;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/akismet/akismet.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'MoveNepal', 'yes'),
(41, 'stylesheet', 'MoveNepal', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:76:\"Applications/MAMP/htdocs/wordpress/wp-content/themes/MoveNepal/functions.php\";s:24:\"next_page_delete_options\";}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '105', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'fr_FR', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1530174496;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1530178096;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530178124;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530181671;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528872828;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(142, 'current_theme', '', 'yes'),
(143, 'theme_mods_Test', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"my-custom-menu\";i:2;s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529380450;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(212, 'recently_activated', 'a:1:{s:37:\"timeline-express/timeline-express.php\";i:1529494704;}', 'yes'),
(215, 'mbYTPlayer_price', 'a:3:{s:6:\"result\";s:2:\"OK\";s:3:\"COM\";s:2:\"12\";s:3:\"DEV\";s:2:\"55\";}', 'yes'),
(216, 'mbYTPlayer_version', '3.2.2', 'yes'),
(217, '_notice_dismiss', '[]', 'yes'),
(218, 'mbYTPlayer_is_active', 'true', 'yes'),
(219, 'mbYTPlayer_video_url', '', 'yes'),
(220, 'mbYTPlayer_video_page', 'static', 'yes'),
(221, 'mbYTPlayer_remember_last_time', '', 'yes'),
(222, 'mbYTPlayer_init_delay', '', 'yes'),
(224, 'mbYTPlayer_notice_dismiss', '[\"mbYTPlayer0_3.2.2\"]', 'yes'),
(236, 'category_children', 'a:0:{}', 'yes'),
(250, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(277, 'theme_mods_MoveNepal', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:3;s:9:\"secondary\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(358, 'acf_version', '4.4.12', 'yes'),
(363, 'cptui_new_install', 'false', 'yes'),
(366, 'timeline_express_install_date', '1529493703', 'yes'),
(378, 'cptui_post_types', 'a:3:{s:8:\"projects\";a:28:{s:4:\"name\";s:8:\"projects\";s:5:\"label\";s:8:\"projects\";s:14:\"singular_label\";s:7:\"project\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:4:\"faqs\";a:28:{s:4:\"name\";s:4:\"faqs\";s:5:\"label\";s:4:\"faqs\";s:14:\"singular_label\";s:3:\"faq\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:11:\"faqposition\";a:28:{s:4:\"name\";s:11:\"faqposition\";s:5:\"label\";s:12:\"faqpositions\";s:14:\"singular_label\";s:11:\"faqposition\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(429, '_site_transient_timeout_browser_a086906eaf9cc3bbb07392145764ac01', '1530258146', 'no'),
(430, '_site_transient_browser_a086906eaf9cc3bbb07392145764ac01', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.87\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(493, '_site_transient_timeout_theme_roots', '1530171000', 'no'),
(494, '_site_transient_theme_roots', 'a:5:{s:9:\"MoveNepal\";s:7:\"/themes\";s:4:\"Test\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(496, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1530169205;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-27 14:34:22\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(497, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530169207;s:7:\"checked\";a:5:{s:9:\"MoveNepal\";s:0:\"\";s:4:\"Test\";s:3:\"0.1\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(498, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1530169210;s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:5:\"1.3.6\";s:9:\"hello.php\";s:3:\"1.7\";s:27:\"wpmbytplayer/mbYTPlayer.php\";s:5:\"3.2.2\";s:37:\"timeline-express/timeline-express.php\";s:5:\"1.7.0\";s:34:\"video-background/candide-vidbg.php\";s:5:\"2.7.0\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:7:\"7.10.15\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:7:\"7.10.16\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.2.7\";s:7:\"updated\";s:19:\"2017-10-01 19:28:05\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/easy-wp-smtp/1.2.7/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/easy-wp-smtp\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:6:\"plugin\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:11:\"new_version\";s:5:\"1.3.6\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easy-wp-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wpmbytplayer/mbYTPlayer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpmbytplayer\";s:4:\"slug\";s:12:\"wpmbytplayer\";s:6:\"plugin\";s:27:\"wpmbytplayer/mbYTPlayer.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpmbytplayer/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wpmbytplayer.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/wpmbytplayer/assets/icon.svg?rev=1544312\";s:3:\"svg\";s:57:\"https://ps.w.org/wpmbytplayer/assets/icon.svg?rev=1544312\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpmbytplayer/assets/banner-1544x500.jpg?rev=1775485\";s:2:\"1x\";s:67:\"https://ps.w.org/wpmbytplayer/assets/banner-772x250.jpg?rev=1775485\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"timeline-express/timeline-express.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/timeline-express\";s:4:\"slug\";s:16:\"timeline-express\";s:6:\"plugin\";s:37:\"timeline-express/timeline-express.php\";s:11:\"new_version\";s:5:\"1.7.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/timeline-express/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/timeline-express.1.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/timeline-express/assets/icon-256x256.png?rev=1007462\";s:2:\"1x\";s:69:\"https://ps.w.org/timeline-express/assets/icon-128x128.png?rev=1007462\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/timeline-express/assets/banner-772x250.jpg?rev=1413096\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"video-background/candide-vidbg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/video-background\";s:4:\"slug\";s:16:\"video-background\";s:6:\"plugin\";s:34:\"video-background/candide-vidbg.php\";s:11:\"new_version\";s:5:\"2.7.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/video-background/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/video-background.2.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/video-background/assets/icon-256x256.jpg?rev=1243965\";s:2:\"1x\";s:69:\"https://ps.w.org/video-background/assets/icon-128x128.jpg?rev=1243965\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/video-background/assets/banner-1544x500.jpg?rev=1250969\";s:2:\"1x\";s:71:\"https://ps.w.org/video-background/assets/banner-772x250.jpg?rev=1250969\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(499, '_site_transient_timeout_browser_eb23ac3a78f591ce5e88aca6638bf9b5', '1530774154', 'no'),
(500, '_site_transient_browser_eb23ac3a78f591ce5e88aca6638bf9b5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(501, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1530212555', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(502, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 06:51:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wpfr.net/wordpress-gutenberg/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2018 09:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"éditeur visuel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2117903\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1474:\"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wordpress-gutenberg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wpfr.net/wordpress-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"e9NMBukVOfDih5qUWvD6bfWrWUo\";s:13:\"last-modified\";s:29:\"Thu, 28 Jun 2018 06:55:14 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Thu, 28 Jun 2018 07:02:35 GMT\";s:7:\"expires\";s:29:\"Thu, 28 Jun 2018 07:02:35 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:43:\"quic=\":443\"; ma=2592000; v=\"43,42,41,39,35\"\";}}s:5:\"build\";s:14:\"20130910221710\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(503, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1530212555', 'no'),
(504, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1530169355', 'no'),
(505, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1530212556', 'no'),
(506, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"Formations WordPress éligibles au CPF (Compte Personnel Formation)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/wqreta7ke8c/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpformation.com/formations-wordpress-eligibles-cpf/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 08:11:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:641:\"\n		        La Commission Nationale de la Certification Professionnelle (CNCP) a publié son dernier recensement à l&#8217;Inventaire des certifications et habilitations lors de sa commission plénière du 25/05/2018 et&#8230; WPFormation est heureux et fier de vous annoncer que les formations WordPress que nous proposons sont désormais éligibles au CPF ! (Compte Personnel Formation). Le code CPF de [&#8230;]\n\nL’article Formations WordPress éligibles au CPF (Compte Personnel Formation) est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1522:\"<p><img width=\"720\" height=\"491\" src=\"https://wpformation.com/wp-content/uploads/2018/05/compte-personnel-formation-cpf-WordPress-.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"compte personnel formation cpf WordPress\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />La Commission Nationale de la Certification Professionnelle (CNCP) a publié son dernier recensement à l&#8217;Inventaire des certifications et habilitations lors de sa commission plénière du 25/05/2018 et&#8230; WPFormation est heureux et fier de vous annoncer que les formations WordPress que nous proposons sont désormais éligibles au CPF ! (Compte Personnel Formation). Le code CPF de [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/formations-wordpress-eligibles-cpf/\">Formations WordPress éligibles au CPF (Compte Personnel Formation)</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/wqreta7ke8c\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpformation.com/formations-wordpress-eligibles-cpf/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"OneSignal : le plugin incontournable pour ajouter des notifications push sur WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/7RHRlTXZ1o0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://wpmarmite.com/onesignal-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=onesignal-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 06:00:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:341:\"\n		        \nComme tous les matins, vous naviguez sur vos sites web favoris. Et soudain, vous la voyez apparaître sous vos yeux. Mesdames et messieurs, voici la fameuse notification push : On...\nL’article OneSignal : le plugin incontournable pour ajouter des notifications push sur WordPress est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:722:\"<p><img width=\"1280\" height=\"440\" src=\"https://wpmarmite.com/wp-content/uploads/2018/06/onesignal-wordpress.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Comme tous les matins, vous naviguez sur vos sites web favoris. Et soudain, vous la voyez apparaître sous vos yeux. Mesdames et messieurs, voici la fameuse notification push : On...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/onesignal-wordpress/\">OneSignal : le plugin incontournable pour ajouter des notifications push sur WordPress</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/7RHRlTXZ1o0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://wpmarmite.com/onesignal-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=onesignal-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Désactiver des types de produits sous WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/T0AF79qrm8c/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wpchannel.com/wordpress/tutoriels-wordpress/desactiver-types-produits-woocommerce/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jun 2018 15:05:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:440:\"\n		        Les types de produits sous WooCommerce sont multiples : simple, variable, groupés, externe / affiliation ou encore réservable avec WooCommerce Bookings. Il est possible de désactiver les types de produits qui ne vous sont pas utiles ou bien pour certains rôles utilisateurs précis. Collez donc le bout de code suivant dans un mu-plugin : Constatez le bon fonctionnement en créant un nouveau produit puis [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:703:\"<div class=\"post-thumbnail\"><img width=\"391\" height=\"300\" src=\"https://wpchannel.com/images/2010/12/coding-macbook-391x300.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>Les types de produits sous WooCommerce sont multiples : simple, variable, groupés, externe / affiliation ou encore réservable avec WooCommerce Bookings. Il est possible de désactiver les types de produits qui ne vous sont pas utiles ou bien pour certains rôles utilisateurs précis. Collez donc le bout de code suivant dans un mu-plugin : Constatez le bon fonctionnement en créant un nouveau produit puis [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/T0AF79qrm8c\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wpchannel.com/wordpress/tutoriels-wordpress/desactiver-types-produits-woocommerce/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"Afficher facilement vos agendas Openagenda.com sur votre site WordPress avec OpenAgenda pour WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/M-jhm2c7bnw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"https://www.thivinfo.com/blog/afficher-facilement-vos-agendas-openagenda-com-sur-votre-site-wordpress-avec-openagenda-pour-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 23 Jun 2018 10:35:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:708:\"\n		        Openagenda.com est un service en ligne d&#8217;agendas. Son intérêt principal  est de se comporter comme un réseau social d&#8217;évènements. Vous pouvez facilement partager un évènement ou un agenda complet sur votre propre agenda en agrégeant les flux automatiquement. Openagenda propose un systeme assez complet d&#8217;intégration de ses agenda dans vos sites internets mais l&#8217;inconvénient se trouve dans le fait que le CSS est a appliquer sur le site d&#8217;OpenAgenda et donc de dupliquer votre style avec toute la maintenance que cela entraine. Si vous modifiez le style sur votre site, vous devez le modifier dans les réglages de votre openagenda. Ensuite,…		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:778:\"Openagenda.com est un service en ligne d&#8217;agendas. Son intérêt principal  est de se comporter comme un réseau social d&#8217;évènements. Vous pouvez facilement partager un évènement ou un agenda complet sur votre propre agenda en agrégeant les flux automatiquement. Openagenda propose un systeme assez complet d&#8217;intégration de ses agenda dans vos sites internets mais l&#8217;inconvénient se trouve dans le fait que le CSS est a appliquer sur le site d&#8217;OpenAgenda et donc de dupliquer votre style avec toute la maintenance que cela entraine. Si vous modifiez le style sur votre site, vous devez le modifier dans les réglages de votre openagenda. Ensuite,…<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/M-jhm2c7bnw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"https://www.thivinfo.com/blog/afficher-facilement-vos-agendas-openagenda-com-sur-votre-site-wordpress-avec-openagenda-pour-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"Mises à jour de sécurité chez Elegantthemes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/2rbh0hWbC34/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpformation.com/securite-elegantthemes/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 06:38:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:577:\"\n		        Aujourd&#8217;hui les produits Divi, Extra et Divi builder ont été mis à jour avec un correctif de sécurité. La mise à jour de ces produits dans leurs dernières versions appliquera le correctif, tout en gardant votre WordPress sécurisé. &#160; Le problème Ces produits contenaient un bug qui a permis aux utilisateurs de WordPress, quel que [&#8230;]\n\nL’article Mises à jour de sécurité chez Elegantthemes est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1388:\"<p><img width=\"1000\" height=\"545\" src=\"https://wpformation.com/wp-content/uploads/2016/09/divi-3.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"Sortie de DIVI 3\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Aujourd&#8217;hui les produits Divi, Extra et Divi builder ont été mis à jour avec un correctif de sécurité. La mise à jour de ces produits dans leurs dernières versions appliquera le correctif, tout en gardant votre WordPress sécurisé. &#160; Le problème Ces produits contenaient un bug qui a permis aux utilisateurs de WordPress, quel que [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/securite-elegantthemes/\">Mises à jour de sécurité chez Elegantthemes</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/2rbh0hWbC34\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpformation.com/securite-elegantthemes/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"Ces 71 plugins WooCommerce vont transformer votre WordPress en machine à clients\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/Vtg1FY26Ycs/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://wpmarmite.com/woocommerce-plugins/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=woocommerce-plugins\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Jun 2018 07:22:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:351:\"\n		        \nTrouver LE plugin WooCommerce adapté à son besoin n’est vraiment pas simple. Je me mouille, car je suis quasi-certain que vous êtes d’accord avec moi. Prenez le répertoire WordPress, par...\nL’article Ces 71 plugins WooCommerce vont transformer votre WordPress en machine à clients est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:732:\"<p><img width=\"1280\" height=\"440\" src=\"https://wpmarmite.com/wp-content/uploads/2018/06/plugins-woocommerce.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Trouver LE plugin WooCommerce adapté à son besoin n’est vraiment pas simple. Je me mouille, car je suis quasi-certain que vous êtes d’accord avec moi. Prenez le répertoire WordPress, par...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/woocommerce-plugins/\">Ces 71 plugins WooCommerce vont transformer votre WordPress en machine à clients</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/Vtg1FY26Ycs\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://wpmarmite.com/woocommerce-plugins/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=woocommerce-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Keyboard Action : Ma revue\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"http://feedproxy.google.com/~r/wpfr/~3/nTkRjjAYCtQ/keyboard-action-ma-revue-109803.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://boiteaweb.fr/keyboard-action-ma-revue-109803.html\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 06:00:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:474:\"\n		        Dans cet article je voudrais faire le tour d&#8217;un nouveau plugin vraiment cool (relativement) : Keyboard Action. Cette extension a été développée pour que le temps passé sur votre site soit rendu plus efficace en rendant les tâches plus accessibles. C&#8217;est assez difficile d&#8217;expliquer ce qu&#8217;est vraiment Keyboard Action, disons que ça ressemble à une&#160;…\nThe post Keyboard Action : Ma revue appeared first on BoiteAWeb.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:695:\"<p>Dans cet article je voudrais faire le tour d&#8217;un nouveau plugin vraiment cool (relativement) : Keyboard Action. Cette extension a été développée pour que le temps passé sur votre site soit rendu plus efficace en rendant les tâches plus accessibles. C&#8217;est assez difficile d&#8217;expliquer ce qu&#8217;est vraiment Keyboard Action, disons que ça ressemble à une&#160;…</p>\n<p>The post <a rel=\"nofollow\" href=\"https://boiteaweb.fr/keyboard-action-ma-revue-109803.html\">Keyboard Action : Ma revue</a> appeared first on <a rel=\"nofollow\" href=\"https://boiteaweb.fr\">BoiteAWeb</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/nTkRjjAYCtQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://boiteaweb.fr/keyboard-action-ma-revue-109803.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"Faire du Domain Mapping avec WordPress multisite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/BiXHoC4-n24/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://www.thivinfo.com/blog/tutoriels/faire-du-domain-mapping-avec-wordpress-multisite/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Jun 2018 17:20:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:708:\"\n		        Dans l&#8217;épisode précédent, je vous présentais simplement (du moins je l&#8217;espère) comment mettre en place un multisite sous WordPress. nous avons vu que nous pouvions donc créer sur la base d&#8217;une seule installation WordPress autant de site que nous voulions. Les sites créés avaient alors 2 syntaxes possibles: en sous-domaine ex: site1.example.com en sous-dossier ex: example.com/site1 Avouez que c&#8217;est un bon début mais que si en plus on pouvait avoir une URL personnalisée&#8230; alors ce serait parfait! Quand je parle d&#8217;URL personnalisée, je veux dire une adresse de site comme thivinfo.com pour le 1er site et tartempion.com pour le second.…		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:778:\"Dans l&#8217;épisode précédent, je vous présentais simplement (du moins je l&#8217;espère) comment mettre en place un multisite sous WordPress. nous avons vu que nous pouvions donc créer sur la base d&#8217;une seule installation WordPress autant de site que nous voulions. Les sites créés avaient alors 2 syntaxes possibles: en sous-domaine ex: site1.example.com en sous-dossier ex: example.com/site1 Avouez que c&#8217;est un bon début mais que si en plus on pouvait avoir une URL personnalisée&#8230; alors ce serait parfait! Quand je parle d&#8217;URL personnalisée, je veux dire une adresse de site comme thivinfo.com pour le 1er site et tartempion.com pour le second.…<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/BiXHoC4-n24\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://www.thivinfo.com/blog/tutoriels/faire-du-domain-mapping-avec-wordpress-multisite/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"i+9ylhh5a6HrP3W6heEGEpbGvsU\";s:13:\"last-modified\";s:29:\"Thu, 28 Jun 2018 05:12:04 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Thu, 28 Jun 2018 07:02:36 GMT\";s:7:\"expires\";s:29:\"Thu, 28 Jun 2018 07:02:36 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:43:\"quic=\":443\"; ma=2592000; v=\"43,42,41,39,35\"\";}}s:5:\"build\";s:14:\"20130910221710\";}', 'no'),
(507, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1530212556', 'no'),
(508, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1530169356', 'no'),
(509, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1530212556', 'no'),
(510, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\'>Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/wqreta7ke8c/\'>Formations WordPress éligibles au CPF (Compte Personnel Formation)</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/7RHRlTXZ1o0/\'>OneSignal : le plugin incontournable pour ajouter des notifications push sur WordPress</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/T0AF79qrm8c/\'>Désactiver des types de produits sous WooCommerce</a></li></ul></div>', 'no'),
(511, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1530216692', 'no'),
(512, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"WordPress Birgunj Meetup July 2018\";s:3:\"url\";s:65:\"https://www.meetup.com/WordPress-Birgunj-Meetup/events/252146660/\";s:6:\"meetup\";s:17:\"WordPress Birgunj\";s:10:\"meetup_url\";s:48:\"https://www.meetup.com/WordPress-Birgunj-Meetup/\";s:4:\"date\";s:19:\"2018-07-07 11:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Birganj, Nepal\";s:7:\"country\";s:2:\"np\";s:8:\"latitude\";d:27.044900999999999413603291031904518604278564453125;s:9:\"longitude\";d:84.8672179999999940491761662997305393218994140625;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:11:\"July Meetup\";s:3:\"url\";s:67:\"https://www.meetup.com/Bharatpur-WordPress-Meetup/events/252056765/\";s:6:\"meetup\";s:26:\"Bharatpur WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Bharatpur-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-07-14 10:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Gaindakot, Nepal\";s:7:\"country\";s:2:\"np\";s:8:\"latitude\";d:27.7050550000000015415935195051133632659912109375;s:9:\"longitude\";d:84.4076299999999974943420966155827045440673828125;}}i:2;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Pokhara\";s:3:\"url\";s:33:\"https://2018.pokhara.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-11-24 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Pokhara, Kaski, Nepal\";s:7:\"country\";s:2:\"NP\";s:8:\"latitude\";d:28.194758900000000068075678427703678607940673828125;s:9:\"longitude\";d:83.9731033000000053334588301368057727813720703125;}}}}', 'no'),
(513, '_site_transient_timeout_available_translations', '1530180169', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(514, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 07:02:30\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-23 07:27:43\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 03:44:52\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-09 07:24:56\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 13:12:01\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 10:52:38\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-05 15:20:28\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-04 19:00:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-31 19:43:07\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 18:15:25\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.6/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 17:56:21\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.6/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-05 12:41:56\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 08:45:22\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-22 19:01:38\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 23:18:17\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 15:47:52\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-22 00:27:45\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-27 18:50:21\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-16 04:48:17\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-27 18:34:04\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-26 13:11:18\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-25 11:38:08\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-16 10:29:40\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 21:23:19\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-27 14:34:22\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-26 08:11:46\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 03:43:25\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 15:45:31\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 22:45:22\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-30 09:55:05\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-28 07:55:20\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-21 16:18:57\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-08 06:01:48\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 22:24:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-10 00:11:05\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 09:42:27\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 08:05:19\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-19 12:12:30\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-08 06:38:47\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-18 13:59:12\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.6/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-26 07:54:24\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-21 19:01:02\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-12 12:14:24\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 19:42:47\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-12 18:06:57\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-25 06:37:17\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-29 17:37:01\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-24 16:37:09\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-25 10:30:04\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-17 22:21:34\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-29 07:47:42\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-27 22:04:04\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-25 07:43:35\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-20 11:37:47\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-14 04:18:32\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1528712901:1'),
(7, 7, '_edit_last', '1'),
(10, 7, '_edit_lock', '1528712750:1'),
(11, 9, '_edit_last', '1'),
(12, 9, '_edit_lock', '1528795649:1'),
(13, 2, '_edit_lock', '1528814930:1'),
(14, 3, '_edit_lock', '1528942056:1'),
(15, 3, '_wp_trash_meta_status', 'draft'),
(16, 3, '_wp_trash_meta_time', '1528942202'),
(17, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(18, 9, '_wp_trash_meta_status', 'publish'),
(19, 9, '_wp_trash_meta_time', '1528942206'),
(20, 9, '_wp_desired_post_slug', 'pagetest2'),
(21, 2, '_wp_trash_meta_status', 'publish'),
(22, 2, '_wp_trash_meta_time', '1528942207'),
(23, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(24, 13, '_edit_last', '1'),
(25, 13, '_edit_lock', '1528945050:1'),
(26, 15, '_edit_last', '1'),
(27, 15, '_edit_lock', '1528942142:1'),
(28, 17, '_edit_last', '1'),
(29, 17, '_edit_lock', '1528942159:1'),
(30, 19, '_edit_last', '1'),
(31, 19, '_edit_lock', '1529384513:1'),
(32, 21, '_edit_last', '1'),
(33, 21, '_edit_lock', '1529553287:1'),
(34, 1, '_wp_trash_meta_status', 'publish'),
(35, 1, '_wp_trash_meta_time', '1528942492'),
(36, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(37, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(38, 7, '_wp_trash_meta_status', 'publish'),
(39, 7, '_wp_trash_meta_time', '1528942493'),
(40, 7, '_wp_desired_post_slug', 'article-2'),
(41, 5, '_wp_trash_meta_status', 'publish'),
(42, 5, '_wp_trash_meta_time', '1528942495'),
(43, 5, '_wp_desired_post_slug', 'article-1'),
(44, 24, '_edit_last', '1'),
(45, 24, '_edit_lock', '1528944103:1'),
(102, 32, '_wp_trash_meta_status', 'publish'),
(103, 32, '_wp_trash_meta_time', '1528944408'),
(104, 33, '_edit_last', '1'),
(105, 33, '_edit_lock', '1528945071:1'),
(106, 35, '_edit_last', '1'),
(107, 35, '_edit_lock', '1528945093:1'),
(108, 37, '_edit_last', '1'),
(109, 37, '_edit_lock', '1528945110:1'),
(110, 39, '_edit_last', '1'),
(111, 39, '_edit_lock', '1528945152:1'),
(112, 41, '_edit_last', '1'),
(113, 41, '_edit_lock', '1528945180:1'),
(114, 43, '_edit_last', '1'),
(115, 43, '_edit_lock', '1528945198:1'),
(116, 45, '_edit_last', '1'),
(117, 45, '_edit_lock', '1528945210:1'),
(280, 66, '_menu_item_type', 'custom'),
(281, 66, '_menu_item_menu_item_parent', '0'),
(282, 66, '_menu_item_object_id', '66'),
(283, 66, '_menu_item_object', 'custom'),
(284, 66, '_menu_item_target', ''),
(285, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 66, '_menu_item_xfn', ''),
(287, 66, '_menu_item_url', 'http://localhost/wordpress/'),
(288, 66, '_menu_item_orphaned', '1529381893'),
(289, 67, '_menu_item_type', 'post_type'),
(290, 67, '_menu_item_menu_item_parent', '0'),
(291, 67, '_menu_item_object_id', '19'),
(292, 67, '_menu_item_object', 'page'),
(293, 67, '_menu_item_target', ''),
(294, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 67, '_menu_item_xfn', ''),
(296, 67, '_menu_item_url', ''),
(297, 67, '_menu_item_orphaned', '1529381893'),
(298, 68, '_menu_item_type', 'post_type'),
(299, 68, '_menu_item_menu_item_parent', '0'),
(300, 68, '_menu_item_object_id', '21'),
(301, 68, '_menu_item_object', 'page'),
(302, 68, '_menu_item_target', ''),
(303, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 68, '_menu_item_xfn', ''),
(305, 68, '_menu_item_url', ''),
(306, 68, '_menu_item_orphaned', '1529381893'),
(307, 69, '_menu_item_type', 'post_type'),
(308, 69, '_menu_item_menu_item_parent', '0'),
(309, 69, '_menu_item_object_id', '17'),
(310, 69, '_menu_item_object', 'page'),
(311, 69, '_menu_item_target', ''),
(312, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 69, '_menu_item_xfn', ''),
(314, 69, '_menu_item_url', ''),
(315, 69, '_menu_item_orphaned', '1529381894'),
(316, 70, '_menu_item_type', 'post_type'),
(317, 70, '_menu_item_menu_item_parent', '0'),
(318, 70, '_menu_item_object_id', '45'),
(319, 70, '_menu_item_object', 'page'),
(320, 70, '_menu_item_target', ''),
(321, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(322, 70, '_menu_item_xfn', ''),
(323, 70, '_menu_item_url', ''),
(324, 70, '_menu_item_orphaned', '1529381894'),
(325, 71, '_menu_item_type', 'post_type'),
(326, 71, '_menu_item_menu_item_parent', '0'),
(327, 71, '_menu_item_object_id', '15'),
(328, 71, '_menu_item_object', 'page'),
(329, 71, '_menu_item_target', ''),
(330, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(331, 71, '_menu_item_xfn', ''),
(332, 71, '_menu_item_url', ''),
(333, 71, '_menu_item_orphaned', '1529381894'),
(334, 72, '_menu_item_type', 'post_type'),
(335, 72, '_menu_item_menu_item_parent', '0'),
(336, 72, '_menu_item_object_id', '13'),
(337, 72, '_menu_item_object', 'page'),
(338, 72, '_menu_item_target', ''),
(339, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(340, 72, '_menu_item_xfn', ''),
(341, 72, '_menu_item_url', ''),
(342, 72, '_menu_item_orphaned', '1529381894'),
(343, 73, '_menu_item_type', 'post_type'),
(344, 73, '_menu_item_menu_item_parent', '0'),
(345, 73, '_menu_item_object_id', '35'),
(346, 73, '_menu_item_object', 'page'),
(347, 73, '_menu_item_target', ''),
(348, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(349, 73, '_menu_item_xfn', ''),
(350, 73, '_menu_item_url', ''),
(351, 73, '_menu_item_orphaned', '1529381894'),
(352, 74, '_menu_item_type', 'post_type'),
(353, 74, '_menu_item_menu_item_parent', '0'),
(354, 74, '_menu_item_object_id', '37'),
(355, 74, '_menu_item_object', 'page'),
(356, 74, '_menu_item_target', ''),
(357, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(358, 74, '_menu_item_xfn', ''),
(359, 74, '_menu_item_url', ''),
(360, 74, '_menu_item_orphaned', '1529381894'),
(361, 75, '_menu_item_type', 'post_type'),
(362, 75, '_menu_item_menu_item_parent', '0'),
(363, 75, '_menu_item_object_id', '33'),
(364, 75, '_menu_item_object', 'page'),
(365, 75, '_menu_item_target', ''),
(366, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(367, 75, '_menu_item_xfn', ''),
(368, 75, '_menu_item_url', ''),
(369, 75, '_menu_item_orphaned', '1529381894'),
(370, 76, '_menu_item_type', 'post_type'),
(371, 76, '_menu_item_menu_item_parent', '0'),
(372, 76, '_menu_item_object_id', '39'),
(373, 76, '_menu_item_object', 'page'),
(374, 76, '_menu_item_target', ''),
(375, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(376, 76, '_menu_item_xfn', ''),
(377, 76, '_menu_item_url', ''),
(378, 76, '_menu_item_orphaned', '1529381894'),
(379, 77, '_menu_item_type', 'post_type'),
(380, 77, '_menu_item_menu_item_parent', '0'),
(381, 77, '_menu_item_object_id', '41'),
(382, 77, '_menu_item_object', 'page'),
(383, 77, '_menu_item_target', ''),
(384, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(385, 77, '_menu_item_xfn', ''),
(386, 77, '_menu_item_url', ''),
(387, 77, '_menu_item_orphaned', '1529381894'),
(388, 78, '_menu_item_type', 'post_type'),
(389, 78, '_menu_item_menu_item_parent', '0'),
(390, 78, '_menu_item_object_id', '43'),
(391, 78, '_menu_item_object', 'page'),
(392, 78, '_menu_item_target', ''),
(393, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(394, 78, '_menu_item_xfn', ''),
(395, 78, '_menu_item_url', ''),
(396, 78, '_menu_item_orphaned', '1529381894'),
(397, 79, '_menu_item_type', 'custom'),
(398, 79, '_menu_item_menu_item_parent', '0'),
(399, 79, '_menu_item_object_id', '79'),
(400, 79, '_menu_item_object', 'custom'),
(401, 79, '_menu_item_target', ''),
(402, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(403, 79, '_menu_item_xfn', ''),
(404, 79, '_menu_item_url', 'http://localhost/wordpress/'),
(405, 79, '_menu_item_orphaned', '1529381894'),
(406, 80, '_menu_item_type', 'post_type'),
(407, 80, '_menu_item_menu_item_parent', '0'),
(408, 80, '_menu_item_object_id', '19'),
(409, 80, '_menu_item_object', 'page'),
(410, 80, '_menu_item_target', ''),
(411, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(412, 80, '_menu_item_xfn', ''),
(413, 80, '_menu_item_url', ''),
(414, 80, '_menu_item_orphaned', '1529381894'),
(415, 81, '_menu_item_type', 'post_type'),
(416, 81, '_menu_item_menu_item_parent', '0'),
(417, 81, '_menu_item_object_id', '21'),
(418, 81, '_menu_item_object', 'page'),
(419, 81, '_menu_item_target', ''),
(420, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(421, 81, '_menu_item_xfn', ''),
(422, 81, '_menu_item_url', ''),
(423, 81, '_menu_item_orphaned', '1529381894'),
(424, 82, '_menu_item_type', 'post_type'),
(425, 82, '_menu_item_menu_item_parent', '0'),
(426, 82, '_menu_item_object_id', '17'),
(427, 82, '_menu_item_object', 'page'),
(428, 82, '_menu_item_target', ''),
(429, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(430, 82, '_menu_item_xfn', ''),
(431, 82, '_menu_item_url', ''),
(432, 82, '_menu_item_orphaned', '1529381894'),
(433, 83, '_menu_item_type', 'post_type'),
(434, 83, '_menu_item_menu_item_parent', '0'),
(435, 83, '_menu_item_object_id', '45'),
(436, 83, '_menu_item_object', 'page'),
(437, 83, '_menu_item_target', ''),
(438, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(439, 83, '_menu_item_xfn', ''),
(440, 83, '_menu_item_url', ''),
(441, 83, '_menu_item_orphaned', '1529381894'),
(442, 84, '_menu_item_type', 'post_type'),
(443, 84, '_menu_item_menu_item_parent', '0'),
(444, 84, '_menu_item_object_id', '15'),
(445, 84, '_menu_item_object', 'page'),
(446, 84, '_menu_item_target', ''),
(447, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(448, 84, '_menu_item_xfn', ''),
(449, 84, '_menu_item_url', ''),
(450, 84, '_menu_item_orphaned', '1529381894'),
(451, 85, '_menu_item_type', 'post_type'),
(452, 85, '_menu_item_menu_item_parent', '0'),
(453, 85, '_menu_item_object_id', '13'),
(454, 85, '_menu_item_object', 'page'),
(455, 85, '_menu_item_target', ''),
(456, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(457, 85, '_menu_item_xfn', ''),
(458, 85, '_menu_item_url', ''),
(459, 85, '_menu_item_orphaned', '1529381894'),
(460, 86, '_menu_item_type', 'post_type'),
(461, 86, '_menu_item_menu_item_parent', '0'),
(462, 86, '_menu_item_object_id', '35'),
(463, 86, '_menu_item_object', 'page'),
(464, 86, '_menu_item_target', ''),
(465, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(466, 86, '_menu_item_xfn', ''),
(467, 86, '_menu_item_url', ''),
(468, 86, '_menu_item_orphaned', '1529381894'),
(469, 87, '_menu_item_type', 'post_type'),
(470, 87, '_menu_item_menu_item_parent', '0'),
(471, 87, '_menu_item_object_id', '37'),
(472, 87, '_menu_item_object', 'page'),
(473, 87, '_menu_item_target', ''),
(474, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(475, 87, '_menu_item_xfn', ''),
(476, 87, '_menu_item_url', ''),
(477, 87, '_menu_item_orphaned', '1529381894'),
(478, 88, '_menu_item_type', 'post_type'),
(479, 88, '_menu_item_menu_item_parent', '0'),
(480, 88, '_menu_item_object_id', '33'),
(481, 88, '_menu_item_object', 'page'),
(482, 88, '_menu_item_target', ''),
(483, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(484, 88, '_menu_item_xfn', ''),
(485, 88, '_menu_item_url', ''),
(486, 88, '_menu_item_orphaned', '1529381894'),
(487, 89, '_menu_item_type', 'post_type'),
(488, 89, '_menu_item_menu_item_parent', '0'),
(489, 89, '_menu_item_object_id', '39'),
(490, 89, '_menu_item_object', 'page'),
(491, 89, '_menu_item_target', ''),
(492, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(493, 89, '_menu_item_xfn', ''),
(494, 89, '_menu_item_url', ''),
(495, 89, '_menu_item_orphaned', '1529381894'),
(496, 90, '_menu_item_type', 'post_type'),
(497, 90, '_menu_item_menu_item_parent', '0'),
(498, 90, '_menu_item_object_id', '41'),
(499, 90, '_menu_item_object', 'page'),
(500, 90, '_menu_item_target', ''),
(501, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(502, 90, '_menu_item_xfn', ''),
(503, 90, '_menu_item_url', ''),
(504, 90, '_menu_item_orphaned', '1529381894'),
(505, 91, '_menu_item_type', 'post_type'),
(506, 91, '_menu_item_menu_item_parent', '0'),
(507, 91, '_menu_item_object_id', '43'),
(508, 91, '_menu_item_object', 'page'),
(509, 91, '_menu_item_target', ''),
(510, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(511, 91, '_menu_item_xfn', ''),
(512, 91, '_menu_item_url', ''),
(513, 91, '_menu_item_orphaned', '1529381894'),
(514, 92, '_menu_item_type', 'custom'),
(515, 92, '_menu_item_menu_item_parent', '0'),
(516, 92, '_menu_item_object_id', '92'),
(517, 92, '_menu_item_object', 'custom'),
(518, 92, '_menu_item_target', ''),
(519, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(520, 92, '_menu_item_xfn', ''),
(521, 92, '_menu_item_url', 'http://localhost/wordpress/'),
(522, 92, '_menu_item_orphaned', '1529381981'),
(523, 93, '_menu_item_type', 'post_type'),
(524, 93, '_menu_item_menu_item_parent', '0'),
(525, 93, '_menu_item_object_id', '19'),
(526, 93, '_menu_item_object', 'page'),
(527, 93, '_menu_item_target', ''),
(528, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(529, 93, '_menu_item_xfn', ''),
(530, 93, '_menu_item_url', ''),
(531, 93, '_menu_item_orphaned', '1529381981'),
(532, 94, '_menu_item_type', 'post_type'),
(533, 94, '_menu_item_menu_item_parent', '0'),
(534, 94, '_menu_item_object_id', '21'),
(535, 94, '_menu_item_object', 'page'),
(536, 94, '_menu_item_target', ''),
(537, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(538, 94, '_menu_item_xfn', ''),
(539, 94, '_menu_item_url', ''),
(540, 94, '_menu_item_orphaned', '1529381981'),
(541, 95, '_menu_item_type', 'post_type'),
(542, 95, '_menu_item_menu_item_parent', '0'),
(543, 95, '_menu_item_object_id', '17'),
(544, 95, '_menu_item_object', 'page'),
(545, 95, '_menu_item_target', ''),
(546, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(547, 95, '_menu_item_xfn', ''),
(548, 95, '_menu_item_url', ''),
(549, 95, '_menu_item_orphaned', '1529381981'),
(550, 96, '_menu_item_type', 'post_type'),
(551, 96, '_menu_item_menu_item_parent', '0'),
(552, 96, '_menu_item_object_id', '45'),
(553, 96, '_menu_item_object', 'page'),
(554, 96, '_menu_item_target', ''),
(555, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(556, 96, '_menu_item_xfn', ''),
(557, 96, '_menu_item_url', ''),
(558, 96, '_menu_item_orphaned', '1529381981'),
(559, 97, '_menu_item_type', 'post_type'),
(560, 97, '_menu_item_menu_item_parent', '0'),
(561, 97, '_menu_item_object_id', '15'),
(562, 97, '_menu_item_object', 'page'),
(563, 97, '_menu_item_target', ''),
(564, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(565, 97, '_menu_item_xfn', ''),
(566, 97, '_menu_item_url', ''),
(567, 97, '_menu_item_orphaned', '1529381981'),
(568, 98, '_menu_item_type', 'post_type'),
(569, 98, '_menu_item_menu_item_parent', '0'),
(570, 98, '_menu_item_object_id', '13'),
(571, 98, '_menu_item_object', 'page'),
(572, 98, '_menu_item_target', ''),
(573, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(574, 98, '_menu_item_xfn', ''),
(575, 98, '_menu_item_url', ''),
(576, 98, '_menu_item_orphaned', '1529381981'),
(577, 99, '_menu_item_type', 'post_type'),
(578, 99, '_menu_item_menu_item_parent', '0'),
(579, 99, '_menu_item_object_id', '35'),
(580, 99, '_menu_item_object', 'page'),
(581, 99, '_menu_item_target', ''),
(582, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(583, 99, '_menu_item_xfn', ''),
(584, 99, '_menu_item_url', ''),
(585, 99, '_menu_item_orphaned', '1529381981'),
(586, 100, '_menu_item_type', 'post_type'),
(587, 100, '_menu_item_menu_item_parent', '0'),
(588, 100, '_menu_item_object_id', '37'),
(589, 100, '_menu_item_object', 'page'),
(590, 100, '_menu_item_target', ''),
(591, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(592, 100, '_menu_item_xfn', ''),
(593, 100, '_menu_item_url', ''),
(594, 100, '_menu_item_orphaned', '1529381981'),
(595, 101, '_menu_item_type', 'post_type'),
(596, 101, '_menu_item_menu_item_parent', '0'),
(597, 101, '_menu_item_object_id', '33'),
(598, 101, '_menu_item_object', 'page'),
(599, 101, '_menu_item_target', ''),
(600, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(601, 101, '_menu_item_xfn', ''),
(602, 101, '_menu_item_url', ''),
(603, 101, '_menu_item_orphaned', '1529381981'),
(604, 102, '_menu_item_type', 'post_type'),
(605, 102, '_menu_item_menu_item_parent', '0'),
(606, 102, '_menu_item_object_id', '39'),
(607, 102, '_menu_item_object', 'page'),
(608, 102, '_menu_item_target', ''),
(609, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(610, 102, '_menu_item_xfn', ''),
(611, 102, '_menu_item_url', ''),
(612, 102, '_menu_item_orphaned', '1529381981'),
(613, 103, '_menu_item_type', 'post_type'),
(614, 103, '_menu_item_menu_item_parent', '0'),
(615, 103, '_menu_item_object_id', '41'),
(616, 103, '_menu_item_object', 'page'),
(617, 103, '_menu_item_target', ''),
(618, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(619, 103, '_menu_item_xfn', ''),
(620, 103, '_menu_item_url', ''),
(621, 103, '_menu_item_orphaned', '1529381981'),
(622, 104, '_menu_item_type', 'post_type'),
(623, 104, '_menu_item_menu_item_parent', '0'),
(624, 104, '_menu_item_object_id', '43'),
(625, 104, '_menu_item_object', 'page'),
(626, 104, '_menu_item_target', ''),
(627, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(628, 104, '_menu_item_xfn', ''),
(629, 104, '_menu_item_url', ''),
(630, 104, '_menu_item_orphaned', '1529381981'),
(631, 105, '_edit_last', '1'),
(632, 105, '_edit_lock', '1529470655:1'),
(633, 107, '_menu_item_type', 'custom'),
(634, 107, '_menu_item_menu_item_parent', '0'),
(635, 107, '_menu_item_object_id', '107'),
(636, 107, '_menu_item_object', 'custom'),
(637, 107, '_menu_item_target', ''),
(638, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(639, 107, '_menu_item_xfn', ''),
(640, 107, '_menu_item_url', 'http://localhost/wordpress/'),
(641, 107, '_menu_item_orphaned', '1529382011'),
(642, 108, '_menu_item_type', 'post_type'),
(643, 108, '_menu_item_menu_item_parent', '0'),
(644, 108, '_menu_item_object_id', '19'),
(645, 108, '_menu_item_object', 'page'),
(646, 108, '_menu_item_target', ''),
(647, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(648, 108, '_menu_item_xfn', ''),
(649, 108, '_menu_item_url', ''),
(651, 109, '_menu_item_type', 'post_type'),
(652, 109, '_menu_item_menu_item_parent', '0'),
(653, 109, '_menu_item_object_id', '21'),
(654, 109, '_menu_item_object', 'page'),
(655, 109, '_menu_item_target', ''),
(656, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(657, 109, '_menu_item_xfn', ''),
(658, 109, '_menu_item_url', ''),
(660, 110, '_menu_item_type', 'post_type'),
(661, 110, '_menu_item_menu_item_parent', '0'),
(662, 110, '_menu_item_object_id', '17'),
(663, 110, '_menu_item_object', 'page'),
(664, 110, '_menu_item_target', ''),
(665, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(666, 110, '_menu_item_xfn', ''),
(667, 110, '_menu_item_url', ''),
(687, 113, '_menu_item_type', 'post_type'),
(688, 113, '_menu_item_menu_item_parent', '0'),
(689, 113, '_menu_item_object_id', '105'),
(690, 113, '_menu_item_object', 'page'),
(691, 113, '_menu_item_target', ''),
(692, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(693, 113, '_menu_item_xfn', ''),
(694, 113, '_menu_item_url', ''),
(696, 114, '_menu_item_type', 'post_type'),
(697, 114, '_menu_item_menu_item_parent', '0'),
(698, 114, '_menu_item_object_id', '13'),
(699, 114, '_menu_item_object', 'page'),
(700, 114, '_menu_item_target', ''),
(701, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(702, 114, '_menu_item_xfn', ''),
(703, 114, '_menu_item_url', ''),
(705, 115, '_menu_item_type', 'post_type'),
(706, 115, '_menu_item_menu_item_parent', '114'),
(707, 115, '_menu_item_object_id', '35'),
(708, 115, '_menu_item_object', 'page'),
(709, 115, '_menu_item_target', ''),
(710, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(711, 115, '_menu_item_xfn', ''),
(712, 115, '_menu_item_url', ''),
(714, 116, '_menu_item_type', 'post_type'),
(715, 116, '_menu_item_menu_item_parent', '114'),
(716, 116, '_menu_item_object_id', '37'),
(717, 116, '_menu_item_object', 'page'),
(718, 116, '_menu_item_target', ''),
(719, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(720, 116, '_menu_item_xfn', ''),
(721, 116, '_menu_item_url', ''),
(723, 117, '_menu_item_type', 'post_type'),
(724, 117, '_menu_item_menu_item_parent', '114'),
(725, 117, '_menu_item_object_id', '33'),
(726, 117, '_menu_item_object', 'page'),
(727, 117, '_menu_item_target', ''),
(728, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(729, 117, '_menu_item_xfn', ''),
(730, 117, '_menu_item_url', ''),
(732, 118, '_menu_item_type', 'post_type'),
(733, 118, '_menu_item_menu_item_parent', '0'),
(734, 118, '_menu_item_object_id', '39'),
(735, 118, '_menu_item_object', 'page'),
(736, 118, '_menu_item_target', ''),
(737, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(738, 118, '_menu_item_xfn', ''),
(739, 118, '_menu_item_url', ''),
(741, 119, '_menu_item_type', 'post_type'),
(742, 119, '_menu_item_menu_item_parent', '118'),
(743, 119, '_menu_item_object_id', '41'),
(744, 119, '_menu_item_object', 'page'),
(745, 119, '_menu_item_target', ''),
(746, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(747, 119, '_menu_item_xfn', ''),
(748, 119, '_menu_item_url', ''),
(750, 120, '_menu_item_type', 'post_type'),
(751, 120, '_menu_item_menu_item_parent', '118'),
(752, 120, '_menu_item_object_id', '43'),
(753, 120, '_menu_item_object', 'page'),
(754, 120, '_menu_item_target', ''),
(755, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(756, 120, '_menu_item_xfn', ''),
(757, 120, '_menu_item_url', ''),
(777, 123, '_edit_last', '1'),
(780, 123, '_edit_lock', '1529391054:1'),
(783, 132, '_edit_last', '1'),
(784, 132, '_edit_lock', '1529418311:1'),
(787, 134, '_wp_attached_file', '2018/06/Altimètre.jpg'),
(788, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:226;s:6:\"height\";i:223;s:4:\"file\";s:23:\"2018/06/Altimètre.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Altimètre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(789, 134, '_wp_attachment_is_custom_background', 'MoveNepal'),
(791, 136, '_wp_attached_file', '2018/06/avionAUtiliser.jpg'),
(792, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4592;s:6:\"height\";i:3448;s:4:\"file\";s:26:\"2018/06/avionAUtiliser.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"avionAUtiliser-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"avionAUtiliser-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"avionAUtiliser-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"avionAUtiliser-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(793, 136, '_wp_attachment_is_custom_background', 'MoveNepal'),
(795, 136, '_wp_attachment_custom_header_last_used_MoveNepal', '1529396080'),
(796, 136, '_wp_attachment_is_custom_header', 'MoveNepal'),
(799, 138, '_edit_last', '1'),
(800, 138, 'field_5b2a3ecf9aa90', 'a:11:{s:3:\"key\";s:19:\"field_5b2a3ecf9aa90\";s:5:\"label\";s:5:\"image\";s:4:\"name\";s:5:\"image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(801, 138, 'field_5b2a3ee09aa91', 'a:14:{s:3:\"key\";s:19:\"field_5b2a3ee09aa91\";s:5:\"label\";s:6:\"resume\";s:4:\"name\";s:6:\"resume\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(802, 138, 'field_5b2a3ef49aa92', 'a:14:{s:3:\"key\";s:19:\"field_5b2a3ef49aa92\";s:5:\"label\";s:12:\"Accomodation\";s:4:\"name\";s:12:\"accomodation\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(803, 138, 'field_5b2a3f079aa93', 'a:14:{s:3:\"key\";s:19:\"field_5b2a3f079aa93\";s:5:\"label\";s:6:\"skills\";s:4:\"name\";s:6:\"skills\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(804, 138, 'field_5b2a3f109aa94', 'a:14:{s:3:\"key\";s:19:\"field_5b2a3f109aa94\";s:5:\"label\";s:5:\"start\";s:4:\"name\";s:5:\"start\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(805, 138, 'field_5b2a3f219aa95', 'a:14:{s:3:\"key\";s:19:\"field_5b2a3f219aa95\";s:5:\"label\";s:8:\"duration\";s:4:\"name\";s:8:\"duration\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(806, 138, 'field_5b2a3f289aa96', 'a:14:{s:3:\"key\";s:19:\"field_5b2a3f289aa96\";s:5:\"label\";s:5:\"apply\";s:4:\"name\";s:5:\"apply\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(807, 138, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"projects\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(808, 138, 'position', 'normal'),
(809, 138, 'layout', 'no_box'),
(810, 138, 'hide_on_screen', ''),
(811, 138, '_edit_lock', '1529495560:1'),
(812, 141, '_edit_last', '1'),
(813, 141, 'field_5b2a42f73684a', 'a:13:{s:3:\"key\";s:19:\"field_5b2a42f73684a\";s:5:\"label\";s:8:\"question\";s:4:\"name\";s:8:\"question\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:32:\"Please, enter here your question\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(814, 141, 'field_5b2a43c63684b', 'a:13:{s:3:\"key\";s:19:\"field_5b2a43c63684b\";s:5:\"label\";s:6:\"answer\";s:4:\"name\";s:6:\"answer\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:2:\"10\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(817, 141, 'position', 'acf_after_title'),
(818, 141, 'layout', 'no_box'),
(819, 141, 'hide_on_screen', 'a:3:{i:0;s:11:\"the_content\";i:1;s:6:\"author\";i:2;s:6:\"format\";}'),
(820, 141, '_edit_lock', '1529571227:1'),
(821, 142, '_edit_last', '1'),
(822, 142, '_edit_lock', '1529496844:1'),
(826, 142, '_wp_trash_meta_status', 'draft'),
(827, 142, '_wp_trash_meta_time', '1529496899'),
(828, 142, '_wp_desired_post_slug', ''),
(829, 144, '_edit_last', '1'),
(830, 144, 'question', 'bonjour'),
(831, 144, '_question', 'field_5b2a42f73684a'),
(832, 144, 'explications', 'zezefzef'),
(833, 144, '_explications', 'field_5b2a43c63684b'),
(834, 144, '_edit_lock', '1529552720:1'),
(835, 21, 'vidbg_metabox_field_mp4_id', '0'),
(836, 21, 'vidbg_metabox_field_webm_id', '0'),
(837, 21, 'vidbg_metabox_field_poster_id', '0'),
(838, 21, 'vidbg_metabox_field_overlay', 'off'),
(839, 21, 'vidbg_metabox_field_overlay_color', '#000'),
(840, 21, 'vidbg_metabox_field_overlay_alpha', '30'),
(841, 21, 'vidbg_metabox_field_no_loop', 'off'),
(842, 21, 'vidbg_metabox_field_tap_to_unmute', 'off'),
(843, 146, '_edit_last', '1'),
(844, 146, 'vidbg_metabox_field_mp4_id', '0'),
(845, 146, 'vidbg_metabox_field_webm_id', '0'),
(846, 146, 'vidbg_metabox_field_poster_id', '0'),
(847, 146, 'vidbg_metabox_field_overlay', 'off'),
(848, 146, 'vidbg_metabox_field_overlay_color', '#000'),
(849, 146, 'vidbg_metabox_field_overlay_alpha', '30'),
(850, 146, 'vidbg_metabox_field_no_loop', 'off'),
(851, 146, 'vidbg_metabox_field_tap_to_unmute', 'off'),
(852, 146, '_edit_lock', '1529553469:1'),
(855, 144, '_wp_trash_meta_status', 'publish'),
(856, 144, '_wp_trash_meta_time', '1529552883'),
(857, 144, '_wp_desired_post_slug', '144'),
(861, 150, '_edit_last', '1'),
(862, 150, 'category', 'BASICS'),
(863, 150, '_category', 'field_5b2b20d90a9d5'),
(864, 150, 'question', 'zjopdjzapojdzpojza^jâzodj azd?'),
(865, 150, '_question', 'field_5b2a42f73684a'),
(866, 150, 'answer', 'zakaziofhazjfpaozjfpoazj'),
(867, 150, '_answer', 'field_5b2a43c63684b'),
(868, 150, '_edit_lock', '1529558198:1'),
(869, 151, '_edit_last', '1'),
(870, 151, '_edit_lock', '1529553687:1'),
(871, 151, 'category', 'BASICS'),
(872, 151, '_category', 'field_5b2b20d90a9d5'),
(873, 151, 'question', 'lkza;fnakznkaznf'),
(874, 151, '_question', 'field_5b2a42f73684a'),
(875, 151, 'answer', 'zjpazj'),
(876, 151, '_answer', 'field_5b2a43c63684b'),
(879, 153, '_edit_last', '1'),
(880, 153, '_edit_lock', '1529559166:1'),
(881, 153, 'question', 'zkjfzafjazojfazo ?'),
(882, 153, '_question', 'field_5b2a42f73684a'),
(883, 153, 'answer', 'fzaazfazfazfjazjflmkazf'),
(884, 153, '_answer', 'field_5b2a43c63684b'),
(885, 154, '_edit_last', '1'),
(886, 154, '_edit_lock', '1529571292:1'),
(887, 154, 'question', 'azfjpiazjfopjaz ? '),
(888, 154, '_question', 'field_5b2a42f73684a'),
(889, 154, 'answer', 'zafazbfazfknazfknazfnazpnfaznfaznfpakznfpaznf'),
(890, 154, '_answer', 'field_5b2a43c63684b'),
(891, 155, '_edit_last', '1'),
(892, 155, 'question', 'zfaf?'),
(893, 155, '_question', 'field_5b2a42f73684a'),
(894, 155, 'answer', 'afafazzaf'),
(895, 155, '_answer', 'field_5b2a43c63684b'),
(896, 155, '_edit_lock', '1529571175:1'),
(897, 156, '_edit_last', '1'),
(898, 156, '_edit_lock', '1529571188:1'),
(899, 156, 'question', 'z=.?'),
(900, 156, '_question', 'field_5b2a42f73684a'),
(901, 156, 'answer', 'afz?'),
(902, 156, '_answer', 'field_5b2a43c63684b'),
(906, 156, 'category', ''),
(907, 156, '_category', 'field_5b2b36476881f'),
(908, 156, 'id', '1'),
(909, 156, '_id', 'field_5b2b379368821'),
(910, 155, 'category', ''),
(911, 155, '_category', 'field_5b2b36476881f'),
(912, 155, 'id', '1'),
(913, 155, '_id', 'field_5b2b379368821'),
(914, 153, 'category', ''),
(915, 153, '_category', 'field_5b2b36476881f'),
(916, 153, 'id', '1'),
(917, 153, '_id', 'field_5b2b379368821'),
(918, 157, '_edit_last', '1'),
(919, 157, 'field_5b2b3de0478fa', 'a:14:{s:3:\"key\";s:19:\"field_5b2b3de0478fa\";s:5:\"label\";s:6:\"Basics\";s:4:\"name\";s:6:\"basics\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(920, 157, 'field_5b2b3e01478fb', 'a:14:{s:3:\"key\";s:19:\"field_5b2b3e01478fb\";s:5:\"label\";s:20:\"Health and Insurance\";s:4:\"name\";s:13:\"health_and_in\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(921, 157, 'field_5b2b3e1d478fc', 'a:14:{s:3:\"key\";s:19:\"field_5b2b3e1d478fc\";s:5:\"label\";s:21:\"Food and accomodation\";s:4:\"name\";s:21:\"food_and_accomodation\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(922, 157, 'field_5b2b3e2e478fd', 'a:14:{s:3:\"key\";s:19:\"field_5b2b3e2e478fd\";s:5:\"label\";s:13:\"Money matters\";s:4:\"name\";s:13:\"money_matters\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(923, 157, 'field_5b2b3e3e478fe', 'a:14:{s:3:\"key\";s:19:\"field_5b2b3e3e478fe\";s:5:\"label\";s:13:\"Communication\";s:4:\"name\";s:13:\"communication\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(924, 157, 'field_5b2b3e4a478ff', 'a:14:{s:3:\"key\";s:19:\"field_5b2b3e4a478ff\";s:5:\"label\";s:14:\"Getting around\";s:4:\"name\";s:7:\"getting\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(925, 157, 'field_5b2b3e7447900', 'a:14:{s:3:\"key\";s:19:\"field_5b2b3e7447900\";s:5:\"label\";s:25:\"Registration, Program fee\";s:4:\"name\";s:12:\"registration\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(927, 157, 'position', 'normal'),
(928, 157, 'layout', 'no_box'),
(929, 157, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(930, 157, '_edit_lock', '1529564104:1'),
(935, 157, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"21\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(936, 157, '_wp_trash_meta_status', 'publish'),
(937, 157, '_wp_trash_meta_time', '1529564368'),
(938, 157, '_wp_desired_post_slug', 'acf_faqpositions'),
(939, 162, '_edit_last', '1'),
(940, 162, 'field_5b2b4cdf4e736', 'a:14:{s:3:\"key\";s:19:\"field_5b2b4cdf4e736\";s:5:\"label\";s:1:\"1\";s:4:\"name\";s:1:\"1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(941, 162, 'field_5b2b4ce74e737', 'a:14:{s:3:\"key\";s:19:\"field_5b2b4ce74e737\";s:5:\"label\";s:1:\"2\";s:4:\"name\";s:1:\"2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(942, 162, 'field_5b2b4cf64e738', 'a:14:{s:3:\"key\";s:19:\"field_5b2b4cf64e738\";s:5:\"label\";s:1:\"3\";s:4:\"name\";s:1:\"3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(943, 162, 'field_5b2b4d014e739', 'a:14:{s:3:\"key\";s:19:\"field_5b2b4d014e739\";s:5:\"label\";s:1:\"4\";s:4:\"name\";s:1:\"4\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(944, 162, 'field_5b2b4d1f4e73a', 'a:14:{s:3:\"key\";s:19:\"field_5b2b4d1f4e73a\";s:5:\"label\";s:1:\"5\";s:4:\"name\";s:1:\"5\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(945, 162, 'field_5b2b4d2d4e73b', 'a:14:{s:3:\"key\";s:19:\"field_5b2b4d2d4e73b\";s:5:\"label\";s:1:\"6\";s:4:\"name\";s:1:\"6\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(946, 162, 'field_5b2b4d3a4e73c', 'a:14:{s:3:\"key\";s:19:\"field_5b2b4d3a4e73c\";s:5:\"label\";s:1:\"7\";s:4:\"name\";s:1:\"7\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(948, 162, 'position', 'normal'),
(949, 162, 'layout', 'no_box'),
(950, 162, 'hide_on_screen', 'a:13:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}'),
(951, 162, '_edit_lock', '1530170825:1'),
(954, 165, '_edit_last', '1'),
(955, 165, 'basics', ''),
(956, 165, '_basics', 'field_5b2b4cdf4e736'),
(957, 165, 'health_and_insurance', ''),
(958, 165, '_health_and_insurance', 'field_5b2b4ce74e737'),
(959, 165, 'food_and_accomodation', ''),
(960, 165, '_food_and_accomodation', 'field_5b2b4cf64e738'),
(961, 165, 'money_matters', ''),
(962, 165, '_money_matters', 'field_5b2b4d014e739'),
(963, 165, 'communication', ''),
(964, 165, '_communication', 'field_5b2b4d1f4e73a'),
(965, 165, 'getting_around', ''),
(966, 165, '_getting_around', 'field_5b2b4d2d4e73b'),
(967, 165, 'registration', ''),
(968, 165, '_registration', 'field_5b2b4d3a4e73c'),
(969, 165, '_edit_lock', '1529565083:1'),
(970, 165, '_wp_trash_meta_status', 'publish'),
(971, 165, '_wp_trash_meta_time', '1529565230'),
(972, 165, '_wp_desired_post_slug', 'position'),
(975, 167, '_edit_last', '1'),
(976, 167, '_edit_lock', '1530170232:1'),
(977, 167, 'basics', 'Basics'),
(978, 167, '_basics', 'field_5b2b4cdf4e736'),
(979, 167, 'health_and_insurance', 'Health and Insurance'),
(980, 167, '_health_and_insurance', 'field_5b2b4ce74e737'),
(981, 167, 'food_and_accomodation', 'Food and accomodation'),
(982, 167, '_food_and_accomodation', 'field_5b2b4cf64e738'),
(983, 167, 'money_matters', 'Money matters'),
(984, 167, '_money_matters', 'field_5b2b4d014e739'),
(985, 167, 'communication', 'Communication'),
(986, 167, '_communication', 'field_5b2b4d1f4e73a'),
(987, 167, 'getting_around', 'Getting around'),
(988, 167, '_getting_around', 'field_5b2b4d2d4e73b'),
(989, 167, 'registration', 'Registration and program fee'),
(990, 167, '_registration', 'field_5b2b4d3a4e73c'),
(993, 167, 'first', 'ahihazfjaepofjae'),
(994, 167, '_first', 'field_5b2b4cdf4e736'),
(995, 167, '2', 'Health and Insurance'),
(996, 167, '_2', 'field_5b2b4ce74e737'),
(997, 167, '3', 'Food and accomodation'),
(998, 167, '_3', 'field_5b2b4cf64e738'),
(999, 167, '4', 'Money matters'),
(1000, 167, '_4', 'field_5b2b4d014e739'),
(1001, 167, '5', 'Communication'),
(1002, 167, '_5', 'field_5b2b4d1f4e73a'),
(1003, 167, '6', 'Getting around'),
(1004, 167, '_6', 'field_5b2b4d2d4e73b'),
(1005, 167, '7', 'Registration and program fee'),
(1006, 167, '_7', 'field_5b2b4d3a4e73c'),
(1008, 167, '1', 'Basics'),
(1009, 167, '_1', 'field_5b2b4cdf4e736'),
(1010, 154, '_wp_trash_meta_status', 'publish'),
(1011, 154, '_wp_trash_meta_time', '1529571313'),
(1012, 154, '_wp_desired_post_slug', 'communication'),
(1013, 156, '_wp_trash_meta_status', 'publish'),
(1014, 156, '_wp_trash_meta_time', '1529571335'),
(1015, 156, '_wp_desired_post_slug', 'encore-un'),
(1016, 155, '_wp_trash_meta_status', 'publish'),
(1017, 155, '_wp_trash_meta_time', '1529571337'),
(1018, 155, '_wp_desired_post_slug', 'nouveau-t'),
(1019, 153, '_wp_trash_meta_status', 'publish'),
(1020, 153, '_wp_trash_meta_time', '1529571339'),
(1021, 153, '_wp_desired_post_slug', 'basics'),
(1022, 151, '_wp_trash_meta_status', 'publish'),
(1023, 151, '_wp_trash_meta_time', '1529571342'),
(1024, 151, '_wp_desired_post_slug', 'autre'),
(1025, 150, '_wp_trash_meta_status', 'publish'),
(1026, 150, '_wp_trash_meta_time', '1529571343'),
(1027, 150, '_wp_desired_post_slug', '150'),
(1028, 168, '_edit_last', '1'),
(1029, 168, '_edit_lock', '1529571350:1'),
(1030, 141, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"faqs\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1031, 168, '_wp_trash_meta_status', 'draft'),
(1032, 168, '_wp_trash_meta_time', '1529571373'),
(1033, 168, '_wp_desired_post_slug', ''),
(1034, 169, '_edit_last', '1'),
(1035, 169, '_edit_lock', '1529653316:1'),
(1036, 169, 'question', 'Bonjour les basics c\'est beau ? '),
(1037, 169, '_question', 'field_5b2a42f73684a'),
(1038, 169, 'answer', '« Combien il serait louable chez un prince de tenir sa parole et de vivre avec droiture et non avec ruse, chacun le comprend : toutefois, on voit par expérience, de nos jours, que tels princes ont fait de grandes choses qui de leur parole ont tenu peu compte, et qui ont su par ruse manœuvrer la cervelle des gens ; et à la fin ils ont dominé ceux qui se sont fondés sur la loyauté.\r\n\r\nVous devez donc savoir qu’il y a deux manières de combattre : l’une avec les lois, l’autre avec la force ; la première est propre à l’homme, la seconde est celle des bêtes ; mais comme la première, très souvent, ne suffit pas, il convient de recourir à la seconde. Aussi est-il nécessaire à un prince de savoir bien user de la bête et de l’homme […]\r\n\r\nPuisque donc un prince est obligé de savoir bien user de la bête, il en doit choisir le renard et le lion ; car le lion ne se défend pas des rêts, le renard ne se défend pas des loups. Ceux qui s’en tiennent simplement au lion n’y entendent rien. Un souverain prudent, par conséquent, ne peut ni ne doit observer sa foi quand une telle observance tournerait contre lui et que sont éteintes les raisons qui le firent promettre. (…) Et jamais un prince n’a manqué de motifs légitimes pour colorer son manque de foi. De cela l’on pourrait donner une infinité d’exemples modernes, et montrer combien de paix, combien de promesses ont été rendues caduques et vaines par l’infidélité des princes : et celui qui a su mieux user du renard est arrivé à meilleure fin.»'),
(1039, 169, '_answer', 'field_5b2a43c63684b'),
(1040, 170, '_edit_last', '1'),
(1041, 170, '_edit_lock', '1529653307:1'),
(1042, 170, 'question', 'Tu aimes les basics?'),
(1043, 170, '_question', 'field_5b2a42f73684a'),
(1044, 170, 'answer', '« Combien il serait louable chez un prince de tenir sa parole et de vivre avec droiture et non avec ruse, chacun le comprend : toutefois, on voit par expérience, de nos jours, que tels princes ont fait de grandes choses qui de leur parole ont tenu peu compte, et qui ont su par ruse manœuvrer la cervelle des gens ; et à la fin ils ont dominé ceux qui se sont fondés sur la loyauté.\r\n\r\nVous devez donc savoir qu’il y a deux manières de combattre : l’une avec les lois, l’autre avec la force ; la première est propre à l’homme, la seconde est celle des bêtes ; mais comme la première, très souvent, ne suffit pas, il convient de recourir à la seconde. Aussi est-il nécessaire à un prince de savoir bien user de la bête et de l’homme […]\r\n\r\nPuisque donc un prince est obligé de savoir bien user de la bête, il en doit choisir le renard et le lion ; car le lion ne se défend pas des rêts, le renard ne se défend pas des loups. Ceux qui s’en tiennent simplement au lion n’y entendent rien. Un souverain prudent, par conséquent, ne peut ni ne doit observer sa foi quand une telle observance tournerait contre lui et que sont éteintes les raisons qui le firent promettre. (…) Et jamais un prince n’a manqué de motifs légitimes pour colorer son manque de foi. De cela l’on pourrait donner une infinité d’exemples modernes, et montrer combien de paix, combien de promesses ont été rendues caduques et vaines par l’infidélité des princes : et celui qui a su mieux user du renard est arrivé à meilleure fin.»'),
(1045, 170, '_answer', 'field_5b2a43c63684b'),
(1046, 171, '_edit_last', '1'),
(1047, 171, '_edit_lock', '1529653297:1'),
(1048, 171, 'question', 'Elle prefere le basics en mere ?'),
(1049, 171, '_question', 'field_5b2a42f73684a');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1050, 171, 'answer', '« Combien il serait louable chez un prince de tenir sa parole et de vivre avec droiture et non avec ruse, chacun le comprend : toutefois, on voit par expérience, de nos jours, que tels princes ont fait de grandes choses qui de leur parole ont tenu peu compte, et qui ont su par ruse manœuvrer la cervelle des gens ; et à la fin ils ont dominé ceux qui se sont fondés sur la loyauté.\r\n\r\nVous devez donc savoir qu’il y a deux manières de combattre : l’une avec les lois, l’autre avec la force ; la première est propre à l’homme, la seconde est celle des bêtes ; mais comme la première, très souvent, ne suffit pas, il convient de recourir à la seconde. Aussi est-il nécessaire à un prince de savoir bien user de la bête et de l’homme […]\r\n\r\nPuisque donc un prince est obligé de savoir bien user de la bête, il en doit choisir le renard et le lion ; car le lion ne se défend pas des rêts, le renard ne se défend pas des loups. Ceux qui s’en tiennent simplement au lion n’y entendent rien. Un souverain prudent, par conséquent, ne peut ni ne doit observer sa foi quand une telle observance tournerait contre lui et que sont éteintes les raisons qui le firent promettre. (…) Et jamais un prince n’a manqué de motifs légitimes pour colorer son manque de foi. De cela l’on pourrait donner une infinité d’exemples modernes, et montrer combien de paix, combien de promesses ont été rendues caduques et vaines par l’infidélité des princes : et celui qui a su mieux user du renard est arrivé à meilleure fin.»'),
(1051, 171, '_answer', 'field_5b2a43c63684b'),
(1052, 172, '_edit_last', '1'),
(1053, 172, '_edit_lock', '1529653263:1'),
(1054, 172, 'question', 'Tu aimes ?'),
(1055, 172, '_question', 'field_5b2a42f73684a'),
(1056, 172, 'answer', 'Tu sais que le masque de la nuit est sur mon visage ; sans cela, tu verrais une virginale couleur colorer ma joue, quand je songe aux paroles que tu m\'as entendue dire cette nuit. Ah ! Je voudrais rester dans les convenances ; je voudrais, je voudrais nier ce que j\'ai dit. Mais adieu, les cérémonies ! M\'aimes-tu ? Je sais que tu vas dire oui, et je te croirai sur parole. Ne le jure pas : tu pourrai trahir ton serment : les parjures des amoureux font, dit-on, rire Jupiter... Oh ! Gentil Roméo, si tu m\'aimes, proclames-le loyalement : et si tu crois que je me laisse trop vite gagner je froncerai le sourcil, et je serai cruelle, et je te dirai non, pour que tu me fasses la cour : autrement, rien au monde ne m\'y déciderait...\r\n\r\n'),
(1057, 172, '_answer', 'field_5b2a43c63684b'),
(1058, 173, '_edit_last', '1'),
(1059, 173, '_edit_lock', '1529653234:1'),
(1060, 173, 'question', 'Vive la Money matters non ? '),
(1061, 173, '_question', 'field_5b2a42f73684a'),
(1062, 173, 'answer', 'hihihihi t\'as raison '),
(1063, 173, '_answer', 'field_5b2a43c63684b'),
(1064, 174, '_edit_last', '1'),
(1065, 174, '_edit_lock', '1529653228:1'),
(1066, 174, 'question', 'What is the communication ? '),
(1067, 174, '_question', 'field_5b2a42f73684a'),
(1068, 174, 'answer', 'ah d\'accord ok '),
(1069, 174, '_answer', 'field_5b2a43c63684b'),
(1070, 175, '_edit_last', '1'),
(1071, 175, '_edit_lock', '1529653221:1'),
(1072, 175, 'question', 'Health and insurance ? '),
(1073, 175, '_question', 'field_5b2a42f73684a'),
(1074, 175, 'answer', 'I don\'t know'),
(1075, 175, '_answer', 'field_5b2a43c63684b'),
(1076, 177, '_edit_last', '1'),
(1077, 177, 'question', 'How far in advance should I book my volounteer program?'),
(1078, 177, '_question', 'field_5b2a42f73684a'),
(1079, 177, 'answer', 'Essaye de prévoir assez de temps en avance s\'il te plait. '),
(1080, 177, '_answer', 'field_5b2a43c63684b'),
(1081, 177, '_edit_lock', '1529661027:1'),
(1082, 162, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"faqposition\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1083, 183, '_edit_last', '1'),
(1084, 183, 'field_5b3493e7092f8', 'a:11:{s:3:\"key\";s:19:\"field_5b3493e7092f8\";s:5:\"label\";s:4:\"logo\";s:4:\"name\";s:4:\"logo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(1085, 183, 'field_5b34941d092f9', 'a:14:{s:3:\"key\";s:19:\"field_5b34941d092f9\";s:5:\"label\";s:6:\"adress\";s:4:\"name\";s:6:\"adress\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(1086, 183, 'field_5b349428092fa', 'a:14:{s:3:\"key\";s:19:\"field_5b349428092fa\";s:5:\"label\";s:7:\"title 1\";s:4:\"name\";s:7:\"title_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(1087, 183, 'field_5b349433092fb', 'a:13:{s:3:\"key\";s:19:\"field_5b349433092fb\";s:5:\"label\";s:17:\"container title 1\";s:4:\"name\";s:17:\"container_title_1\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(1088, 183, 'field_5b34944b092fc', 'a:14:{s:3:\"key\";s:19:\"field_5b34944b092fc\";s:5:\"label\";s:7:\"title 2\";s:4:\"name\";s:7:\"title_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(1089, 183, 'field_5b349451092fd', 'a:11:{s:3:\"key\";s:19:\"field_5b349451092fd\";s:5:\"label\";s:6:\"link 1\";s:4:\"name\";s:6:\"link_1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(1090, 183, 'field_5b349494092fe', 'a:11:{s:3:\"key\";s:19:\"field_5b349494092fe\";s:5:\"label\";s:6:\"link 2\";s:4:\"name\";s:6:\"link_2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(1091, 183, 'field_5b3494ae092ff', 'a:12:{s:3:\"key\";s:19:\"field_5b3494ae092ff\";s:5:\"label\";s:5:\"email\";s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(1092, 183, 'field_5b3494bd09300', 'a:14:{s:3:\"key\";s:19:\"field_5b3494bd09300\";s:5:\"label\";s:5:\"phone\";s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:4:\"+977\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(1093, 183, 'field_5b3494cf09301', 'a:11:{s:3:\"key\";s:19:\"field_5b3494cf09301\";s:5:\"label\";s:13:\"logo facebook\";s:4:\"name\";s:13:\"logo_facebook\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(1094, 183, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"footer\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1095, 183, 'position', 'normal'),
(1096, 183, 'layout', 'no_box'),
(1097, 183, 'hide_on_screen', ''),
(1098, 183, '_edit_lock', '1530172542:1'),
(1099, 184, '_edit_last', '1'),
(1100, 184, '_edit_lock', '1530172666:1'),
(1101, 184, 'logo', ''),
(1102, 184, '_logo', 'field_5b3493e7092f8'),
(1103, 184, 'adress', 'mjldjmd'),
(1104, 184, '_adress', 'field_5b34941d092f9'),
(1105, 184, 'title_1', 'FJFALZKF'),
(1106, 184, '_title_1', 'field_5b349428092fa'),
(1107, 184, 'container_title_1', 'ZFKJAZMFJAZJF'),
(1108, 184, '_container_title_1', 'field_5b349433092fb'),
(1109, 184, 'title_2', 'ZAFAZFAZFZA'),
(1110, 184, '_title_2', 'field_5b34944b092fc'),
(1111, 184, 'link_1', ''),
(1112, 184, '_link_1', 'field_5b349451092fd'),
(1113, 184, 'link_2', ''),
(1114, 184, '_link_2', 'field_5b349494092fe'),
(1115, 184, 'email', 'MAX@BB.COM'),
(1116, 184, '_email', 'field_5b3494ae092ff'),
(1117, 184, 'phone', '+977ÀÀ!Ç'),
(1118, 184, '_phone', 'field_5b3494bd09300'),
(1119, 184, 'logo_facebook', ''),
(1120, 184, '_logo_facebook', 'field_5b3494cf09301'),
(1121, 186, '_menu_item_type', 'post_type'),
(1122, 186, '_menu_item_menu_item_parent', '0'),
(1123, 186, '_menu_item_object_id', '105'),
(1124, 186, '_menu_item_object', 'page'),
(1125, 186, '_menu_item_target', ''),
(1126, 186, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1127, 186, '_menu_item_xfn', ''),
(1128, 186, '_menu_item_url', ''),
(1130, 187, '_menu_item_type', 'post_type'),
(1131, 187, '_menu_item_menu_item_parent', '0'),
(1132, 187, '_menu_item_object_id', '39'),
(1133, 187, '_menu_item_object', 'page'),
(1134, 187, '_menu_item_target', ''),
(1135, 187, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1136, 187, '_menu_item_xfn', ''),
(1137, 187, '_menu_item_url', ''),
(1139, 188, '_menu_item_type', 'post_type'),
(1140, 188, '_menu_item_menu_item_parent', '0'),
(1141, 188, '_menu_item_object_id', '19'),
(1142, 188, '_menu_item_object', 'page'),
(1143, 188, '_menu_item_target', ''),
(1144, 188, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1145, 188, '_menu_item_xfn', ''),
(1146, 188, '_menu_item_url', ''),
(1148, 189, '_menu_item_type', 'post_type'),
(1149, 189, '_menu_item_menu_item_parent', '0'),
(1150, 189, '_menu_item_object_id', '17'),
(1151, 189, '_menu_item_object', 'page'),
(1152, 189, '_menu_item_target', ''),
(1153, 189, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1154, 189, '_menu_item_xfn', ''),
(1155, 189, '_menu_item_url', ''),
(1157, 190, '_menu_item_type', 'post_type'),
(1158, 190, '_menu_item_menu_item_parent', '0'),
(1159, 190, '_menu_item_object_id', '13'),
(1160, 190, '_menu_item_object', 'page'),
(1161, 190, '_menu_item_target', ''),
(1162, 190, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1163, 190, '_menu_item_xfn', ''),
(1164, 190, '_menu_item_url', ''),
(1166, 191, '_edit_last', '1'),
(1167, 191, 'field_5b34966fea12d', 'a:13:{s:3:\"key\";s:19:\"field_5b34966fea12d\";s:5:\"label\";s:15:\"Physical Adress\";s:4:\"name\";s:15:\"physical_adress\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(1168, 191, 'field_5b34967cea12e', 'a:13:{s:3:\"key\";s:19:\"field_5b34967cea12e\";s:5:\"label\";s:5:\"Phone\";s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(1169, 191, 'field_5b349681ea12f', 'a:13:{s:3:\"key\";s:19:\"field_5b349681ea12f\";s:5:\"label\";s:6:\"E-mail\";s:4:\"name\";s:6:\"e-mail\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(1171, 191, 'position', 'normal'),
(1172, 191, 'layout', 'no_box'),
(1173, 191, 'hide_on_screen', ''),
(1174, 191, '_edit_lock', '1530173184:1'),
(1175, 192, '_edit_last', '1'),
(1176, 192, '_edit_lock', '1530173238:1'),
(1178, 192, 'physical_adress', 'Pokhara - 16, Shanti Deep\r\nKaski District - Nepal'),
(1179, 192, '_physical_adress', 'field_5b34966fea12d'),
(1180, 192, 'phone', '+97761441947\r\n'),
(1181, 192, '_phone', 'field_5b34967cea12e'),
(1182, 192, 'e-mail', 'info@move-nepal.org\r\nkhomrajsharma@gmail.com'),
(1183, 192, '_e-mail', 'field_5b349681ea12f'),
(1184, 191, 'field_5b3497630bdb6', 'a:13:{s:3:\"key\";s:19:\"field_5b3497630bdb6\";s:5:\"label\";s:6:\"Mobile\";s:4:\"name\";s:6:\"mobile\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(1185, 191, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"contact\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1186, 192, 'mobile', '+97761441947\r\n'),
(1187, 192, '_mobile', 'field_5b3497630bdb6');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-11 11:28:15', '2018-06-11 09:28:15', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2018-06-14 04:14:52', '2018-06-14 02:14:52', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-11 11:28:15', '2018-06-11 09:28:15', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2018-06-14 04:10:07', '2018-06-14 02:10:07', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-11 11:28:15', '2018-06-11 09:28:15', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://localhost/wordpress.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant un article, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’identifiant de l’article que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'trash', 'closed', 'open', '', 'politique-de-confidentialite__trashed', '', '', '2018-06-14 04:10:02', '2018-06-14 02:10:02', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-06-11 12:28:00', '2018-06-11 10:28:00', 'ekfaejf', 'Article 1', '', 'trash', 'open', 'open', '', 'article-1__trashed', '', '', '2018-06-14 04:14:55', '2018-06-14 02:14:55', '', 0, 'http://localhost/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2018-06-11 12:28:00', '2018-06-11 10:28:00', 'ekfaejf', 'Article 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-11 12:28:00', '2018-06-11 10:28:00', '', 5, 'http://localhost/wordpress/2018/06/11/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-11 12:28:12', '2018-06-11 10:28:12', '', 'Article 2', '', 'trash', 'open', 'open', '', 'article-2__trashed', '', '', '2018-06-14 04:14:53', '2018-06-14 02:14:53', '', 0, 'http://localhost/wordpress/?p=7', 0, 'post', '', 0),
(8, 1, '2018-06-11 12:28:12', '2018-06-11 10:28:12', '', 'Article 2', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-06-11 12:28:12', '2018-06-11 10:28:12', '', 7, 'http://localhost/wordpress/2018/06/11/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-06-12 10:58:28', '2018-06-12 08:58:28', '', 'pageTest2', '', 'trash', 'closed', 'closed', '', 'pagetest2__trashed', '', '', '2018-06-14 04:10:06', '2018-06-14 02:10:06', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-06-12 10:58:28', '2018-06-12 08:58:28', '', 'pageTest2', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-06-12 10:58:28', '2018-06-12 08:58:28', '', 9, 'http://localhost/wordpress/2018/06/12/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-06-14 04:10:02', '2018-06-14 02:10:02', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://localhost/wordpress.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant un article, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’identifiant de l’article que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-06-14 04:10:02', '2018-06-14 02:10:02', '', 3, 'http://localhost/wordpress/2018/06/14/3-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-06-14 04:10:07', '2018-06-14 02:10:07', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-14 04:10:07', '2018-06-14 02:10:07', '', 2, 'http://localhost/wordpress/2018/06/14/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-06-14 04:10:59', '2018-06-14 02:10:59', '', 'The association', '', 'publish', 'closed', 'closed', '', 'the-association', '', '', '2018-06-14 04:10:59', '2018-06-14 02:10:59', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-06-14 04:10:59', '2018-06-14 02:10:59', '', 'The association', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-06-14 04:10:59', '2018-06-14 02:10:59', '', 13, 'http://localhost/wordpress/2018/06/14/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-06-14 04:11:25', '2018-06-14 02:11:25', '', 'Get involved', '', 'publish', 'closed', 'closed', '', 'get-involved', '', '', '2018-06-14 04:11:25', '2018-06-14 02:11:25', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-06-14 04:11:25', '2018-06-14 02:11:25', '', 'Get involved', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-06-14 04:11:25', '2018-06-14 02:11:25', '', 15, 'http://localhost/wordpress/2018/06/14/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-06-14 04:11:37', '2018-06-14 02:11:37', '', 'Feedbacks', '', 'publish', 'closed', 'closed', '', 'feedbacks', '', '', '2018-06-14 04:11:37', '2018-06-14 02:11:37', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-06-14 04:11:37', '2018-06-14 02:11:37', '', 'Feedbacks', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-06-14 04:11:37', '2018-06-14 02:11:37', '', 17, 'http://localhost/wordpress/2018/06/14/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-06-14 04:11:54', '2018-06-14 02:11:54', 'liazjpiazjpozek ù,mùkm\r\n\r\njojkk\r\n\r\nlmmlkùkùk\r\n\r\nkpùm=mùl;ùm;=:ùk;:=,;ùml', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-06-19 07:04:14', '2018-06-19 05:04:14', '', 0, 'http://localhost/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-06-14 04:11:54', '2018-06-14 02:11:54', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-06-14 04:11:54', '2018-06-14 02:11:54', '', 19, 'http://localhost/wordpress/2018/06/14/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-06-14 04:12:04', '2018-06-14 02:12:04', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2018-06-21 05:47:58', '2018-06-21 03:47:58', '', 0, 'http://localhost/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-06-14 04:12:04', '2018-06-14 02:12:04', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-06-14 04:12:04', '2018-06-14 02:12:04', '', 21, 'http://localhost/wordpress/2018/06/14/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-06-14 04:14:52', '2018-06-14 02:14:52', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-14 04:14:52', '2018-06-14 02:14:52', '', 1, 'http://localhost/wordpress/2018/06/14/1-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-06-14 04:15:12', '2018-06-14 02:15:12', '', 'The Founder', '', 'publish', 'open', 'open', '', 'the-founder', '', '', '2018-06-14 04:15:12', '2018-06-14 02:15:12', '', 0, 'http://localhost/wordpress/?p=24', 0, 'post', '', 0),
(25, 1, '2018-06-14 04:15:12', '2018-06-14 02:15:12', '', 'The Founder', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-06-14 04:15:12', '2018-06-14 02:15:12', '', 24, 'http://localhost/wordpress/2018/06/14/24-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-06-14 04:46:47', '2018-06-14 02:46:47', '{\n    \"nav_menu_item[26]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 26,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Lien personnalis\\u00e9\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-14 02:46:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8f7fca6b-b06b-4829-8733-a93579f9bf62', '', '', '2018-06-14 04:46:47', '2018-06-14 02:46:47', '', 0, 'http://localhost/wordpress/2018/06/14/8f7fca6b-b06b-4829-8733-a93579f9bf62/', 0, 'customize_changeset', '', 0),
(33, 1, '2018-06-14 05:00:12', '2018-06-14 03:00:12', '', 'The Founder', '', 'publish', 'closed', 'closed', '', 'the-founder', '', '', '2018-06-14 05:00:12', '2018-06-14 03:00:12', '', 13, 'http://localhost/wordpress/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-06-14 05:00:12', '2018-06-14 03:00:12', '', 'The Founder', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-14 05:00:12', '2018-06-14 03:00:12', '', 33, 'http://localhost/wordpress/2018/06/14/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-06-14 05:00:33', '2018-06-14 03:00:33', '', 'Katmandu', '', 'publish', 'closed', 'closed', '', 'katmandu', '', '', '2018-06-14 05:00:33', '2018-06-14 03:00:33', '', 13, 'http://localhost/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-06-14 05:00:33', '2018-06-14 03:00:33', '', 'Katmandu', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-06-14 05:00:33', '2018-06-14 03:00:33', '', 35, 'http://localhost/wordpress/2018/06/14/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-06-14 05:00:50', '2018-06-14 03:00:50', '', 'Pokhara', '', 'publish', 'closed', 'closed', '', 'pokhara', '', '', '2018-06-14 05:00:50', '2018-06-14 03:00:50', '', 13, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-06-14 05:00:50', '2018-06-14 03:00:50', '', 'Pokhara', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-06-14 05:00:50', '2018-06-14 03:00:50', '', 37, 'http://localhost/wordpress/2018/06/14/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-06-14 05:01:34', '2018-06-14 03:01:34', '', 'The Volunteers', '', 'publish', 'closed', 'closed', '', 'the-volunteers', '', '', '2018-06-14 05:01:34', '2018-06-14 03:01:34', '', 0, 'http://localhost/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 1, '2018-06-14 05:01:34', '2018-06-14 03:01:34', '', 'The Volunteers', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-06-14 05:01:34', '2018-06-14 03:01:34', '', 39, 'http://localhost/wordpress/2018/06/14/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-06-14 05:01:48', '2018-06-14 03:01:48', '', 'Apply', '', 'publish', 'closed', 'closed', '', 'apply', '', '', '2018-06-14 05:01:48', '2018-06-14 03:01:48', '', 39, 'http://localhost/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-06-14 05:01:48', '2018-06-14 03:01:48', '', 'Apply', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-06-14 05:01:48', '2018-06-14 03:01:48', '', 41, 'http://localhost/wordpress/2018/06/14/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-06-14 05:02:18', '2018-06-14 03:02:18', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2018-06-14 05:02:18', '2018-06-14 03:02:18', '', 39, 'http://localhost/wordpress/?page_id=43', 0, 'page', '', 0),
(44, 1, '2018-06-14 05:02:18', '2018-06-14 03:02:18', '', 'Pricing', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-14 05:02:18', '2018-06-14 03:02:18', '', 43, 'http://localhost/wordpress/2018/06/14/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-06-14 05:02:33', '2018-06-14 03:02:33', '', 'Article', '', 'publish', 'closed', 'closed', '', 'article', '', '', '2018-06-14 05:02:33', '2018-06-14 03:02:33', '', 17, 'http://localhost/wordpress/?page_id=45', 0, 'page', '', 0),
(46, 1, '2018-06-14 05:02:33', '2018-06-14 03:02:33', '', 'Article', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-06-14 05:02:33', '2018-06-14 03:02:33', '', 45, 'http://localhost/wordpress/2018/06/14/45-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-06-19 06:18:13', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2018-06-19 06:18:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=67', 1, 'nav_menu_item', '', 0),
(68, 1, '2018-06-19 06:18:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=68', 1, 'nav_menu_item', '', 0),
(69, 1, '2018-06-19 06:18:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 17, 'http://localhost/wordpress/?p=70', 1, 'nav_menu_item', '', 0),
(71, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=72', 1, 'nav_menu_item', '', 0),
(73, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 13, 'http://localhost/wordpress/?p=73', 1, 'nav_menu_item', '', 0),
(74, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 13, 'http://localhost/wordpress/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 13, 'http://localhost/wordpress/?p=75', 1, 'nav_menu_item', '', 0),
(76, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=76', 1, 'nav_menu_item', '', 0),
(77, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 39, 'http://localhost/wordpress/?p=77', 1, 'nav_menu_item', '', 0),
(78, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 39, 'http://localhost/wordpress/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=80', 1, 'nav_menu_item', '', 0),
(81, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=81', 1, 'nav_menu_item', '', 0),
(82, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=82', 1, 'nav_menu_item', '', 0),
(83, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 17, 'http://localhost/wordpress/?p=83', 1, 'nav_menu_item', '', 0),
(84, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 13, 'http://localhost/wordpress/?p=86', 1, 'nav_menu_item', '', 0),
(87, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 13, 'http://localhost/wordpress/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 13, 'http://localhost/wordpress/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 39, 'http://localhost/wordpress/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2018-06-19 06:18:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:18:14', '0000-00-00 00:00:00', '', 39, 'http://localhost/wordpress/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=94', 1, 'nav_menu_item', '', 0),
(95, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=95', 1, 'nav_menu_item', '', 0),
(96, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 17, 'http://localhost/wordpress/?p=96', 1, 'nav_menu_item', '', 0),
(97, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=97', 1, 'nav_menu_item', '', 0),
(98, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=98', 1, 'nav_menu_item', '', 0),
(99, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 13, 'http://localhost/wordpress/?p=99', 1, 'nav_menu_item', '', 0),
(100, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 13, 'http://localhost/wordpress/?p=100', 1, 'nav_menu_item', '', 0),
(101, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 13, 'http://localhost/wordpress/?p=101', 1, 'nav_menu_item', '', 0),
(102, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 39, 'http://localhost/wordpress/?p=103', 1, 'nav_menu_item', '', 0),
(104, 1, '2018-06-19 06:19:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:19:41', '0000-00-00 00:00:00', '', 39, 'http://localhost/wordpress/?p=104', 1, 'nav_menu_item', '', 0),
(105, 1, '2018-06-19 06:20:00', '2018-06-19 04:20:00', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-06-19 06:20:00', '2018-06-19 04:20:00', '', 0, 'http://localhost/wordpress/?page_id=105', 0, 'page', '', 0),
(106, 1, '2018-06-19 06:20:00', '2018-06-19 04:20:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-06-19 06:20:00', '2018-06-19 04:20:00', '', 105, 'http://localhost/wordpress/2018/06/19/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-06-19 06:20:11', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 06:20:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=107', 1, 'nav_menu_item', '', 0),
(108, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 0, 'http://localhost/wordpress/?p=108', 10, 'nav_menu_item', '', 0),
(109, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 0, 'http://localhost/wordpress/?p=109', 11, 'nav_menu_item', '', 0),
(110, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '110', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 0, 'http://localhost/wordpress/?p=110', 9, 'nav_menu_item', '', 0),
(113, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 0, 'http://localhost/wordpress/?p=113', 1, 'nav_menu_item', '', 0),
(114, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 0, 'http://localhost/wordpress/?p=114', 2, 'nav_menu_item', '', 0),
(115, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 13, 'http://localhost/wordpress/?p=115', 4, 'nav_menu_item', '', 0),
(116, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 13, 'http://localhost/wordpress/?p=116', 5, 'nav_menu_item', '', 0),
(117, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 13, 'http://localhost/wordpress/?p=117', 3, 'nav_menu_item', '', 0),
(118, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 0, 'http://localhost/wordpress/?p=118', 6, 'nav_menu_item', '', 0),
(119, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 39, 'http://localhost/wordpress/?p=119', 7, 'nav_menu_item', '', 0),
(120, 1, '2018-06-19 06:20:41', '2018-06-19 04:20:41', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2018-06-20 11:45:18', '2018-06-20 09:45:18', '', 39, 'http://localhost/wordpress/?p=120', 8, 'nav_menu_item', '', 0),
(123, 1, '2018-06-19 06:40:15', '2018-06-19 04:40:15', 'zhioazhfiazhifhaz', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2018-06-19 06:40:21', '2018-06-19 04:40:21', '', 0, 'http://localhost/wordpress/?p=123', 0, 'post', '', 0),
(124, 1, '2018-06-19 06:40:15', '2018-06-19 04:40:15', '', 'test', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2018-06-19 06:40:15', '2018-06-19 04:40:15', '', 123, 'http://localhost/wordpress/2018/06/19/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-06-19 06:40:21', '2018-06-19 04:40:21', 'zhioazhfiazhifhaz', 'test', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2018-06-19 06:40:21', '2018-06-19 04:40:21', '', 123, 'http://localhost/wordpress/2018/06/19/123-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-06-19 06:57:29', '2018-06-19 04:57:29', 'liazjpiazjpozek', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-06-19 06:57:29', '2018-06-19 04:57:29', '', 19, 'http://localhost/wordpress/2018/06/19/19-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-06-19 06:58:05', '2018-06-19 04:58:05', 'liazjpiazjpozek', 'Le Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-06-19 06:58:05', '2018-06-19 04:58:05', '', 19, 'http://localhost/wordpress/2018/06/19/19-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-06-19 07:00:29', '2018-06-19 05:00:29', 'liazjpiazjpozek', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-06-19 07:00:29', '2018-06-19 05:00:29', '', 19, 'http://localhost/wordpress/2018/06/19/19-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-06-19 07:04:14', '2018-06-19 05:04:14', 'liazjpiazjpozek ù,mùkm\r\n\r\njojkk\r\n\r\nlmmlkùkùk\r\n\r\nkpùm=mùl;ùm;=:ùk;:=,;ùml', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-06-19 07:04:14', '2018-06-19 05:04:14', '', 19, 'http://localhost/wordpress/2018/06/19/19-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-06-19 08:53:50', '2018-06-19 06:53:50', 'ZEFZEF', 'test 2', '', 'publish', 'open', 'open', '', 'test-2', '', '', '2018-06-19 08:53:50', '2018-06-19 06:53:50', '', 0, 'http://localhost/wordpress/?p=132', 0, 'post', '', 0),
(133, 1, '2018-06-19 08:53:50', '2018-06-19 06:53:50', 'ZEFZEF', 'test 2', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2018-06-19 08:53:50', '2018-06-19 06:53:50', '', 132, 'http://localhost/wordpress/2018/06/19/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-06-19 10:10:34', '2018-06-19 08:10:34', '', 'Altimètre', '', 'inherit', 'open', 'closed', '', 'altimetre', '', '', '2018-06-19 10:10:34', '2018-06-19 08:10:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/Altimètre.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2018-06-19 10:12:12', '2018-06-19 08:12:12', '', 'avionAUtiliser', '', 'inherit', 'open', 'closed', '', 'avionautiliser', '', '', '2018-06-19 10:12:12', '2018-06-19 08:12:12', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/avionAUtiliser.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2018-06-20 13:49:21', '2018-06-20 11:49:21', '', 'projects', '', 'publish', 'closed', 'closed', '', 'acf_projects', '', '', '2018-06-20 13:49:21', '2018-06-20 11:49:21', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=138', 0, 'acf', '', 0),
(141, 1, '2018-06-20 14:09:55', '2018-06-20 12:09:55', '', 'faq', '', 'publish', 'closed', 'closed', '', 'acf_faq', '', '', '2018-06-21 10:56:07', '2018-06-21 08:56:07', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=141', 0, 'acf', '', 0),
(142, 1, '2018-06-20 14:14:59', '2018-06-20 12:14:59', '', 'ahriaz', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-06-20 14:14:59', '2018-06-20 12:14:59', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=142', 0, 'faqs', '', 0),
(144, 1, '2018-06-20 14:18:26', '2018-06-20 12:18:26', '', 'titre1', '', 'trash', 'closed', 'closed', '', '144__trashed', '', '', '2018-06-21 05:48:03', '2018-06-21 03:48:03', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=144', 0, 'faqs', '', 0),
(145, 1, '2018-06-20 14:48:08', '2018-06-20 12:48:08', 'ygzdzagufhaojfopazfjazjfaz', 'FAQ', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-06-20 14:48:08', '2018-06-20 12:48:08', '', 21, 'http://localhost/wordpress/2018/06/20/21-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-06-20 14:49:02', '2018-06-20 12:49:02', '', 'projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2018-06-20 14:49:02', '2018-06-20 12:49:02', '', 0, 'http://localhost/wordpress/?page_id=146', 0, 'page', '', 0),
(147, 1, '2018-06-20 14:49:02', '2018-06-20 12:49:02', '', 'projects', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-06-20 14:49:02', '2018-06-20 12:49:02', '', 146, 'http://localhost/wordpress/2018/06/20/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-06-21 05:47:58', '2018-06-21 03:47:58', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-06-21 05:47:58', '2018-06-21 03:47:58', '', 21, 'http://localhost/wordpress/2018/06/21/21-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2018-06-21 05:52:56', '2018-06-21 03:52:56', '', 'BASICS', '', 'trash', 'closed', 'closed', '', '150__trashed', '', '', '2018-06-21 10:55:43', '2018-06-21 08:55:43', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=150', 0, 'faqs', '', 0),
(151, 1, '2018-06-21 05:53:26', '2018-06-21 03:53:26', '', 'BASICS', '', 'trash', 'closed', 'closed', '', 'autre__trashed', '', '', '2018-06-21 10:55:42', '2018-06-21 08:55:42', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=151', 0, 'faqs', '', 0),
(153, 1, '2018-06-21 05:55:44', '2018-06-21 03:55:44', '', 'BASICS', '', 'trash', 'closed', 'closed', '', 'basics__trashed', '', '', '2018-06-21 10:55:39', '2018-06-21 08:55:39', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=153', 0, 'faqs', '', 0),
(154, 1, '2018-06-21 05:56:10', '2018-06-21 03:56:10', '', 'COMMUNICATION', '', 'trash', 'closed', 'closed', '', 'communication__trashed', '', '', '2018-06-21 10:55:13', '2018-06-21 08:55:13', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=154', 0, 'faqs', '', 0),
(155, 1, '2018-06-21 07:15:41', '2018-06-21 05:15:41', '', 'Basics', '', 'trash', 'closed', 'closed', '', 'nouveau-t__trashed', '', '', '2018-06-21 10:55:37', '2018-06-21 08:55:37', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=155', 0, 'faqs', '', 0),
(156, 1, '2018-06-21 07:15:55', '2018-06-21 05:15:55', '', 'Basics', '', 'trash', 'closed', 'closed', '', 'encore-un__trashed', '', '', '2018-06-21 10:55:35', '2018-06-21 08:55:35', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=156', 0, 'faqs', '', 0),
(157, 1, '2018-06-21 07:59:02', '2018-06-21 05:59:02', '', 'faqpositions', '', 'trash', 'closed', 'closed', '', 'acf_faqpositions__trashed', '', '', '2018-06-21 08:59:28', '2018-06-21 06:59:28', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=157', 0, 'acf', '', 0),
(162, 1, '2018-06-21 09:01:58', '2018-06-21 07:01:58', '', 'faqposition', '', 'publish', 'closed', 'closed', '', 'acf_faqposition', '', '', '2018-06-28 09:29:12', '2018-06-28 07:29:12', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=162', 0, 'acf', '', 0),
(165, 1, '2018-06-21 09:09:56', '2018-06-21 07:09:56', '', 'Position1', '', 'trash', 'closed', 'closed', '', 'position__trashed', '', '', '2018-06-21 09:13:50', '2018-06-21 07:13:50', '', 0, 'http://localhost/wordpress/?post_type=faqposition&#038;p=165', 0, 'faqposition', '', 0),
(167, 1, '2018-06-21 09:15:43', '2018-06-21 07:15:43', '', 'Position2018', '', 'publish', 'closed', 'closed', '', 'position2018', '', '', '2018-06-21 09:36:12', '2018-06-21 07:36:12', '', 0, 'http://localhost/wordpress/?post_type=faqposition&#038;p=167', 0, 'faqposition', '', 0),
(168, 1, '2018-06-21 10:56:13', '2018-06-21 08:56:13', '', 'Basics', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2018-06-21 10:56:13', '2018-06-21 08:56:13', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=168', 0, 'faqs', '', 0),
(169, 1, '2018-06-21 10:56:24', '2018-06-21 08:56:24', '', 'Basics', '', 'publish', 'closed', 'closed', '', 'basics', '', '', '2018-06-22 09:44:18', '2018-06-22 07:44:18', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=169', 0, 'faqs', '', 0),
(170, 1, '2018-06-21 10:56:38', '2018-06-21 08:56:38', '', 'Basics', '', 'publish', 'closed', 'closed', '', 'basics-2', '', '', '2018-06-22 09:44:10', '2018-06-22 07:44:10', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=170', 0, 'faqs', '', 0),
(171, 1, '2018-06-21 10:56:53', '2018-06-21 08:56:53', '', 'Basics', '', 'publish', 'closed', 'closed', '', 'basics-3', '', '', '2018-06-22 09:43:59', '2018-06-22 07:43:59', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=171', 0, 'faqs', '', 0),
(172, 1, '2018-06-21 10:57:15', '2018-06-21 08:57:15', '', 'Communication', '', 'publish', 'closed', 'closed', '', 'communication', '', '', '2018-06-22 09:43:26', '2018-06-22 07:43:26', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=172', 0, 'faqs', '', 0),
(173, 1, '2018-06-21 10:57:31', '2018-06-21 08:57:31', '', 'Money matters', '', 'publish', 'closed', 'closed', '', 'money-matters', '', '', '2018-06-22 09:42:57', '2018-06-22 07:42:57', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=173', 0, 'faqs', '', 0),
(174, 1, '2018-06-21 10:57:48', '2018-06-21 08:57:48', '', 'Communication', '', 'publish', 'closed', 'closed', '', 'communication-2', '', '', '2018-06-22 09:42:50', '2018-06-22 07:42:50', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=174', 0, 'faqs', '', 0),
(175, 1, '2018-06-21 10:58:14', '2018-06-21 08:58:14', '', 'Health and Insurance', '', 'publish', 'closed', 'closed', '', 'healt-and-insurance', '', '', '2018-06-22 09:42:43', '2018-06-22 07:42:43', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=175', 0, 'faqs', '', 0),
(176, 1, '2018-06-22 11:51:15', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-22 11:51:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=faqs&p=176', 0, 'faqs', '', 0),
(177, 1, '2018-06-22 11:52:47', '2018-06-22 09:52:47', '', 'Registration and program fee', '', 'publish', 'closed', 'closed', '', 'registration-and-program-fee', '', '', '2018-06-22 11:52:47', '2018-06-22 09:52:47', '', 0, 'http://localhost/wordpress/?post_type=faqs&#038;p=177', 0, 'faqs', '', 0),
(178, 1, '2018-06-25 06:07:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-25 06:07:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=faqs&p=178', 0, 'faqs', '', 0),
(179, 1, '2018-06-28 09:02:34', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-28 09:02:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=179', 0, 'post', '', 0),
(180, 1, '2018-06-28 09:22:06', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-28 09:22:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=faqpositions&p=180', 0, 'faqpositions', '', 0),
(181, 1, '2018-06-28 09:25:16', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-28 09:25:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=footer&p=181', 0, 'footer', '', 0),
(182, 1, '2018-06-28 09:26:06', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-28 09:26:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=projects&p=182', 0, 'projects', '', 0),
(183, 1, '2018-06-28 09:57:59', '2018-06-28 07:57:59', '', 'Footer', '', 'publish', 'closed', 'closed', '', 'acf_footer', '', '', '2018-06-28 09:57:59', '2018-06-28 07:57:59', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=183', 0, 'acf', '', 0),
(184, 1, '2018-06-28 09:58:28', '2018-06-28 07:58:28', '', 'ex 1', '', 'publish', 'closed', 'closed', '', 'ex-1', '', '', '2018-06-28 10:00:06', '2018-06-28 08:00:06', '', 0, 'http://localhost/wordpress/?post_type=footer&#038;p=184', 0, 'footer', '', 0),
(185, 1, '2018-06-28 09:59:31', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-28 09:59:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=projects&p=185', 0, 'projects', '', 0),
(186, 1, '2018-06-28 10:01:23', '2018-06-28 08:01:23', ' ', '', '', 'publish', 'closed', 'closed', '', '186', '', '', '2018-06-28 10:01:23', '2018-06-28 08:01:23', '', 0, 'http://localhost/wordpress/?p=186', 1, 'nav_menu_item', '', 0),
(187, 1, '2018-06-28 10:01:23', '2018-06-28 08:01:23', ' ', '', '', 'publish', 'closed', 'closed', '', '187', '', '', '2018-06-28 10:01:23', '2018-06-28 08:01:23', '', 0, 'http://localhost/wordpress/?p=187', 3, 'nav_menu_item', '', 0),
(188, 1, '2018-06-28 10:01:23', '2018-06-28 08:01:23', ' ', '', '', 'publish', 'closed', 'closed', '', '188', '', '', '2018-06-28 10:01:23', '2018-06-28 08:01:23', '', 0, 'http://localhost/wordpress/?p=188', 4, 'nav_menu_item', '', 0),
(189, 1, '2018-06-28 10:01:23', '2018-06-28 08:01:23', ' ', '', '', 'publish', 'closed', 'closed', '', '189', '', '', '2018-06-28 10:01:23', '2018-06-28 08:01:23', '', 0, 'http://localhost/wordpress/?p=189', 5, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(190, 1, '2018-06-28 10:01:23', '2018-06-28 08:01:23', ' ', '', '', 'publish', 'closed', 'closed', '', '190', '', '', '2018-06-28 10:01:23', '2018-06-28 08:01:23', '', 0, 'http://localhost/wordpress/?p=190', 2, 'nav_menu_item', '', 0),
(191, 1, '2018-06-28 10:04:49', '2018-06-28 08:04:49', '', 'contact', '', 'publish', 'closed', 'closed', '', 'acf_contact', '', '', '2018-06-28 10:08:46', '2018-06-28 08:08:46', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=191', 0, 'acf', '', 0),
(192, 1, '2018-06-28 10:07:54', '2018-06-28 08:07:54', '', 'Contact1', '', 'publish', 'closed', 'closed', '', 'contact1', '', '', '2018-06-28 10:09:40', '2018-06-28 08:09:40', '', 0, 'http://localhost/wordpress/?post_type=contact&#038;p=192', 0, 'contact', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(3, 'Main Navigation', 'main-navigation', 0),
(4, 'Footer Navigation', 'footer-navigation', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(7, 1, 0),
(24, 1, 0),
(108, 3, 0),
(109, 3, 0),
(110, 3, 0),
(113, 3, 0),
(114, 3, 0),
(115, 3, 0),
(116, 3, 0),
(117, 3, 0),
(118, 3, 0),
(119, 3, 0),
(120, 3, 0),
(123, 1, 0),
(132, 1, 0),
(186, 4, 0),
(187, 4, 0),
(188, 4, 0),
(189, 4, 0),
(190, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 11),
(4, 4, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'moveNepaladmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '179'),
(19, 1, 'session_tokens', 'a:2:{s:64:\"9e56713190e5c962623f0233fd785ca662c415e3627002b68ab4b0dd80327ee5\";a:4:{s:10:\"expiration\";i:1530703115;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1529493515;}s:64:\"eef55389d040d265cd472d12f31836424d4143f8c248e6947cb20cc6ee5e341c\";a:4:{s:10:\"expiration\";i:1530342151;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530169351;}}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '4'),
(23, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=upload'),
(24, 1, 'wp_user-settings-time', '1529470782'),
(25, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:21:\"dashboard_quick_press\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(27, 1, 'closedpostboxes_page', 'a:1:{i:0;s:13:\"vidbg-metabox\";}'),
(28, 1, 'metaboxhidden_page', 'a:7:{i:0;s:7:\"acf_138\";i:1;s:12:\"revisionsdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(29, 1, 'closedpostboxes_acf', 'a:0:{}'),
(30, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'moveNepaladmin', '$P$BBGC5AoXMkpAXyPRqoviyGT9d50WTP/', 'movenepaladmin', 'madolphe@ensc.fr', '', '2018-06-11 09:28:15', '', 0, 'moveNepaladmin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1188;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
