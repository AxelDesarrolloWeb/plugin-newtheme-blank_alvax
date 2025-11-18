-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `atr_commentmeta`
--

DROP TABLE IF EXISTS `atr_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_commentmeta`
--

LOCK TABLES `atr_commentmeta` WRITE;
/*!40000 ALTER TABLE `atr_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `atr_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_comments`
--

DROP TABLE IF EXISTS `atr_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_comments`
--

LOCK TABLES `atr_comments` WRITE;
/*!40000 ALTER TABLE `atr_comments` DISABLE KEYS */;
INSERT INTO `atr_comments` VALUES (2,343,'Admin','jhonja14795@gmail.com','http://localhost/_pruebas','127.0.0.1','2025-10-13 17:37:55','2025-10-13 17:37:55','Rico!!!',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','comment',0,1);
/*!40000 ALTER TABLE `atr_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_contacto`
--

DROP TABLE IF EXISTS `atr_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_contacto` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `correo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `telefono` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mensaje` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_contacto`
--

LOCK TABLES `atr_contacto` WRITE;
/*!40000 ALTER TABLE `atr_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `atr_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_links`
--

DROP TABLE IF EXISTS `atr_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_links`
--

LOCK TABLES `atr_links` WRITE;
/*!40000 ALTER TABLE `atr_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `atr_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_newtheme_data`
--

DROP TABLE IF EXISTS `atr_newtheme_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_newtheme_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_newtheme_data`
--

LOCK TABLES `atr_newtheme_data` WRITE;
/*!40000 ALTER TABLE `atr_newtheme_data` DISABLE KEYS */;
INSERT INTO `atr_newtheme_data` VALUES (1,'aaaa','{\"users\":[{\"id\":1,\"nombres\":\"Axel\",\"apellidos\":\"Alvarez Alcaraz\",\"email\":\"alvax@alvax.com\",\"imgUrl\":\"http:\\/\\/curso02-alvax-1.com\\/wp-content\\/uploads\\/2020\\/07\\/user05.jpg\"}]}');
/*!40000 ALTER TABLE `atr_newtheme_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_options`
--

DROP TABLE IF EXISTS `atr_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=12349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_options`
--

LOCK TABLES `atr_options` WRITE;
/*!40000 ALTER TABLE `atr_options` DISABLE KEYS */;
INSERT INTO `atr_options` VALUES (1,'siteurl','http://curso02-alvax-1.com','yes');
INSERT INTO `atr_options` VALUES (2,'home','http://curso02-alvax-1.com','yes');
INSERT INTO `atr_options` VALUES (3,'blogname','Restaurante','yes');
INSERT INTO `atr_options` VALUES (4,'blogdescription','Otro sitio realizado con WordPress','yes');
INSERT INTO `atr_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `atr_options` VALUES (6,'admin_email','jhonja14795@gmail.com','yes');
INSERT INTO `atr_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `atr_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `atr_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `atr_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `atr_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `atr_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `atr_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `atr_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `atr_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `atr_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `atr_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `atr_options` VALUES (18,'default_category','1','yes');
INSERT INTO `atr_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `atr_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `atr_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `atr_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `atr_options` VALUES (23,'date_format','j F Y','yes');
INSERT INTO `atr_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `atr_options` VALUES (25,'links_updated_date_format','j F Y H:i','yes');
INSERT INTO `atr_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `atr_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `atr_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `atr_options` VALUES (29,'rewrite_rules','a:141:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"menus/?$\";s:25:\"index.php?post_type=menus\";s:38:\"menus/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=menus&feed=$matches[1]\";s:33:\"menus/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=menus&feed=$matches[1]\";s:25:\"menus/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=menus&paged=$matches[1]\";s:10:\"eventos/?$\";s:27:\"index.php?post_type=eventos\";s:40:\"eventos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=eventos&feed=$matches[1]\";s:35:\"eventos/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=eventos&feed=$matches[1]\";s:27:\"eventos/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=eventos&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"menus/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"menus/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"menus/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"menus/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"menus/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"menus/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"menus/([^/]+)/embed/?$\";s:38:\"index.php?menus=$matches[1]&embed=true\";s:26:\"menus/([^/]+)/trackback/?$\";s:32:\"index.php?menus=$matches[1]&tb=1\";s:46:\"menus/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?menus=$matches[1]&feed=$matches[2]\";s:41:\"menus/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?menus=$matches[1]&feed=$matches[2]\";s:34:\"menus/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?menus=$matches[1]&paged=$matches[2]\";s:41:\"menus/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?menus=$matches[1]&cpage=$matches[2]\";s:30:\"menus/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?menus=$matches[1]&page=$matches[2]\";s:22:\"menus/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"menus/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"menus/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"menus/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"menus/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"menus/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"eventos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"eventos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"eventos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"eventos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"eventos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"eventos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"eventos/([^/]+)/embed/?$\";s:40:\"index.php?eventos=$matches[1]&embed=true\";s:28:\"eventos/([^/]+)/trackback/?$\";s:34:\"index.php?eventos=$matches[1]&tb=1\";s:48:\"eventos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?eventos=$matches[1]&feed=$matches[2]\";s:43:\"eventos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?eventos=$matches[1]&feed=$matches[2]\";s:36:\"eventos/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?eventos=$matches[1]&paged=$matches[2]\";s:43:\"eventos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?eventos=$matches[1]&cpage=$matches[2]\";s:32:\"eventos/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?eventos=$matches[1]&page=$matches[2]\";s:24:\"eventos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"eventos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"eventos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"eventos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"eventos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"eventos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `atr_options` VALUES (622,'new_admin_email','jhonja14795@gmail.com','yes');
INSERT INTO `atr_options` VALUES (819,'recovery_mode_email_last_sent','1763217506','yes');
INSERT INTO `atr_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `atr_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `atr_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `atr_options` VALUES (33,'active_plugins','a:4:{i:0;s:23:\"catch-ids/catch-ids.php\";i:1;s:21:\"hello-dolly/hello.php\";i:2;s:39:\"newtheme-blank/newtheme-blank-alvax.php\";i:3;s:35:\"wp-hooks-finder/wp-hooks-finder.php\";}','yes');
INSERT INTO `atr_options` VALUES (621,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (34,'category_base','','yes');
INSERT INTO `atr_options` VALUES (35,'ping_sites','https://rpc.pingomatic.com/','yes');
INSERT INTO `atr_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `atr_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `atr_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `atr_options` VALUES (39,'recently_edited','','no');
INSERT INTO `atr_options` VALUES (40,'template','atr_theme','yes');
INSERT INTO `atr_options` VALUES (41,'stylesheet','atr_theme','yes');
INSERT INTO `atr_options` VALUES (3596,'finished_updating_comment_type','1','yes');
INSERT INTO `atr_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `atr_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `atr_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `atr_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `atr_options` VALUES (48,'db_version','60421','yes');
INSERT INTO `atr_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `atr_options` VALUES (50,'upload_path','','yes');
INSERT INTO `atr_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `atr_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `atr_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `atr_options` VALUES (54,'tag_base','','yes');
INSERT INTO `atr_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `atr_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `atr_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `atr_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `atr_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `atr_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `atr_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `atr_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `atr_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `atr_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `atr_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `atr_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `atr_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `atr_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `atr_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `atr_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `atr_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `atr_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `atr_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `atr_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `atr_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `atr_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `atr_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `atr_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `atr_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `atr_options` VALUES (83,'page_for_posts','16','yes');
INSERT INTO `atr_options` VALUES (84,'page_on_front','6','yes');
INSERT INTO `atr_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `atr_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `atr_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `atr_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `atr_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `atr_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `atr_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `atr_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `atr_options` VALUES (93,'admin_email_lifespan','1685564012','yes');
INSERT INTO `atr_options` VALUES (94,'initial_db_version','47018','yes');
INSERT INTO `atr_options` VALUES (95,'atr_user_roles','a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"rolnuevo\";a:2:{s:4:\"name\";s:10:\"Rol Nuevo2\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:15:\"mailing_masivos\";b:1;}}}','on');
INSERT INTO `atr_options` VALUES (96,'fresh_site','0','off');
INSERT INTO `atr_options` VALUES (97,'WPLANG','es_ES','yes');
INSERT INTO `atr_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (103,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:12:\"res_widget-2\";i:1;s:10:\"archives-2\";i:2;s:12:\"categories-2\";i:3;s:6:\"meta-2\";}s:12:\"sidebar_blog\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `atr_options` VALUES (11056,'cron','a:8:{i:1763393329;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1763407729;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1763407730;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1763407778;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1763470537;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1763839729;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1763991759;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `atr_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (111,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (112,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (113,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (115,'recovery_keys','a:0:{}','off');
INSERT INTO `atr_options` VALUES (119,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1586707236;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','off');
INSERT INTO `atr_options` VALUES (192,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":5,\"critical\":0}','yes');
INSERT INTO `atr_options` VALUES (285,'category_children','a:0:{}','yes');
INSERT INTO `atr_options` VALUES (229,'atr_direccion','123 My Street, My City Any State, AB 12345.','yes');
INSERT INTO `atr_options` VALUES (230,'atr_telefono','977 45 54 36','yes');
INSERT INTO `atr_options` VALUES (231,'atr_correo','info@newtheme.eu','yes');
INSERT INTO `atr_options` VALUES (3593,'disallowed_keys','','no');
INSERT INTO `atr_options` VALUES (3594,'comment_previously_approved','1','yes');
INSERT INTO `atr_options` VALUES (3595,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `atr_options` VALUES (3597,'db_upgraded','','on');
INSERT INTO `atr_options` VALUES (7817,'widget_res_widget','a:2:{i:2;a:2:{s:6:\"titulo\";s:9:\"dejnedjbh\";s:6:\"cuerpo\";s:7:\"dewfrfr\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (1093,'akismet_show_user_comments_approved','0','yes');
INSERT INTO `atr_options` VALUES (1094,'akismet_comment_form_privacy_notice','hide','yes');
INSERT INTO `atr_options` VALUES (1092,'akismet_strictness','0','yes');
INSERT INTO `atr_options` VALUES (148,'current_theme','Restaurant','yes');
INSERT INTO `atr_options` VALUES (149,'theme_mods_atr_theme','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:13:\"menu_sociales\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:157;}','yes');
INSERT INTO `atr_options` VALUES (150,'theme_switched','','yes');
INSERT INTO `atr_options` VALUES (151,'restaurant_db_version','1.0','yes');
INSERT INTO `atr_options` VALUES (152,'restaurant_dbreservas_version','1.0','yes');
INSERT INTO `atr_options` VALUES (200,'atr_latitud','41.1172364','yes');
INSERT INTO `atr_options` VALUES (201,'atr_longitud','1.2546057','yes');
INSERT INTO `atr_options` VALUES (202,'atr_zoom','12','yes');
INSERT INTO `atr_options` VALUES (203,'atr_api_key','AIzaSyAUQQu5xbFUHAsyob7Ve4qDAJAN4Pvs4jE','yes');
INSERT INTO `atr_options` VALUES (158,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','off');
INSERT INTO `atr_options` VALUES (181,'recently_activated','a:4:{s:33:\"newtheme-blank/newtheme-blank.php\";i:1763127835;s:23:\"res-popup/res-popup.php\";i:1763036286;s:27:\"res_pruebas/res-pruebas.php\";i:1763036285;s:25:\"cpt-plugin/cpt-plugin.php\";i:1763036281;}','off');
INSERT INTO `atr_options` VALUES (404,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"jhonja14795@gmail.com\";s:7:\"version\";s:6:\"5.5.11\";s:9:\"timestamp\";i:1670011809;}','no');
INSERT INTO `atr_options` VALUES (10095,'tipo-comida_children','a:0:{}','auto');
INSERT INTO `atr_options` VALUES (1231,'res_primera_configuracion','a:2:{s:11:\"res_campo_1\";s:6:\"Alvax2\";s:11:\"res_campo_2\";s:6:\"Alvax3\";}','yes');
INSERT INTO `atr_options` VALUES (9769,'user_count','6','off');
INSERT INTO `atr_options` VALUES (9820,'wp_attachment_pages_enabled','1','on');
INSERT INTO `atr_options` VALUES (9776,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:24:\"Solicitud HTTPS fallida.\";}}','off');
INSERT INTO `atr_options` VALUES (9764,'widget_block','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `atr_options` VALUES (9765,'auto_update_core_dev','enabled','yes');
INSERT INTO `atr_options` VALUES (9766,'auto_update_core_minor','enabled','yes');
INSERT INTO `atr_options` VALUES (9767,'auto_update_core_major','unset','yes');
INSERT INTO `atr_options` VALUES (9768,'wp_force_deactivated_plugins','a:0:{}','off');
INSERT INTO `atr_options` VALUES (9827,'can_compress_scripts','0','on');
INSERT INTO `atr_options` VALUES (9828,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `atr_options` VALUES (9829,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"cdbdd327e5256436f616fd9791f00037\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `atr_options` VALUES (9844,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `atr_options` VALUES (9863,'adminhash','a:2:{s:4:\"hash\";s:32:\"758309bd072f0089363c504bbb928f91\";s:8:\"newemail\";s:25:\"axelalvarez0200@gmail.com\";}','off');
INSERT INTO `atr_options` VALUES (11842,'_site_transient_timeout_php_check_617fc4d260191bf0de418d0d961f5a43','1763549207','off');
INSERT INTO `atr_options` VALUES (11843,'_site_transient_php_check_617fc4d260191bf0de418d0d961f5a43','a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `atr_options` VALUES (12272,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:19:\"Meetup Colaborativo\";s:3:\"url\";s:62:\"https://www.meetup.com/wordpress-buenosaires/events/311991454/\";s:6:\"meetup\";s:22:\"WordPress Buenos Aires\";s:10:\"meetup_url\";s:45:\"https://www.meetup.com/wordpress-buenosaires/\";s:4:\"date\";s:19:\"2025-11-19 19:30:00\";s:8:\"end_date\";s:19:\"2025-11-19 21:30:00\";s:20:\"start_unix_timestamp\";i:1763591400;s:18:\"end_unix_timestamp\";i:1763598600;s:8:\"location\";a:4:{s:8:\"location\";s:23:\"Buenos Aires, Argentina\";s:7:\"country\";s:2:\"ar\";s:8:\"latitude\";d:-34.615989999999996;s:9:\"longitude\";d:-58.370452999999998;}}i:1;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:56:\"Mitos y verdades de performance y experiencia de usuario\";s:3:\"url\";s:62:\"https://www.meetup.com/wordpress-buenosaires/events/311739995/\";s:6:\"meetup\";s:22:\"WordPress Buenos Aires\";s:10:\"meetup_url\";s:45:\"https://www.meetup.com/wordpress-buenosaires/\";s:4:\"date\";s:19:\"2026-03-18 19:30:00\";s:8:\"end_date\";s:19:\"2026-03-18 21:30:00\";s:20:\"start_unix_timestamp\";i:1773873000;s:18:\"end_unix_timestamp\";i:1773880200;s:8:\"location\";a:4:{s:8:\"location\";s:23:\"Buenos Aires, Argentina\";s:7:\"country\";s:2:\"ar\";s:8:\"latitude\";d:-34.615989999999996;s:9:\"longitude\";d:-58.370452999999998;}}}}','off');
INSERT INTO `atr_options` VALUES (12347,'_site_transient_timeout_wp_theme_files_patterns-a93761cf5c5fc1bd86cb6d20ccfc2254','1763394102','off');
INSERT INTO `atr_options` VALUES (12348,'_site_transient_wp_theme_files_patterns-a93761cf5c5fc1bd86cb6d20ccfc2254','a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `atr_options` VALUES (9921,'atr_valor_personalizado_01','color rojo','auto');
INSERT INTO `atr_options` VALUES (9922,'atr_valor_personalizado_02','a:4:{i:0;s:4:\"rojo\";i:1;s:5:\"verde\";i:2;s:4:\"azul\";s:6:\"Titulo\";s:19:\"colores principales\";}','auto');
INSERT INTO `atr_options` VALUES (12308,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.8.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1763369983;s:15:\"version_checked\";s:5:\"6.8.3\";s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-11-14 09:07:23\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-11-13 00:57:20\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/en_GB.zip\";s:10:\"autoupdate\";b:1;}}}','off');
INSERT INTO `atr_options` VALUES (12309,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1763369984;s:7:\"checked\";a:6:{s:9:\"atr_theme\";s:5:\"1.0.0\";s:16:\"twentytwentyfive\";s:3:\"1.3\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"2.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.2.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.2.0.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.3.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:16:\"twentytwentyfive\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"1.3\";s:7:\"updated\";s:19:\"2025-11-13 16:14:19\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/translation/theme/twentytwentyfive/1.3/es_ES.zip\";s:10:\"autoupdate\";b:1;}}}','off');
INSERT INTO `atr_options` VALUES (12310,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1763375298;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.9\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}s:23:\"catch-ids/catch-ids.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:23:\"w.org/plugins/catch-ids\";s:4:\"slug\";s:9:\"catch-ids\";s:6:\"plugin\";s:23:\"catch-ids/catch-ids.php\";s:11:\"new_version\";s:5:\"2.7.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/catch-ids/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/catch-ids.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/catch-ids/assets/icon-256x256.png?rev=1059138\";s:2:\"1x\";s:62:\"https://ps.w.org/catch-ids/assets/icon-128x128.png?rev=1059138\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/catch-ids/assets/banner-772x250.png?rev=562659\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.8.3\";s:12:\"requires_php\";b:0;s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:21:\"hello-dolly/hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:21:\"hello-dolly/hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:35:\"wp-hooks-finder/wp-hooks-finder.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/wp-hooks-finder\";s:4:\"slug\";s:15:\"wp-hooks-finder\";s:6:\"plugin\";s:35:\"wp-hooks-finder/wp-hooks-finder.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-hooks-finder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-hooks-finder.1.3.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-hooks-finder/assets/icon-128x128.jpg?rev=2501642\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/wp-hooks-finder/assets/banner-772x250.jpg?rev=2501637\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"5.0.2\";s:23:\"catch-ids/catch-ids.php\";s:3:\"2.6\";s:21:\"hello-dolly/hello.php\";s:5:\"1.7.2\";s:44:\"newtheme-blank-finalizado/newtheme-blank.php\";s:5:\"1.0.0\";s:39:\"newtheme-blank/newtheme-blank-alvax.php\";s:5:\"1.0.0\";s:35:\"wp-hooks-finder/wp-hooks-finder.php\";s:5:\"1.3.3\";}}','off');
INSERT INTO `atr_options` VALUES (9967,'res_popup','a:12:{i:0;a:2:{s:6:\"nombre\";s:8:\"pop up 2\";s:2:\"id\";s:5:\"71711\";}i:1;a:1:{i:0;a:2:{s:6:\"nombre\";s:8:\"pop up 2\";s:2:\"id\";s:5:\"34050\";}}i:2;a:1:{i:0;a:2:{s:6:\"nombre\";s:8:\"pop up 2\";s:2:\"id\";s:5:\"56211\";}}i:3;a:1:{i:0;a:2:{s:6:\"nombre\";s:8:\"pop up 2\";s:2:\"id\";s:5:\"76096\";}}i:4;a:1:{i:0;a:2:{s:6:\"nombre\";s:8:\"pop up 2\";s:2:\"id\";s:5:\"98558\";}}i:5;a:1:{i:0;a:2:{s:6:\"nombre\";s:8:\"pop up 2\";s:2:\"id\";s:5:\"95598\";}}i:6;a:1:{i:0;a:2:{s:6:\"nombre\";s:1:\"a\";s:2:\"id\";s:5:\"47586\";}}i:7;a:1:{i:0;a:2:{s:6:\"nombre\";s:1:\"a\";s:2:\"id\";s:5:\"94294\";}}i:8;a:1:{i:0;a:2:{s:6:\"nombre\";s:1:\"a\";s:2:\"id\";s:5:\"63171\";}}i:9;a:2:{s:6:\"nombre\";s:8:\"pop up 3\";s:2:\"id\";i:72676;}i:10;a:2:{s:6:\"nombre\";s:9:\"pop up 34\";s:2:\"id\";i:95653;}i:11;a:2:{s:6:\"nombre\";s:5:\"aaaaa\";s:2:\"id\";i:79229;}}','on');
INSERT INTO `atr_options` VALUES (12271,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1763418055','off');
INSERT INTO `atr_options` VALUES (12318,'_site_transient_timeout_browser_bc0f3c150905b2785f84ae4c2be1daf4','1763976697','off');
INSERT INTO `atr_options` VALUES (12319,'_site_transient_browser_bc0f3c150905b2785f84ae4c2be1daf4','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"146.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `atr_options` VALUES (12234,'_site_transient_timeout_browser_3c9fc7ddec9b58823c1c96756dbd45d8','1763715907','off');
INSERT INTO `atr_options` VALUES (12235,'_site_transient_browser_3c9fc7ddec9b58823c1c96756dbd45d8','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"142.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
/*!40000 ALTER TABLE `atr_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_postmeta`
--

DROP TABLE IF EXISTS `atr_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=1206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_postmeta`
--

LOCK TABLES `atr_postmeta` WRITE;
/*!40000 ALTER TABLE `atr_postmeta` DISABLE KEYS */;
INSERT INTO `atr_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `atr_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `atr_postmeta` VALUES (7,6,'_edit_lock','1594749829:1');
INSERT INTO `atr_postmeta` VALUES (8,6,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (9,8,'_edit_lock','1586789105:1');
INSERT INTO `atr_postmeta` VALUES (10,8,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (11,10,'_edit_lock','1586794485:1');
INSERT INTO `atr_postmeta` VALUES (12,10,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (13,12,'_edit_lock','1587581277:1');
INSERT INTO `atr_postmeta` VALUES (14,12,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (15,14,'_edit_lock','1586794779:1');
INSERT INTO `atr_postmeta` VALUES (16,14,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (17,16,'_edit_lock','1586800279:1');
INSERT INTO `atr_postmeta` VALUES (18,16,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (19,18,'_edit_lock','1586803340:1');
INSERT INTO `atr_postmeta` VALUES (20,18,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (21,20,'_edit_lock','1587406846:1');
INSERT INTO `atr_postmeta` VALUES (22,20,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (23,22,'_edit_lock','1587494975:1');
INSERT INTO `atr_postmeta` VALUES (24,22,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (25,24,'_edit_lock','1587495463:1');
INSERT INTO `atr_postmeta` VALUES (26,24,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (27,26,'_edit_lock','1587495009:1');
INSERT INTO `atr_postmeta` VALUES (28,26,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (29,28,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (30,28,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (31,28,'_menu_item_object_id','18');
INSERT INTO `atr_postmeta` VALUES (32,28,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (33,28,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (34,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (35,28,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (36,28,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (107,36,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (38,29,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (39,29,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (40,29,'_menu_item_object_id','14');
INSERT INTO `atr_postmeta` VALUES (41,29,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (42,29,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (43,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (44,29,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (45,29,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (47,30,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (48,30,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (49,30,'_menu_item_object_id','12');
INSERT INTO `atr_postmeta` VALUES (50,30,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (51,30,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (52,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (53,30,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (54,30,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (106,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (56,31,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (57,31,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (58,31,'_menu_item_object_id','10');
INSERT INTO `atr_postmeta` VALUES (59,31,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (60,31,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (61,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (62,31,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (63,31,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (105,36,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (65,32,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (66,32,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (67,32,'_menu_item_object_id','8');
INSERT INTO `atr_postmeta` VALUES (68,32,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (69,32,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (70,32,'_menu_item_classes','a:1:{i:0;s:7:\"li-menu\";}');
INSERT INTO `atr_postmeta` VALUES (71,32,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (72,32,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (104,36,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (74,33,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (75,33,'_menu_item_menu_item_parent','32');
INSERT INTO `atr_postmeta` VALUES (76,33,'_menu_item_object_id','26');
INSERT INTO `atr_postmeta` VALUES (77,33,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (78,33,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (79,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (80,33,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (81,33,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (103,36,'_menu_item_object_id','6');
INSERT INTO `atr_postmeta` VALUES (83,34,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (84,34,'_menu_item_menu_item_parent','32');
INSERT INTO `atr_postmeta` VALUES (85,34,'_menu_item_object_id','24');
INSERT INTO `atr_postmeta` VALUES (86,34,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (87,34,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (88,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (89,34,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (90,34,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (102,36,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (92,35,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (93,35,'_menu_item_menu_item_parent','32');
INSERT INTO `atr_postmeta` VALUES (94,35,'_menu_item_object_id','22');
INSERT INTO `atr_postmeta` VALUES (95,35,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (96,35,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (97,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (98,35,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (99,35,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (101,36,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (108,36,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (119,38,'_menu_item_type','custom');
INSERT INTO `atr_postmeta` VALUES (110,37,'_menu_item_type','post_type');
INSERT INTO `atr_postmeta` VALUES (111,37,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (112,37,'_menu_item_object_id','16');
INSERT INTO `atr_postmeta` VALUES (113,37,'_menu_item_object','page');
INSERT INTO `atr_postmeta` VALUES (114,37,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (115,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (116,37,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (117,37,'_menu_item_url','');
INSERT INTO `atr_postmeta` VALUES (120,38,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (121,38,'_menu_item_object_id','38');
INSERT INTO `atr_postmeta` VALUES (122,38,'_menu_item_object','custom');
INSERT INTO `atr_postmeta` VALUES (123,38,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (124,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (125,38,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (126,38,'_menu_item_url','https://facebook.com');
INSERT INTO `atr_postmeta` VALUES (128,39,'_menu_item_type','custom');
INSERT INTO `atr_postmeta` VALUES (129,39,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (130,39,'_menu_item_object_id','39');
INSERT INTO `atr_postmeta` VALUES (131,39,'_menu_item_object','custom');
INSERT INTO `atr_postmeta` VALUES (132,39,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (133,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (134,39,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (135,39,'_menu_item_url','https://instagram.com');
INSERT INTO `atr_postmeta` VALUES (137,40,'_menu_item_type','custom');
INSERT INTO `atr_postmeta` VALUES (138,40,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (139,40,'_menu_item_object_id','40');
INSERT INTO `atr_postmeta` VALUES (140,40,'_menu_item_object','custom');
INSERT INTO `atr_postmeta` VALUES (141,40,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (142,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (143,40,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (144,40,'_menu_item_url','https://youtube.com');
INSERT INTO `atr_postmeta` VALUES (156,49,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:265;s:6:\"height\";i:222;s:4:\"file\";s:13:\"2020/04/1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (146,41,'_menu_item_type','custom');
INSERT INTO `atr_postmeta` VALUES (147,41,'_menu_item_menu_item_parent','0');
INSERT INTO `atr_postmeta` VALUES (148,41,'_menu_item_object_id','41');
INSERT INTO `atr_postmeta` VALUES (149,41,'_menu_item_object','custom');
INSERT INTO `atr_postmeta` VALUES (150,41,'_menu_item_target','');
INSERT INTO `atr_postmeta` VALUES (151,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (152,41,'_menu_item_xfn','');
INSERT INTO `atr_postmeta` VALUES (153,41,'_menu_item_url','https://twitter.com');
INSERT INTO `atr_postmeta` VALUES (155,49,'_wp_attached_file','2020/04/1.jpg');
INSERT INTO `atr_postmeta` VALUES (157,50,'_wp_attached_file','2020/04/2-1.jpg');
INSERT INTO `atr_postmeta` VALUES (158,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:265;s:6:\"height\";i:222;s:4:\"file\";s:15:\"2020/04/2-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (159,51,'_wp_attached_file','2020/04/3-1.jpg');
INSERT INTO `atr_postmeta` VALUES (160,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:265;s:6:\"height\";i:222;s:4:\"file\";s:15:\"2020/04/3-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (161,52,'_wp_attached_file','2020/04/4.jpg');
INSERT INTO `atr_postmeta` VALUES (162,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:265;s:6:\"height\";i:222;s:4:\"file\";s:13:\"2020/04/4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (163,53,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (164,53,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (165,53,'bloque-imagen1','');
INSERT INTO `atr_postmeta` VALUES (166,53,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (167,53,'texto1','');
INSERT INTO `atr_postmeta` VALUES (168,53,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (169,6,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (170,6,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (171,6,'bloque-imagen1','65');
INSERT INTO `atr_postmeta` VALUES (172,6,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (173,6,'texto1','<h3>Menus Especiales</h3>\r\n<h3>Ofertas del día</h3>\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mattis elementum condimentum. Mauris fringilla, odio finibus finibus facilisis, mauris odio laoreet nunc, in venenatis lorem ligula id ante.</p>');
INSERT INTO `atr_postmeta` VALUES (174,6,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (175,55,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (176,55,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (177,55,'bloque-imagen1','');
INSERT INTO `atr_postmeta` VALUES (178,55,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (179,55,'texto1','');
INSERT INTO `atr_postmeta` VALUES (180,55,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (181,58,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (182,58,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (183,58,'bloque-imagen1','');
INSERT INTO `atr_postmeta` VALUES (184,58,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (185,58,'texto1','');
INSERT INTO `atr_postmeta` VALUES (186,58,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (187,60,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (188,60,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (189,60,'bloque-imagen1','');
INSERT INTO `atr_postmeta` VALUES (190,60,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (191,60,'texto1','');
INSERT INTO `atr_postmeta` VALUES (192,60,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (193,61,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (194,61,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (195,61,'bloque-imagen1','');
INSERT INTO `atr_postmeta` VALUES (196,61,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (197,61,'texto1','<p><strong>Menús Especiales</strong></p>\r\n<p><strong>Ofertas del día</strong></p>\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mattis elementum condimentum. Mauris fringilla, odio finibus finibus facilisis, mauris odio laoreet nunc.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mattis elementum condimentum. Mauris fringilla, odio finibus finibus facilisis, mauris odio laoreet nunc</p>');
INSERT INTO `atr_postmeta` VALUES (198,61,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (211,64,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (212,64,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (213,64,'bloque-imagen1','');
INSERT INTO `atr_postmeta` VALUES (214,64,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (215,64,'texto1','<h3>Menus Especiales</h3>\r\n<h3>Ofertas del día</h3>\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mattis elementum condimentum. Mauris fringilla, odio finibus finibus facilisis, mauris odio laoreet nunc, in venenatis lorem ligula id ante.</p>');
INSERT INTO `atr_postmeta` VALUES (199,62,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (200,62,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (201,62,'bloque-imagen1','');
INSERT INTO `atr_postmeta` VALUES (202,62,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (203,62,'texto1','<h3>Menús Especiales</h3>\r\n<h3>Ofertas del día</h3>\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mattis elementum condimentum. Mauris fringilla, odio finibus finibus facilisis, mauris odio laoreet nunc.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mattis elementum condimentum. Mauris fringilla, odio finibus finibus facilisis, mauris odio laoreet nunc</p>');
INSERT INTO `atr_postmeta` VALUES (204,62,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (205,63,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (206,63,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (207,63,'bloque-imagen1','');
INSERT INTO `atr_postmeta` VALUES (208,63,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (209,63,'texto1','');
INSERT INTO `atr_postmeta` VALUES (210,63,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (216,64,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (217,65,'_wp_attached_file','2020/04/8.jpg');
INSERT INTO `atr_postmeta` VALUES (218,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2020/04/8.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x126.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"8-1024x431.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"8-768x323.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:14:\"8-1536x647.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:647;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:14:\"8-1600x470.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:13:\"8-900x760.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:760;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (219,66,'galeria','<p>[gallery columns=\"2\" link=\"file\" ids=\"49,50,51,52\"]</p>');
INSERT INTO `atr_postmeta` VALUES (220,66,'_galeria','field_5c61b9a4c92a0');
INSERT INTO `atr_postmeta` VALUES (221,66,'bloque-imagen1','65');
INSERT INTO `atr_postmeta` VALUES (222,66,'_bloque-imagen1','field_5c63011e89a70');
INSERT INTO `atr_postmeta` VALUES (223,66,'texto1','<h3>Menus Especiales</h3>\r\n<h3>Ofertas del día</h3>\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mattis elementum condimentum. Mauris fringilla, odio finibus finibus facilisis, mauris odio laoreet nunc, in venenatis lorem ligula id ante.</p>');
INSERT INTO `atr_postmeta` VALUES (224,66,'_texto1','field_5c63028889a71');
INSERT INTO `atr_postmeta` VALUES (225,67,'_wp_attached_file','2020/04/menu.jpg');
INSERT INTO `atr_postmeta` VALUES (226,67,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:470;s:4:\"file\";s:16:\"2020/04/menu.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"menu-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"menu-1024x301.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:301;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"menu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"menu-768x226.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"menu-1536x451.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:16:\"menu-900x470.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (227,8,'_thumbnail_id','67');
INSERT INTO `atr_postmeta` VALUES (228,68,'_wp_attached_file','2020/04/menu-1.jpg');
INSERT INTO `atr_postmeta` VALUES (229,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:470;s:4:\"file\";s:18:\"2020/04/menu-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"menu-1-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"menu-1-1024x301.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:301;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"menu-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"menu-1-768x226.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"menu-1-1536x451.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:18:\"menu-1-900x470.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (230,26,'_thumbnail_id','68');
INSERT INTO `atr_postmeta` VALUES (231,26,'_wp_page_template','page-menu.php');
INSERT INTO `atr_postmeta` VALUES (232,70,'_wp_attached_file','2020/04/header-menu-ensalada.jpg');
INSERT INTO `atr_postmeta` VALUES (233,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:470;s:4:\"file\";s:32:\"2020/04/header-menu-ensalada.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"header-menu-ensalada-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"header-menu-ensalada-1024x301.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:301;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"header-menu-ensalada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"header-menu-ensalada-768x226.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"header-menu-ensalada-1536x451.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:32:\"header-menu-ensalada-900x470.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (234,22,'_thumbnail_id','70');
INSERT INTO `atr_postmeta` VALUES (235,22,'_wp_page_template','menu-1.php');
INSERT INTO `atr_postmeta` VALUES (236,71,'_wp_attached_file','2020/04/img-01.jpg');
INSERT INTO `atr_postmeta` VALUES (237,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:470;s:4:\"file\";s:18:\"2020/04/img-01.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-01-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"img-01-1024x301.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:301;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"img-01-768x226.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"img-01-1536x451.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:18:\"img-01-900x470.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (238,10,'_thumbnail_id','71');
INSERT INTO `atr_postmeta` VALUES (239,10,'_wp_page_template','page-reservas.php');
INSERT INTO `atr_postmeta` VALUES (240,72,'_wp_attached_file','2020/04/form-1.jpg');
INSERT INTO `atr_postmeta` VALUES (241,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:515;s:4:\"file\";s:18:\"2020/04/form-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"form-1-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"form-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:18:\"form-1-362x470.jpg\";s:5:\"width\";i:362;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (242,73,'_wp_attached_file','2020/04/form-2.jpg');
INSERT INTO `atr_postmeta` VALUES (243,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:515;s:4:\"file\";s:18:\"2020/04/form-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"form-2-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"form-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:18:\"form-2-362x470.jpg\";s:5:\"width\";i:362;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (244,74,'imagen_1','72');
INSERT INTO `atr_postmeta` VALUES (245,74,'_imagen_1','field_5c649acc688cd');
INSERT INTO `atr_postmeta` VALUES (246,74,'imagen_2','73');
INSERT INTO `atr_postmeta` VALUES (247,74,'_imagen_2','field_5c649bd2688ce');
INSERT INTO `atr_postmeta` VALUES (248,10,'imagen_1','72');
INSERT INTO `atr_postmeta` VALUES (249,10,'_imagen_1','field_5c649acc688cd');
INSERT INTO `atr_postmeta` VALUES (250,10,'imagen_2','73');
INSERT INTO `atr_postmeta` VALUES (251,10,'_imagen_2','field_5c649bd2688ce');
INSERT INTO `atr_postmeta` VALUES (252,14,'_thumbnail_id','71');
INSERT INTO `atr_postmeta` VALUES (253,76,'_wp_attached_file','2020/04/header-menu-postres.jpg');
INSERT INTO `atr_postmeta` VALUES (254,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:470;s:4:\"file\";s:31:\"2020/04/header-menu-postres.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"header-menu-postres-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"header-menu-postres-1024x301.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:301;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"header-menu-postres-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"header-menu-postres-768x226.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"header-menu-postres-1536x451.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:31:\"header-menu-postres-900x470.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (255,12,'_thumbnail_id','76');
INSERT INTO `atr_postmeta` VALUES (256,12,'_wp_page_template','page-galeria.php');
INSERT INTO `atr_postmeta` VALUES (257,77,'_wp_attached_file','2020/04/1-1.jpg');
INSERT INTO `atr_postmeta` VALUES (258,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:226;s:4:\"file\";s:15:\"2020/04/1-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (259,78,'_wp_attached_file','2020/04/2-3.jpg');
INSERT INTO `atr_postmeta` VALUES (260,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:226;s:4:\"file\";s:15:\"2020/04/2-3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-3-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (261,79,'_wp_attached_file','2020/04/3-2.jpg');
INSERT INTO `atr_postmeta` VALUES (262,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:226;s:4:\"file\";s:15:\"2020/04/3-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-2-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (263,80,'_wp_attached_file','2020/04/4-1.jpg');
INSERT INTO `atr_postmeta` VALUES (264,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:226;s:4:\"file\";s:15:\"2020/04/4-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (265,81,'_wp_attached_file','2020/04/5-1.jpg');
INSERT INTO `atr_postmeta` VALUES (266,81,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:226;s:4:\"file\";s:15:\"2020/04/5-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"5-1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (267,82,'_wp_attached_file','2020/04/6-1.jpg');
INSERT INTO `atr_postmeta` VALUES (268,82,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:226;s:4:\"file\";s:15:\"2020/04/6-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"6-1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (269,83,'_wp_attached_file','2020/04/7-1.jpg');
INSERT INTO `atr_postmeta` VALUES (270,83,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:226;s:4:\"file\";s:15:\"2020/04/7-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"7-1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"7-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (271,84,'_wp_attached_file','2020/04/8-1.jpg');
INSERT INTO `atr_postmeta` VALUES (272,84,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:226;s:4:\"file\";s:15:\"2020/04/8-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"8-1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"8-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (273,85,'_wp_attached_file','2020/04/9-1.jpg');
INSERT INTO `atr_postmeta` VALUES (274,85,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:362;s:6:\"height\";i:226;s:4:\"file\";s:15:\"2020/04/9-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"9-1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"9-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (275,86,'gallery','<p>[gallery link=\"file\" ids=\"77,78,79,80,81,82,83,84,85\"]</p>');
INSERT INTO `atr_postmeta` VALUES (276,86,'_gallery','field_5c6dd14c321d0');
INSERT INTO `atr_postmeta` VALUES (277,12,'gallery','<p>[gallery link=\"file\" ids=\"77,78,79,80,81,82,83,84,85\"]</p>');
INSERT INTO `atr_postmeta` VALUES (278,12,'_gallery','field_5c6dd14c321d0');
INSERT INTO `atr_postmeta` VALUES (279,16,'_thumbnail_id','68');
INSERT INTO `atr_postmeta` VALUES (280,18,'_wp_page_template','page-contacto.php');
INSERT INTO `atr_postmeta` VALUES (281,18,'_thumbnail_id','70');
INSERT INTO `atr_postmeta` VALUES (282,18,'horarios_semana','Lunes a Viernes de 9:00 a 18:00');
INSERT INTO `atr_postmeta` VALUES (283,18,'_horarios_semana','field_5c7da37ff192e');
INSERT INTO `atr_postmeta` VALUES (284,18,'horarios_fin_de_semana','Sabados de 9:00 a 13:00, domingo cerrado');
INSERT INTO `atr_postmeta` VALUES (285,18,'_horarios_fin_de_semana','field_5c7da3fef192f');
INSERT INTO `atr_postmeta` VALUES (286,89,'horarios_semana','Lunes a Viernes de 9:00 a 18:00');
INSERT INTO `atr_postmeta` VALUES (287,89,'_horarios_semana','field_5c7da37ff192e');
INSERT INTO `atr_postmeta` VALUES (288,89,'horarios_fin_de_semana','Sabados de 9:00 a 13:00, domingo cerrado');
INSERT INTO `atr_postmeta` VALUES (289,89,'_horarios_fin_de_semana','field_5c7da3fef192f');
INSERT INTO `atr_postmeta` VALUES (290,20,'_thumbnail_id','68');
INSERT INTO `atr_postmeta` VALUES (292,98,'_edit_lock','1596916756:1');
INSERT INTO `atr_postmeta` VALUES (293,99,'_wp_attached_file','2020/04/01.jpg');
INSERT INTO `atr_postmeta` VALUES (294,99,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:970;s:6:\"height\";i:670;s:4:\"file\";s:14:\"2020/04/01.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"01-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"01-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:14:\"01-970x470.jpg\";s:5:\"width\";i:970;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:14:\"01-900x670.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:670;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (298,98,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (297,98,'_thumbnail_id','99');
INSERT INTO `atr_postmeta` VALUES (307,101,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (301,101,'_edit_lock','1761594362:1');
INSERT INTO `atr_postmeta` VALUES (302,102,'_wp_attached_file','2020/04/02.jpg');
INSERT INTO `atr_postmeta` VALUES (303,102,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:970;s:6:\"height\";i:670;s:4:\"file\";s:14:\"2020/04/02.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"02-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"02-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:14:\"02-970x470.jpg\";s:5:\"width\";i:970;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:14:\"02-900x670.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:670;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (316,104,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (306,101,'_thumbnail_id','102');
INSERT INTO `atr_postmeta` VALUES (310,104,'_edit_lock','1761757715:1');
INSERT INTO `atr_postmeta` VALUES (311,105,'_wp_attached_file','2020/04/03.jpg');
INSERT INTO `atr_postmeta` VALUES (312,105,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:970;s:6:\"height\";i:670;s:4:\"file\";s:14:\"2020/04/03.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"03-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"03-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:14:\"03-970x470.jpg\";s:5:\"width\";i:970;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:14:\"03-900x670.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:670;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (319,107,'_edit_lock','1761763097:1');
INSERT INTO `atr_postmeta` VALUES (325,107,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (315,104,'_thumbnail_id','105');
INSERT INTO `atr_postmeta` VALUES (320,108,'_wp_attached_file','2020/04/04.jpg');
INSERT INTO `atr_postmeta` VALUES (321,108,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:970;s:6:\"height\";i:670;s:4:\"file\";s:14:\"2020/04/04.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"04-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"04-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:14:\"04-970x470.jpg\";s:5:\"width\";i:970;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:14:\"04-900x670.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:670;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (324,107,'_thumbnail_id','108');
INSERT INTO `atr_postmeta` VALUES (328,112,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (329,112,'_edit_lock','1596630213:1');
INSERT INTO `atr_postmeta` VALUES (330,113,'_wp_attached_file','2020/04/01-1.jpg');
INSERT INTO `atr_postmeta` VALUES (331,113,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:970;s:6:\"height\";i:670;s:4:\"file\";s:16:\"2020/04/01-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"01-1-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"01-1-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:16:\"01-1-970x470.jpg\";s:5:\"width\";i:970;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:16:\"01-1-900x670.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:670;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (332,112,'_thumbnail_id','113');
INSERT INTO `atr_postmeta` VALUES (333,112,'fecha','19 de Julio, 2019');
INSERT INTO `atr_postmeta` VALUES (334,112,'_fecha','field_5c786835158f3');
INSERT INTO `atr_postmeta` VALUES (335,112,'hora','20:00 - 02:00');
INSERT INTO `atr_postmeta` VALUES (336,112,'_hora','field_5c7868b1158f4');
INSERT INTO `atr_postmeta` VALUES (337,114,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (338,114,'_edit_lock','1596631061:1');
INSERT INTO `atr_postmeta` VALUES (339,115,'_wp_attached_file','2020/04/02-1.jpg');
INSERT INTO `atr_postmeta` VALUES (340,115,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:970;s:6:\"height\";i:670;s:4:\"file\";s:16:\"2020/04/02-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"02-1-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"02-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"02-1-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:16:\"02-1-970x470.jpg\";s:5:\"width\";i:970;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:16:\"02-1-900x670.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:670;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (341,114,'_thumbnail_id','115');
INSERT INTO `atr_postmeta` VALUES (342,114,'fecha','31 de Octubre, 2019');
INSERT INTO `atr_postmeta` VALUES (343,114,'_fecha','field_5c786835158f3');
INSERT INTO `atr_postmeta` VALUES (344,114,'hora','19:00 - 01:00');
INSERT INTO `atr_postmeta` VALUES (345,114,'_hora','field_5c7868b1158f4');
INSERT INTO `atr_postmeta` VALUES (346,116,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (347,116,'_edit_lock','1599515393:1');
INSERT INTO `atr_postmeta` VALUES (348,117,'_wp_attached_file','2020/04/03-1.jpg');
INSERT INTO `atr_postmeta` VALUES (349,117,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:970;s:6:\"height\";i:670;s:4:\"file\";s:16:\"2020/04/03-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"03-1-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"03-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"03-1-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:16:\"03-1-970x470.jpg\";s:5:\"width\";i:970;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:16:\"03-1-900x670.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:670;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (350,116,'_thumbnail_id','117');
INSERT INTO `atr_postmeta` VALUES (351,116,'fecha','12 de Junio, 2019');
INSERT INTO `atr_postmeta` VALUES (352,116,'_fecha','field_5c786835158f3');
INSERT INTO `atr_postmeta` VALUES (353,116,'hora','17:00 - 23:00');
INSERT INTO `atr_postmeta` VALUES (354,116,'_hora','field_5c7868b1158f4');
INSERT INTO `atr_postmeta` VALUES (355,118,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (356,118,'_edit_lock','1587493490:1');
INSERT INTO `atr_postmeta` VALUES (357,119,'_wp_attached_file','2020/04/01-2.jpg');
INSERT INTO `atr_postmeta` VALUES (358,119,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2020/04/01-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"01-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (359,118,'_thumbnail_id','119');
INSERT INTO `atr_postmeta` VALUES (360,120,'precio','$ 4,00');
INSERT INTO `atr_postmeta` VALUES (361,120,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (362,118,'precio','$ 4,00');
INSERT INTO `atr_postmeta` VALUES (363,118,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (364,121,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (365,121,'_edit_lock','1587495105:1');
INSERT INTO `atr_postmeta` VALUES (366,122,'_wp_attached_file','2020/04/02-2.jpg');
INSERT INTO `atr_postmeta` VALUES (367,122,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2020/04/02-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"02-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"02-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (368,121,'_thumbnail_id','122');
INSERT INTO `atr_postmeta` VALUES (369,123,'precio','$ 4,80');
INSERT INTO `atr_postmeta` VALUES (370,123,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (371,121,'precio','$ 4,80');
INSERT INTO `atr_postmeta` VALUES (372,121,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (373,124,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (374,124,'_edit_lock','1587494106:1');
INSERT INTO `atr_postmeta` VALUES (375,125,'_wp_attached_file','2020/04/03-2.jpg');
INSERT INTO `atr_postmeta` VALUES (376,125,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2020/04/03-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"03-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"03-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (377,124,'_thumbnail_id','125');
INSERT INTO `atr_postmeta` VALUES (378,126,'precio','€ 6,40');
INSERT INTO `atr_postmeta` VALUES (379,126,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (380,124,'precio','€ 6,40');
INSERT INTO `atr_postmeta` VALUES (381,124,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (382,127,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (383,127,'_edit_lock','1587493895:1');
INSERT INTO `atr_postmeta` VALUES (384,128,'_wp_attached_file','2020/04/04-1.jpg');
INSERT INTO `atr_postmeta` VALUES (385,128,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2020/04/04-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"04-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"04-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (386,127,'_thumbnail_id','128');
INSERT INTO `atr_postmeta` VALUES (387,129,'precio','€ 5,80');
INSERT INTO `atr_postmeta` VALUES (388,129,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (389,127,'precio','€ 5,80');
INSERT INTO `atr_postmeta` VALUES (390,127,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (391,130,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (392,130,'_edit_lock','1587494618:1');
INSERT INTO `atr_postmeta` VALUES (393,131,'_wp_attached_file','2020/04/05.jpg');
INSERT INTO `atr_postmeta` VALUES (394,131,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:14:\"2020/04/05.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"05-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (395,130,'_thumbnail_id','131');
INSERT INTO `atr_postmeta` VALUES (396,132,'precio','€ 18,00');
INSERT INTO `atr_postmeta` VALUES (397,132,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (398,130,'precio','€ 18,00');
INSERT INTO `atr_postmeta` VALUES (399,130,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (400,133,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (401,133,'_edit_lock','1587494684:1');
INSERT INTO `atr_postmeta` VALUES (402,134,'_wp_attached_file','2020/04/06.jpg');
INSERT INTO `atr_postmeta` VALUES (403,134,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:14:\"2020/04/06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"06-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (404,133,'_thumbnail_id','134');
INSERT INTO `atr_postmeta` VALUES (405,135,'precio','€ 17,50');
INSERT INTO `atr_postmeta` VALUES (406,135,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (407,133,'precio','€ 17,50');
INSERT INTO `atr_postmeta` VALUES (408,133,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (409,136,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (410,136,'_edit_lock','1587494772:1');
INSERT INTO `atr_postmeta` VALUES (411,137,'_wp_attached_file','2020/04/07.jpg');
INSERT INTO `atr_postmeta` VALUES (412,137,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:14:\"2020/04/07.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"07-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (413,136,'_thumbnail_id','137');
INSERT INTO `atr_postmeta` VALUES (414,138,'precio','€ 9,90');
INSERT INTO `atr_postmeta` VALUES (415,138,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (416,136,'precio','€ 9,90');
INSERT INTO `atr_postmeta` VALUES (417,136,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (418,139,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (419,139,'_edit_lock','1587495077:1');
INSERT INTO `atr_postmeta` VALUES (420,140,'_wp_attached_file','2020/04/08.jpg');
INSERT INTO `atr_postmeta` VALUES (421,140,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:14:\"2020/04/08.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"08-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (422,139,'_thumbnail_id','140');
INSERT INTO `atr_postmeta` VALUES (423,141,'precio','€ 10,50');
INSERT INTO `atr_postmeta` VALUES (424,141,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (425,139,'precio','€ 10,50');
INSERT INTO `atr_postmeta` VALUES (426,139,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (427,142,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (428,142,'_edit_lock','1599515379:1');
INSERT INTO `atr_postmeta` VALUES (429,143,'_wp_attached_file','2020/04/09.jpg');
INSERT INTO `atr_postmeta` VALUES (430,143,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:14:\"2020/04/09.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"09-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"09-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (431,142,'_thumbnail_id','143');
INSERT INTO `atr_postmeta` VALUES (432,144,'precio','€ 6,50');
INSERT INTO `atr_postmeta` VALUES (433,144,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (434,142,'precio','€ 6,50');
INSERT INTO `atr_postmeta` VALUES (435,142,'_precio','field_5c68b796e3c0d');
INSERT INTO `atr_postmeta` VALUES (436,24,'_thumbnail_id','70');
INSERT INTO `atr_postmeta` VALUES (437,24,'_wp_page_template','menu-2.php');
INSERT INTO `atr_postmeta` VALUES (438,146,'_wp_attached_file','2020/04/logo.png');
INSERT INTO `atr_postmeta` VALUES (439,146,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:70;s:4:\"file\";s:16:\"2020/04/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (440,147,'_wp_attached_file','2020/04/cropped-logo.png');
INSERT INTO `atr_postmeta` VALUES (441,147,'_wp_attachment_context','custom-logo');
INSERT INTO `atr_postmeta` VALUES (442,147,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:70;s:6:\"height\";i:300;s:4:\"file\";s:24:\"2020/04/cropped-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-70x150.png\";s:5:\"width\";i:70;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (443,148,'_wp_attached_file','2020/04/cropped-logo-1.png');
INSERT INTO `atr_postmeta` VALUES (444,148,'_wp_attachment_context','custom-logo');
INSERT INTO `atr_postmeta` VALUES (445,148,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:70;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2020/04/cropped-logo-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-1-70x150.png\";s:5:\"width\";i:70;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (450,151,'_wp_attached_file','2020/04/cropped-logo-2.png');
INSERT INTO `atr_postmeta` VALUES (451,151,'_wp_attachment_context','custom-logo');
INSERT INTO `atr_postmeta` VALUES (452,151,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:70;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2020/04/cropped-logo-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-2-70x150.png\";s:5:\"width\";i:70;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (455,153,'_wp_attached_file','2020/04/cropped-logo-3.png');
INSERT INTO `atr_postmeta` VALUES (456,153,'_wp_attachment_context','custom-logo');
INSERT INTO `atr_postmeta` VALUES (457,153,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:70;s:4:\"file\";s:26:\"2020/04/cropped-logo-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-3-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (460,155,'_edit_lock','1587581251:1');
INSERT INTO `atr_postmeta` VALUES (461,155,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (462,157,'_wp_attached_file','2020/04/cropped-logo-4.png');
INSERT INTO `atr_postmeta` VALUES (463,157,'_wp_attachment_context','custom-logo');
INSERT INTO `atr_postmeta` VALUES (464,157,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:70;s:4:\"file\";s:26:\"2020/04/cropped-logo-4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-4-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (537,194,'_wp_attached_file','2020/05/menu-02.jpg');
INSERT INTO `atr_postmeta` VALUES (538,194,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2020/05/menu-02.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"menu-02-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"menu-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:19:\"menu-02-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (539,195,'_wp_attached_file','2020/05/menu-03.jpg');
INSERT INTO `atr_postmeta` VALUES (540,195,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2020/05/menu-03.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"menu-03-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"menu-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:19:\"menu-03-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (541,196,'_wp_attached_file','2020/05/menu-04.jpg');
INSERT INTO `atr_postmeta` VALUES (542,196,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2020/05/menu-04.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"menu-04-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"menu-04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:19:\"menu-04-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (543,197,'_wp_attached_file','2020/05/menu-05.jpg');
INSERT INTO `atr_postmeta` VALUES (544,197,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2020/05/menu-05.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"menu-05-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"menu-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:19:\"menu-05-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (545,198,'_wp_attached_file','2020/05/menu-06.jpg');
INSERT INTO `atr_postmeta` VALUES (546,198,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2020/05/menu-06.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"menu-06-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"menu-06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:19:\"menu-06-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (547,199,'_wp_attached_file','2020/05/menu-07.jpg');
INSERT INTO `atr_postmeta` VALUES (548,199,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2020/05/menu-07.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"menu-07-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"menu-07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:19:\"menu-07-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (549,200,'_wp_attached_file','2020/05/menu-08.jpg');
INSERT INTO `atr_postmeta` VALUES (550,200,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2020/05/menu-08.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"menu-08-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"menu-08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:19:\"menu-08-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (551,201,'_wp_attached_file','2020/05/menu-09.jpg');
INSERT INTO `atr_postmeta` VALUES (552,201,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2020/05/menu-09.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"menu-09-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"menu-09-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:19:\"menu-09-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (553,202,'_wp_attached_file','2020/05/menu-01.jpg');
INSERT INTO `atr_postmeta` VALUES (554,202,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2020/05/menu-01.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"menu-01-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"menu-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:19:\"menu-01-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (567,207,'_wp_attached_file','2020/07/beard-1845166_640.jpg');
INSERT INTO `atr_postmeta` VALUES (568,207,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:29:\"2020/07/beard-1845166_640.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"beard-1845166_640-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"beard-1845166_640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (569,208,'_wp_attached_file','2020/07/running-573762_640.jpg');
INSERT INTO `atr_postmeta` VALUES (570,208,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:425;s:4:\"file\";s:30:\"2020/07/running-573762_640.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"running-573762_640-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"running-573762_640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (571,209,'_wp_attached_file','2020/07/beautiful-1867093_640.jpg');
INSERT INTO `atr_postmeta` VALUES (572,209,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:33:\"2020/07/beautiful-1867093_640.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"beautiful-1867093_640-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"beautiful-1867093_640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (573,210,'_wp_attached_file','2020/07/user01.jpg');
INSERT INTO `atr_postmeta` VALUES (574,210,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:18:\"2020/07/user01.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"user01-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:18:\"user01-640x470.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (575,211,'_wp_attached_file','2020/07/user03.jpg');
INSERT INTO `atr_postmeta` VALUES (576,211,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:18:\"2020/07/user03.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"user03-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (577,212,'_wp_attached_file','2020/07/user05.jpg');
INSERT INTO `atr_postmeta` VALUES (578,212,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:18:\"2020/07/user05.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"user05-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (579,213,'_wp_attached_file','2020/07/user07.jpg');
INSERT INTO `atr_postmeta` VALUES (580,213,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:405;s:4:\"file\";s:18:\"2020/07/user07.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"user07-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (1118,331,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (1117,328,'_thumbnail_id','329');
INSERT INTO `atr_postmeta` VALUES (1075,104,'colores','');
INSERT INTO `atr_postmeta` VALUES (1084,107,'Helados','Vainilla');
INSERT INTO `atr_postmeta` VALUES (1127,98,'atr_datos','a:4:{s:6:\"tiempo\";s:0:\"\";s:6:\"precio\";s:0:\"\";s:10:\"valoracion\";s:0:\"\";s:6:\"editor\";s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (1088,116,'atr_datos','a:4:{s:6:\"tiempo\";s:7:\"6 Horas\";s:6:\"precio\";s:5:\"35€\";s:10:\"valoracion\";s:1:\"4\";s:6:\"editor\";s:16:\"bvgnghnjyhjyujuy\";}');
INSERT INTO `atr_postmeta` VALUES (1087,114,'atr_datos','a:3:{s:6:\"tiempo\";s:0:\"\";s:6:\"precio\";s:0:\"\";s:10:\"valoracion\";s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (1116,329,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:699;s:6:\"height\";i:499;s:4:\"file\";s:21:\"2020/08/imagen-03.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"imagen-03-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"imagen-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:21:\"imagen-03-699x470.jpg\";s:5:\"width\";i:699;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (1115,329,'_wp_attached_file','2020/08/imagen-03.jpg');
INSERT INTO `atr_postmeta` VALUES (1114,328,'_edit_lock','1596714827:1');
INSERT INTO `atr_postmeta` VALUES (1113,328,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (1112,325,'_thumbnail_id','326');
INSERT INTO `atr_postmeta` VALUES (1111,326,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:698;s:6:\"height\";i:499;s:4:\"file\";s:21:\"2020/08/imagen-02.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"imagen-02-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"imagen-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:21:\"imagen-02-698x470.jpg\";s:5:\"width\";i:698;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (1110,326,'_wp_attached_file','2020/08/imagen-02.jpg');
INSERT INTO `atr_postmeta` VALUES (1109,325,'_edit_lock','1596714619:1');
INSERT INTO `atr_postmeta` VALUES (1108,325,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (1107,322,'_thumbnail_id','323');
INSERT INTO `atr_postmeta` VALUES (1106,323,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2020/08/video-03.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"video-03-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"video-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:20:\"video-03-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (1105,323,'_wp_attached_file','2020/08/video-03.jpg');
INSERT INTO `atr_postmeta` VALUES (1104,322,'_edit_lock','1596714445:1');
INSERT INTO `atr_postmeta` VALUES (1103,322,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (1085,107,'Helados','Coco');
INSERT INTO `atr_postmeta` VALUES (1091,320,'_wp_attached_file','2020/08/ededf.jpg');
INSERT INTO `atr_postmeta` VALUES (1092,320,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/08/ededf.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ededf-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ededf-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:17:\"ededf-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (1082,107,'Helados','Chocolate');
INSERT INTO `atr_postmeta` VALUES (1086,107,'colores','Marron');
INSERT INTO `atr_postmeta` VALUES (1139,107,'atr_datos',NULL);
INSERT INTO `atr_postmeta` VALUES (1194,355,'_wp_attached_file','2025/11/ElEjecutable.pdf');
INSERT INTO `atr_postmeta` VALUES (1119,331,'_edit_lock','1761673016:1');
INSERT INTO `atr_postmeta` VALUES (1120,332,'_wp_attached_file','2020/08/imagen-04.jpg');
INSERT INTO `atr_postmeta` VALUES (1121,332,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:699;s:6:\"height\";i:499;s:4:\"file\";s:21:\"2020/08/imagen-04.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"imagen-04-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"imagen-04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"header\";a:4:{s:4:\"file\";s:21:\"imagen-04-699x470.jpg\";s:5:\"width\";i:699;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `atr_postmeta` VALUES (1122,331,'_thumbnail_id','332');
INSERT INTO `atr_postmeta` VALUES (1132,101,'atr_datos','a:4:{s:6:\"tiempo\";s:0:\"\";s:6:\"precio\";s:0:\"\";s:10:\"valoracion\";s:0:\"\";s:6:\"editor\";s:0:\"\";}');
INSERT INTO `atr_postmeta` VALUES (1143,101,'_encloseme','1');
INSERT INTO `atr_postmeta` VALUES (1142,101,'_pingme','1');
INSERT INTO `atr_postmeta` VALUES (1150,343,'_edit_lock','1760377046:1');
INSERT INTO `atr_postmeta` VALUES (1151,343,'_pingme','1');
INSERT INTO `atr_postmeta` VALUES (1152,343,'_encloseme','1');
INSERT INTO `atr_postmeta` VALUES (1153,343,'_thumbnail_id','332');
INSERT INTO `atr_postmeta` VALUES (1154,343,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (1155,345,'_edit_lock','1760447601:1');
INSERT INTO `atr_postmeta` VALUES (1156,345,'_pingme','1');
INSERT INTO `atr_postmeta` VALUES (1157,345,'_encloseme','1');
INSERT INTO `atr_postmeta` VALUES (1158,345,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (1179,101,'Helados','Frutilla');
INSERT INTO `atr_postmeta` VALUES (1178,101,'Helados','Chocolate');
INSERT INTO `atr_postmeta` VALUES (1177,101,'colores','Verde');
INSERT INTO `atr_postmeta` VALUES (1176,101,'colores','Marron');
INSERT INTO `atr_postmeta` VALUES (1175,101,'colores','Verde');
INSERT INTO `atr_postmeta` VALUES (1174,101,'colores','Marron');
INSERT INTO `atr_postmeta` VALUES (1173,101,'colores','Verde');
INSERT INTO `atr_postmeta` VALUES (1172,101,'colores','Marron');
INSERT INTO `atr_postmeta` VALUES (1171,101,'colores','Verde');
INSERT INTO `atr_postmeta` VALUES (1170,101,'colores','Marron');
INSERT INTO `atr_postmeta` VALUES (1180,101,'Helados','Vainilla');
INSERT INTO `atr_postmeta` VALUES (1181,101,'Helados','Vainilla');
INSERT INTO `atr_postmeta` VALUES (1182,101,'Helados','Banana Split');
INSERT INTO `atr_postmeta` VALUES (1183,101,'Helados','Dulce De Leche Granizado');
INSERT INTO `atr_postmeta` VALUES (1184,322,'_wp_trash_meta_status','publish');
INSERT INTO `atr_postmeta` VALUES (1185,322,'_wp_trash_meta_time','1761673233');
INSERT INTO `atr_postmeta` VALUES (1186,322,'_wp_desired_post_slug','pollo-frito-al-curry');
INSERT INTO `atr_postmeta` VALUES (1187,353,'_edit_last','1');
INSERT INTO `atr_postmeta` VALUES (1188,353,'_edit_lock','1761673824:1');
INSERT INTO `atr_postmeta` VALUES (1189,353,'_thumbnail_id','323');
INSERT INTO `atr_postmeta` VALUES (1190,107,'_pingme','1');
INSERT INTO `atr_postmeta` VALUES (1191,107,'_encloseme','1');
INSERT INTO `atr_postmeta` VALUES (1192,104,'_pingme','1');
INSERT INTO `atr_postmeta` VALUES (1193,104,'_encloseme','1');
INSERT INTO `atr_postmeta` VALUES (1195,355,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:230970;}');
INSERT INTO `atr_postmeta` VALUES (1196,356,'_wp_attached_file','2025/11/ElEjecutable-1.pdf');
INSERT INTO `atr_postmeta` VALUES (1197,356,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:230970;}');
INSERT INTO `atr_postmeta` VALUES (1198,357,'_wp_attached_file','2025/11/ElEjecutable-2.pdf');
INSERT INTO `atr_postmeta` VALUES (1199,357,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:230970;}');
INSERT INTO `atr_postmeta` VALUES (1200,358,'_wp_attached_file','2025/11/Proyecto-integrador-El-Club-Deportivo-10-1.pdf');
INSERT INTO `atr_postmeta` VALUES (1201,358,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:100385;}');
INSERT INTO `atr_postmeta` VALUES (1202,359,'_wp_attached_file','2025/11/ElEjecutable-3.pdf');
INSERT INTO `atr_postmeta` VALUES (1203,359,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:230970;}');
/*!40000 ALTER TABLE `atr_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_posts`
--

DROP TABLE IF EXISTS `atr_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_posts`
--

LOCK TABLES `atr_posts` WRITE;
/*!40000 ALTER TABLE `atr_posts` DISABLE KEYS */;
INSERT INTO `atr_posts` VALUES (2,1,'2020-04-12 12:46:04','2020-04-12 12:46:04','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/_pruebas/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Página de ejemplo','','publish','closed','open','','pagina-ejemplo','','','2020-04-12 12:46:04','2020-04-12 12:46:04','',0,'http://localhost/_pruebas/?page_id=2',0,'page','',0);
INSERT INTO `atr_posts` VALUES (3,1,'2020-04-12 12:46:04','2020-04-12 12:46:04','<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost/_pruebas.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->','Política de privacidad','','draft','closed','open','','politica-privacidad','','','2020-04-12 12:46:04','2020-04-12 12:46:04','',0,'http://localhost/_pruebas/?page_id=3',0,'page','',0);
INSERT INTO `atr_posts` VALUES (6,1,'2020-04-12 16:04:43','2020-04-12 16:04:43','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','publish','closed','closed','','inicio','','','2020-04-13 14:01:40','2020-04-13 14:01:40','',0,'http://localhost/_pruebas/?page_id=6',0,'page','',0);
INSERT INTO `atr_posts` VALUES (7,1,'2020-04-12 16:04:43','2020-04-12 16:04:43','','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-12 16:04:43','2020-04-12 16:04:43','',6,'http://localhost/_pruebas/2020/04/12/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (8,1,'2020-04-12 16:05:27','2020-04-12 16:05:27','','Menú','','publish','closed','closed','','menu','','','2020-04-13 14:40:43','2020-04-13 14:40:43','',0,'http://localhost/_pruebas/?page_id=8',0,'page','',0);
INSERT INTO `atr_posts` VALUES (9,1,'2020-04-12 16:05:27','2020-04-12 16:05:27','','Menú','','inherit','closed','closed','','8-revision-v1','','','2020-04-12 16:05:27','2020-04-12 16:05:27','',8,'http://localhost/_pruebas/2020/04/12/8-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (10,1,'2020-04-12 16:40:47','2020-04-12 16:40:47','','Reservas','','publish','closed','closed','','reservas','','','2020-04-13 16:14:45','2020-04-13 16:14:45','',0,'http://localhost/_pruebas/?page_id=10',0,'page','',0);
INSERT INTO `atr_posts` VALUES (11,1,'2020-04-12 16:40:47','2020-04-12 16:40:47','','Reservas','','inherit','closed','closed','','10-revision-v1','','','2020-04-12 16:40:47','2020-04-12 16:40:47','',10,'http://localhost/_pruebas/2020/04/12/10-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (12,1,'2020-04-12 16:41:34','2020-04-12 16:41:34','','Galería','','publish','closed','closed','','galeria','','','2020-04-13 17:50:07','2020-04-13 17:50:07','',0,'http://localhost/_pruebas/?page_id=12',0,'page','',0);
INSERT INTO `atr_posts` VALUES (13,1,'2020-04-12 16:41:34','2020-04-12 16:41:34','','Galería','','inherit','closed','closed','','12-revision-v1','','','2020-04-12 16:41:34','2020-04-12 16:41:34','',12,'http://localhost/_pruebas/2020/04/12/12-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (14,1,'2020-04-12 16:42:03','2020-04-12 16:42:03','','Páginas','','publish','closed','closed','','paginas','','','2020-04-13 16:19:38','2020-04-13 16:19:38','',0,'http://localhost/_pruebas/?page_id=14',0,'page','',0);
INSERT INTO `atr_posts` VALUES (15,1,'2020-04-12 16:42:03','2020-04-12 16:42:03','','Páginas','','inherit','closed','closed','','14-revision-v1','','','2020-04-12 16:42:03','2020-04-12 16:42:03','',14,'http://localhost/_pruebas/2020/04/12/14-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (16,1,'2020-04-12 16:42:36','2020-04-12 16:42:36','','Blog','','publish','closed','closed','','blog','','','2020-04-13 17:53:38','2020-04-13 17:53:38','',0,'http://localhost/_pruebas/?page_id=16',0,'page','',0);
INSERT INTO `atr_posts` VALUES (17,1,'2020-04-12 16:42:36','2020-04-12 16:42:36','','Blog','','inherit','closed','closed','','16-revision-v1','','','2020-04-12 16:42:36','2020-04-12 16:42:36','',16,'http://localhost/_pruebas/2020/04/12/16-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (18,1,'2020-04-12 16:43:07','2020-04-12 16:43:07','<!-- wp:heading {\"level\":3} -->\n<h3>Contactanos</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Envia tu mensaje</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->','Contacto','','publish','closed','closed','','contacto','','','2020-04-13 18:42:19','2020-04-13 18:42:19','',0,'http://localhost/_pruebas/?page_id=18',0,'page','',0);
INSERT INTO `atr_posts` VALUES (19,1,'2020-04-12 16:43:07','2020-04-12 16:43:07','','Contacto','','inherit','closed','closed','','18-revision-v1','','','2020-04-12 16:43:07','2020-04-12 16:43:07','',18,'http://localhost/_pruebas/2020/04/12/18-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (20,1,'2020-04-12 16:43:24','2020-04-12 16:43:24','<!-- wp:paragraph -->\n<p>Su mensaje ha sido enviado correctamente</p>\n<!-- /wp:paragraph -->','Mensaje Enviado','','publish','closed','closed','','mensaje-enviado','','','2020-04-20 18:20:45','2020-04-20 18:20:45','',0,'http://localhost/_pruebas/?page_id=20',0,'page','',0);
INSERT INTO `atr_posts` VALUES (21,1,'2020-04-12 16:43:24','2020-04-12 16:43:24','','Mensaje Enviado','','inherit','closed','closed','','20-revision-v1','','','2020-04-12 16:43:24','2020-04-12 16:43:24','',20,'http://localhost/_pruebas/2020/04/12/20-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (22,1,'2020-04-12 16:56:30','2020-04-12 16:56:30','','Menú Ensaladas','','publish','closed','closed','','menu-ensaladas','','','2020-04-13 14:51:01','2020-04-13 14:51:01','',8,'http://localhost/_pruebas/?page_id=22',0,'page','',0);
INSERT INTO `atr_posts` VALUES (23,1,'2020-04-12 16:56:30','2020-04-12 16:56:30','','Menú Ensaladas','','inherit','closed','closed','','22-revision-v1','','','2020-04-12 16:56:30','2020-04-12 16:56:30','',22,'http://localhost/_pruebas/2020/04/12/22-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (24,1,'2020-04-12 16:57:00','2020-04-12 16:57:00','','Menú Postres','','publish','closed','closed','','menu-postres','','','2020-04-21 18:54:47','2020-04-21 18:54:47','',8,'http://localhost/_pruebas/?page_id=24',0,'page','',0);
INSERT INTO `atr_posts` VALUES (25,1,'2020-04-12 16:57:00','2020-04-12 16:57:00','','Menú Postres','','inherit','closed','closed','','24-revision-v1','','','2020-04-12 16:57:00','2020-04-12 16:57:00','',24,'http://localhost/_pruebas/2020/04/12/24-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (26,1,'2020-04-12 16:57:27','2020-04-12 16:57:27','','Menú Principal','','publish','closed','closed','','menu-principal','','','2020-04-13 14:48:30','2020-04-13 14:48:30','',8,'http://localhost/_pruebas/?page_id=26',0,'page','',0);
INSERT INTO `atr_posts` VALUES (27,1,'2020-04-12 16:57:27','2020-04-12 16:57:27','','Menú Principal','','inherit','closed','closed','','26-revision-v1','','','2020-04-12 16:57:27','2020-04-12 16:57:27','',26,'http://localhost/_pruebas/2020/04/12/26-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (28,1,'2020-04-12 17:43:28','2020-04-12 17:43:28',' ','','','publish','closed','closed','','28','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',0,'http://localhost/_pruebas/?p=28',10,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (29,1,'2020-04-12 17:43:28','2020-04-12 17:43:28',' ','','','publish','closed','closed','','29','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',0,'http://localhost/_pruebas/?p=29',8,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (30,1,'2020-04-12 17:43:28','2020-04-12 17:43:28',' ','','','publish','closed','closed','','30','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',0,'http://localhost/_pruebas/?p=30',2,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (31,1,'2020-04-12 17:43:28','2020-04-12 17:43:28',' ','','','publish','closed','closed','','31','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',0,'http://localhost/_pruebas/?p=31',9,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (32,1,'2020-04-12 17:43:28','2020-04-12 17:43:28',' ','','','publish','closed','closed','','32','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',0,'http://localhost/_pruebas/?p=32',4,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (33,1,'2020-04-12 17:43:28','2020-04-12 17:43:28',' ','','','publish','closed','closed','','33','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',8,'http://localhost/_pruebas/?p=33',5,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (34,1,'2020-04-12 17:43:28','2020-04-12 17:43:28',' ','','','publish','closed','closed','','34','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',8,'http://localhost/_pruebas/?p=34',6,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (35,1,'2020-04-12 17:43:28','2020-04-12 17:43:28',' ','','','publish','closed','closed','','35','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',8,'http://localhost/_pruebas/?p=35',7,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (36,1,'2020-04-12 17:44:09','2020-04-12 17:44:09',' ','','','publish','closed','closed','','36','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',0,'http://localhost/_pruebas/?p=36',1,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (37,1,'2020-04-12 17:44:09','2020-04-12 17:44:09',' ','','','publish','closed','closed','','37','','','2020-04-12 18:29:30','2020-04-12 18:29:30','',0,'http://localhost/_pruebas/?p=37',3,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (38,1,'2020-04-12 18:37:17','2020-04-12 18:37:17','','<i class=\"fab fa-facebook-f\"></i>','','publish','closed','closed','','38','','','2020-04-12 18:37:17','2020-04-12 18:37:17','',0,'http://localhost/_pruebas/?p=38',1,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (39,1,'2020-04-12 18:37:17','2020-04-12 18:37:17','','<i class=\"fab fa-instagram\"></i>','','publish','closed','closed','','39','','','2020-04-12 18:37:17','2020-04-12 18:37:17','',0,'http://localhost/_pruebas/?p=39',2,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (40,1,'2020-04-12 18:37:17','2020-04-12 18:37:17','','<i class=\"fab fa-youtube\"></i>','','publish','closed','closed','','40','','','2020-04-12 18:37:17','2020-04-12 18:37:17','',0,'http://localhost/_pruebas/?p=40',3,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (41,1,'2020-04-12 18:37:17','2020-04-12 18:37:17','','<i class=\"fab fa-twitter\"></i>','','publish','closed','closed','','41','','','2020-04-12 18:37:17','2020-04-12 18:37:17','',0,'http://localhost/_pruebas/?p=41',4,'nav_menu_item','',0);
INSERT INTO `atr_posts` VALUES (42,1,'2020-04-12 19:09:55','2020-04-12 19:09:55','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros o Nuestra Historia</h3>\n<!-- /wp:heading -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-12 19:09:55','2020-04-12 19:09:55','',6,'http://localhost/_pruebas/2020/04/12/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (43,1,'2020-04-12 19:11:33','2020-04-12 19:11:33','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros o Nuestra Historia</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-12 19:11:33','2020-04-12 19:11:33','',6,'http://localhost/_pruebas/2020/04/12/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (44,1,'2020-04-12 19:12:49','2020-04-12 19:12:49','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-12 19:12:49','2020-04-12 19:12:49','',6,'http://localhost/_pruebas/2020/04/12/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (46,1,'2020-04-12 19:35:57','2020-04-12 19:35:57','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-12 19:35:57','2020-04-12 19:35:57','',6,'http://localhost/_pruebas/2020/04/12/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (47,1,'2020-04-12 19:38:49','2020-04-12 19:38:49','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-12 19:38:49','2020-04-12 19:38:49','',6,'http://localhost/_pruebas/2020/04/12/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (45,1,'2020-04-12 19:14:13','2020-04-12 19:14:13','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-12 19:14:13','2020-04-12 19:14:13','',6,'http://localhost/_pruebas/2020/04/12/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (48,1,'2020-04-12 19:39:11','2020-04-12 19:39:11','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-12 19:39:11','2020-04-12 19:39:11','',6,'http://localhost/_pruebas/2020/04/12/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (49,1,'2020-04-13 12:39:50','2020-04-13 12:39:50','','1','','inherit','open','closed','','1','','','2020-04-13 12:39:50','2020-04-13 12:39:50','',6,'http://localhost/_pruebas/wp-content/uploads/2020/04/1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (50,1,'2020-04-13 12:39:51','2020-04-13 12:39:51','','2-1','','inherit','open','closed','','2-1','','','2020-04-13 12:39:51','2020-04-13 12:39:51','',6,'http://localhost/_pruebas/wp-content/uploads/2020/04/2-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (51,1,'2020-04-13 12:39:51','2020-04-13 12:39:51','','3-1','','inherit','open','closed','','3-1','','','2020-04-13 12:39:51','2020-04-13 12:39:51','',6,'http://localhost/_pruebas/wp-content/uploads/2020/04/3-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (52,1,'2020-04-13 12:39:52','2020-04-13 12:39:52','','4','','inherit','open','closed','','4','','','2020-04-13 12:39:52','2020-04-13 12:39:52','',6,'http://localhost/_pruebas/wp-content/uploads/2020/04/4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (53,1,'2020-04-13 12:40:24','2020-04-13 12:40:24','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-13 12:40:24','2020-04-13 12:40:24','',6,'http://localhost/_pruebas/2020/04/13/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (61,1,'2020-04-13 13:53:36','2020-04-13 13:53:36','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-13 13:53:36','2020-04-13 13:53:36','',6,'http://localhost/_pruebas/2020/04/13/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (55,1,'2020-04-13 12:40:54','2020-04-13 12:40:54','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-13 12:40:54','2020-04-13 12:40:54','',6,'http://localhost/_pruebas/2020/04/13/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (58,1,'2020-04-13 12:50:20','2020-04-13 12:50:20','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-13 12:50:20','2020-04-13 12:50:20','',6,'http://localhost/_pruebas/2020/04/13/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (60,1,'2020-04-13 13:49:18','2020-04-13 13:49:18','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-13 13:49:18','2020-04-13 13:49:18','',6,'http://localhost/_pruebas/2020/04/13/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (62,1,'2020-04-13 13:55:08','2020-04-13 13:55:08','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-13 13:55:08','2020-04-13 13:55:08','',6,'http://localhost/_pruebas/2020/04/13/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (63,1,'2020-04-13 13:56:08','2020-04-13 13:56:08','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-13 13:56:08','2020-04-13 13:56:08','',6,'http://localhost/_pruebas/2020/04/13/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (64,1,'2020-04-13 13:57:20','2020-04-13 13:57:20','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-13 13:57:20','2020-04-13 13:57:20','',6,'http://localhost/_pruebas/2020/04/13/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (65,1,'2020-04-13 14:01:36','2020-04-13 14:01:36','','8','','inherit','open','closed','','8','','','2020-04-13 14:01:36','2020-04-13 14:01:36','',6,'http://localhost/_pruebas/wp-content/uploads/2020/04/8.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (66,1,'2020-04-13 14:01:40','2020-04-13 14:01:40','<!-- wp:heading {\"level\":3} -->\n<h3>Bienvenido a Delicius Restaurant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Sobre Nosotros</h3>\n<!-- /wp:heading -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque porttitor, ipsum ac vulputate aliquam, nulla lectus feugiat diam, quis elementum enim nunc sit amet neque. Nunc eu porttitor lectus. Nam odio purus, fermentum non tortor nec, efficitur molestie purus. Ut tristique non nisi in imperdiet. Suspendisse cursus quam vitae odio iaculis efficitur. Maecenas interdum sed orci condimentum aliquet. Praesent ut imperdiet sem. Pellentesque ut urna lacus. Proin faucibus ac libero ullamcorper porttitor. Aenean nunc orci, vestibulum quis felis sed, pellentesque sagittis sapien. Integer rutrum pretium metus eu rutrum. Praesent vel tellus in nulla scelerisque laoreet.</p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','6-revision-v1','','','2020-04-13 14:01:40','2020-04-13 14:01:40','',6,'http://localhost/_pruebas/2020/04/13/6-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (67,1,'2020-04-13 14:40:37','2020-04-13 14:40:37','','menu','','inherit','open','closed','','menu-2','','','2020-04-13 14:40:37','2020-04-13 14:40:37','',8,'http://localhost/_pruebas/wp-content/uploads/2020/04/menu.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (68,1,'2020-04-13 14:48:15','2020-04-13 14:48:15','','menu','','inherit','open','closed','','menu-3','','','2020-04-13 14:48:15','2020-04-13 14:48:15','',26,'http://localhost/_pruebas/wp-content/uploads/2020/04/menu-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (71,1,'2020-04-13 16:13:43','2020-04-13 16:13:43','','img-01','','inherit','open','closed','','img-01','','','2020-04-13 16:13:43','2020-04-13 16:13:43','',10,'http://localhost/_pruebas/wp-content/uploads/2020/04/img-01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (70,1,'2020-04-13 14:50:53','2020-04-13 14:50:53','','header-menu-ensalada','','inherit','open','closed','','header-menu-ensalada','','','2020-04-13 14:50:53','2020-04-13 14:50:53','',22,'http://localhost/_pruebas/wp-content/uploads/2020/04/header-menu-ensalada.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (72,1,'2020-04-13 16:14:31','2020-04-13 16:14:31','','form-1','','inherit','open','closed','','form-1','','','2020-04-13 16:14:31','2020-04-13 16:14:31','',10,'http://localhost/_pruebas/wp-content/uploads/2020/04/form-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (73,1,'2020-04-13 16:14:41','2020-04-13 16:14:41','','form-2','','inherit','open','closed','','form-2','','','2020-04-13 16:14:41','2020-04-13 16:14:41','',10,'http://localhost/_pruebas/wp-content/uploads/2020/04/form-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (74,1,'2020-04-13 16:14:45','2020-04-13 16:14:45','','Reservas','','inherit','closed','closed','','10-revision-v1','','','2020-04-13 16:14:45','2020-04-13 16:14:45','',10,'http://localhost/_pruebas/2020/04/13/10-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (77,1,'2020-04-13 17:49:47','2020-04-13 17:49:47','','1-1','','inherit','open','closed','','1-1','','','2020-04-13 17:49:47','2020-04-13 17:49:47','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/1-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (76,1,'2020-04-13 16:22:44','2020-04-13 16:22:44','','header-menu-postres','','inherit','open','closed','','header-menu-postres','','','2020-04-13 16:22:44','2020-04-13 16:22:44','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/header-menu-postres.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (78,1,'2020-04-13 17:49:47','2020-04-13 17:49:47','','2-3','','inherit','open','closed','','2-3','','','2020-04-13 17:49:47','2020-04-13 17:49:47','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/2-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (79,1,'2020-04-13 17:49:48','2020-04-13 17:49:48','','3-2','','inherit','open','closed','','3-2','','','2020-04-13 17:49:48','2020-04-13 17:49:48','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/3-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (80,1,'2020-04-13 17:49:48','2020-04-13 17:49:48','','4-1','','inherit','open','closed','','4-1','','','2020-04-13 17:49:48','2020-04-13 17:49:48','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/4-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (81,1,'2020-04-13 17:49:48','2020-04-13 17:49:48','','5-1','','inherit','open','closed','','5-1','','','2020-04-13 17:49:48','2020-04-13 17:49:48','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/5-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (82,1,'2020-04-13 17:49:49','2020-04-13 17:49:49','','6-1','','inherit','open','closed','','6-1','','','2020-04-13 17:49:49','2020-04-13 17:49:49','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/6-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (83,1,'2020-04-13 17:49:49','2020-04-13 17:49:49','','7-1','','inherit','open','closed','','7-1','','','2020-04-13 17:49:49','2020-04-13 17:49:49','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/7-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (84,1,'2020-04-13 17:49:50','2020-04-13 17:49:50','','8-1','','inherit','open','closed','','8-1','','','2020-04-13 17:49:50','2020-04-13 17:49:50','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/8-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (85,1,'2020-04-13 17:49:50','2020-04-13 17:49:50','','9-1','','inherit','open','closed','','9-1','','','2020-04-13 17:49:50','2020-04-13 17:49:50','',12,'http://localhost/_pruebas/wp-content/uploads/2020/04/9-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (86,1,'2020-04-13 17:50:07','2020-04-13 17:50:07','','Galería','','inherit','closed','closed','','12-revision-v1','','','2020-04-13 17:50:07','2020-04-13 17:50:07','',12,'http://localhost/_pruebas/2020/04/13/12-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (87,1,'2020-04-13 17:58:14','2020-04-13 17:58:14','<!-- wp:heading {\"level\":3} -->\n<h3>Contactanos</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Envia tu mensaje</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->','Contacto','','inherit','closed','closed','','18-revision-v1','','','2020-04-13 17:58:14','2020-04-13 17:58:14','',18,'http://localhost/_pruebas/2020/04/13/18-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (94,1,'2020-04-20 18:19:51','2020-04-20 18:19:51','','Mensaje Enviado','','inherit','closed','closed','','20-revision-v1','','','2020-04-20 18:19:51','2020-04-20 18:19:51','',20,'http://localhost/_pruebas/2020/04/20/20-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (91,1,'2020-04-20 18:12:08','2020-04-20 18:12:08','<!-- wp:paragraph -->\n<p>Su mensaje ha sido enviado correctamente</p>\n<!-- /wp:paragraph -->','Mensaje Enviado','','inherit','closed','closed','','20-revision-v1','','','2020-04-20 18:12:08','2020-04-20 18:12:08','',20,'http://localhost/_pruebas/2020/04/20/20-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (89,1,'2020-04-13 18:42:19','2020-04-13 18:42:19','<!-- wp:heading {\"level\":3} -->\n<h3>Contactanos</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Envia tu mensaje</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->','Contacto','','inherit','closed','closed','','18-revision-v1','','','2020-04-13 18:42:19','2020-04-13 18:42:19','',18,'http://localhost/_pruebas/2020/04/13/18-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (95,1,'2020-04-20 18:20:45','2020-04-20 18:20:45','<!-- wp:paragraph -->\n<p>Su mensaje ha sido enviado correctamente</p>\n<!-- /wp:paragraph -->','Mensaje Enviado','','inherit','closed','closed','','20-revision-v1','','','2020-04-20 18:20:45','2020-04-20 18:20:45','',20,'http://localhost/_pruebas/2020/04/20/20-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (96,1,'2020-04-20 18:20:48','2020-04-20 18:20:48','<!-- wp:paragraph -->\n<p>Su mensaje ha sido enviado correctamente</p>\n<!-- /wp:paragraph -->','Mensaje Enviado','','inherit','closed','closed','','20-autosave-v1','','','2020-04-20 18:20:48','2020-04-20 18:20:48','',20,'http://localhost/_pruebas/2020/04/20/20-autosave-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (98,1,'2020-04-20 18:44:35','2020-04-20 18:44:35','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como hacer tu propia pasta en 10 minutos','','publish','open','open','','como-hacer-tu-propia-pasta-en-10-minutos','','','2020-08-08 19:59:14','2020-08-08 19:59:14','',0,'http://localhost/_pruebas/?p=98',0,'post','',0);
INSERT INTO `atr_posts` VALUES (99,1,'2020-04-20 18:44:25','2020-04-20 18:44:25','','01','','inherit','open','closed','','01','','','2020-04-20 18:44:25','2020-04-20 18:44:25','',98,'http://localhost/_pruebas/wp-content/uploads/2020/04/01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (100,1,'2020-04-20 18:44:35','2020-04-20 18:44:35','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como hacer tu propia pasta en 10 minutos','','inherit','closed','closed','','98-revision-v1','','','2020-04-20 18:44:35','2020-04-20 18:44:35','',98,'http://localhost/_pruebas/2020/04/20/98-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (101,1,'2020-04-20 18:46:13','2020-04-20 18:46:13','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como utilizar frutas silvestres para un buen desayuno','','publish','open','open','','como-utilizar-frutas-silvestres-para-un-buen-desayuno','','','2025-10-27 18:52:27','2025-10-27 18:52:27','',0,'http://localhost/_pruebas/?p=101',0,'post','',0);
INSERT INTO `atr_posts` VALUES (102,1,'2020-04-20 18:46:07','2020-04-20 18:46:07','','02','','inherit','open','closed','','02','','','2020-04-20 18:46:07','2020-04-20 18:46:07','',101,'http://localhost/_pruebas/wp-content/uploads/2020/04/02.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (103,1,'2020-04-20 18:46:13','2020-04-20 18:46:13','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como utilizar frutas silvestres para un buen desayuno','','inherit','closed','closed','','101-revision-v1','','','2020-04-20 18:46:13','2020-04-20 18:46:13','',101,'http://localhost/_pruebas/2020/04/20/101-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (104,1,'2020-04-20 18:53:54','2020-04-20 18:53:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como hacer un gazpacho de primera en solo 4 pasos','','publish','open','open','','como-hacer-un-gazpacho-de-primera-en-solo-4-pasos','','','2025-10-29 17:08:35','2025-10-29 17:08:35','',0,'http://localhost/_pruebas/?p=104',0,'post','',0);
INSERT INTO `atr_posts` VALUES (105,1,'2020-04-20 18:53:50','2020-04-20 18:53:50','','03','','inherit','open','closed','','03','','','2020-04-20 18:53:50','2020-04-20 18:53:50','',104,'http://localhost/_pruebas/wp-content/uploads/2020/04/03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (106,1,'2020-04-20 18:53:54','2020-04-20 18:53:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at  sapien at varius. Pellentesque pretium metus eget eros maximus, maximus  feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae  congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut  pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis  dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec  nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.  Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis  maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie  placerat. Aliquam viverra libero id felis tempus, non eleifend lacus  placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como hacer un gazpacho de primera en solo 4 pasos','','inherit','closed','closed','','104-revision-v1','','','2020-04-20 18:53:54','2020-04-20 18:53:54','',104,'http://localhost/_pruebas/2020/04/20/104-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (107,1,'2020-04-20 18:54:51','2020-04-20 18:54:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como crear tarta de queso italiana','','publish','open','open','','como-crear-tarta-de-queso-italiana','','','2025-10-29 17:12:33','2025-10-29 17:12:33','',0,'http://localhost/_pruebas/?p=107',0,'post','',0);
INSERT INTO `atr_posts` VALUES (108,1,'2020-04-20 18:54:47','2020-04-20 18:54:47','','04','','inherit','open','closed','','04','','','2020-04-20 18:54:47','2020-04-20 18:54:47','',107,'http://localhost/_pruebas/wp-content/uploads/2020/04/04.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (109,1,'2020-04-20 18:54:51','2020-04-20 18:54:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at  sapien at varius. Pellentesque pretium metus eget eros maximus, maximus  feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae  congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut  pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis  dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec  nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.  Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis  maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie  placerat. Aliquam viverra libero id felis tempus, non eleifend lacus  placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como crear tarta de queso italiana','','inherit','closed','closed','','107-revision-v1','','','2020-04-20 18:54:51','2020-04-20 18:54:51','',107,'http://localhost/_pruebas/2020/04/20/107-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (112,1,'2020-04-21 13:48:37','2020-04-21 13:48:37','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla\r\nnulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis\r\nurna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam\r\nefficitur eros diam, lacinia condimentum erat tristique ut.\r\nPellentesque vel ultricies augue. Curabitur fringilla sapien purus, non\r\nhendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,\r\naliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.\r\nAenean at est quis leo tempus tempus a at leo. Donec sodales consectetur\r\nleo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum\r\nmi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus\r\nconsectetur. Curabitur tincidunt dui eu ultricies lacinia.\r\n\r\nFusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at\r\nsapien at varius. Pellentesque pretium metus eget eros maximus, maximus\r\nfeugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae\r\ncongue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut\r\npharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis\r\ndapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec.','Especial coctels de verano','','publish','closed','closed','','especial-coctels-de-verano','','','2020-04-21 13:48:37','2020-04-21 13:48:37','',0,'http://localhost/_pruebas/?post_type=eventos&#038;p=112',0,'eventos','',0);
INSERT INTO `atr_posts` VALUES (113,1,'2020-04-21 13:40:19','2020-04-21 13:40:19','','01','','inherit','open','closed','','01-2','','','2020-04-21 13:40:19','2020-04-21 13:40:19','',112,'http://localhost/_pruebas/wp-content/uploads/2020/04/01-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (114,1,'2020-04-21 13:50:04','2020-04-21 13:50:04','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla\r\nnulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis\r\nurna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam\r\nefficitur eros diam, lacinia condimentum erat tristique ut.\r\nPellentesque vel ultricies augue. Curabitur fringilla sapien purus, non\r\nhendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,\r\naliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.\r\nAenean at est quis leo tempus tempus a at leo. Donec sodales consectetur\r\nleo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum\r\nmi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus\r\nconsectetur. Curabitur tincidunt dui eu ultricies lacinia.\r\n\r\nFusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at\r\nsapien at varius. Pellentesque pretium metus eget eros maximus, maximus\r\nfeugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae\r\ncongue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut\r\npharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis\r\ndapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec\r\nnibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.\r\nSed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis\r\nmaximus eget, congue ut purus. Mauris sollicitudin lorem in molestie\r\nplacerat. Aliquam viverra libero id felis tempus, non eleifend lacus\r\nplacerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.','Especial noche de Halloween','','publish','closed','closed','','especial-noche-de-halloween','','','2020-08-05 12:40:00','2020-08-05 12:40:00','',0,'http://localhost/_pruebas/?post_type=eventos&#038;p=114',0,'eventos','',0);
INSERT INTO `atr_posts` VALUES (115,1,'2020-04-21 13:49:57','2020-04-21 13:49:57','','02','','inherit','open','closed','','02-2','','','2020-04-21 13:49:57','2020-04-21 13:49:57','',114,'http://localhost/_pruebas/wp-content/uploads/2020/04/02-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (116,1,'2020-04-21 13:51:28','2020-04-21 13:51:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla\r\nnulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis\r\nurna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam\r\nefficitur eros diam, lacinia condimentum erat tristique ut.\r\nPellentesque vel ultricies augue. Curabitur fringilla sapien purus, non\r\nhendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,\r\naliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.\r\nAenean at est quis leo tempus tempus a at leo. Donec sodales consectetur\r\nleo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum\r\nmi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus\r\nconsectetur. Curabitur tincidunt dui eu ultricies lacinia.\r\n\r\nFusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at\r\nsapien at varius. Pellentesque pretium metus eget eros maximus, maximus\r\nfeugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae\r\ncongue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut\r\npharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis\r\ndapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec\r\nnibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.\r\nSed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis\r\nmaximus eget, congue ut purus. Mauris sollicitudin lorem in molestie\r\nplacerat. Aliquam viverra libero id felis tempus, non eleifend lacus\r\nplacerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.','Noche de cervezas','','publish','closed','closed','','noche-de-cervezas','','','2020-08-05 14:27:07','2020-08-05 14:27:07','',0,'http://localhost/_pruebas/?post_type=eventos&#038;p=116',0,'eventos','',0);
INSERT INTO `atr_posts` VALUES (117,1,'2020-04-21 13:51:14','2020-04-21 13:51:14','','03','','inherit','open','closed','','03-2','','','2020-04-21 13:51:14','2020-04-21 13:51:14','',116,'http://localhost/_pruebas/wp-content/uploads/2020/04/03-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (118,1,'2020-04-21 18:26:52','2020-04-21 18:26:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst....','Wofles tiramisú','','publish','open','closed','','wofles-tiramisu','','','2020-04-21 18:27:12','2020-04-21 18:27:12','',0,'http://localhost/_pruebas/?post_type=menus&#038;p=118',0,'menus','',0);
INSERT INTO `atr_posts` VALUES (119,1,'2020-04-21 18:26:46','2020-04-21 18:26:46','','01','','inherit','open','closed','','01-3','','','2020-04-21 18:26:46','2020-04-21 18:26:46','',118,'http://localhost/_pruebas/wp-content/uploads/2020/04/01-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (120,1,'2020-04-21 18:26:52','2020-04-21 18:26:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst....','Wofles tiramisú','','inherit','closed','closed','','118-revision-v1','','','2020-04-21 18:26:52','2020-04-21 18:26:52','',118,'http://localhost/_pruebas/2020/04/21/118-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (121,1,'2020-04-21 18:28:51','2020-04-21 18:28:51','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Tarta de queso','','publish','open','closed','','tarta-de-queso','','','2020-04-21 18:28:51','2020-04-21 18:28:51','',0,'http://localhost/_pruebas/?post_type=menus&#038;p=121',0,'menus','',0);
INSERT INTO `atr_posts` VALUES (122,1,'2020-04-21 18:28:37','2020-04-21 18:28:37','','02','','inherit','open','closed','','02-3','','','2020-04-21 18:28:37','2020-04-21 18:28:37','',121,'http://localhost/_pruebas/wp-content/uploads/2020/04/02-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (123,1,'2020-04-21 18:28:51','2020-04-21 18:28:51','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Tarta de queso','','inherit','closed','closed','','121-revision-v1','','','2020-04-21 18:28:51','2020-04-21 18:28:51','',121,'http://localhost/_pruebas/2020/04/21/121-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (124,1,'2020-04-21 18:31:32','2020-04-21 18:31:32','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Surtido de Frutas','','publish','open','closed','','surtido-de-frutas','','','2020-04-21 18:37:25','2020-04-21 18:37:25','',0,'http://localhost/_pruebas/?post_type=menus&#038;p=124',0,'menus','',0);
INSERT INTO `atr_posts` VALUES (125,1,'2020-04-21 18:31:21','2020-04-21 18:31:21','','03','','inherit','open','closed','','03-3','','','2020-04-21 18:31:21','2020-04-21 18:31:21','',124,'http://localhost/_pruebas/wp-content/uploads/2020/04/03-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (126,1,'2020-04-21 18:31:32','2020-04-21 18:31:32','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Surtido de Frutas','','inherit','closed','closed','','124-revision-v1','','','2020-04-21 18:31:32','2020-04-21 18:31:32','',124,'http://localhost/_pruebas/2020/04/21/124-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (127,1,'2020-04-21 18:33:55','2020-04-21 18:33:55','Vivamus gravida aliquam arcu in placerat. Aliquam quis condimentum eros, ac condimentum metus. Etiam id ultricies nisl. Aliquam...','Ensalada de queso','','publish','open','closed','','ensalada-de-queso','','','2020-04-21 18:33:55','2020-04-21 18:33:55','',0,'http://localhost/_pruebas/?post_type=menus&#038;p=127',0,'menus','',0);
INSERT INTO `atr_posts` VALUES (128,1,'2020-04-21 18:33:30','2020-04-21 18:33:30','','04','','inherit','open','closed','','04-2','','','2020-04-21 18:33:30','2020-04-21 18:33:30','',127,'http://localhost/_pruebas/wp-content/uploads/2020/04/04-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (129,1,'2020-04-21 18:33:55','2020-04-21 18:33:55','Vivamus gravida aliquam arcu in placerat. Aliquam quis condimentum eros, ac condimentum metus. Etiam id ultricies nisl. Aliquam...','Ensalada de queso','','inherit','closed','closed','','127-revision-v1','','','2020-04-21 18:33:55','2020-04-21 18:33:55','',127,'http://localhost/_pruebas/2020/04/21/127-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (130,1,'2020-04-21 18:45:59','2020-04-21 18:45:59','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Pulpo a la marinera','','publish','open','closed','','pulpo-a-la-marinera','','','2020-04-21 18:45:59','2020-04-21 18:45:59','',0,'http://localhost/_pruebas/?post_type=menus&#038;p=130',0,'menus','',0);
INSERT INTO `atr_posts` VALUES (131,1,'2020-04-21 18:45:26','2020-04-21 18:45:26','','05','','inherit','open','closed','','05','','','2020-04-21 18:45:26','2020-04-21 18:45:26','',130,'http://localhost/_pruebas/wp-content/uploads/2020/04/05.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (132,1,'2020-04-21 18:45:59','2020-04-21 18:45:59','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Pulpo a la marinera','','inherit','closed','closed','','130-revision-v1','','','2020-04-21 18:45:59','2020-04-21 18:45:59','',130,'http://localhost/_pruebas/2020/04/21/130-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (133,1,'2020-04-21 18:47:06','2020-04-21 18:47:06','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Costilla al roquefort','','publish','open','closed','','costilla-al-roquefort','','','2020-04-21 18:47:06','2020-04-21 18:47:06','',0,'http://localhost/_pruebas/?post_type=menus&#038;p=133',0,'menus','',0);
INSERT INTO `atr_posts` VALUES (134,1,'2020-04-21 18:47:00','2020-04-21 18:47:00','','06','','inherit','open','closed','','06','','','2020-04-21 18:47:00','2020-04-21 18:47:00','',133,'http://localhost/_pruebas/wp-content/uploads/2020/04/06.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (135,1,'2020-04-21 18:47:06','2020-04-21 18:47:06','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Costilla al roquefort','','inherit','closed','closed','','133-revision-v1','','','2020-04-21 18:47:06','2020-04-21 18:47:06','',133,'http://localhost/_pruebas/2020/04/21/133-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (136,1,'2020-04-21 18:48:20','2020-04-21 18:48:20','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Hamburguesa de ternera','','publish','open','closed','','hamburguesa-de-ternera','','','2020-04-21 18:48:20','2020-04-21 18:48:20','',0,'http://localhost/_pruebas/?post_type=menus&#038;p=136',0,'menus','',0);
INSERT INTO `atr_posts` VALUES (137,1,'2020-04-21 18:48:12','2020-04-21 18:48:12','','07','','inherit','open','closed','','07','','','2020-04-21 18:48:12','2020-04-21 18:48:12','',136,'http://localhost/_pruebas/wp-content/uploads/2020/04/07.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (138,1,'2020-04-21 18:48:20','2020-04-21 18:48:20','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Hamburguesa de ternera','','inherit','closed','closed','','136-revision-v1','','','2020-04-21 18:48:20','2020-04-21 18:48:20','',136,'http://localhost/_pruebas/2020/04/21/136-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (139,1,'2020-04-21 18:49:34','2020-04-21 18:49:34','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Arroz mixto de pollo','','publish','open','closed','','arroz-mixto-de-pollo','','','2020-04-21 18:49:34','2020-04-21 18:49:34','',0,'http://localhost/_pruebas/?post_type=menus&#038;p=139',0,'menus','',0);
INSERT INTO `atr_posts` VALUES (140,1,'2020-04-21 18:49:26','2020-04-21 18:49:26','','08','','inherit','open','closed','','08','','','2020-04-21 18:49:26','2020-04-21 18:49:26','',139,'http://localhost/_pruebas/wp-content/uploads/2020/04/08.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (141,1,'2020-04-21 18:49:34','2020-04-21 18:49:34','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Arroz mixto de pollo','','inherit','closed','closed','','139-revision-v1','','','2020-04-21 18:49:34','2020-04-21 18:49:34','',139,'http://localhost/_pruebas/2020/04/21/139-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (142,1,'2020-04-21 18:50:56','2020-04-21 18:50:56','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Ensalada mixta','','publish','open','closed','','ensalada-mixta','','','2020-04-21 18:51:00','2020-04-21 18:51:00','',0,'http://localhost/_pruebas/?post_type=menus&#038;p=142',0,'menus','',0);
INSERT INTO `atr_posts` VALUES (143,1,'2020-04-21 18:50:40','2020-04-21 18:50:40','','09','','inherit','open','closed','','09','','','2020-04-21 18:50:40','2020-04-21 18:50:40','',142,'http://localhost/_pruebas/wp-content/uploads/2020/04/09.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (144,1,'2020-04-21 18:50:56','2020-04-21 18:50:56','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis posuere urna. Phasellus vulputate rhoncus quam nec posuere. In hac habitasse platea dictumst...','Ensalada mixta','','inherit','closed','closed','','142-revision-v1','','','2020-04-21 18:50:56','2020-04-21 18:50:56','',142,'http://localhost/_pruebas/2020/04/21/142-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (145,1,'2020-04-21 18:52:22','2020-04-21 18:52:22','','Menú Principal','','inherit','closed','closed','','26-autosave-v1','','','2020-04-21 18:52:22','2020-04-21 18:52:22','',26,'http://localhost/_pruebas/2020/04/21/26-autosave-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (146,1,'2020-04-22 18:25:49','2020-04-22 18:25:49','','logo','','inherit','open','closed','','logo','','','2020-04-22 18:25:49','2020-04-22 18:25:49','',0,'http://localhost/_pruebas/wp-content/uploads/2020/04/logo.png',0,'attachment','image/png',0);
INSERT INTO `atr_posts` VALUES (147,1,'2020-04-22 18:26:17','2020-04-22 18:26:17','http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo.png','cropped-logo.png','','inherit','open','closed','','cropped-logo-png','','','2020-04-22 18:26:17','2020-04-22 18:26:17','',0,'http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo.png',0,'attachment','image/png',0);
INSERT INTO `atr_posts` VALUES (148,1,'2020-04-22 18:28:01','2020-04-22 18:28:01','http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo-1.png','cropped-logo-1.png','','inherit','open','closed','','cropped-logo-1-png','','','2020-04-22 18:28:01','2020-04-22 18:28:01','',0,'http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo-1.png',0,'attachment','image/png',0);
INSERT INTO `atr_posts` VALUES (151,1,'2020-04-22 18:38:32','2020-04-22 18:38:32','http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo-2.png','cropped-logo-2.png','','inherit','open','closed','','cropped-logo-2-png','','','2020-04-22 18:38:32','2020-04-22 18:38:32','',0,'http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo-2.png',0,'attachment','image/png',0);
INSERT INTO `atr_posts` VALUES (162,1,'2020-05-01 16:45:19','2020-05-01 16:45:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at  sapien at varius. Pellentesque pretium metus eget eros maximus, maximus  feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae  congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut  pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis  dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec  nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.  Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis  maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie  placerat. Aliquam viverra libero id felis tempus, non eleifend lacus  placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como crear tarta de queso italiana','','inherit','closed','closed','','107-revision-v1','','','2020-05-01 16:45:19','2020-05-01 16:45:19','',107,'http://localhost/_pruebas/2020/05/01/107-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (161,1,'2020-05-01 16:45:00','2020-05-01 16:45:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at  sapien at varius. Pellentesque pretium metus eget eros maximus, maximus  feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae  congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut  pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis  dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec  nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.  Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis  maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie  placerat. Aliquam viverra libero id felis tempus, non eleifend lacus  placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.fgbg</p>\n<!-- /wp:paragraph -->','Como crear tarta de queso italiana','','inherit','closed','closed','','107-revision-v1','','','2020-05-01 16:45:00','2020-05-01 16:45:00','',107,'http://localhost/_pruebas/2020/05/01/107-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (160,1,'2020-05-01 16:39:02','2020-05-01 16:39:02','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como crear tarta de queso italiana','','inherit','closed','closed','','107-revision-v1','','','2020-05-01 16:39:02','2020-05-01 16:39:02','',107,'http://localhost/_pruebas/2020/05/01/107-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (153,1,'2020-04-22 18:47:43','2020-04-22 18:47:43','http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo-3.png','cropped-logo-3.png','','inherit','open','closed','','cropped-logo-3-png','','','2020-04-22 18:47:43','2020-04-22 18:47:43','',0,'http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo-3.png',0,'attachment','image/png',0);
INSERT INTO `atr_posts` VALUES (155,1,'2020-04-22 18:49:03','2020-04-22 18:49:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel velit luctus, auctor augue eget, aliquam justo. Nunc bibendum sem sed velit volutpat pellentesque. Cras consequat lectus hendrerit, sagittis metus eget, sollicitudin nisi. Nunc vestibulum mattis turpis, id tincidunt risus bibendum eu. Cras tempor feugiat tellus, a mollis nibh posuere ac. Pellentesque quam augue, lacinia ac tempus sed, interdum sed ante. Nulla fermentum nisl ac faucibus sodales.</p>\n<!-- /wp:paragraph -->','Sobre Nosotros','','publish','closed','closed','','sobre-nosotros','','','2020-04-22 18:49:03','2020-04-22 18:49:03','',0,'http://localhost/_pruebas/?page_id=155',0,'page','',0);
INSERT INTO `atr_posts` VALUES (156,1,'2020-04-22 18:49:03','2020-04-22 18:49:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel velit luctus, auctor augue eget, aliquam justo. Nunc bibendum sem sed velit volutpat pellentesque. Cras consequat lectus hendrerit, sagittis metus eget, sollicitudin nisi. Nunc vestibulum mattis turpis, id tincidunt risus bibendum eu. Cras tempor feugiat tellus, a mollis nibh posuere ac. Pellentesque quam augue, lacinia ac tempus sed, interdum sed ante. Nulla fermentum nisl ac faucibus sodales.</p>\n<!-- /wp:paragraph -->','Sobre Nosotros','','inherit','closed','closed','','155-revision-v1','','','2020-04-22 18:49:03','2020-04-22 18:49:03','',155,'http://localhost/_pruebas/2020/04/22/155-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (157,1,'2020-04-25 11:03:33','2020-04-25 11:03:33','http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo-4.png','cropped-logo-4.png','','inherit','open','closed','','cropped-logo-4-png','','','2020-04-25 11:03:33','2020-04-25 11:03:33','',0,'http://localhost/_pruebas/wp-content/uploads/2020/04/cropped-logo-4.png',0,'attachment','image/png',0);
INSERT INTO `atr_posts` VALUES (165,1,'2020-05-01 16:48:51','2020-05-01 16:48:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at  sapien at varius. Pellentesque pretium metus eget eros maximus, maximus  feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae  congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut  pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis  dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec  nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.  Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis  maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie  placerat. Aliquam viverra libero id felis tempus, non eleifend lacus  placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como crear tarta de queso italiana','','inherit','closed','closed','','107-revision-v1','','','2020-05-01 16:48:51','2020-05-01 16:48:51','',107,'http://localhost/_pruebas/2020/05/01/107-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (164,1,'2020-05-01 16:48:35','2020-05-01 16:48:35','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como crear tarta de queso italiana','','inherit','closed','closed','','107-revision-v1','','','2020-05-01 16:48:35','2020-05-01 16:48:35','',107,'http://localhost/_pruebas/2020/05/01/107-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (167,1,'2020-05-01 16:51:33','2020-05-01 16:51:33','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como crear tarta de queso italiana','','inherit','closed','closed','','107-revision-v1','','','2020-05-01 16:51:33','2020-05-01 16:51:33','',107,'http://localhost/_pruebas/2020/05/01/107-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (194,1,'2020-05-11 18:46:38','2020-05-11 18:46:38','','menu-02','','inherit','open','closed','','menu-02','','','2020-05-11 18:46:38','2020-05-11 18:46:38','',0,'http://localhost/_pruebas/wp-content/uploads/2020/05/menu-02.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (195,1,'2020-05-11 18:46:38','2020-05-11 18:46:38','','menu-03','','inherit','open','closed','','menu-03','','','2020-05-11 18:46:38','2020-05-11 18:46:38','',0,'http://localhost/_pruebas/wp-content/uploads/2020/05/menu-03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (196,1,'2020-05-11 18:46:39','2020-05-11 18:46:39','','menu-04','','inherit','open','closed','','menu-04','','','2020-05-11 18:46:39','2020-05-11 18:46:39','',0,'http://localhost/_pruebas/wp-content/uploads/2020/05/menu-04.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (197,1,'2020-05-11 18:46:39','2020-05-11 18:46:39','','menu-05','','inherit','open','closed','','menu-05','','','2020-05-11 18:46:39','2020-05-11 18:46:39','',0,'http://localhost/_pruebas/wp-content/uploads/2020/05/menu-05.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (198,1,'2020-05-11 18:46:40','2020-05-11 18:46:40','','menu-06','','inherit','open','closed','','menu-06','','','2020-05-11 18:46:40','2020-05-11 18:46:40','',0,'http://localhost/_pruebas/wp-content/uploads/2020/05/menu-06.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (199,1,'2020-05-11 18:46:40','2020-05-11 18:46:40','','menu-07','','inherit','open','closed','','menu-07','','','2020-05-11 18:46:40','2020-05-11 18:46:40','',0,'http://localhost/_pruebas/wp-content/uploads/2020/05/menu-07.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (200,1,'2020-05-11 18:46:40','2020-05-11 18:46:40','','menu-08','','inherit','open','closed','','menu-08','','','2020-05-11 18:46:40','2020-05-11 18:46:40','',0,'http://localhost/_pruebas/wp-content/uploads/2020/05/menu-08.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (201,1,'2020-05-11 18:46:41','2020-05-11 18:46:41','','menu-09','','inherit','open','closed','','menu-09','','','2020-05-11 18:46:41','2020-05-11 18:46:41','',0,'http://localhost/_pruebas/wp-content/uploads/2020/05/menu-09.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (202,1,'2020-05-11 18:46:41','2020-05-11 18:46:41','','menu-01','','inherit','open','closed','','menu-01','','','2020-05-11 18:46:41','2020-05-11 18:46:41','',0,'http://localhost/_pruebas/wp-content/uploads/2020/05/menu-01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (207,1,'2020-07-12 08:49:55','2020-07-12 08:49:55','','beard-1845166_640','','inherit','open','closed','','beard-1845166_640','','','2020-07-12 08:49:55','2020-07-12 08:49:55','',0,'http://curso02-alvax-1.com/wp-content/uploads/2020/07/beard-1845166_640.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (208,1,'2020-07-12 08:51:59','2020-07-12 08:51:59','','running-573762_640','','inherit','open','closed','','running-573762_640','','','2020-07-12 08:51:59','2020-07-12 08:51:59','',0,'http://curso02-alvax-1.com/wp-content/uploads/2020/07/running-573762_640.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (209,1,'2020-07-12 08:53:14','2020-07-12 08:53:14','','beautiful-1867093_640','','inherit','open','closed','','beautiful-1867093_640','','','2020-07-12 08:53:14','2020-07-12 08:53:14','',0,'http://curso02-alvax-1.com/wp-content/uploads/2020/07/beautiful-1867093_640.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (210,1,'2020-07-12 09:00:02','2020-07-12 09:00:02','','user01','','inherit','open','closed','','user01','','','2020-07-12 09:00:02','2020-07-12 09:00:02','',0,'http://curso02-alvax-1.com/wp-content/uploads/2020/07/user01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (211,1,'2020-07-12 09:00:02','2020-07-12 09:00:02','','user03','','inherit','open','closed','','user03','','','2020-07-12 09:00:02','2020-07-12 09:00:02','',0,'http://curso02-alvax-1.com/wp-content/uploads/2020/07/user03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (212,1,'2020-07-12 09:00:02','2020-07-12 09:00:02','','user05','','inherit','open','closed','','user05','','','2020-07-12 09:00:02','2020-07-12 09:00:02','',0,'http://curso02-alvax-1.com/wp-content/uploads/2020/07/user05.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (213,1,'2020-07-12 09:00:02','2020-07-12 09:00:02','','user07','','inherit','open','closed','','user07','','','2020-07-12 09:00:02','2020-07-12 09:00:02','',0,'http://curso02-alvax-1.com/wp-content/uploads/2020/07/user07.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (329,1,'2020-08-06 11:53:37','2020-08-06 11:53:37','','imagen-03','','inherit','open','closed','','imagen-03','','','2020-08-06 11:53:37','2020-08-06 11:53:37','',328,'http://curso02-alvax-1.com/wp-content/uploads/2020/08/imagen-03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (342,1,'2020-08-31 13:11:17','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2020-08-31 13:11:17','0000-00-00 00:00:00','',0,'http://curso02-alvax-1.com/?p=342',0,'post','',0);
INSERT INTO `atr_posts` VALUES (325,1,'2020-08-06 11:52:21','2020-08-06 11:52:21','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum erat eu tortor posuere, non vulputate nibh cursus. Curabitur placerat tellus condimentum enim elementum mattis.\r\nDonec hendrerit tempus sem eu sodales. Maecenas ultrices tortor maximus tellus consectetur, eget gravida felis tincidunt. Fusce feugiat et arcu et rhoncus. Donec at neque vitae turpis venenatis pulvinar. Vestibulum volutpat lacus ut ante posuere consequat. Curabitur tristique varius eros, vitae porta arcu tincidunt a. Suspendisse at malesuada magna. Etiam lectus libero, bibendum sit amet enim vitae, porta mattis enim.','Espaguetis a la Boloñesa','','publish','open','closed','','espaguetis-a-la-bolonesa','','','2020-08-06 11:52:21','2020-08-06 11:52:21','',0,'http://curso02-alvax-1.com/?post_type=recetas&#038;p=325',0,'recetas','',0);
INSERT INTO `atr_posts` VALUES (322,1,'2020-08-06 11:48:52','2020-08-06 11:48:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum erat eu tortor posuere, non vulputate nibh cursus. Curabitur placerat tellus condimentum enim elementum mattis.\r\nDonec hendrerit tempus sem eu sodales. Maecenas ultrices tortor maximus tellus consectetur, eget gravida felis tincidunt. Fusce feugiat et arcu et rhoncus. Donec at neque vitae turpis venenatis pulvinar. Vestibulum volutpat lacus ut ante posuere consequat. Curabitur tristique varius eros, vitae porta arcu tincidunt a. Suspendisse at malesuada magna. Etiam lectus libero, bibendum sit amet enim vitae, porta mattis enim.','Pollo frito al curry','','trash','open','closed','','pollo-frito-al-curry__trashed','','','2025-10-28 17:40:33','2025-10-28 17:40:33','',0,'http://curso02-alvax-1.com/?post_type=recetas&#038;p=322',0,'recetas','',0);
INSERT INTO `atr_posts` VALUES (323,1,'2020-08-06 11:48:43','2020-08-06 11:48:43','','video-03','','inherit','open','closed','','video-03','','','2020-08-06 11:48:43','2020-08-06 11:48:43','',322,'http://curso02-alvax-1.com/wp-content/uploads/2020/08/video-03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (324,1,'2020-08-06 11:48:52','2020-08-06 11:48:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum erat eu tortor posuere, non vulputate nibh cursus. Curabitur placerat tellus condimentum enim elementum mattis.\r\nDonec hendrerit tempus sem eu sodales. Maecenas ultrices tortor maximus tellus consectetur, eget gravida felis tincidunt. Fusce feugiat et arcu et rhoncus. Donec at neque vitae turpis venenatis pulvinar. Vestibulum volutpat lacus ut ante posuere consequat. Curabitur tristique varius eros, vitae porta arcu tincidunt a. Suspendisse at malesuada magna. Etiam lectus libero, bibendum sit amet enim vitae, porta mattis enim.','Pollo frito al curry','','inherit','closed','closed','','322-revision-v1','','','2020-08-06 11:48:52','2020-08-06 11:48:52','',322,'http://curso02-alvax-1.com/322-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (337,1,'2020-08-08 19:59:35','2020-08-08 19:59:35','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla&nbsp; nulla nunc, ut imperdiet sapien posuere et. Pellentesque nec venenatis&nbsp; urna. Mauris justo dui, placerat in ornare at, pretium at tellus. Nullam&nbsp; efficitur eros diam, lacinia condimentum erat tristique ut.&nbsp; Pellentesque vel ultricies augue. Curabitur fringilla sapien purus, non&nbsp; hendrerit risus viverra quis. Nunc eros ipsum, pharetra eu purus non,&nbsp; aliquam aliquet augue. Etiam a risus sit amet nisl facilisis tincidunt.&nbsp; Aenean at est quis leo tempus tempus a at leo. Donec sodales consectetur&nbsp; leo ut aliquam. Quisque sed risus at nibh maximus porta. Nullam dictum&nbsp; mi et sem dignissim molestie. Nulla faucibus mi vitae lacus faucibus&nbsp; consectetur. Curabitur tincidunt dui eu ultricies lacinia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce sollicitudin erat nec lectus congue porta. Vestibulum vehicula at&nbsp; sapien at varius. Pellentesque pretium metus eget eros maximus, maximus&nbsp; feugiat sapien auctor. Vivamus ullamcorper mi sed orci gravida, vitae&nbsp; congue nunc imperdiet. Fusce vestibulum odio ac arcu faucibus, ut&nbsp; pharetra dolor scelerisque. Sed luctus maximus eros, a facilisis felis&nbsp; dapibus sit amet. Nulla nulla ante, sodales a egestas ac, placerat nec&nbsp; nibh. Donec ut mollis ex. Maecenas tincidunt finibus magna vel blandit.&nbsp; Sed a sagittis est, eget tincidunt elit. In odio nisl, mattis iaculis&nbsp; maximus eget, congue ut purus. Mauris sollicitudin lorem in molestie&nbsp; placerat. Aliquam viverra libero id felis tempus, non eleifend lacus&nbsp; placerat. Ut venenatis dapibus justo, ut faucibus felis consectetur sed.</p>\n<!-- /wp:paragraph -->','Como hacer un gazpacho de primera en solo 4 pasos','','inherit','closed','closed','','104-revision-v1','','','2020-08-08 19:59:35','2020-08-08 19:59:35','',104,'http://curso02-alvax-1.com/104-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (320,1,'2020-08-06 10:25:43','2020-08-06 10:25:43','','ededf','','inherit','open','closed','','ededf','','','2020-08-06 10:25:43','2020-08-06 10:25:43','',0,'http://curso02-alvax-1.com/wp-content/uploads/2020/08/ededf.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (328,1,'2020-08-06 11:53:42','2020-08-06 11:53:42','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum erat eu tortor posuere, non vulputate nibh cursus. Curabitur placerat tellus condimentum enim elementum mattis.\r\nDonec hendrerit tempus sem eu sodales. Maecenas ultrices tortor maximus tellus consectetur, eget gravida felis tincidunt. Fusce feugiat et arcu et rhoncus. Donec at neque vitae turpis venenatis pulvinar. Vestibulum volutpat lacus ut ante posuere consequat. Curabitur tristique varius eros, vitae porta arcu tincidunt a. Suspendisse at malesuada magna. Etiam lectus libero, bibendum sit amet enim vitae, porta mattis enim.','Espaguetis a la Carbonara','','publish','open','closed','','espaguetis-a-la-carbonara','','','2020-08-06 11:53:45','2020-08-06 11:53:45','',0,'http://curso02-alvax-1.com/?post_type=recetas&#038;p=328',0,'recetas','',0);
INSERT INTO `atr_posts` VALUES (326,1,'2020-08-06 11:52:15','2020-08-06 11:52:15','','imagen-02','','inherit','open','closed','','imagen-02','','','2020-08-06 11:52:15','2020-08-06 11:52:15','',325,'http://curso02-alvax-1.com/wp-content/uploads/2020/08/imagen-02.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (327,1,'2020-08-06 11:52:21','2020-08-06 11:52:21','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum erat eu tortor posuere, non vulputate nibh cursus. Curabitur placerat tellus condimentum enim elementum mattis.\r\nDonec hendrerit tempus sem eu sodales. Maecenas ultrices tortor maximus tellus consectetur, eget gravida felis tincidunt. Fusce feugiat et arcu et rhoncus. Donec at neque vitae turpis venenatis pulvinar. Vestibulum volutpat lacus ut ante posuere consequat. Curabitur tristique varius eros, vitae porta arcu tincidunt a. Suspendisse at malesuada magna. Etiam lectus libero, bibendum sit amet enim vitae, porta mattis enim.','Espaguetis a la Boloñesa','','inherit','closed','closed','','325-revision-v1','','','2020-08-06 11:52:21','2020-08-06 11:52:21','',325,'http://curso02-alvax-1.com/325-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (330,1,'2020-08-06 11:53:42','2020-08-06 11:53:42','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum erat eu tortor posuere, non vulputate nibh cursus. Curabitur placerat tellus condimentum enim elementum mattis.\r\nDonec hendrerit tempus sem eu sodales. Maecenas ultrices tortor maximus tellus consectetur, eget gravida felis tincidunt. Fusce feugiat et arcu et rhoncus. Donec at neque vitae turpis venenatis pulvinar. Vestibulum volutpat lacus ut ante posuere consequat. Curabitur tristique varius eros, vitae porta arcu tincidunt a. Suspendisse at malesuada magna. Etiam lectus libero, bibendum sit amet enim vitae, porta mattis enim.','Espaguetis a la Carbonara','','inherit','closed','closed','','328-revision-v1','','','2020-08-06 11:53:42','2020-08-06 11:53:42','',328,'http://curso02-alvax-1.com/328-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (331,1,'2020-08-06 11:54:51','2020-08-06 11:54:51','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum erat eu tortor posuere, non vulputate nibh cursus. Curabitur placerat tellus condimentum enim elementum mattis.\r\nDonec hendrerit tempus sem eu sodales. Maecenas ultrices tortor maximus tellus consectetur, eget gravida felis tincidunt. Fusce feugiat et arcu et rhoncus. Donec at neque vitae turpis venenatis pulvinar. Vestibulum volutpat lacus ut ante posuere consequat. Curabitur tristique varius eros, vitae porta arcu tincidunt a. Suspendisse at malesuada magna. Etiam lectus libero, bibendum sit amet enim vitae, porta mattis enim.','Pizza Napolitana','','publish','open','closed','','pizza-napolitana','','','2020-08-06 11:54:51','2020-08-06 11:54:51','',0,'http://curso02-alvax-1.com/?post_type=recetas&#038;p=331',0,'recetas','',0);
INSERT INTO `atr_posts` VALUES (332,1,'2020-08-06 11:54:45','2020-08-06 11:54:45','','imagen-04','','inherit','open','closed','','imagen-04','','','2020-08-06 11:54:45','2020-08-06 11:54:45','',331,'http://curso02-alvax-1.com/wp-content/uploads/2020/08/imagen-04.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `atr_posts` VALUES (333,1,'2020-08-06 11:54:51','2020-08-06 11:54:51','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum erat eu tortor posuere, non vulputate nibh cursus. Curabitur placerat tellus condimentum enim elementum mattis.\r\nDonec hendrerit tempus sem eu sodales. Maecenas ultrices tortor maximus tellus consectetur, eget gravida felis tincidunt. Fusce feugiat et arcu et rhoncus. Donec at neque vitae turpis venenatis pulvinar. Vestibulum volutpat lacus ut ante posuere consequat. Curabitur tristique varius eros, vitae porta arcu tincidunt a. Suspendisse at malesuada magna. Etiam lectus libero, bibendum sit amet enim vitae, porta mattis enim.','Pizza Napolitana','','inherit','closed','closed','','331-revision-v1','','','2020-08-06 11:54:51','2020-08-06 11:54:51','',331,'http://curso02-alvax-1.com/331-revision-v1/',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (353,1,'2025-10-28 17:41:13','2025-10-28 17:41:13','Un texto cualquiera','Pollo al curry','Cocina Pollo al curry','publish','open','open','','pollo-al-curry','','','2025-10-28 17:42:11','2025-10-28 17:42:11','',0,'http://curso02-alvax-1.com/?post_type=recetas&#038;p=353',0,'recetas','',0);
INSERT INTO `atr_posts` VALUES (354,1,'2025-10-28 17:41:13','2025-10-28 17:41:13','Un texto cualquiera','Pollo al curry','Cocina Pollo al curry','inherit','closed','closed','','353-revision-v1','','','2025-10-28 17:41:13','2025-10-28 17:41:13','',353,'http://curso02-alvax-1.com/?p=354',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (357,1,'2025-11-12 12:11:19','2025-11-12 12:11:19','','ElEjecutable','','inherit','open','closed','','elejecutable-3','','','2025-11-12 12:11:19','2025-11-12 12:11:19','',0,'http://curso02-alvax-1.com/wp-content/uploads/2025/11/ElEjecutable-2.pdf',0,'attachment','application/pdf',0);
INSERT INTO `atr_posts` VALUES (358,1,'2025-11-12 12:11:55','2025-11-12 12:11:55','','Proyecto integrador - El Club Deportivo (10)-1','','inherit','open','closed','','proyecto-integrador-el-club-deportivo-10-1','','','2025-11-12 12:11:55','2025-11-12 12:11:55','',0,'http://curso02-alvax-1.com/wp-content/uploads/2025/11/Proyecto-integrador-El-Club-Deportivo-10-1.pdf',0,'attachment','application/pdf',0);
INSERT INTO `atr_posts` VALUES (359,1,'2025-11-12 12:13:01','2025-11-12 12:13:01','','ElEjecutable','','inherit','open','closed','','elejecutable-4','','','2025-11-12 12:13:01','2025-11-12 12:13:01','',0,'http://curso02-alvax-1.com/wp-content/uploads/2025/11/ElEjecutable-3.pdf',0,'attachment','application/pdf',0);
INSERT INTO `atr_posts` VALUES (343,1,'2025-10-13 17:36:00','2025-10-13 17:36:00','<!-- wp:paragraph -->\n<p>Lorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjkn Lorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjkn</p>\n<!-- /wp:paragraph -->','Lomo al pepe','','publish','open','open','','lomo-al-pepe','','','2025-10-13 17:36:00','2025-10-13 17:36:00','',0,'http://curso02-alvax-1.com/?p=343',0,'post','',1);
INSERT INTO `atr_posts` VALUES (344,1,'2025-10-13 17:36:00','2025-10-13 17:36:00','<!-- wp:paragraph -->\n<p>Lorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjkn Lorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjknLorem ipsumñlksjadnfdñasnkjlfnsjdknfsankjfnañskfnskfjjjjjjjjjjjjjjjjjjjjjjjnjjasjfñjkn</p>\n<!-- /wp:paragraph -->','Lomo al pepe','','inherit','closed','closed','','343-revision-v1','','','2025-10-13 17:36:00','2025-10-13 17:36:00','',343,'http://curso02-alvax-1.com/?p=344',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (345,1,'2025-10-14 12:37:44','2025-10-14 12:37:44','<!-- wp:shortcode -->\n[res_texto]Mi Primer shortcode[/res_texto]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[reslink url=\"http://curso02-alvax-1.com/blog/\" class=\"btn btn-info\" target=\"_blank\"]Ver enlace[/reslink]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Entrada shortcode','','publish','open','open','','entrada-shortcode','','','2025-10-14 13:10:47','2025-10-14 13:10:47','',0,'http://curso02-alvax-1.com/?p=345',0,'post','',0);
INSERT INTO `atr_posts` VALUES (346,1,'2025-10-14 12:36:40','2025-10-14 12:36:40','<!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"u003ci class=u0022fab fa-facebook-fu0022u003eu003c/iu003e\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"https://facebook.com\"} /--><!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"u003ci class=u0022fab fa-instagramu0022u003eu003c/iu003e\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"https://instagram.com\"} /--><!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"u003ci class=u0022fab fa-youtubeu0022u003eu003c/iu003e\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"https://youtube.com\"} /--><!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"u003ci class=u0022fab fa-twitteru0022u003eu003c/iu003e\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"https://twitter.com\"} /-->','Menú Redes Sociales','','publish','closed','closed','','menu-redes-sociales','','','2025-10-14 12:36:40','2025-10-14 12:36:40','',0,'http://curso02-alvax-1.com/menu-redes-sociales/',0,'wp_navigation','',0);
INSERT INTO `atr_posts` VALUES (347,1,'2025-10-14 12:37:44','2025-10-14 12:37:44','<!-- wp:shortcode -->\n[res_texto]Mi Primer shortcode/[res_texto]\n<!-- /wp:shortcode -->','Entrada shortcode','','inherit','closed','closed','','345-revision-v1','','','2025-10-14 12:37:44','2025-10-14 12:37:44','',345,'http://curso02-alvax-1.com/?p=347',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (348,1,'2025-10-14 12:39:08','2025-10-14 12:39:08','<!-- wp:shortcode -->\n[res_texto]Mi Primer shortcode[/res_texto]\n<!-- /wp:shortcode -->','Entrada shortcode','','inherit','closed','closed','','345-revision-v1','','','2025-10-14 12:39:08','2025-10-14 12:39:08','',345,'http://curso02-alvax-1.com/?p=348',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (349,1,'2025-10-14 13:04:43','2025-10-14 13:04:43','<!-- wp:shortcode -->\n[res_texto]Mi Primer shortcode[/res_texto]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[reslink]Ver más información[/reslink]\n<!-- /wp:shortcode -->','Entrada shortcode','','inherit','closed','closed','','345-revision-v1','','','2025-10-14 13:04:43','2025-10-14 13:04:43','',345,'http://curso02-alvax-1.com/?p=349',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (350,1,'2025-10-14 13:05:14','2025-10-14 13:05:14','<!-- wp:shortcode -->\n[res_texto]Mi Primer shortcode[/res_texto]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[reslink][/reslink]\n<!-- /wp:shortcode -->','Entrada shortcode','','inherit','closed','closed','','345-revision-v1','','','2025-10-14 13:05:14','2025-10-14 13:05:14','',345,'http://curso02-alvax-1.com/?p=350',0,'revision','',0);
INSERT INTO `atr_posts` VALUES (355,1,'2025-11-12 12:08:08','2025-11-12 12:08:08','','ElEjecutable','','inherit','open','closed','','elejecutable','','','2025-11-12 12:08:08','2025-11-12 12:08:08','',0,'http://curso02-alvax-1.com/wp-content/uploads/2025/11/ElEjecutable.pdf',0,'attachment','application/pdf',0);
INSERT INTO `atr_posts` VALUES (356,1,'2025-11-12 12:09:31','2025-11-12 12:09:31','','ElEjecutable','','inherit','open','closed','','elejecutable-2','','','2025-11-12 12:09:31','2025-11-12 12:09:31','',0,'http://curso02-alvax-1.com/wp-content/uploads/2025/11/ElEjecutable-1.pdf',0,'attachment','application/pdf',0);
INSERT INTO `atr_posts` VALUES (352,1,'2025-10-14 13:10:47','2025-10-14 13:10:47','<!-- wp:shortcode -->\n[res_texto]Mi Primer shortcode[/res_texto]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[reslink url=\"http://curso02-alvax-1.com/blog/\" class=\"btn btn-info\" target=\"_blank\"]Ver enlace[/reslink]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Entrada shortcode','','inherit','closed','closed','','345-revision-v1','','','2025-10-14 13:10:47','2025-10-14 13:10:47','',345,'http://curso02-alvax-1.com/?p=352',0,'revision','',0);
/*!40000 ALTER TABLE `atr_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_reservas`
--

DROP TABLE IF EXISTS `atr_reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_reservas` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `correo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `telefono` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `personas` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_reservas`
--

LOCK TABLES `atr_reservas` WRITE;
/*!40000 ALTER TABLE `atr_reservas` DISABLE KEYS */;
/*!40000 ALTER TABLE `atr_reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_term_relationships`
--

DROP TABLE IF EXISTS `atr_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_term_relationships`
--

LOCK TABLES `atr_term_relationships` WRITE;
/*!40000 ALTER TABLE `atr_term_relationships` DISABLE KEYS */;
INSERT INTO `atr_term_relationships` VALUES (28,2,0);
INSERT INTO `atr_term_relationships` VALUES (29,2,0);
INSERT INTO `atr_term_relationships` VALUES (30,2,0);
INSERT INTO `atr_term_relationships` VALUES (31,2,0);
INSERT INTO `atr_term_relationships` VALUES (32,2,0);
INSERT INTO `atr_term_relationships` VALUES (33,2,0);
INSERT INTO `atr_term_relationships` VALUES (34,2,0);
INSERT INTO `atr_term_relationships` VALUES (35,2,0);
INSERT INTO `atr_term_relationships` VALUES (36,2,0);
INSERT INTO `atr_term_relationships` VALUES (37,2,0);
INSERT INTO `atr_term_relationships` VALUES (38,3,0);
INSERT INTO `atr_term_relationships` VALUES (39,3,0);
INSERT INTO `atr_term_relationships` VALUES (40,3,0);
INSERT INTO `atr_term_relationships` VALUES (41,3,0);
INSERT INTO `atr_term_relationships` VALUES (98,1,0);
INSERT INTO `atr_term_relationships` VALUES (101,1,0);
INSERT INTO `atr_term_relationships` VALUES (104,1,0);
INSERT INTO `atr_term_relationships` VALUES (107,1,0);
INSERT INTO `atr_term_relationships` VALUES (118,4,0);
INSERT INTO `atr_term_relationships` VALUES (121,4,0);
INSERT INTO `atr_term_relationships` VALUES (124,4,0);
INSERT INTO `atr_term_relationships` VALUES (127,5,0);
INSERT INTO `atr_term_relationships` VALUES (130,6,0);
INSERT INTO `atr_term_relationships` VALUES (133,6,0);
INSERT INTO `atr_term_relationships` VALUES (136,6,0);
INSERT INTO `atr_term_relationships` VALUES (139,6,0);
INSERT INTO `atr_term_relationships` VALUES (142,5,0);
INSERT INTO `atr_term_relationships` VALUES (104,10,0);
INSERT INTO `atr_term_relationships` VALUES (107,9,0);
INSERT INTO `atr_term_relationships` VALUES (107,10,0);
INSERT INTO `atr_term_relationships` VALUES (343,1,0);
INSERT INTO `atr_term_relationships` VALUES (345,1,0);
/*!40000 ALTER TABLE `atr_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_term_taxonomy`
--

DROP TABLE IF EXISTS `atr_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_term_taxonomy`
--

LOCK TABLES `atr_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `atr_term_taxonomy` DISABLE KEYS */;
INSERT INTO `atr_term_taxonomy` VALUES (1,1,'category','',0,6);
INSERT INTO `atr_term_taxonomy` VALUES (2,2,'nav_menu','',0,10);
INSERT INTO `atr_term_taxonomy` VALUES (3,3,'nav_menu','',0,4);
INSERT INTO `atr_term_taxonomy` VALUES (4,4,'category','',0,3);
INSERT INTO `atr_term_taxonomy` VALUES (5,5,'category','',0,2);
INSERT INTO `atr_term_taxonomy` VALUES (6,6,'category','',0,4);
INSERT INTO `atr_term_taxonomy` VALUES (10,10,'tipo-comida','',0,2);
INSERT INTO `atr_term_taxonomy` VALUES (9,9,'tipo-comida','',0,1);
/*!40000 ALTER TABLE `atr_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_termmeta`
--

DROP TABLE IF EXISTS `atr_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_termmeta`
--

LOCK TABLES `atr_termmeta` WRITE;
/*!40000 ALTER TABLE `atr_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `atr_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_terms`
--

DROP TABLE IF EXISTS `atr_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_terms`
--

LOCK TABLES `atr_terms` WRITE;
/*!40000 ALTER TABLE `atr_terms` DISABLE KEYS */;
INSERT INTO `atr_terms` VALUES (1,'Sin categoría','sin-categoria',0);
INSERT INTO `atr_terms` VALUES (2,'Menú Principal','menu-principal',0);
INSERT INTO `atr_terms` VALUES (3,'Menú Redes Sociales','menu-redes-sociales',0);
INSERT INTO `atr_terms` VALUES (4,'Postres','postres',0);
INSERT INTO `atr_terms` VALUES (5,'Ensaladas','ensaladas',0);
INSERT INTO `atr_terms` VALUES (6,'Menú Principal','menu-principal',0);
INSERT INTO `atr_terms` VALUES (10,'Comida española','comida-espanola',0);
INSERT INTO `atr_terms` VALUES (9,'Comida italiana','comida-italiana',0);
/*!40000 ALTER TABLE `atr_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_usermeta`
--

DROP TABLE IF EXISTS `atr_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_usermeta`
--

LOCK TABLES `atr_usermeta` WRITE;
/*!40000 ALTER TABLE `atr_usermeta` DISABLE KEYS */;
INSERT INTO `atr_usermeta` VALUES (1,1,'nickname','Admin');
INSERT INTO `atr_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `atr_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `atr_usermeta` VALUES (4,1,'description','');
INSERT INTO `atr_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `atr_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `atr_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `atr_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `atr_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `atr_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `atr_usermeta` VALUES (11,1,'locale','');
INSERT INTO `atr_usermeta` VALUES (12,1,'atr_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `atr_usermeta` VALUES (13,1,'atr_user_level','10');
INSERT INTO `atr_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `atr_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `atr_usermeta` VALUES (25,1,'session_tokens','a:7:{s:64:\"da660913770d93d84f975261f9bdb84cf1a85b96921ff50f598361f4ec0b7653\";a:4:{s:10:\"expiration\";i:1763390414;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\";s:5:\"login\";i:1763217614;}s:64:\"683e2ffdac24866b91a7360c2a0c14857c7fa54b806793eafcdb2b24333bda78\";a:4:{s:10:\"expiration\";i:1763474696;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\";s:5:\"login\";i:1763301896;}s:64:\"0354a2d428f87240a8087a66f19c8e98468204c47944811b67bfb72b606db4bd\";a:4:{s:10:\"expiration\";i:1763542677;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\";s:5:\"login\";i:1763369877;}s:64:\"27b5c7e0c6c9f3d87651ecf55b43e91837389a616084e69a65d18c5c6e8645e7\";a:4:{s:10:\"expiration\";i:1763542680;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\";s:5:\"login\";i:1763369880;}s:64:\"95923479ff86f4607534e627bce21558be60c1b47390aab9c0d754e3d816ddb7\";a:4:{s:10:\"expiration\";i:1763544678;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\";s:5:\"login\";i:1763371878;}s:64:\"bba34f0129c17ab2e0e1e23d4086cefe9c52a3b16b2e46e82dee2e3a7040c6ad\";a:4:{s:10:\"expiration\";i:1763544680;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\";s:5:\"login\";i:1763371880;}s:64:\"0eb921c316b42d22e64ee6f661afb3c904412bada4f9882f4f20b0806b2059b6\";a:4:{s:10:\"expiration\";i:1763544686;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0\";s:5:\"login\";i:1763371886;}}');
INSERT INTO `atr_usermeta` VALUES (17,1,'atr_dashboard_quick_press_last_post_id','342');
INSERT INTO `atr_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `atr_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:3:{i:0;s:19:\"add-post-type-menus\";i:1;s:21:\"add-post-type-eventos\";i:2;s:12:\"add-post_tag\";}');
INSERT INTO `atr_usermeta` VALUES (20,1,'nav_menu_recently_edited','3');
INSERT INTO `atr_usermeta` VALUES (21,1,'atr_user-settings','libraryContent=browse&hidetb=1&editor=tinymce&posts_list_mode=list&mfold=o');
INSERT INTO `atr_usermeta` VALUES (22,1,'atr_user-settings-time','1594750109');
INSERT INTO `atr_usermeta` VALUES (23,1,'closedpostboxes_dashboard','a:4:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}');
INSERT INTO `atr_usermeta` VALUES (24,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `atr_usermeta` VALUES (34,1,'closedpostboxes_recetas','a:0:{}');
INSERT INTO `atr_usermeta` VALUES (35,1,'metaboxhidden_recetas','a:7:{i:0;s:15:\"acf_acf_eventos\";i:1;s:32:\"acf_acf_formulario-reservaciones\";i:2;s:18:\"acf_acf_front-page\";i:3;s:23:\"acf_acf_galeria-galeria\";i:4;s:16:\"acf_acf_horarios\";i:5;s:14:\"acf_acf_precio\";i:6;s:7:\"slugdiv\";}');
INSERT INTO `atr_usermeta` VALUES (26,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `atr_usermeta` VALUES (29,1,'metaboxhidden_post','a:6:{i:0;s:15:\"acf_acf_eventos\";i:1;s:32:\"acf_acf_formulario-reservaciones\";i:2;s:18:\"acf_acf_front-page\";i:3;s:23:\"acf_acf_galeria-galeria\";i:4;s:16:\"acf_acf_horarios\";i:5;s:14:\"acf_acf_precio\";}');
INSERT INTO `atr_usermeta` VALUES (27,1,'enable_custom_fields','1');
INSERT INTO `atr_usermeta` VALUES (28,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `atr_usermeta` VALUES (30,1,'meta-box-order_eventos','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:157:\"atr_mi_metabox,acf_acf_eventos,acf_acf_formulario-reservaciones,acf_acf_front-page,acf_acf_galeria-galeria,acf_acf_horarios,acf_acf_precio,postcustom,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `atr_usermeta` VALUES (31,1,'screen_layout_eventos','2');
INSERT INTO `atr_usermeta` VALUES (32,1,'closedpostboxes_eventos','a:2:{i:0;s:15:\"acf_acf_eventos\";i:1;s:10:\"postcustom\";}');
INSERT INTO `atr_usermeta` VALUES (33,1,'metaboxhidden_eventos','a:6:{i:0;s:32:\"acf_acf_formulario-reservaciones\";i:1;s:18:\"acf_acf_front-page\";i:2;s:23:\"acf_acf_galeria-galeria\";i:3;s:16:\"acf_acf_horarios\";i:4;s:14:\"acf_acf_precio\";i:5;s:7:\"slugdiv\";}');
INSERT INTO `atr_usermeta` VALUES (164,1,'atr_persisted_preferences','a:4:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:26:\"taxonomy-panel-tipo-comida\";}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-10-29T17:06:01.212Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}');
INSERT INTO `atr_usermeta` VALUES (264,15,'res_social','a:3:{s:8:\"facebook\";s:12:\"facebook.com\";s:7:\"twitter\";s:11:\"twitter.com\";s:9:\"instagram\";s:13:\"instagram.com\";}');
INSERT INTO `atr_usermeta` VALUES (263,17,'dismissed_wp_pointers','');
INSERT INTO `atr_usermeta` VALUES (262,17,'atr_user_level','0');
INSERT INTO `atr_usermeta` VALUES (261,17,'atr_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `atr_usermeta` VALUES (258,17,'use_ssl','0');
INSERT INTO `atr_usermeta` VALUES (259,17,'show_admin_bar_front','true');
INSERT INTO `atr_usermeta` VALUES (260,17,'locale','');
INSERT INTO `atr_usermeta` VALUES (257,17,'admin_color','fresh');
INSERT INTO `atr_usermeta` VALUES (256,17,'comment_shortcuts','false');
INSERT INTO `atr_usermeta` VALUES (255,17,'syntax_highlighting','true');
INSERT INTO `atr_usermeta` VALUES (253,17,'description','');
INSERT INTO `atr_usermeta` VALUES (254,17,'rich_editing','true');
INSERT INTO `atr_usermeta` VALUES (252,17,'last_name','');
INSERT INTO `atr_usermeta` VALUES (251,17,'first_name','');
INSERT INTO `atr_usermeta` VALUES (250,17,'nickname','Pruebas');
INSERT INTO `atr_usermeta` VALUES (179,12,'nickname','maria');
INSERT INTO `atr_usermeta` VALUES (180,12,'first_name','Maria');
INSERT INTO `atr_usermeta` VALUES (181,12,'last_name','Rodriguez');
INSERT INTO `atr_usermeta` VALUES (182,12,'description','Tengo mucha experiencia con mi trabajo');
INSERT INTO `atr_usermeta` VALUES (183,12,'rich_editing','true');
INSERT INTO `atr_usermeta` VALUES (184,12,'syntax_highlighting','true');
INSERT INTO `atr_usermeta` VALUES (185,12,'comment_shortcuts','false');
INSERT INTO `atr_usermeta` VALUES (186,12,'admin_color','fresh');
INSERT INTO `atr_usermeta` VALUES (187,12,'use_ssl','0');
INSERT INTO `atr_usermeta` VALUES (188,12,'show_admin_bar_front','true');
INSERT INTO `atr_usermeta` VALUES (189,12,'locale','');
INSERT INTO `atr_usermeta` VALUES (190,12,'atr_capabilities','a:1:{s:8:\"rolnuevo\";b:1;}');
INSERT INTO `atr_usermeta` VALUES (191,12,'atr_user_level','0');
INSERT INTO `atr_usermeta` VALUES (192,12,'dismissed_wp_pointers','');
INSERT INTO `atr_usermeta` VALUES (193,13,'nickname','Jorge');
INSERT INTO `atr_usermeta` VALUES (194,14,'nickname','Jorge');
INSERT INTO `atr_usermeta` VALUES (195,13,'first_name','Jorge');
INSERT INTO `atr_usermeta` VALUES (196,14,'first_name','Jorge');
INSERT INTO `atr_usermeta` VALUES (197,13,'last_name','Mendez');
INSERT INTO `atr_usermeta` VALUES (198,14,'last_name','Mendez');
INSERT INTO `atr_usermeta` VALUES (199,13,'description','Soy jorge y me considero profecional en mi trabajo');
INSERT INTO `atr_usermeta` VALUES (200,14,'description','Soy jorge y me considero profecional en mi trabajo');
INSERT INTO `atr_usermeta` VALUES (201,13,'rich_editing','true');
INSERT INTO `atr_usermeta` VALUES (202,14,'rich_editing','true');
INSERT INTO `atr_usermeta` VALUES (203,13,'syntax_highlighting','true');
INSERT INTO `atr_usermeta` VALUES (204,14,'syntax_highlighting','true');
INSERT INTO `atr_usermeta` VALUES (205,13,'comment_shortcuts','false');
INSERT INTO `atr_usermeta` VALUES (206,14,'comment_shortcuts','false');
INSERT INTO `atr_usermeta` VALUES (207,13,'admin_color','fresh');
INSERT INTO `atr_usermeta` VALUES (208,14,'admin_color','fresh');
INSERT INTO `atr_usermeta` VALUES (209,13,'use_ssl','0');
INSERT INTO `atr_usermeta` VALUES (210,14,'use_ssl','0');
INSERT INTO `atr_usermeta` VALUES (211,13,'show_admin_bar_front','true');
INSERT INTO `atr_usermeta` VALUES (212,14,'show_admin_bar_front','true');
INSERT INTO `atr_usermeta` VALUES (213,13,'locale','');
INSERT INTO `atr_usermeta` VALUES (214,14,'locale','');
INSERT INTO `atr_usermeta` VALUES (215,13,'atr_capabilities','a:1:{s:6:\"editor\";b:1;}');
INSERT INTO `atr_usermeta` VALUES (216,14,'atr_capabilities','a:1:{s:6:\"editor\";b:1;}');
INSERT INTO `atr_usermeta` VALUES (217,13,'atr_user_level','7');
INSERT INTO `atr_usermeta` VALUES (218,14,'atr_user_level','7');
INSERT INTO `atr_usermeta` VALUES (219,13,'dismissed_wp_pointers','');
INSERT INTO `atr_usermeta` VALUES (220,14,'dismissed_wp_pointers','');
INSERT INTO `atr_usermeta` VALUES (221,15,'nickname','Carlos');
INSERT INTO `atr_usermeta` VALUES (222,15,'first_name','Carlos');
INSERT INTO `atr_usermeta` VALUES (223,15,'last_name','Mendez');
INSERT INTO `atr_usermeta` VALUES (224,15,'description','Soy carlos y me considero profecional en mi trabajo');
INSERT INTO `atr_usermeta` VALUES (225,15,'rich_editing','true');
INSERT INTO `atr_usermeta` VALUES (226,15,'syntax_highlighting','true');
INSERT INTO `atr_usermeta` VALUES (227,15,'comment_shortcuts','false');
INSERT INTO `atr_usermeta` VALUES (228,15,'admin_color','fresh');
INSERT INTO `atr_usermeta` VALUES (229,15,'use_ssl','0');
INSERT INTO `atr_usermeta` VALUES (230,15,'show_admin_bar_front','true');
INSERT INTO `atr_usermeta` VALUES (231,15,'locale','');
INSERT INTO `atr_usermeta` VALUES (232,15,'atr_capabilities','a:1:{s:6:\"editor\";b:1;}');
INSERT INTO `atr_usermeta` VALUES (233,15,'atr_user_level','7');
INSERT INTO `atr_usermeta` VALUES (234,15,'dismissed_wp_pointers','');
INSERT INTO `atr_usermeta` VALUES (235,1,'_new_email','a:2:{s:4:\"hash\";s:32:\"ab139752c4b97ad9a5249aaee69a5ebd\";s:8:\"newemail\";s:15:\"alvax@alvax.com\";}');
/*!40000 ALTER TABLE `atr_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atr_users`
--

DROP TABLE IF EXISTS `atr_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atr_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atr_users`
--

LOCK TABLES `atr_users` WRITE;
/*!40000 ALTER TABLE `atr_users` DISABLE KEYS */;
INSERT INTO `atr_users` VALUES (1,'Admin','$wp$2y$10$HTZ05yXwYYBdaa9l8U.xJOuL5Rdna8b5Qa3Fu0.l8Y5kVNE.9GloK','admin','jhonja14795@gmail.com','http://localhost/_pruebas','2020-04-12 12:46:04','',0,'Admin');
INSERT INTO `atr_users` VALUES (17,'Pruebas','$wp$2y$10$LgnqTtfoBFZDeoJzD1IXp.PXZ.ltHg8ZX6ROosdk45fwq19b.GZsy','pruebas','pruebas@pruebas.com','','2025-11-03 12:16:30','',0,'Pruebas');
INSERT INTO `atr_users` VALUES (12,'maria','$wp$2y$10$6VPDtWIJWrqQEZSe4S6lnutb1FSVvp/lZ6.MTkvbGNMLM6sGR6yRe','maria','maria@maria.com','http://maria.com','2025-10-31 20:17:13','',0,'Maria Rodriguez');
INSERT INTO `atr_users` VALUES (13,'Jorge','$wp$2y$10$2Sqr8Jl6PD88RYleEb44v.EAleAhlHWVh8ZXxKkgDkbYYFWjAykki','jorge','jorge@jorge.com','https://jorge.com','2025-10-31 20:28:54','',0,'Jorge Mendez');
INSERT INTO `atr_users` VALUES (14,'Jorge','$wp$2y$10$QVUcU2W.xzxtFLCh5oSlWepvA/fDKYq9g94ST2uzBhz0s8nVSRYYC','jorge','jorge@jorge.com','https://jorge.com','2025-10-31 20:28:54','',0,'Jorge Mendez');
INSERT INTO `atr_users` VALUES (15,'Carlos','$wp$2y$10$Xt44A1o5hCFVlVxy3bfbIeoYAXxM3VG.gO8V5520LTtNIOnH0xTLG','carlos','carlos@carlos.com','https://carlos.com','2025-10-31 20:37:26','',0,'Carlos Mendez');
/*!40000 ALTER TABLE `atr_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-17 12:27:14
