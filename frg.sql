-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 02 2015 г., 22:23
-- Версия сервера: 5.5.41-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `frg`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-07-20 20:23:50', '2015-07-20 20:23:50', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_mappress_maps`
--

CREATE TABLE IF NOT EXISTS `wp_mappress_maps` (
  `mapid` int(11) NOT NULL AUTO_INCREMENT,
  `obj` longtext,
  PRIMARY KEY (`mapid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_mappress_maps`
--

INSERT INTO `wp_mappress_maps` (`mapid`, `obj`) VALUES
(1, 'O:12:"Mappress_Map":9:{s:5:"mapid";N;s:5:"width";i:425;s:6:"height";i:350;s:4:"zoom";i:4;s:6:"center";a:2:{s:3:"lat";d:48.379432999999999;s:3:"lng";d:31.165579999999977;}s:9:"mapTypeId";s:7:"roadmap";s:5:"title";s:8:"Untitled";s:7:"metaKey";N;s:4:"pois";a:1:{i:0;O:12:"Mappress_Poi":10:{s:7:"address";s:14:"Украина";s:4:"body";s:22:"<p>380 Osborne St.</p>";s:16:"correctedAddress";s:14:"Украина";s:6:"iconid";N;s:5:"point";a:2:{s:3:"lat";d:48.379432999999999;s:3:"lng";d:31.165579999999977;}s:4:"poly";N;s:3:"kml";N;s:5:"title";s:20:"Fort Rouge Glass Ltd";s:4:"type";N;s:8:"viewport";a:2:{s:2:"sw";a:2:{s:3:"lat";d:44.386462999999999;s:3:"lng";d:22.137158900000031;}s:2:"ne";a:2:{s:3:"lat";d:52.379580999999988;s:3:"lng";d:40.228580999999963;}}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_mappress_posts`
--

CREATE TABLE IF NOT EXISTS `wp_mappress_posts` (
  `postid` int(11) NOT NULL DEFAULT '0',
  `mapid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`,`mapid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_mappress_posts`
--

INSERT INTO `wp_mappress_posts` (`postid`, `mapid`) VALUES
(114, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_ngg_album`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `sortorder` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_ngg_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `wp_ngg_gallery`
--

INSERT INTO `wp_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'home', 'home', 'wp-content/gallery/home', 'home', '', 0, 1, 1, 16),
(2, 'glass-doors', 'glass-doors', 'wp-content/gallery/glass-doors', 'Glass Doors', '', 0, 4, 1, 69),
(3, 'about-frg', 'about-frg', 'wp-content/gallery/about-frg', 'About FRG', '', 0, 0, 1, 87);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_ngg_pictures`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `alttext` mediumtext COLLATE utf8mb4_unicode_ci,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext COLLATE utf8mb4_unicode_ci,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `wp_ngg_pictures`
--

INSERT INTO `wp_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, 'home', 0, 1, 'home.png', '', 'home', '2015-07-22 17:22:08', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJob21lLnBuZyIsIndpZHRoIjo4ODQsImhlaWdodCI6NjYyLCJnZW5lcmF0ZWQiOiIwLjYyMDY4OTAwIDE0Mzc1ODU3MjgifSwid2lkdGgiOjg4NCwiaGVpZ2h0Ijo2NjIsImZ1bGwiOnsid2lkdGgiOjg4NCwiaGVpZ2h0Ijo2NjJ9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX2hvbWUucG5nIiwiZ2VuZXJhdGVkIjoiMC4wMTIzNTQwMCAxNDM3NTg1NzMwIn0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlLCJuZ2cwZHluLTIwMHgyMDB4OTAtMDBmMHcwMTBjMDEwcjExMGYxMTByMDEwdDAzanBnIjp7IndpZHRoIjoyMDAsImhlaWdodCI6MTUwLCJmaWxlbmFtZSI6ImhvbWUucG5nLW5nZ2lkMDExLW5nZzBkeW4tMjAweDIwMHg5MC0wMGYwdzAxMGMwMTByMTEwZjExMHIwMTB0MDNqcGcuanBnIiwiZ2VuZXJhdGVkIjoiMC4xMjc0MzYwMCAxNDM3NjM0MDk2In0sIm5nZzBkeW4tMHgyNTAtMDBmMHcwMTFjMDEwcjExMGYxMTByMDEwdDAxMCI6eyJ3aWR0aCI6MzM0LCJoZWlnaHQiOjI1MCwiZmlsZW5hbWUiOiJob21lLnBuZy1uZ2dpZDAxMS1uZ2cwZHluLTB4MjUwLTAwZjB3MDExYzAxMHIxMTBmMTEwcjAxMHQwMTAucG5nIiwiZ2VuZXJhdGVkIjoiMC4yMzI1OTMwMCAxNDM4NDIzOTMyIn19', 15, 1438423932),
(2, 'home1', 0, 1, 'home1.png', '', 'home1', '2015-07-22 17:22:13', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJob21lMS5wbmciLCJ3aWR0aCI6ODg0LCJoZWlnaHQiOjY2MiwiZ2VuZXJhdGVkIjoiMC4xODY1ODIwMCAxNDM3NTg1NzMzIn0sIndpZHRoIjo4ODQsImhlaWdodCI6NjYyLCJmdWxsIjp7IndpZHRoIjo4ODQsImhlaWdodCI6NjYyfSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic19ob21lMS5wbmciLCJnZW5lcmF0ZWQiOiIwLjc3MDIyMTAwIDE0Mzc1ODU3MzQifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 18, 1437585734),
(3, 'home2', 0, 1, 'home2.png', '', 'home2', '2015-07-23 10:33:03', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJob21lMi5wbmciLCJ3aWR0aCI6ODg0LCJoZWlnaHQiOjY2MiwiZ2VuZXJhdGVkIjoiMC43NzAwNzcwMCAxNDM3NjQ3NTgzIn0sIndpZHRoIjo4ODQsImhlaWdodCI6NjYyLCJmdWxsIjp7IndpZHRoIjo4ODQsImhlaWdodCI6NjYyfSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic19ob21lMi5wbmciLCJnZW5lcmF0ZWQiOiIwLjYyNzg5NTAwIDE0Mzc2NDc1ODQifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 43, 1437647584),
(4, 'dugald', 0, 2, 'dugald.png', '', 'dugald', '2015-07-26 19:36:40', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkdWdhbGQucG5nIiwid2lkdGgiOjI3MCwiaGVpZ2h0IjoyNzAsImdlbmVyYXRlZCI6IjAuNDE5MjQ3MDAgMTQzNzkzOTQwMCJ9LCJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MCwiZnVsbCI6eyJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MCwiZmlsZW5hbWUiOiJ0aHVtYnNfZHVnYWxkLnBuZyIsImdlbmVyYXRlZCI6IjAuNDEzNjQ5MDAgMTQzNzkzOTQwMSJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 68, 1437939540),
(5, 'mulvey', 0, 2, 'mulvey.png', '', 'mulvey', '2015-07-26 19:36:44', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJtdWx2ZXkucG5nIiwid2lkdGgiOjI3MCwiaGVpZ2h0IjoyNzAsImdlbmVyYXRlZCI6IjAuNjA5NDA4MDAgMTQzNzkzOTQwNCJ9LCJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MCwiZnVsbCI6eyJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MCwiZmlsZW5hbWUiOiJ0aHVtYnNfbXVsdmV5LnBuZyIsImdlbmVyYXRlZCI6IjAuNDM5MDExMDAgMTQzNzkzOTQwNSJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 71, 1437939541),
(6, 'royalwood', 0, 2, 'royalwood.png', '', 'royalwood', '2015-07-26 19:36:48', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJyb3lhbHdvb2QucG5nIiwid2lkdGgiOjI3MCwiaGVpZ2h0IjoyNzAsImdlbmVyYXRlZCI6IjAuMjM3MjU5MDAgMTQzNzkzOTQwOCJ9LCJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MCwiZnVsbCI6eyJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MCwiZmlsZW5hbWUiOiJ0aHVtYnNfcm95YWx3b29kLnBuZyIsImdlbmVyYXRlZCI6IjAuNzc1Mzg4MDAgMTQzNzkzOTQwOSJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 73, 1437939541),
(7, 'dugald-1', 0, 2, 'dugald-1.png', '', 'dugald', '2015-07-27 22:06:36', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkdWdhbGQtMS5wbmciLCJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MCwiZ2VuZXJhdGVkIjoiMC42NjgwMTIwMCAxNDM4MDM0Nzk2In0sIndpZHRoIjoyNzAsImhlaWdodCI6MjcwLCJmdWxsIjp7IndpZHRoIjoyNzAsImhlaWdodCI6MjcwfSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNzAsImhlaWdodCI6MjcwLCJmaWxlbmFtZSI6InRodW1ic19kdWdhbGQtMS5wbmciLCJnZW5lcmF0ZWQiOiIwLjcxNTU0ODAwIDE0MzgwMzQ3OTcifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 76, 1438034797),
(8, 'mulvey-1', 0, 2, 'mulvey-1.png', '', 'mulvey', '2015-07-27 22:06:40', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJtdWx2ZXktMS5wbmciLCJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MCwiZ2VuZXJhdGVkIjoiMC4yNjAzNzEwMCAxNDM4MDM0ODAwIn0sIndpZHRoIjoyNzAsImhlaWdodCI6MjcwLCJmdWxsIjp7IndpZHRoIjoyNzAsImhlaWdodCI6MjcwfSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNzAsImhlaWdodCI6MjcwLCJmaWxlbmFtZSI6InRodW1ic19tdWx2ZXktMS5wbmciLCJnZW5lcmF0ZWQiOiIwLjAwMDY1NDAwIDE0MzgwMzQ4MDEifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 78, 1438034800),
(9, 'royalwood-1', 0, 2, 'royalwood-1.png', '', 'royalwood', '2015-07-27 22:06:43', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJyb3lhbHdvb2QtMS5wbmciLCJ3aWR0aCI6MjcwLCJoZWlnaHQiOjI3MCwiZ2VuZXJhdGVkIjoiMC40MjYwOTkwMCAxNDM4MDM0ODAzIn0sIndpZHRoIjoyNzAsImhlaWdodCI6MjcwLCJmdWxsIjp7IndpZHRoIjoyNzAsImhlaWdodCI6MjcwfSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNzAsImhlaWdodCI6MjcwLCJmaWxlbmFtZSI6InRodW1ic19yb3lhbHdvb2QtMS5wbmciLCJnZW5lcmF0ZWQiOiIwLjE5MDMyMTAwIDE0MzgwMzQ4MDQifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 80, 1438034804),
(13, 'nature___waterfalls_green_beach_with_waterfalls_093916_26', 0, 3, 'Nature___Waterfalls_Green_beach_with_waterfalls_093916_26.jpg', '', 'Nature___Waterfalls_Green_beach_with_waterfalls_093916_26', '2015-08-01 10:46:06', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJOYXR1cmVfX19XYXRlcmZhbGxzX0dyZWVuX2JlYWNoX3dpdGhfd2F0ZXJmYWxsc18wOTM5MTZfMjYuanBnIiwid2lkdGgiOjEyODAsImhlaWdodCI6NzIwLCJnZW5lcmF0ZWQiOiIwLjAzOTgwMTAwIDE0Mzg0MjU5NjYifSwid2lkdGgiOjgwMCwiaGVpZ2h0Ijo0NTAsImZ1bGwiOnsid2lkdGgiOjgwMCwiaGVpZ2h0Ijo0NTAsImZpbGVuYW1lIjoiTmF0dXJlX19fV2F0ZXJmYWxsc19HcmVlbl9iZWFjaF93aXRoX3dhdGVyZmFsbHNfMDkzOTE2XzI2LmpwZyIsImdlbmVyYXRlZCI6IjAuNDQ5OTg3MDAgMTQzODQyNjEyNSJ9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI3MCwiaGVpZ2h0IjoyNzAsImZpbGVuYW1lIjoidGh1bWJzX05hdHVyZV9fX1dhdGVyZmFsbHNfR3JlZW5fYmVhY2hfd2l0aF93YXRlcmZhbGxzXzA5MzkxNl8yNi5qcGciLCJnZW5lcmF0ZWQiOiIwLjE5NTk3MjAwIDE0Mzg0MjU5NjcifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 96, 1438426125),
(14, 'nature___waterfalls_____trees_grow_in_the_river_097656_12', 0, 3, 'Nature___Waterfalls_____Trees_grow_in_the_river_097656_12.jpg', '', 'Nature___Waterfalls_____Trees_grow_in_the_river_097656_12', '2015-08-01 10:46:08', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJOYXR1cmVfX19XYXRlcmZhbGxzX19fX19UcmVlc19ncm93X2luX3RoZV9yaXZlcl8wOTc2NTZfMTIuanBnIiwid2lkdGgiOjEyODAsImhlaWdodCI6ODAwLCJnZW5lcmF0ZWQiOiIwLjgzMzcyNzAwIDE0Mzg0MjU5NjgifSwid2lkdGgiOjgwMCwiaGVpZ2h0Ijo1MDAsImZ1bGwiOnsid2lkdGgiOjgwMCwiaGVpZ2h0Ijo1MDAsImZpbGVuYW1lIjoiTmF0dXJlX19fV2F0ZXJmYWxsc19fX19fVHJlZXNfZ3Jvd19pbl90aGVfcml2ZXJfMDk3NjU2XzEyLmpwZyIsImdlbmVyYXRlZCI6IjAuNzQ1ODA1MDAgMTQzODQyNjEyNiJ9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI3MCwiaGVpZ2h0IjoyNzAsImZpbGVuYW1lIjoidGh1bWJzX05hdHVyZV9fX1dhdGVyZmFsbHNfX19fX1RyZWVzX2dyb3dfaW5fdGhlX3JpdmVyXzA5NzY1Nl8xMi5qcGciLCJnZW5lcmF0ZWQiOiIwLjY5NjQ2NDAwIDE0Mzg0MjU5NjkifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 98, 1438426126),
(15, 'nature___waterfalls_____waterfall_in_the_valley_of_the_mountains_098316_26', 0, 3, 'Nature___Waterfalls_____Waterfall_in_the_valley_of_the_mountains_098316_26.jpg', '', 'Nature___Waterfalls_____Waterfall_in_the_valley_of_the_mountains_098316_26', '2015-08-01 10:46:11', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJOYXR1cmVfX19XYXRlcmZhbGxzX19fX19XYXRlcmZhbGxfaW5fdGhlX3ZhbGxleV9vZl90aGVfbW91bnRhaW5zXzA5ODMxNl8yNi5qcGciLCJ3aWR0aCI6MTI4MCwiaGVpZ2h0Ijo3MjAsImdlbmVyYXRlZCI6IjAuMzA2OTM5MDAgMTQzODQyNTk3MSJ9LCJ3aWR0aCI6ODAwLCJoZWlnaHQiOjQ1MCwiZnVsbCI6eyJ3aWR0aCI6ODAwLCJoZWlnaHQiOjQ1MCwiZmlsZW5hbWUiOiJOYXR1cmVfX19XYXRlcmZhbGxzX19fX19XYXRlcmZhbGxfaW5fdGhlX3ZhbGxleV9vZl90aGVfbW91bnRhaW5zXzA5ODMxNl8yNi5qcGciLCJnZW5lcmF0ZWQiOiIwLjA3NzU2NzAwIDE0Mzg0MjYxMjgifSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNzAsImhlaWdodCI6MjcwLCJmaWxlbmFtZSI6InRodW1ic19OYXR1cmVfX19XYXRlcmZhbGxzX19fX19XYXRlcmZhbGxfaW5fdGhlX3ZhbGxleV9vZl90aGVfbW91bnRhaW5zXzA5ODMxNl8yNi5qcGciLCJnZW5lcmF0ZWQiOiIwLjIyNTU3NjAwIDE0Mzg0MjU5NzIifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 100, 1438426128);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3490 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://frg.loc', 'yes'),
(2, 'home', 'http://frg.loc', 'yes'),
(3, 'blogname', 'Fort Rouge Glass', 'yes'),
(4, 'blogdescription', 'Fort Rouge Glass', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@test.test', 'yes'),
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
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:47:"mappress-google-maps-for-wordpress/mappress.php";i:2;s:67:"nextgen-3d-flux-slider-template/nextgen-3D-flux-slider-template.php";i:3;s:29:"nextgen-gallery/nggallery.php";i:4;s:47:"really-simple-captcha/really-simple-captcha.php";i:5;s:24:"wordpress-seo/wp-seo.php";i:6;s:27:"wp-super-cache/wp-cache.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:77:"/var/www/html/frg.loc/wp-content/plugins/contact-form-7/wp-contact-form-7.php";i:1;s:0:"";}', 'no'),
(41, 'template', 'twentyfifteen', 'yes'),
(42, 'stylesheet', 'twentyfifteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31536', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:27:"wp-super-cache/wp-cache.php";s:23:"wpsupercache_deactivate";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:73:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:24:"NextGEN Gallery overview";b:1;s:19:"NextGEN Use TinyMCE";b:1;s:21:"NextGEN Upload images";b:1;s:22:"NextGEN Manage gallery";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:18:"NextGEN Edit album";b:1;s:20:"NextGEN Change style";b:1;s:22:"NextGEN Change options";b:1;s:24:"NextGEN Attach Interface";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:7:{i:1438543480;a:1:{s:29:"ngg_delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"ngg_custom";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1438547031;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1438560000;a:1:{s:11:"wp_cache_gc";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1438585680;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1438614896;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1438614909;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(132, '_site_transient_timeout_browser_6cd1bf1747519d254ad29f7f4df87202', '1438182897', 'yes'),
(133, '_site_transient_browser_6cd1bf1747519d254ad29f7f4df87202', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"43.0.2357.81";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(159, 'recently_activated', 'a:2:{s:31:"wp-google-maps/wpGoogleMaps.php";i:1438455913;s:67:"comprehensive-google-map-plugin/comprehensive-google-map-plugin.php";i:1438454444;}', 'yes'),
(160, 'ngg_transient_groups', 'a:9:{s:9:"__counter";i:9;s:3:"MVC";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}s:15:"col_in_wp_posts";a:2:{s:2:"id";i:3;s:7:"enabled";b:1;}s:21:"col_in_wp_ngg_gallery";a:2:{s:2:"id";i:4;s:7:"enabled";b:1;}s:22:"col_in_wp_ngg_pictures";a:2:{s:2:"id";i:5;s:7:"enabled";b:1;}s:27:"displayed_gallery_rendering";a:2:{s:2:"id";i:6;s:7:"enabled";b:1;}s:19:"col_in_wp_ngg_album";a:2:{s:2:"id";i:7;s:7:"enabled";b:1;}s:19:"displayed_galleries";a:2:{s:2:"id";i:8;s:7:"enabled";b:1;}s:24:"nextgen_pro_upgrade_page";a:2:{s:2:"id";i:9;s:7:"enabled";b:1;}}', 'yes'),
(161, 'ngg_options', 'a:72:{s:11:"gallerypath";s:19:"wp-content/gallery/";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:22:"custom_post_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";i:500;s:17:"router_param_slug";s:9:"nggallery";s:22:"router_param_separator";s:2:"--";s:19:"router_param_prefix";s:0:"";s:9:"deleteImg";b:1;s:9:"swfUpload";b:1;s:13:"usePermalinks";b:0;s:13:"permalinkSlug";s:9:"nggallery";s:14:"graphicLibrary";s:2:"gd";s:14:"imageMagickDir";s:15:"/usr/local/bin/";s:11:"useMediaRSS";b:0;s:18:"galleries_in_feeds";b:0;s:12:"activateTags";i:0;s:10:"appendType";s:4:"tags";s:9:"maxImages";i:7;s:14:"relatedHeading";s:24:"<h3>Related Images:</h3>";s:10:"thumbwidth";s:3:"270";s:11:"thumbheight";s:3:"270";s:8:"thumbfix";b:1;s:12:"thumbquality";i:100;s:8:"imgWidth";i:800;s:9:"imgHeight";i:600;s:10:"imgQuality";i:100;s:9:"imgBackup";b:1;s:13:"imgAutoResize";b:0;s:9:"galImages";s:2:"20";s:17:"galPagedGalleries";i:0;s:10:"galColumns";i:0;s:12:"galShowSlide";b:1;s:12:"galTextSlide";s:16:"[Show slideshow]";s:14:"galTextGallery";s:17:"[Show thumbnails]";s:12:"galShowOrder";s:7:"gallery";s:7:"galSort";s:9:"sortorder";s:10:"galSortDir";s:3:"ASC";s:10:"galNoPages";b:1;s:13:"galImgBrowser";i:0;s:12:"galHiddenImg";i:0;s:10:"galAjaxNav";i:0;s:11:"thumbEffect";s:8:"fancybox";s:9:"thumbCode";s:41:"class="ngg-fancybox" rel="%GALLERY_NAME%"";s:18:"thumbEffectContext";s:14:"nextgen_images";s:5:"wmPos";s:8:"botRight";s:6:"wmXpos";i:5;s:6:"wmYpos";i:5;s:6:"wmType";i:0;s:6:"wmPath";s:0:"";s:6:"wmFont";s:9:"arial.ttf";s:6:"wmSize";i:10;s:6:"wmText";s:16:"Fort Rouge Glass";s:7:"wmColor";s:7:"#000000";s:8:"wmOpaque";s:3:"100";s:7:"slideFX";s:4:"fade";s:7:"irWidth";i:600;s:8:"irHeight";i:400;s:12:"irRotatetime";i:10;s:11:"activateCSS";i:1;s:7:"CSSfile";s:13:"nggallery.css";s:22:"dynamic_thumbnail_slug";s:13:"nextgen-image";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";s:11:"installDate";i:1437585453;s:18:"thumbEffectScripts";a:1:{i:0;s:0:"";}s:17:"thumbEffectStyles";a:1:{i:0;s:0:"";}s:15:"thumbEffectCode";s:0:"";}', 'yes'),
(163, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(164, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(165, 'ngg_db_version', '1.8.1', 'yes'),
(168, 'pope_module_list', 'a:35:{i:0;s:17:"photocrati-fs|0.4";i:1;s:19:"photocrati-i18n|0.1";i:2;s:25:"photocrati-validation|0.1";i:3;s:21:"photocrati-router|0.7";i:4;s:32:"photocrati-wordpress_routing|0.6";i:5;s:23:"photocrati-security|0.2";i:6;s:31:"photocrati-nextgen_settings|0.8";i:7;s:18:"photocrati-mvc|0.5";i:8;s:19:"photocrati-ajax|0.8";i:9;s:25:"photocrati-datamapper|0.8";i:10;s:30:"photocrati-nextgen-legacy|0.14";i:11;s:28:"photocrati-nextgen-data|0.10";i:12;s:33:"photocrati-dynamic_thumbnails|0.6";i:13;s:28:"photocrati-nextgen_admin|0.9";i:14;s:39:"photocrati-nextgen_gallery_display|0.13";i:15;s:34:"photocrati-frame_communication|0.4";i:16;s:30:"photocrati-attach_to_post|0.11";i:17;s:38:"photocrati-nextgen_addgallery_page|0.6";i:18;s:36:"photocrati-nextgen_other_options|0.8";i:19;s:33:"photocrati-nextgen_pagination|0.3";i:20;s:33:"photocrati-dynamic_stylesheet|0.3";i:21;s:23:"photocrati-mediarss|0.4";i:22;s:34:"photocrati-nextgen_pro_upgrade|0.4";i:23;s:20:"photocrati-cache|0.2";i:24;s:24:"photocrati-lightbox|0.14";i:25;s:38:"photocrati-nextgen_basic_templates|0.5";i:26;s:37:"photocrati-nextgen_basic_gallery|0.13";i:27;s:42:"photocrati-nextgen_basic_imagebrowser|0.10";i:28;s:39:"photocrati-nextgen_basic_singlepic|0.11";i:29;s:38:"photocrati-nextgen_basic_tagcloud|0.11";i:30;s:35:"photocrati-nextgen_basic_album|0.10";i:31;s:21:"photocrati-widget|0.5";i:32;s:33:"photocrati-third_party_compat|0.4";i:33;s:29:"photocrati-nextgen_xmlrpc|0.4";i:34;s:20:"photocrati-wpcli|0.1";}', 'yes'),
(483, 'ng_3dfluxslider_transitions', 'a:1:{i:0;s:5:"slide";}', 'yes'),
(484, 'ng_3dfluxslider_controls', '0', 'yes'),
(485, 'ng_3dfluxslider_pagination', '1', 'yes'),
(486, 'ng_3dfluxslider_caption', '0', 'yes'),
(487, 'ng_3dfluxslider_delay', '12', 'yes'),
(564, 'theme_mods_twentyfifteen', 'a:1:{s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(567, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(805, 'db_upgraded', '', 'yes'),
(806, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.3";s:7:"version";s:5:"4.2.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1438542545;s:15:"version_checked";s:5:"4.2.3";s:12:"translations";a:0:{}}', 'yes'),
(809, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:14:"test@test.test";s:7:"version";s:5:"4.2.3";s:9:"timestamp";i:1437652081;}', 'yes'),
(815, 'can_compress_scripts', '0', 'yes'),
(850, 'category_children', 'a:0:{}', 'yes'),
(2765, 'cgmp_cache_mashup_map', '', 'yes'),
(2766, 'cgmp_cache_time_mashup_map', '', 'yes'),
(2781, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(2782, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(2783, 'wpgmza_db_version', '6.2.2', 'yes'),
(2784, 'wpgmaps_current_version', '6.2.2', 'yes'),
(2785, 'WPGMZA_OTHER_SETTINGS', 'a:1:{s:27:"wpgmza_settings_marker_pull";s:1:"0";}', 'yes'),
(2786, 'WPGMZA_FIRST_TIME', '6.2.2', 'yes'),
(2787, 'WPGMZA_SETTINGS', 'a:10:{s:24:"map_default_starting_lat";s:17:"44.41296978814959";s:24:"map_default_starting_lng";s:19:"-104.42739770019534";s:18:"map_default_height";s:3:"350";s:17:"map_default_width";s:3:"100";s:16:"map_default_zoom";i:5;s:20:"map_default_max_zoom";i:1;s:16:"map_default_type";i:1;s:21:"map_default_alignment";i:1;s:22:"map_default_width_type";s:2:"\\%";s:23:"map_default_height_type";s:2:"px";}', 'yes'),
(2796, 'mappress_options', 'a:37:{s:9:"postTypes";a:1:{i:0;s:4:"page";}s:11:"autodisplay";s:4:"none";s:10:"directions";s:6:"google";s:9:"draggable";b:1;s:17:"keyboardShortcuts";b:1;s:11:"scrollwheel";b:0;s:10:"mapTypeIds";a:4:{i:0;s:7:"roadmap";i:1;s:9:"satellite";i:2;s:7:"terrain";i:3;s:6:"hybrid";}s:14:"mapTypeControl";b:1;s:19:"mapTypeControlStyle";s:1:"0";s:10:"panControl";b:0;s:11:"zoomControl";b:1;s:16:"zoomControlStyle";s:1:"0";s:17:"streetViewControl";b:1;s:12:"scaleControl";b:0;s:18:"overviewMapControl";b:1;s:24:"overviewMapControlOpened";b:0;s:7:"transit";b:0;s:14:"initialTransit";b:0;s:7:"traffic";b:0;s:14:"initialTraffic";b:0;s:9:"bicycling";b:0;s:16:"initialBicycling";b:0;s:9:"alignment";s:0:"";s:15:"initialOpenInfo";b:0;s:8:"poiLinks";a:2:{i:0;s:4:"zoom";i:1;s:13:"directions_to";}s:8:"tooltips";b:1;s:7:"poiZoom";s:2:"15";s:8:"language";s:0:"";s:7:"country";s:0:"";s:16:"directionsServer";s:23:"https://maps.google.com";s:15:"directionsUnits";s:0:"";s:5:"sizes";a:3:{i:0;a:2:{s:5:"width";i:300;s:6:"height";i:300;}i:1;a:2:{s:5:"width";i:425;s:6:"height";i:350;}i:2;a:2:{s:5:"width";i:640;s:6:"height";i:480;}}s:4:"size";s:1:"1";s:6:"footer";b:1;s:3:"css";b:1;s:8:"mapLinks";a:0:{}s:9:"geocoders";a:1:{i:0;s:6:"google";}}', 'yes'),
(2797, 'mappress_version', '2.43.3', 'yes'),
(2843, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.2.2";}', 'yes'),
(3288, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1438541935', 'yes'),
(3289, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(3293, 'wpseo', 'a:20:{s:14:"blocking_files";a:0:{}s:26:"ignore_blog_public_warning";b:0;s:31:"ignore_meta_description_warning";b:0;s:20:"ignore_page_comments";b:0;s:16:"ignore_permalink";b:0;s:15:"ms_defaults_set";b:0;s:23:"theme_description_found";s:0:"";s:21:"theme_has_description";b:0;s:7:"version";s:5:"2.3.2";s:11:"alexaverify";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";}', 'yes'),
(3294, 'wpseo_permalinks', 'a:13:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:14:"hide-feedlinks";b:0;s:12:"hide-rsdlink";b:0;s:14:"hide-shortlink";b:0;s:16:"hide-wlwmanifest";b:0;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(3295, 'wpseo_titles', 'a:54:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:6:"noydir";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(3296, 'wpseo_social', 'a:21:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"c566b65e86ba3dfa402312941df6b33e";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:10:"googleplus";b:0;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(3297, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(3298, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(3299, 'wpseo_xml', 'a:16:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(3300, 'rewrite_rules', 'a:71:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(3301, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(3302, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(3303, 'widget_ngg-mrssw', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(3304, 'widget_slideshow', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(3305, 'widget_ngg-images', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(3306, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(3308, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(3445, '_site_transient_timeout_theme_roots', '1438543681', 'yes'),
(3446, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(3448, 'ossdl_off_cdn_url', 'http://frg.loc', 'yes'),
(3449, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(3450, 'ossdl_off_exclude', '.php', 'yes'),
(3451, 'ossdl_cname', '', 'yes'),
(3454, 'wpsupercache_start', '1438541911', 'yes'),
(3455, 'wpsupercache_count', '0', 'yes'),
(3456, 'wpsupercache_gc_time', '1438542235', 'yes'),
(3472, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1438542546;s:7:"checked";a:3:{s:13:"twentyfifteen";s:0:"";s:14:"twentyfourteen";s:3:"1.4";s:14:"twentythirteen";s:3:"1.5";}s:8:"response";a:1:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.2.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(3473, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1438542546;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.2.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.2.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"mappress-google-maps-for-wordpress/mappress.php";O:8:"stdClass":6:{s:2:"id";s:4:"7405";s:4:"slug";s:34:"mappress-google-maps-for-wordpress";s:6:"plugin";s:47:"mappress-google-maps-for-wordpress/mappress.php";s:11:"new_version";s:6:"2.43.3";s:3:"url";s:65:"https://wordpress.org/plugins/mappress-google-maps-for-wordpress/";s:7:"package";s:84:"https://downloads.wordpress.org/plugin/mappress-google-maps-for-wordpress.2.43.3.zip";}s:67:"nextgen-3d-flux-slider-template/nextgen-3D-flux-slider-template.php";O:8:"stdClass":7:{s:2:"id";s:5:"37920";s:4:"slug";s:31:"nextgen-3d-flux-slider-template";s:6:"plugin";s:67:"nextgen-3d-flux-slider-template/nextgen-3D-flux-slider-template.php";s:11:"new_version";s:5:"1.1.1";s:3:"url";s:62:"https://wordpress.org/plugins/nextgen-3d-flux-slider-template/";s:7:"package";s:80:"https://downloads.wordpress.org/plugin/nextgen-3d-flux-slider-template.1.1.1.zip";s:14:"upgrade_notice";s:19:"Fixed delay problem";}s:29:"nextgen-gallery/nggallery.php";O:8:"stdClass":6:{s:2:"id";s:3:"592";s:4:"slug";s:15:"nextgen-gallery";s:6:"plugin";s:29:"nextgen-gallery/nggallery.php";s:11:"new_version";s:5:"2.1.2";s:3:"url";s:46:"https://wordpress.org/plugins/nextgen-gallery/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/nextgen-gallery.2.1.2.zip";}s:47:"really-simple-captcha/really-simple-captcha.php";O:8:"stdClass":6:{s:2:"id";s:4:"7028";s:4:"slug";s:21:"really-simple-captcha";s:6:"plugin";s:47:"really-simple-captcha/really-simple-captcha.php";s:11:"new_version";s:7:"1.8.0.1";s:3:"url";s:52:"https://wordpress.org/plugins/really-simple-captcha/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/really-simple-captcha.1.8.0.1.zip";}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":7:{s:2:"id";s:4:"1221";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.4.4";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.4.4.zip";s:14:"upgrade_notice";s:99:"Security release fixing an XSS bug in the settings page, and fix for fatal error in output handler.";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"2.3.2";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.2.3.2.zip";}}}', 'yes'),
(3475, '_transient_random_seed', 'f41718a6e398eeff973216f07c54cbbe', 'yes'),
(3476, '_transient_timeout_2__974818834', '1438544969', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3477, '_transient_2__974818834', '{"photocrati-ajax#ajax.min.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/ajax\\/static\\/ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/css\\/gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery-ui\\/jquery-ui-1.10.4.custom.min.css","photocrati-frame_communication#frame_event_publisher.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/frame_communication\\/static\\/frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.css","photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/trigger_buttons.min.css","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails.min.js","photocrati-lightbox#lightbox_context.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/lightbox_context.min.js","|photocrati-lightbox|http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.fancybox-1.3.4.min.css","photocrati-lightbox#fancybox\\/jquery.easing-1.3.pack.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.easing-1.3.pack.js","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.pack.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.fancybox-1.3.4.pack.js","photocrati-lightbox#fancybox\\/nextgen_fancybox_init.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/nextgen_fancybox_init.min.js","photocrati-nextgen_gallery_display#fontawesome\\/font-awesome.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/fontawesome\\/font-awesome.min.css","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails.min.css","photocrati-nextgen_pagination#style.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_pagination\\/static\\/style.min.css","photocrati-nextgen_addgallery_page#browserplus-2.4.21.min.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/browserplus-2.4.21.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/moxie.min.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/moxie.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/plupload.dev.min.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/plupload.dev.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.min.css","photocrati-nextgen_addgallery_page#styles.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/styles.min.css","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.js","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.css","photocrati-nextgen_addgallery_page#media-library-import.js||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.js","photocrati-nextgen_addgallery_page#media-library-import.css||http:\\/\\/frg.loc\\/wp-content\\/plugins|http:\\/\\/frg.loc\\/wp-content\\/mu-plugins|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen|http:\\/\\/frg.loc\\/wp-content\\/themes\\/twentyfifteen":"http:\\/\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.css"}', 'no'),
(3478, '_transient_timeout_2__536483053', '1438544489', 'no'),
(3479, '_transient_2__536483053', '{"photocrati-ajax#ajax.min.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/ajax\\/static\\/ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/css\\/gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery-ui\\/jquery-ui-1.10.4.custom.min.css","photocrati-frame_communication#frame_event_publisher.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/frame_communication\\/static\\/frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.css","photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/trigger_buttons.min.css","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails.min.js","photocrati-lightbox#lightbox_context.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/lightbox_context.min.js","|photocrati-lightbox|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.fancybox-1.3.4.min.css","photocrati-lightbox#fancybox\\/jquery.easing-1.3.pack.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.easing-1.3.pack.js","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.pack.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.fancybox-1.3.4.pack.js","photocrati-lightbox#fancybox\\/nextgen_fancybox_init.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/nextgen_fancybox_init.min.js","photocrati-nextgen_gallery_display#fontawesome\\/font-awesome.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/fontawesome\\/font-awesome.min.css","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails.min.css","photocrati-nextgen_pagination#style.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_pagination\\/static\\/style.min.css","photocrati-nextgen_addgallery_page#browserplus-2.4.21.min.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/browserplus-2.4.21.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/moxie.min.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/moxie.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/plupload.dev.min.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/plupload.dev.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.min.css","photocrati-nextgen_addgallery_page#styles.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/styles.min.css","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.js","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.css","photocrati-nextgen_addgallery_page#media-library-import.js|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.js","photocrati-nextgen_addgallery_page#media-library-import.css|0":"\\/var\\/www\\/html\\/frg.loc\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.css"}', 'no'),
(3480, '_transient_timeout_3___1395736393', '1438544449', 'no'),
(3481, '_transient_3___1395736393', '["ID","post_author","post_date","post_date_gmt","post_content","post_title","post_excerpt","post_status","comment_status","ping_status","post_password","post_name","to_ping","pinged","post_modified","post_modified_gmt","post_content_filtered","post_parent","guid","menu_order","post_type","post_mime_type","comment_count"]', 'no'),
(3482, '_transient_timeout_8___596014931', '1438544450', 'no'),
(3483, '_transient_8___596014931', '{"id":null,"source":"galleries","container_ids":["3"],"album_ids":[],"tag_ids":[],"display_type":"photocrati-nextgen_basic_thumbnails","exclusions":[],"order_by":"sortorder","order_direction":"ASC","image_ids":[],"entity_ids":[],"tagcloud":false,"inner_content":"","returns":"included","slug":null,"display_settings":{"override_thumbnail_settings":"0","thumbnail_width":"240","thumbnail_height":"160","thumbnail_crop":"1","images_per_page":"20","number_of_columns":"0","ajax_pagination":"0","show_all_in_lightbox":"0","use_imagebrowser_effect":"0","show_slideshow_link":"0","slideshow_link_text":"[Show slideshow]","template":"3dfluxsliderview","use_lightbox_effect":true,"display_no_images_error":1,"disable_pagination":0,"thumbnail_quality":"100","thumbnail_watermark":0,"ngg_triggers_display":"never"},"excluded_container_ids":[],"sortorder":[],"maximum_entity_count":500,"__defaults_set":true,"_errors":[]}', 'no'),
(3484, '_transient_timeout_4___1395736393', '1438544450', 'no'),
(3485, '_transient_4___1395736393', '["gid","name","slug","path","title","galdesc","pageid","previewpic","author","extras_post_id"]', 'no'),
(3486, '_transient_timeout_5___1395736393', '1438544450', 'no'),
(3487, '_transient_5___1395736393', '["pid","image_slug","post_id","galleryid","filename","description","alttext","imagedate","exclude","sortorder","meta_data","extras_post_id","updated_at"]', 'no'),
(3488, '_transient_timeout_6__230393627', '1438544450', 'no'),
(3489, '_transient_6__230393627', '"<div id=\\"ngg-gallery-8___596014931-83\\" class=\\"3dfluxslider fluxslider\\" width=\\"100%\\" style=\\"overflow:hidden; text-align:center\\">\\r\\n\\t         <img src=\\"http:\\/\\/frg.loc\\/wp-content\\/gallery\\/about-frg\\/Nature___Waterfalls_Green_beach_with_waterfalls_093916_26.jpg\\" alt=\\"Nature___Waterfalls_Green_beach_with_waterfalls_093916_26\\" width=\\"\\" title=\\"Nature___Waterfalls_Green_beach_with_waterfalls_093916_26\\" \\/>\\r\\n \\t         <img src=\\"http:\\/\\/frg.loc\\/wp-content\\/gallery\\/about-frg\\/Nature___Waterfalls_____Trees_grow_in_the_river_097656_12.jpg\\" alt=\\"Nature___Waterfalls_____Trees_grow_in_the_river_097656_12\\" width=\\"\\" title=\\"Nature___Waterfalls_____Trees_grow_in_the_river_097656_12\\" \\/>\\r\\n \\t         <img src=\\"http:\\/\\/frg.loc\\/wp-content\\/gallery\\/about-frg\\/Nature___Waterfalls_____Waterfall_in_the_valley_of_the_mountains_098316_26.jpg\\" alt=\\"Nature___Waterfalls_____Waterfall_in_the_valley_of_the_mountains_098316_26\\" width=\\"\\" title=\\"Nature___Waterfalls_____Waterfall_in_the_valley_of_the_mountains_098316_26\\" \\/>\\r\\n \\t<\\/div>\\r\\n\\r\\n\\r\\n<script type=\\"text\\/javascript\\" defer=\\"defer\\">\\r\\n    jQuery(document).ready(function($) {\\r\\n\\r\\n        window.f = new flux.slider(''#ngg-gallery-8___596014931-83'', {\\r\\n\\r\\n            pagination:true,controls:false,captions:false,transitions: [\\"slide\\"],delay: 12000\\r\\n\\t});\\r\\n\\r\\n    });\\r\\n<\\/script>\\r\\n"', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1033 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1437633944:1'),
(92, 14, 'updated_at', '1437585727'),
(93, 14, '__defaults_set', '1'),
(94, 14, 'filter', 'raw'),
(95, 14, 'id_field', 'ID'),
(104, 16, '__defaults_set', '1'),
(105, 16, 'filter', 'raw'),
(106, 16, 'id_field', 'ID'),
(107, 17, '__defaults_set', '1'),
(108, 17, 'filter', 'raw'),
(109, 17, 'id_field', 'ID'),
(113, 18, '__defaults_set', '1'),
(114, 18, 'filter', 'raw'),
(115, 18, 'id_field', 'ID'),
(116, 1, '_edit_lock', '1437634061:1'),
(117, 1, '_edit_last', '1'),
(259, 24, 'order_by', 'sortorder'),
(260, 24, 'order_direction', 'ASC'),
(261, 24, 'returns', 'included'),
(262, 24, 'maximum_entity_count', '500'),
(263, 24, 'source', 'galleries'),
(264, 24, 'display_type', 'photocrati-nextgen_basic_slideshow'),
(265, 24, 'slug', ''),
(266, 24, '__defaults_set', '1'),
(267, 24, 'display_settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjoiNjAwIiwiZ2FsbGVyeV9oZWlnaHQiOiI0MDAiLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJjeWNsZV9pbnRlcnZhbCI6IjUiLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZWZmZWN0X2NvZGUiOiJjbGFzcz1cIm5nZy1mYW5jeWJveFwiIHJlbD1cIiVHQUxMRVJZX05BTUUlXCIiLCJzaG93X3RodW1ibmFpbF9saW5rIjoiMSIsInRodW1ibmFpbF9saW5rX3RleHQiOiJbU2hvdyB0aHVtYm5haWxzXSIsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(268, 24, 'exclusions', 'W10='),
(269, 24, 'container_ids', 'WzFd'),
(270, 24, 'excluded_container_ids', 'W10='),
(271, 24, 'sortorder', 'W10='),
(272, 24, 'entity_ids', 'W10='),
(273, 24, 'id_field', 'ID'),
(293, 27, '_menu_item_type', 'custom'),
(294, 27, '_menu_item_menu_item_parent', '0'),
(295, 27, '_menu_item_object_id', '27'),
(296, 27, '_menu_item_object', 'custom'),
(297, 27, '_menu_item_target', ''),
(298, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(299, 27, '_menu_item_xfn', ''),
(300, 27, '_menu_item_url', '/'),
(302, 28, '_menu_item_type', 'custom'),
(303, 28, '_menu_item_menu_item_parent', '0'),
(304, 28, '_menu_item_object_id', '28'),
(305, 28, '_menu_item_object', 'custom'),
(306, 28, '_menu_item_target', ''),
(307, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(308, 28, '_menu_item_xfn', ''),
(309, 28, '_menu_item_url', '#'),
(311, 29, '_menu_item_type', 'custom'),
(312, 29, '_menu_item_menu_item_parent', '0'),
(313, 29, '_menu_item_object_id', '29'),
(314, 29, '_menu_item_object', 'custom'),
(315, 29, '_menu_item_target', ''),
(316, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(317, 29, '_menu_item_xfn', ''),
(318, 29, '_menu_item_url', '#'),
(320, 30, '_menu_item_type', 'custom'),
(321, 30, '_menu_item_menu_item_parent', '0'),
(322, 30, '_menu_item_object_id', '30'),
(323, 30, '_menu_item_object', 'custom'),
(324, 30, '_menu_item_target', ''),
(325, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(326, 30, '_menu_item_xfn', ''),
(327, 30, '_menu_item_url', '#'),
(338, 32, '_menu_item_type', 'custom'),
(339, 32, '_menu_item_menu_item_parent', '0'),
(340, 32, '_menu_item_object_id', '32'),
(341, 32, '_menu_item_object', 'custom'),
(342, 32, '_menu_item_target', ''),
(343, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(344, 32, '_menu_item_xfn', ''),
(345, 32, '_menu_item_url', '#'),
(347, 33, '_menu_item_type', 'custom'),
(348, 33, '_menu_item_menu_item_parent', '0'),
(349, 33, '_menu_item_object_id', '33'),
(350, 33, '_menu_item_object', 'custom'),
(351, 33, '_menu_item_target', ''),
(352, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(353, 33, '_menu_item_xfn', ''),
(354, 33, '_menu_item_url', '#'),
(356, 34, '_menu_item_type', 'custom'),
(357, 34, '_menu_item_menu_item_parent', '0'),
(358, 34, '_menu_item_object_id', '34'),
(359, 34, '_menu_item_object', 'custom'),
(360, 34, '_menu_item_target', ''),
(361, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(362, 34, '_menu_item_xfn', ''),
(363, 34, '_menu_item_url', '#'),
(365, 35, '_menu_item_type', 'custom'),
(366, 35, '_menu_item_menu_item_parent', '0'),
(367, 35, '_menu_item_object_id', '35'),
(368, 35, '_menu_item_object', 'custom'),
(369, 35, '_menu_item_target', ''),
(370, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(371, 35, '_menu_item_xfn', ''),
(372, 35, '_menu_item_url', '#'),
(374, 36, '_menu_item_type', 'custom'),
(375, 36, '_menu_item_menu_item_parent', '0'),
(376, 36, '_menu_item_object_id', '36'),
(377, 36, '_menu_item_object', 'custom'),
(378, 36, '_menu_item_target', ''),
(379, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(380, 36, '_menu_item_xfn', ''),
(381, 36, '_menu_item_url', '#'),
(383, 37, '_menu_item_type', 'custom'),
(384, 37, '_menu_item_menu_item_parent', '0'),
(385, 37, '_menu_item_object_id', '37'),
(386, 37, '_menu_item_object', 'custom'),
(387, 37, '_menu_item_target', ''),
(388, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(389, 37, '_menu_item_xfn', ''),
(390, 37, '_menu_item_url', '#'),
(392, 38, '_menu_item_type', 'custom'),
(393, 38, '_menu_item_menu_item_parent', '0'),
(394, 38, '_menu_item_object_id', '38'),
(395, 38, '_menu_item_object', 'custom'),
(396, 38, '_menu_item_target', ''),
(397, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(398, 38, '_menu_item_xfn', ''),
(399, 38, '_menu_item_url', '#'),
(401, 39, '_menu_item_type', 'custom'),
(402, 39, '_menu_item_menu_item_parent', '0'),
(403, 39, '_menu_item_object_id', '39'),
(404, 39, '_menu_item_object', 'custom'),
(405, 39, '_menu_item_target', ''),
(406, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(407, 39, '_menu_item_xfn', ''),
(408, 39, '_menu_item_url', '#'),
(410, 40, '_menu_item_type', 'custom'),
(411, 40, '_menu_item_menu_item_parent', '0'),
(412, 40, '_menu_item_object_id', '40'),
(413, 40, '_menu_item_object', 'custom'),
(414, 40, '_menu_item_target', ''),
(415, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(416, 40, '_menu_item_xfn', ''),
(417, 40, '_menu_item_url', '#'),
(428, 42, '__defaults_set', '1'),
(429, 42, 'filter', 'raw'),
(430, 42, 'id_field', 'ID'),
(434, 43, '__defaults_set', '1'),
(435, 43, 'filter', 'raw'),
(436, 43, 'id_field', 'ID'),
(437, 44, '_edit_last', '1'),
(438, 44, '_edit_lock', '1437654331:1'),
(439, 45, '_wp_attached_file', '2015/07/why_go.png'),
(440, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:380;s:6:"height";i:200;s:4:"file";s:18:"2015/07/why_go.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"why_go-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"why_go-300x158.png";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(441, 44, '_thumbnail_id', '45'),
(444, 47, '_edit_last', '1'),
(445, 47, '_edit_lock', '1437655054:1'),
(448, 49, '_edit_last', '1'),
(449, 49, '_edit_lock', '1437680005:1'),
(452, 51, '_edit_last', '1'),
(453, 51, '_edit_lock', '1437655346:1'),
(456, 53, '_edit_last', '1'),
(457, 53, '_edit_lock', '1437920083:1'),
(460, 55, '_wp_attached_file', '2015/07/ssg.png'),
(461, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:380;s:6:"height";i:200;s:4:"file";s:15:"2015/07/ssg.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"ssg-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"ssg-300x158.png";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(462, 53, '_thumbnail_id', '55'),
(463, 56, '_edit_last', '1'),
(464, 56, '_edit_lock', '1438541661:1'),
(465, 58, '_menu_item_type', 'custom'),
(466, 58, '_menu_item_menu_item_parent', '0'),
(467, 58, '_menu_item_object_id', '58'),
(468, 58, '_menu_item_object', 'custom'),
(469, 58, '_menu_item_target', ''),
(470, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(471, 58, '_menu_item_xfn', ''),
(472, 58, '_menu_item_url', '/'),
(474, 59, '_menu_item_type', 'custom'),
(475, 59, '_menu_item_menu_item_parent', '0'),
(476, 59, '_menu_item_object_id', '59'),
(477, 59, '_menu_item_object', 'custom'),
(478, 59, '_menu_item_target', ''),
(479, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(480, 59, '_menu_item_xfn', ''),
(481, 59, '_menu_item_url', '#'),
(483, 60, '_menu_item_type', 'custom'),
(484, 60, '_menu_item_menu_item_parent', '0'),
(485, 60, '_menu_item_object_id', '60'),
(486, 60, '_menu_item_object', 'custom'),
(487, 60, '_menu_item_target', ''),
(488, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(489, 60, '_menu_item_xfn', ''),
(490, 60, '_menu_item_url', '#'),
(492, 61, '_menu_item_type', 'custom'),
(493, 61, '_menu_item_menu_item_parent', '0'),
(494, 61, '_menu_item_object_id', '61'),
(495, 61, '_menu_item_object', 'custom'),
(496, 61, '_menu_item_target', ''),
(497, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(498, 61, '_menu_item_xfn', ''),
(499, 61, '_menu_item_url', '#'),
(510, 63, '_menu_item_type', 'custom'),
(511, 63, '_menu_item_menu_item_parent', '0'),
(512, 63, '_menu_item_object_id', '63'),
(513, 63, '_menu_item_object', 'custom'),
(514, 63, '_menu_item_target', ''),
(515, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(516, 63, '_menu_item_xfn', ''),
(517, 63, '_menu_item_url', '#'),
(519, 64, '_menu_item_type', 'custom'),
(520, 64, '_menu_item_menu_item_parent', '0'),
(521, 64, '_menu_item_object_id', '64'),
(522, 64, '_menu_item_object', 'custom'),
(523, 64, '_menu_item_target', ''),
(524, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(525, 64, '_menu_item_xfn', ''),
(526, 64, '_menu_item_url', '#'),
(528, 65, '_menu_item_type', 'custom'),
(529, 65, '_menu_item_menu_item_parent', '0'),
(530, 65, '_menu_item_object_id', '65'),
(531, 65, '_menu_item_object', 'custom'),
(532, 65, '_menu_item_target', ''),
(533, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(534, 65, '_menu_item_xfn', ''),
(535, 65, '_menu_item_url', '#'),
(570, 67, '__defaults_set', '1'),
(571, 67, 'filter', 'raw'),
(572, 67, 'id_field', 'ID'),
(582, 70, '__defaults_set', '1'),
(583, 70, 'filter', 'raw'),
(584, 70, 'id_field', 'ID'),
(591, 72, '__defaults_set', '1'),
(592, 72, 'filter', 'raw'),
(593, 72, 'id_field', 'ID'),
(600, 69, '__defaults_set', '1'),
(601, 69, 'filter', 'raw'),
(602, 69, 'id_field', 'ID'),
(603, 68, '__defaults_set', '1'),
(604, 68, 'filter', 'raw'),
(605, 68, 'id_field', 'ID'),
(606, 71, '__defaults_set', '1'),
(607, 71, 'filter', 'raw'),
(608, 71, 'id_field', 'ID'),
(609, 73, '__defaults_set', '1'),
(610, 73, 'filter', 'raw'),
(611, 73, 'id_field', 'ID'),
(724, 7, 'filter', 'raw'),
(725, 7, 'meta_id', '12'),
(726, 7, 'post_id', '7'),
(727, 7, 'meta_key', 'name'),
(728, 7, 'meta_value', 'photocrati-nextgen_basic_thumbnails'),
(729, 7, 'title', 'NextGEN Basic Thumbnails'),
(730, 7, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_gallery/static/thumb_preview.jpg'),
(731, 7, 'default_source', 'galleries'),
(732, 7, 'view_order', '10000'),
(733, 7, 'name', 'photocrati-nextgen_basic_thumbnails'),
(734, 7, 'installed_at_version', '2.1.2'),
(735, 7, 'hidden_from_ui', ''),
(736, 7, '__defaults_set', '1'),
(737, 7, 'entity_types', 'WyJpbWFnZSJd'),
(738, 7, 'id_field', 'ID'),
(739, 7, 'settings', 'eyJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMSIsImltYWdlc19wZXJfcGFnZSI6IjIwIiwibnVtYmVyX29mX2NvbHVtbnMiOiIwIiwiYWpheF9wYWdpbmF0aW9uIjoiMCIsInNob3dfYWxsX2luX2xpZ2h0Ym94IjoiMCIsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjoiMCIsInNob3dfc2xpZGVzaG93X2xpbmsiOiIwIiwic2xpZGVzaG93X2xpbmtfdGV4dCI6IltTaG93IHNsaWRlc2hvd10iLCJ0ZW1wbGF0ZSI6IiIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(740, 8, 'filter', 'raw'),
(741, 8, 'meta_id', '24'),
(742, 8, 'post_id', '8'),
(743, 8, 'meta_key', 'name'),
(744, 8, 'meta_value', 'photocrati-nextgen_basic_slideshow'),
(745, 8, 'title', 'NextGEN Basic Slideshow'),
(746, 8, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_gallery/static/slideshow_preview.jpg'),
(747, 8, 'default_source', 'galleries'),
(748, 8, 'view_order', '10010'),
(749, 8, 'name', 'photocrati-nextgen_basic_slideshow'),
(750, 8, 'installed_at_version', '2.1.2'),
(751, 8, 'hidden_from_ui', ''),
(752, 8, '__defaults_set', '1'),
(753, 8, 'entity_types', 'WyJpbWFnZSJd'),
(754, 8, 'id_field', 'ID'),
(755, 8, 'settings', 'eyJnYWxsZXJ5X3dpZHRoIjoiNjAwIiwiZ2FsbGVyeV9oZWlnaHQiOiI0MDAiLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiY3ljbGVfaW50ZXJ2YWwiOiIxMCIsInNob3dfdGh1bWJuYWlsX2xpbmsiOiIxIiwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGh1bWJuYWlsX3dpZHRoIjoiMjcwIiwidGh1bWJuYWlsX2hlaWdodCI6IjI3MCIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(756, 9, 'filter', 'raw'),
(757, 9, 'meta_id', '36'),
(758, 9, 'post_id', '9'),
(759, 9, 'meta_key', 'name'),
(760, 9, 'meta_value', 'photocrati-nextgen_basic_imagebrowser'),
(761, 9, 'title', 'NextGEN Basic ImageBrowser'),
(762, 9, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_imagebrowser/static/preview.jpg'),
(763, 9, 'default_source', 'galleries'),
(764, 9, 'view_order', '10020'),
(765, 9, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(766, 9, 'installed_at_version', '2.1.2'),
(767, 9, 'hidden_from_ui', ''),
(768, 9, '__defaults_set', '1'),
(769, 9, 'entity_types', 'WyJpbWFnZSJd'),
(770, 9, 'id_field', 'ID'),
(771, 9, 'settings', 'eyJhamF4X3BhZ2luYXRpb24iOiIwIiwidGVtcGxhdGUiOiIiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(772, 10, 'filter', 'raw'),
(773, 10, 'meta_id', '49'),
(774, 10, 'post_id', '10'),
(775, 10, 'meta_key', 'name'),
(776, 10, 'meta_value', 'photocrati-nextgen_basic_singlepic'),
(777, 10, 'title', 'NextGEN Basic SinglePic'),
(778, 10, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_singlepic/static/preview.gif'),
(779, 10, 'default_source', 'galleries'),
(780, 10, 'view_order', '10060'),
(781, 10, 'hidden_from_ui', '1'),
(782, 10, 'name', 'photocrati-nextgen_basic_singlepic'),
(783, 10, 'installed_at_version', '2.1.2'),
(784, 10, '__defaults_set', '1'),
(785, 10, 'entity_types', 'WyJpbWFnZSJd'),
(786, 10, 'id_field', 'ID'),
(787, 10, 'settings', 'eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(788, 11, 'filter', 'raw'),
(789, 11, 'meta_id', '60'),
(790, 11, 'post_id', '11'),
(791, 11, 'meta_key', 'name'),
(792, 11, 'meta_value', 'photocrati-nextgen_basic_tagcloud'),
(793, 11, 'title', 'NextGEN Basic TagCloud'),
(794, 11, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_tagcloud/static/preview.gif'),
(795, 11, 'default_source', 'tags'),
(796, 11, 'view_order', '10100'),
(797, 11, 'name', 'photocrati-nextgen_basic_tagcloud'),
(798, 11, 'installed_at_version', '2.1.2'),
(799, 11, 'hidden_from_ui', ''),
(800, 11, '__defaults_set', '1'),
(801, 11, 'entity_types', 'WyJpbWFnZSJd'),
(802, 11, 'id_field', 'ID'),
(803, 11, 'settings', 'eyJudW1iZXIiOiI0NSIsImRpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(804, 12, 'filter', 'raw'),
(805, 12, 'meta_id', '72'),
(806, 12, 'post_id', '12'),
(807, 12, 'meta_key', 'name'),
(808, 12, 'meta_value', 'photocrati-nextgen_basic_compact_album'),
(809, 12, 'title', 'NextGEN Basic Compact Album'),
(810, 12, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_album/static/compact_preview.jpg'),
(811, 12, 'default_source', 'albums'),
(812, 12, 'view_order', '10200'),
(813, 12, 'name', 'photocrati-nextgen_basic_compact_album'),
(814, 12, 'installed_at_version', '2.1.2'),
(815, 12, 'hidden_from_ui', ''),
(816, 12, '__defaults_set', '1'),
(817, 12, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(818, 12, 'id_field', 'ID'),
(819, 12, 'settings', 'eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNzAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMjcwIiwidGh1bWJuYWlsX2Nyb3AiOiIwIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(820, 13, 'filter', 'raw'),
(821, 13, 'meta_id', '84'),
(822, 13, 'post_id', '13'),
(823, 13, 'meta_key', 'name'),
(824, 13, 'meta_value', 'photocrati-nextgen_basic_extended_album'),
(825, 13, 'title', 'NextGEN Basic Extended Album'),
(826, 13, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_album/static/extended_preview.jpg'),
(827, 13, 'default_source', 'albums'),
(828, 13, 'view_order', '10210'),
(829, 13, 'name', 'photocrati-nextgen_basic_extended_album'),
(830, 13, 'installed_at_version', '2.1.2'),
(831, 13, 'hidden_from_ui', ''),
(832, 13, '__defaults_set', '1'),
(833, 13, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(834, 13, 'id_field', 'ID'),
(835, 13, 'settings', 'eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(836, 75, '__defaults_set', '1'),
(837, 75, 'filter', 'raw'),
(838, 75, 'id_field', 'ID'),
(842, 76, '__defaults_set', '1'),
(843, 76, 'filter', 'raw'),
(844, 76, 'id_field', 'ID'),
(845, 77, '__defaults_set', '1'),
(846, 77, 'filter', 'raw'),
(847, 77, 'id_field', 'ID'),
(851, 78, '__defaults_set', '1'),
(852, 78, 'filter', 'raw'),
(853, 78, 'id_field', 'ID'),
(854, 79, '__defaults_set', '1'),
(855, 79, 'filter', 'raw'),
(856, 79, 'id_field', 'ID'),
(860, 80, '__defaults_set', '1'),
(861, 80, 'filter', 'raw'),
(862, 80, 'id_field', 'ID'),
(863, 81, '_menu_item_type', 'post_type'),
(864, 81, '_menu_item_menu_item_parent', '0'),
(865, 81, '_menu_item_object_id', '56'),
(866, 81, '_menu_item_object', 'page'),
(867, 81, '_menu_item_target', ''),
(868, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(869, 81, '_menu_item_xfn', ''),
(870, 81, '_menu_item_url', ''),
(872, 82, '_menu_item_type', 'post_type'),
(873, 82, '_menu_item_menu_item_parent', '0'),
(874, 82, '_menu_item_object_id', '56'),
(875, 82, '_menu_item_object', 'page'),
(876, 82, '_menu_item_target', ''),
(877, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(878, 82, '_menu_item_xfn', ''),
(879, 82, '_menu_item_url', ''),
(880, 83, '_edit_last', '1'),
(881, 83, '_edit_lock', '1438458628:1'),
(882, 15, '__defaults_set', '1'),
(883, 15, 'filter', 'raw'),
(884, 15, 'id_field', 'ID'),
(885, 85, '__defaults_set', '1'),
(886, 85, 'filter', 'raw'),
(887, 85, 'id_field', 'ID'),
(897, 88, '__defaults_set', '1'),
(898, 88, 'filter', 'raw'),
(899, 88, 'id_field', 'ID'),
(906, 90, '__defaults_set', '1'),
(907, 90, 'filter', 'raw'),
(908, 90, 'id_field', 'ID'),
(918, 95, '__defaults_set', '1'),
(919, 95, 'filter', 'raw'),
(920, 95, 'id_field', 'ID'),
(927, 97, '__defaults_set', '1'),
(928, 97, 'filter', 'raw'),
(929, 97, 'id_field', 'ID'),
(936, 99, '__defaults_set', '1'),
(937, 99, 'filter', 'raw'),
(938, 99, 'id_field', 'ID'),
(945, 87, '__defaults_set', '1'),
(946, 87, 'filter', 'raw'),
(947, 87, 'id_field', 'ID'),
(957, 96, '__defaults_set', '1'),
(958, 96, 'filter', 'raw'),
(959, 96, 'id_field', 'ID'),
(960, 98, '__defaults_set', '1'),
(961, 98, 'filter', 'raw'),
(962, 98, 'id_field', 'ID'),
(963, 100, '__defaults_set', '1'),
(964, 100, 'filter', 'raw'),
(965, 100, 'id_field', 'ID'),
(966, 105, '_edit_last', '1'),
(967, 105, '_edit_lock', '1438437763:1'),
(968, 106, '_wp_attached_file', '2015/08/about_gal.png'),
(969, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:380;s:6:"height";i:200;s:4:"file";s:21:"2015/08/about_gal.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"about_gal-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"about_gal-300x158.png";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(970, 105, '_thumbnail_id', '106'),
(973, 108, '_edit_last', '1'),
(974, 108, '_edit_lock', '1438438117:1'),
(975, 109, '_wp_attached_file', '2015/08/about_request.png'),
(976, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:380;s:6:"height";i:200;s:4:"file";s:25:"2015/08/about_request.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"about_request-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"about_request-300x158.png";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(977, 108, '_thumbnail_id', '109'),
(980, 111, '_edit_last', '1'),
(981, 111, '_edit_lock', '1438443278:1'),
(982, 112, '_wp_attached_file', '2015/08/ask.png'),
(983, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:380;s:6:"height";i:200;s:4:"file";s:15:"2015/08/ask.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"ask-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"ask-300x158.png";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(984, 111, '_thumbnail_id', '112'),
(987, 114, '_edit_last', '1'),
(988, 114, '_edit_lock', '1438517524:1'),
(989, 116, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(990, 116, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:31:"[your-name] <wordpress@frg.loc>";s:4:"body";s:168:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Fort Rouge Glass (http://frg.loc)";s:9:"recipient";s:14:"test@test.test";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(991, 116, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:36:"Fort Rouge Glass <wordpress@frg.loc>";s:4:"body";s:110:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Fort Rouge Glass (http://frg.loc)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:24:"Reply-To: test@test.test";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(992, 116, '_messages', 'a:8:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";}'),
(993, 116, '_additional_settings', ''),
(994, 116, '_locale', 'en_US'),
(995, 117, '_form', '<div class=''row''>\n<div class=''col-lg-4 col-md-12 col-sm-4''>\nName<br />\n    [text* your-name]\n</div>\n\n<div class=''col-lg-4 col-md-12 col-sm-4''>\nEmail to Reply<br />\n    [email* your-email]\n</div>\n<div class=''col-lg-4 col-md-12 col-sm-4''>\nPhone (Optional)<br />\n[text phone]\n</div>\n</div>\n\n<div>Address (Optional)<br />\n    [text address] </div>\n\n<div>How can we help?<br />\n    [textarea message] </div>\n<div class=''contact-captcha''>\nHuman Verefication<br />\n[captchac captcha id:captcha-img] [captchar captcha id:captcha-field]\n</div>\n\n<div class=''contact-submit''>\n[submit "Submit"]\n</div>'),
(996, 117, '_mail', 'a:8:{s:7:"subject";s:11:"[your-name]";s:6:"sender";s:31:"[your-name] <wordpress@frg.loc>";s:4:"body";s:163:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[message]\n\n--\nThis e-mail was sent from a contact form on Fort Rouge Glass (http://frg.loc)";s:9:"recipient";s:14:"test@test.test";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(997, 117, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:36:"Fort Rouge Glass <wordpress@frg.loc>";s:4:"body";s:110:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Fort Rouge Glass (http://frg.loc)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:24:"Reply-To: test@test.test";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(998, 117, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";}'),
(999, 117, '_additional_settings', ''),
(1000, 117, '_locale', 'en_US'),
(1001, 114, 'Address', '380 Osborne Street Sothh,\r\n Winnipeg, MB R3L 1Z8'),
(1002, 114, 'Phone', '204-475-2774'),
(1003, 114, 'Time', 'Mon-Fri 8am - 5pm'),
(1004, 114, 'Fax', '204-287-8016'),
(1005, 114, 'Email', 'info@frg.ca'),
(1006, 121, '_menu_item_type', 'post_type'),
(1007, 121, '_menu_item_menu_item_parent', '0'),
(1008, 121, '_menu_item_object_id', '114'),
(1009, 121, '_menu_item_object', 'page'),
(1010, 121, '_menu_item_target', ''),
(1011, 121, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1012, 121, '_menu_item_xfn', ''),
(1013, 121, '_menu_item_url', ''),
(1015, 122, '_menu_item_type', 'post_type'),
(1016, 122, '_menu_item_menu_item_parent', '0'),
(1017, 122, '_menu_item_object_id', '114'),
(1018, 122, '_menu_item_object', 'page'),
(1019, 122, '_menu_item_target', ''),
(1020, 122, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1021, 122, '_menu_item_xfn', ''),
(1022, 122, '_menu_item_url', ''),
(1024, 123, '_menu_item_type', 'post_type'),
(1025, 123, '_menu_item_menu_item_parent', '0'),
(1026, 123, '_menu_item_object_id', '83'),
(1027, 123, '_menu_item_object', 'page'),
(1028, 123, '_menu_item_target', ''),
(1029, 123, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1030, 123, '_menu_item_xfn', ''),
(1031, 123, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=124 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-07-20 20:23:50', '2015-07-20 20:23:50', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n[nggallery id=1 template="3dfluxsliderview"]', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-07-23 06:48:56', '2015-07-23 06:48:56', '', 0, 'http://frg.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2015-07-20 20:23:50', '2015-07-20 20:23:50', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://frg.loc/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-07-20 20:23:50', '2015-07-20 20:23:50', '', 0, 'http://frg.loc/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-07-22 15:16:08', '2015-07-22 15:16:08', 'Fort Rouge Glass is a Winnipeg custom glass company for both residential &amp; commerical customers, as well as complete auto glass replacement in Winnipeg &amp; repair services. Use our website to view our array of stunning custom glass work from bathroom products such as custom shower enclosures and bathroom backsplashes to other residential glass products such as our kitchen backsplashes, custom glass railings or a custom mirror built here at our facility to the exact measurements you need for that perfect addition to your home decor. We also provide Winnipeg auto glass services for windshield replacement and commercial and residential glass repair services for doors and windows.', 'Welcome', '', 'publish', 'open', 'open', '', 'wellcome', '', '', '2015-07-22 15:19:36', '2015-07-22 15:19:36', '', 0, 'http://frg.loc/?p=4', 0, 'post', '', 0),
(5, 1, '2015-07-22 15:16:08', '2015-07-22 15:16:08', 'Fort Rouge Glass is a Winnipeg custom glass company for both residential &amp; commerical customers, as well as complete auto glass replacement in Winnipeg &amp; repair services. Use our website to view our array of stunning custom glass work from bathroom products such as custom shower enclosures and bathroom backsplashes to other residential glass products such as our kitchen backsplashes, custom glass railings or a custom mirror built here at our facility to the exact measurements you need for that perfect addition to your home decor. We also provide Winnipeg auto glass services for windshield replacement and commercial and residential glass repair services for doors and windows.', 'Wellcome', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-07-22 15:16:08', '2015-07-22 15:16:08', '', 4, 'http://frg.loc/2015/07/22/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2015-07-22 15:19:36', '2015-07-22 15:19:36', 'Fort Rouge Glass is a Winnipeg custom glass company for both residential &amp; commerical customers, as well as complete auto glass replacement in Winnipeg &amp; repair services. Use our website to view our array of stunning custom glass work from bathroom products such as custom shower enclosures and bathroom backsplashes to other residential glass products such as our kitchen backsplashes, custom glass railings or a custom mirror built here at our facility to the exact measurements you need for that perfect addition to your home decor. We also provide Winnipeg auto glass services for windshield replacement and commercial and residential glass repair services for doors and windows.', 'Welcome', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-07-22 15:19:36', '2015-07-22 15:19:36', '', 4, 'http://frg.loc/2015/07/22/4-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-07-22 17:16:36', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTIiLCJwb3N0X2lkIjoiNyIsIm1ldGFfa2V5IjoibmFtZSIsIm1ldGFfdmFsdWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBUaHVtYm5haWxzIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcL3N0YXRpY1wvdGh1bWJfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDAwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4yIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6IjAiLCJhamF4X3BhZ2luYXRpb24iOiIwIiwic2hvd19hbGxfaW5fbGlnaHRib3giOiIwIiwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOiIwIiwic2hvd19zbGlkZXNob3dfbGluayI6IjAiLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Thumbnails', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-27 21:50:56', '2015-07-27 21:50:56', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTIiLCJwb3N0X2lkIjoiNyIsIm1ldGFfa2V5IjoibmFtZSIsIm1ldGFfdmFsdWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBUaHVtYm5haWxzIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcL3N0YXRpY1wvdGh1bWJfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDAwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4yIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6IjAiLCJhamF4X3BhZ2luYXRpb24iOiIwIiwic2hvd19hbGxfaW5fbGlnaHRib3giOiIwIiwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOiIwIiwic2hvd19zbGlkZXNob3dfbGluayI6IjAiLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?post_type=display_type&#038;p=7', 0, 'display_type', '', 0),
(8, 1, '2015-07-22 17:16:36', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjQiLCJwb3N0X2lkIjoiOCIsIm1ldGFfa2V5IjoibmFtZSIsIm1ldGFfdmFsdWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93IiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIFNsaWRlc2hvdyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19nYWxsZXJ5XC9zdGF0aWNcL3NsaWRlc2hvd19wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93IiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJnYWxsZXJ5X3dpZHRoIjoiNjAwIiwiZ2FsbGVyeV9oZWlnaHQiOiI0MDAiLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiY3ljbGVfaW50ZXJ2YWwiOiIxMCIsInNob3dfdGh1bWJuYWlsX2xpbmsiOiIxIiwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGh1bWJuYWlsX3dpZHRoIjoiMjcwIiwidGh1bWJuYWlsX2hlaWdodCI6IjI3MCIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Slideshow', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-27 21:50:57', '2015-07-27 21:50:57', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMjQiLCJwb3N0X2lkIjoiOCIsIm1ldGFfa2V5IjoibmFtZSIsIm1ldGFfdmFsdWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93IiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIFNsaWRlc2hvdyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19nYWxsZXJ5XC9zdGF0aWNcL3NsaWRlc2hvd19wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93IiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJnYWxsZXJ5X3dpZHRoIjoiNjAwIiwiZ2FsbGVyeV9oZWlnaHQiOiI0MDAiLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiY3ljbGVfaW50ZXJ2YWwiOiIxMCIsInNob3dfdGh1bWJuYWlsX2xpbmsiOiIxIiwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGh1bWJuYWlsX3dpZHRoIjoiMjcwIiwidGh1bWJuYWlsX2hlaWdodCI6IjI3MCIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?post_type=display_type&#038;p=8', 0, 'display_type', '', 0),
(9, 1, '2015-07-22 17:16:37', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMzYiLCJwb3N0X2lkIjoiOSIsIm1ldGFfa2V5IjoibmFtZSIsIm1ldGFfdmFsdWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIEltYWdlQnJvd3NlciIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXJcL3N0YXRpY1wvcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjIiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiYWpheF9wYWdpbmF0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic ImageBrowser', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-27 21:50:57', '2015-07-27 21:50:57', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMzYiLCJwb3N0X2lkIjoiOSIsIm1ldGFfa2V5IjoibmFtZSIsIm1ldGFfdmFsdWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIEltYWdlQnJvd3NlciIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXJcL3N0YXRpY1wvcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjIiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiYWpheF9wYWdpbmF0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://frg.loc/?post_type=display_type&#038;p=9', 0, 'display_type', '', 0),
(10, 1, '2015-07-22 17:16:37', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiNDkiLCJwb3N0X2lkIjoiMTAiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBTaW5nbGVQaWMiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfc2luZ2xlcGljXC9zdGF0aWNcL3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDA2MCwiaGlkZGVuX2Zyb21fdWkiOnRydWUsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic SinglePic', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-27 21:50:57', '2015-07-27 21:50:57', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiNDkiLCJwb3N0X2lkIjoiMTAiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBTaW5nbGVQaWMiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfc2luZ2xlcGljXC9zdGF0aWNcL3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDA2MCwiaGlkZGVuX2Zyb21fdWkiOnRydWUsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?post_type=display_type&#038;p=10', 0, 'display_type', '', 0),
(11, 1, '2015-07-22 17:16:37', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiNjAiLCJwb3N0X2lkIjoiMTEiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIFRhZ0Nsb3VkIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkXC9zdGF0aWNcL3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJ0YWdzIiwidmlld19vcmRlciI6MTAxMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGFnY2xvdWQiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4yIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im51bWJlciI6IjQ1IiwiZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic TagCloud', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-27 21:50:58', '2015-07-27 21:50:58', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiNjAiLCJwb3N0X2lkIjoiMTEiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIFRhZ0Nsb3VkIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkXC9zdGF0aWNcL3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJ0YWdzIiwidmlld19vcmRlciI6MTAxMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGFnY2xvdWQiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4yIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im51bWJlciI6IjQ1IiwiZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?post_type=display_type&#038;p=11', 0, 'display_type', '', 0),
(12, 1, '2015-07-22 17:16:37', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiNzIiLCJwb3N0X2lkIjoiMTIiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfYWxidW1cL3N0YXRpY1wvY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjIiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcmllc19wZXJfcGFnZSI6IjAiLCJlbmFibGVfYnJlYWRjcnVtYnMiOiIxIiwidGVtcGxhdGUiOiIiLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjcwIiwidGh1bWJuYWlsX2hlaWdodCI6IjI3MCIsInRodW1ibmFpbF9jcm9wIjoiMCIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Compact Album', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-27 21:50:58', '2015-07-27 21:50:58', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiNzIiLCJwb3N0X2lkIjoiMTIiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfYWxidW1cL3N0YXRpY1wvY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjIiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcmllc19wZXJfcGFnZSI6IjAiLCJlbmFibGVfYnJlYWRjcnVtYnMiOiIxIiwidGVtcGxhdGUiOiIiLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjcwIiwidGh1bWJuYWlsX2hlaWdodCI6IjI3MCIsInRodW1ibmFpbF9jcm9wIjoiMCIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://frg.loc/?post_type=display_type&#038;p=12', 0, 'display_type', '', 0),
(13, 1, '2015-07-22 17:16:37', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiODQiLCJwb3N0X2lkIjoiMTMiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIEV4dGVuZGVkIEFsYnVtIiwiZW50aXR5X3R5cGVzIjpbImFsYnVtIiwiZ2FsbGVyeSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19hbGJ1bVwvc3RhdGljXC9leHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4yIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7ImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOiIwIiwiZW5hYmxlX2JyZWFkY3J1bWJzIjoiMSIsInRlbXBsYXRlIjoiIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjoiMCIsInRodW1ibmFpbF93aWR0aCI6IjI0MCIsInRodW1ibmFpbF9oZWlnaHQiOiIxNjAiLCJ0aHVtYm5haWxfY3JvcCI6IjEiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic Extended Album', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-27 21:50:58', '2015-07-27 21:50:58', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiODQiLCJwb3N0X2lkIjoiMTMiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIEV4dGVuZGVkIEFsYnVtIiwiZW50aXR5X3R5cGVzIjpbImFsYnVtIiwiZ2FsbGVyeSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19hbGJ1bVwvc3RhdGljXC9leHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4yIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7ImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOiIwIiwiZW5hYmxlX2JyZWFkY3J1bWJzIjoiMSIsInRlbXBsYXRlIjoiIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjoiMCIsInRodW1ibmFpbF93aWR0aCI6IjI0MCIsInRodW1ibmFpbF9oZWlnaHQiOiIxNjAiLCJ0aHVtYm5haWxfY3JvcCI6IjEiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://frg.loc/?post_type=display_type&#038;p=13', 0, 'display_type', '', 0),
(14, 1, '2015-07-22 17:22:07', '0000-00-00 00:00:00', 'eyJ1cGRhdGVkX2F0IjoxNDM3NTg1NzI3LCJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-22 17:22:07', '0000-00-00 00:00:00', 'eyJ1cGRhdGVkX2F0IjoxNDM3NTg1NzI3LCJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=14', 0, 'ngg_pictures', '', 0),
(15, 1, '2015-08-01 10:12:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:12:12', '2015-08-01 10:12:12', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=15', 0, 'ngg_pictures', '', 0),
(16, 1, '2015-07-22 17:22:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-22 17:22:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=16', 0, 'ngg_gallery', '', 0),
(17, 1, '2015-07-22 17:22:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-22 17:22:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=17', 0, 'ngg_pictures', '', 0),
(18, 1, '2015-07-22 17:22:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-22 17:22:14', '2015-07-22 17:22:14', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=18', 0, 'ngg_pictures', '', 0),
(19, 1, '2015-07-22 17:26:46', '2015-07-22 17:26:46', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n[ nggallery id=1 ]', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-07-22 17:26:46', '2015-07-22 17:26:46', '', 1, 'http://frg.loc/2015/07/22/1-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2015-07-22 17:28:33', '2015-07-22 17:28:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n[nggallery id=1]', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-07-22 17:28:33', '2015-07-22 17:28:33', '', 1, 'http://frg.loc/2015/07/22/1-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2015-07-22 19:33:43', '2015-07-22 19:33:43', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\n\n&nbsp;', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-autosave-v1', '', '', '2015-07-22 19:33:43', '2015-07-22 19:33:43', '', 1, 'http://frg.loc/2015/07/22/1-autosave-v1/', 0, 'revision', '', 0),
(22, 1, '2015-07-22 17:29:42', '2015-07-22 17:29:42', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n[nggallery id=1 template=carousel]', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-07-22 17:29:42', '2015-07-22 17:29:42', '', 1, 'http://frg.loc/2015/07/22/1-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2015-07-22 19:25:56', '2015-07-22 19:25:56', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n[slideshow id=1]', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-07-22 19:25:56', '2015-07-22 19:25:56', '', 1, 'http://frg.loc/2015/07/22/1-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2015-07-22 19:51:09', '0000-00-00 00:00:00', 'eyJkaXNwbGF5X3NldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOiI2MDAiLCJnYWxsZXJ5X2hlaWdodCI6IjQwMCIsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoiNSIsImN5Y2xlX2VmZmVjdCI6ImZhZGUiLCJlZmZlY3RfY29kZSI6ImNsYXNzPVwibmdnLWZhbmN5Ym94XCIgcmVsPVwiJUdBTExFUllfTkFNRSVcIiIsInNob3dfdGh1bWJuYWlsX2xpbmsiOiIxIiwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sIm9yZGVyX2J5Ijoic29ydG9yZGVyIiwib3JkZXJfZGlyZWN0aW9uIjoiQVNDIiwiZXhjbHVzaW9ucyI6W10sImNvbnRhaW5lcl9pZHMiOlsxXSwiZXhjbHVkZWRfY29udGFpbmVyX2lkcyI6W10sInNvcnRvcmRlciI6W10sImVudGl0eV9pZHMiOltdLCJyZXR1cm5zIjoiaW5jbHVkZWQiLCJtYXhpbXVtX2VudGl0eV9jb3VudCI6NTAwLCJzb3VyY2UiOiJnYWxsZXJpZXMiLCJkaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93Iiwic2x1ZyI6bnVsbCwiaWRfZmllbGQiOiJJRCIsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'Untitled displayed_gallery', '', 'draft', 'closed', 'open', '', '', '', '', '2015-07-22 19:51:09', '2015-07-22 19:51:09', 'eyJkaXNwbGF5X3NldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOiI2MDAiLCJnYWxsZXJ5X2hlaWdodCI6IjQwMCIsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoiNSIsImN5Y2xlX2VmZmVjdCI6ImZhZGUiLCJlZmZlY3RfY29kZSI6ImNsYXNzPVwibmdnLWZhbmN5Ym94XCIgcmVsPVwiJUdBTExFUllfTkFNRSVcIiIsInNob3dfdGh1bWJuYWlsX2xpbmsiOiIxIiwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sIm9yZGVyX2J5Ijoic29ydG9yZGVyIiwib3JkZXJfZGlyZWN0aW9uIjoiQVNDIiwiZXhjbHVzaW9ucyI6W10sImNvbnRhaW5lcl9pZHMiOlsxXSwiZXhjbHVkZWRfY29udGFpbmVyX2lkcyI6W10sInNvcnRvcmRlciI6W10sImVudGl0eV9pZHMiOltdLCJyZXR1cm5zIjoiaW5jbHVkZWQiLCJtYXhpbXVtX2VudGl0eV9jb3VudCI6NTAwLCJzb3VyY2UiOiJnYWxsZXJpZXMiLCJkaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93Iiwic2x1ZyI6bnVsbCwiaWRfZmllbGQiOiJJRCIsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://frg.loc/?p=24', 0, 'displayed_gallery', '', 0),
(25, 1, '2015-07-22 19:33:52', '2015-07-22 19:33:52', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n<img class="ngg_displayed_gallery mceItem" src="http://frg.loc/nextgen-attach_to_post/preview/id--24" alt="" data-mce-placeholder="1" />', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-07-22 19:33:52', '2015-07-22 19:33:52', '', 1, 'http://frg.loc/2015/07/22/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2015-07-23 06:48:56', '2015-07-23 06:48:56', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n[nggallery id=1 template="3dfluxsliderview"]', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-07-23 06:48:56', '2015-07-23 06:48:56', '', 1, 'http://frg.loc/2015/07/23/1-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-07-23 07:40:37', '2015-07-23 07:40:37', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-07-30 18:02:26', '2015-07-30 18:02:26', '', 0, 'http://frg.loc/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2015-07-23 07:40:37', '2015-07-23 07:40:37', '', 'Showers', '', 'publish', 'open', 'open', '', 'showers', '', '', '2015-07-30 18:02:26', '2015-07-30 18:02:26', '', 0, 'http://frg.loc/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2015-07-23 07:40:37', '2015-07-23 07:40:37', '', 'Mirrors', '', 'publish', 'open', 'open', '', 'mirrors', '', '', '2015-07-30 18:02:26', '2015-07-30 18:02:26', '', 0, 'http://frg.loc/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2015-07-23 07:40:37', '2015-07-23 07:40:37', '', 'Railings & Staircasese', '', 'publish', 'open', 'open', '', 'railings-staircasese', '', '', '2015-07-30 18:02:26', '2015-07-30 18:02:26', '', 0, 'http://frg.loc/?p=30', 4, 'nav_menu_item', '', 0),
(32, 1, '2015-07-23 07:40:38', '2015-07-23 07:40:38', '', 'Partitions', '', 'publish', 'open', 'open', '', 'partitions', '', '', '2015-07-30 18:02:27', '2015-07-30 18:02:27', '', 0, 'http://frg.loc/?p=32', 6, 'nav_menu_item', '', 0),
(33, 1, '2015-07-23 07:40:38', '2015-07-23 07:40:38', '', 'Backspalshes', '', 'publish', 'open', 'open', '', 'backspalshes', '', '', '2015-07-30 18:02:27', '2015-07-30 18:02:27', '', 0, 'http://frg.loc/?p=33', 7, 'nav_menu_item', '', 0),
(34, 1, '2015-07-23 07:40:38', '2015-07-23 07:40:38', '', 'Custom Solutions', '', 'publish', 'open', 'open', '', 'custom-solutions', '', '', '2015-07-30 18:02:27', '2015-07-30 18:02:27', '', 0, 'http://frg.loc/?p=34', 8, 'nav_menu_item', '', 0),
(35, 1, '2015-07-23 07:43:52', '2015-07-23 07:43:52', '', 'About Us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2015-08-02 12:15:00', '2015-08-02 12:15:00', '', 0, 'http://frg.loc/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2015-07-23 07:43:52', '2015-07-23 07:43:52', '', 'Windows & Doors', '', 'publish', 'open', 'open', '', 'windows-doors', '', '', '2015-08-02 12:15:01', '2015-08-02 12:15:01', '', 0, 'http://frg.loc/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2015-07-23 07:43:52', '2015-07-23 07:43:52', '', 'Auto Glass', '', 'publish', 'open', 'open', '', 'auto-glass', '', '', '2015-08-02 12:15:01', '2015-08-02 12:15:01', '', 0, 'http://frg.loc/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2015-07-23 07:43:52', '2015-07-23 07:43:52', '', 'Glass Rapairs', '', 'publish', 'open', 'open', '', 'glass-rapairs', '', '', '2015-08-02 12:15:01', '2015-08-02 12:15:01', '', 0, 'http://frg.loc/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2015-07-23 07:43:52', '2015-07-23 07:43:52', '', 'Other Products', '', 'publish', 'open', 'open', '', 'other-products', '', '', '2015-08-02 12:15:01', '2015-08-02 12:15:01', '', 0, 'http://frg.loc/?p=39', 5, 'nav_menu_item', '', 0),
(40, 1, '2015-07-23 07:43:52', '2015-07-23 07:43:52', '', 'Request a Quote', '', 'publish', 'open', 'open', '', 'request-a-quote', '', '', '2015-08-02 12:15:01', '2015-08-02 12:15:01', '', 0, 'http://frg.loc/?p=40', 6, 'nav_menu_item', '', 0),
(42, 1, '2015-07-23 10:33:03', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-23 10:33:03', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=42', 0, 'ngg_pictures', '', 0),
(43, 1, '2015-07-23 10:33:04', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-23 10:33:04', '2015-07-23 10:33:04', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=43', 0, 'ngg_pictures', '', 0),
(44, 1, '2015-07-23 11:59:42', '2015-07-23 11:59:42', 'Fort Rouge Glass works with many of the leading Home Builders, Property Management Companies and Private Companies throughtout Winnipeg for a variety of custom glass &amp; aluminum needs and glass repairs and service work. Click the link to our Commercial page for our full list of services', 'Why go with frg?', '', 'publish', 'open', 'open', '', 'why-go-with-frg', '', '', '2015-07-23 11:59:42', '2015-07-23 11:59:42', '', 0, 'http://frg.loc/?p=44', 0, 'post', '', 0),
(45, 1, '2015-07-23 11:59:17', '2015-07-23 11:59:17', '', 'why_go', '', 'inherit', 'open', 'open', '', 'why_go', '', '', '2015-07-23 11:59:17', '2015-07-23 11:59:17', '', 44, 'http://frg.loc/wp-content/uploads/2015/07/why_go.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2015-07-23 11:59:42', '2015-07-23 11:59:42', 'Fort Rouge Glass works with many of the leading Home Builders, Property Management Companies and Private Companies throughtout Winnipeg for a variety of custom glass &amp; aluminum needs and glass repairs and service work. Click the link to our Commercial page for our full list of services', 'Why go with frg?', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-07-23 11:59:42', '2015-07-23 11:59:42', '', 44, 'http://frg.loc/2015/07/23/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-07-23 12:39:48', '2015-07-23 12:39:48', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.<!--more--> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.', 'New 1', '', 'publish', 'open', 'open', '', 'new-1', '', '', '2015-07-23 12:39:48', '2015-07-23 12:39:48', '', 0, 'http://frg.loc/?p=47', 0, 'post', '', 0),
(48, 1, '2015-07-23 12:39:48', '2015-07-23 12:39:48', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.<!--more--> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.', 'New 1', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-07-23 12:39:48', '2015-07-23 12:39:48', '', 47, 'http://frg.loc/2015/07/23/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2015-07-23 12:42:41', '2015-07-23 12:42:41', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.<!--more-->Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'New 2', '', 'publish', 'open', 'open', '', 'new-2', '', '', '2015-07-23 12:42:41', '2015-07-23 12:42:41', '', 0, 'http://frg.loc/?p=49', 0, 'post', '', 0),
(50, 1, '2015-07-23 12:42:41', '2015-07-23 12:42:41', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.<!--more-->Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'New 2', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-07-23 12:42:41', '2015-07-23 12:42:41', '', 49, 'http://frg.loc/2015/07/23/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2015-07-23 12:44:43', '2015-07-23 12:44:43', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum''''.<!--more--> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum''''', 'New 3', '', 'publish', 'open', 'open', '', 'new-3', '', '', '2015-07-23 12:44:43', '2015-07-23 12:44:43', '', 0, 'http://frg.loc/?p=51', 0, 'post', '', 0),
(52, 1, '2015-07-23 12:44:43', '2015-07-23 12:44:43', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum''''.<!--more--> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum''''', 'New 3', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-23 12:44:43', '2015-07-23 12:44:43', '', 51, 'http://frg.loc/2015/07/23/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-07-23 13:48:13', '2015-07-23 13:48:13', 'SSG Notion is the industry leader in modern staircases and railings in Manitoba.  SSG relies on the expertise of its European craftsmen to create and install cutting edge designs for contemporary and transitional settings.', 'SSG notion', '', 'publish', 'open', 'open', '', 'ssg-notion', '', '', '2015-07-23 13:55:29', '2015-07-23 13:55:29', '', 0, 'http://frg.loc/?p=53', 0, 'post', '', 0),
(54, 1, '2015-07-23 13:48:13', '2015-07-23 13:48:13', 'SSG Notion is the industry leader in modern staircases and railings in Manitoba.  SSG relies on the expertise of its European craftsmen to create and install cutting edge designs for contemporary and transitional settings.', 'SSG notion', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-07-23 13:48:13', '2015-07-23 13:48:13', '', 53, 'http://frg.loc/2015/07/23/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2015-07-23 13:55:23', '2015-07-23 13:55:23', '', 'ssg', '', 'inherit', 'open', 'open', '', 'ssg', '', '', '2015-07-23 13:55:23', '2015-07-23 13:55:23', '', 53, 'http://frg.loc/wp-content/uploads/2015/07/ssg.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2015-07-26 16:35:02', '2015-07-26 16:35:02', 'We offer a variety of glass doors for interior or exterior use. Nothing says a modern quite loke a framless glass door. They are an excellent way to add a modern touch to a traditional home or cap off contemporary build. All our doors are made with 10mm tempered safety glass and can with frames or frameless. Whether you are interested in frameless glass pivot door or an ulyta-modern sliding glass door with exposed stainless steel hardware, we have the product for you. We specialize in custom designs to fit your needs. Feel free to browse our selection and contact us to receive a free quote.', 'Glass Doors', '', 'publish', 'open', 'open', '', 'glass-doors', '', '', '2015-07-27 21:53:30', '2015-07-27 21:53:30', '', 0, 'http://frg.loc/?page_id=56', 0, 'page', '', 0),
(57, 1, '2015-07-26 16:35:02', '2015-07-26 16:35:02', '', 'Glass Doors', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-07-26 16:35:02', '2015-07-26 16:35:02', '', 56, 'http://frg.loc/2015/07/26/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-07-26 16:40:11', '2015-07-26 16:40:11', '', 'Home', '', 'publish', 'open', 'open', '', 'home-2', '', '', '2015-08-02 12:16:32', '2015-08-02 12:16:32', '', 0, 'http://frg.loc/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2015-07-26 16:40:12', '2015-07-26 16:40:12', '', 'Showers', '', 'publish', 'open', 'open', '', 'showers-2', '', '', '2015-08-02 12:16:32', '2015-08-02 12:16:32', '', 0, 'http://frg.loc/?p=59', 3, 'nav_menu_item', '', 0),
(60, 1, '2015-07-26 16:40:12', '2015-07-26 16:40:12', '', 'Mirrors', '', 'publish', 'open', 'open', '', 'mirrors-2', '', '', '2015-08-02 12:16:33', '2015-08-02 12:16:33', '', 0, 'http://frg.loc/?p=60', 4, 'nav_menu_item', '', 0),
(61, 1, '2015-07-26 16:40:12', '2015-07-26 16:40:12', '', 'Railings & Staircases', '', 'publish', 'open', 'open', '', 'railings-staircases', '', '', '2015-08-02 12:16:33', '2015-08-02 12:16:33', '', 0, 'http://frg.loc/?p=61', 5, 'nav_menu_item', '', 0),
(63, 1, '2015-07-26 16:40:13', '2015-07-26 16:40:13', '', 'Partitions', '', 'publish', 'open', 'open', '', 'partitions-2', '', '', '2015-08-02 12:16:33', '2015-08-02 12:16:33', '', 0, 'http://frg.loc/?p=63', 7, 'nav_menu_item', '', 0),
(64, 1, '2015-07-26 16:40:13', '2015-07-26 16:40:13', '', 'Backsplashes', '', 'publish', 'open', 'open', '', 'backsplashes', '', '', '2015-08-02 12:16:33', '2015-08-02 12:16:33', '', 0, 'http://frg.loc/?p=64', 8, 'nav_menu_item', '', 0),
(65, 1, '2015-07-26 16:40:13', '2015-07-26 16:40:13', '', 'Custom Solutions', '', 'publish', 'open', 'open', '', 'custom-solutions-2', '', '', '2015-08-02 12:16:33', '2015-08-02 12:16:33', '', 0, 'http://frg.loc/?p=65', 9, 'nav_menu_item', '', 0),
(67, 1, '2015-07-26 19:36:39', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-26 19:36:39', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=67', 0, 'ngg_pictures', '', 0),
(68, 1, '2015-07-26 19:39:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-26 19:39:00', '2015-07-26 19:39:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=68', 0, 'ngg_pictures', '', 0),
(69, 1, '2015-07-26 19:39:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-26 19:39:00', '2015-07-26 19:39:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=69', 0, 'ngg_gallery', '', 0),
(70, 1, '2015-07-26 19:36:44', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-26 19:36:44', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=70', 0, 'ngg_pictures', '', 0),
(71, 1, '2015-07-26 19:39:01', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-26 19:39:01', '2015-07-26 19:39:01', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=71', 0, 'ngg_pictures', '', 0),
(72, 1, '2015-07-26 19:36:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-26 19:36:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=72', 0, 'ngg_pictures', '', 0),
(73, 1, '2015-07-26 19:39:01', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-26 19:39:01', '2015-07-26 19:39:01', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=73', 0, 'ngg_pictures', '', 0),
(74, 1, '2015-07-27 21:53:30', '2015-07-27 21:53:30', 'We offer a variety of glass doors for interior or exterior use. Nothing says a modern quite loke a framless glass door. They are an excellent way to add a modern touch to a traditional home or cap off contemporary build. All our doors are made with 10mm tempered safety glass and can with frames or frameless. Whether you are interested in frameless glass pivot door or an ulyta-modern sliding glass door with exposed stainless steel hardware, we have the product for you. We specialize in custom designs to fit your needs. Feel free to browse our selection and contact us to receive a free quote.', 'Glass Doors', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-07-27 21:53:30', '2015-07-27 21:53:30', '', 56, 'http://frg.loc/2015/07/27/56-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2015-07-27 22:06:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-27 22:06:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=75', 0, 'ngg_pictures', '', 0),
(76, 1, '2015-07-27 22:06:37', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-27 22:06:37', '2015-07-27 22:06:37', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=76', 0, 'ngg_pictures', '', 0),
(77, 1, '2015-07-27 22:06:39', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-27 22:06:39', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=77', 0, 'ngg_pictures', '', 0),
(78, 1, '2015-07-27 22:06:41', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-27 22:06:41', '2015-07-27 22:06:41', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=78', 0, 'ngg_pictures', '', 0),
(79, 1, '2015-07-27 22:06:42', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-27 22:06:42', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=79', 0, 'ngg_pictures', '', 0),
(80, 1, '2015-07-27 22:06:44', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-27 22:06:44', '2015-07-27 22:06:44', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=80', 0, 'ngg_pictures', '', 0),
(81, 1, '2015-07-30 18:01:37', '2015-07-30 18:01:37', ' ', '', '', 'publish', 'open', 'open', '', '81', '', '', '2015-08-02 12:16:33', '2015-08-02 12:16:33', '', 0, 'http://frg.loc/?p=81', 6, 'nav_menu_item', '', 0),
(82, 1, '2015-07-30 18:02:27', '2015-07-30 18:02:27', ' ', '', '', 'publish', 'open', 'open', '', '82', '', '', '2015-07-30 18:02:27', '2015-07-30 18:02:27', '', 0, 'http://frg.loc/?p=82', 5, 'nav_menu_item', '', 0),
(83, 1, '2015-08-01 10:08:24', '2015-08-01 10:08:24', 'Fort Rouge Glass has built a strong and reputable business over the last 42 years of business in Winnipeg. Our company was established in 1968 when Ben and Muriel Berntt purchased Coyles Hardware, located at 555 Osborne Street, where Ben ran a small hardware and glass store. In the early 1970’s Ben moved to a larger location at 308 Morley Ave, with a crew of up to 7 employees. Ben’s brother-in-law, Bud Holohan, worked with Ben establishing Fort Rouge Plate &amp; Auto Glass Ltd in sales.\r\n\r\nIn 1979 Ben and Muriel’s son Terry, joined the business, after spending several years in the flooring business as a Manufacturer’s Representative of a leading flooring company. Terry’s knowledge of the Home Building industry,became a valuable asset to Fort Rouge Plate &amp; Auto Glass. The company began serving the leading Home Builders, for all their mirror and glass needs. Terry and Ben continued to expand the business over the years providing Winnipeg with quality products and service.\r\n\r\nIn 1983 Fort Rouge Plate &amp; Auto Glass expanded its operations to 380 Osborne Street, where the company still operates today.\r\n\r\n[nggallery id=3 template="3dfluxsliderview"]\r\n\r\n<strong>QUALITY IS JOB ONE </strong>In the late 90’s Terry’s son, Brendan started to work part time at the business. After spending time working on weekends with Ben and Terry, Brendan learned the family business from a very young age. Upon completion of his education at Red River College with a Business degree, he followed in his father and grandfather’s footsteps and joined the family business full time in 2000. Brendan is the Vice President of Fort Rouge Glass.\r\n\r\nIn 2008 Terry’s daughter Bronwyn Dobson joined the family business as the Office Manager and Project Coordinator. At Fort Rouge Glass we have had continual growth over the years and pride ourselves on keeping abreast of new and innovative products and services. Fort Rouge Glass has always believed “quality is job one”! As a family owned and operated business we are able to build trust, and better serve our customers while developing long-term relationships.\r\n\r\nIn 2009, Fort Rouge Plate &amp; Auto Glass Ltd changed its name to Fort Rouge Glass Ltd. and developed a new corporate image. In 2010, Fort Rouge Glass expanded its building at 380 Osborne Street to better serve our customers. Our company team looks forward to continuing our excellent customer service as our company continues to grow into the future.\r\n\r\n&nbsp;', 'ABOUT FORT ROUGE GLASS', '', 'publish', 'open', 'open', '', 'about-fort-rouge-glass', '', '', '2015-08-01 11:15:11', '2015-08-01 11:15:11', '', 0, 'http://frg.loc/?page_id=83', 0, 'page', '', 0),
(84, 1, '2015-08-01 10:08:24', '2015-08-01 10:08:24', '', 'ABOUT FORT ROUGE GLASS', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2015-08-01 10:08:24', '2015-08-01 10:08:24', '', 83, 'http://frg.loc/2015/08/01/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-08-01 10:31:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:31:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=85', 0, 'ngg_pictures', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2015-08-01 10:47:43', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:47:43', '2015-08-01 10:47:43', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=87', 0, 'ngg_gallery', '', 0),
(88, 1, '2015-08-01 10:32:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:32:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=88', 0, 'ngg_pictures', '', 0),
(90, 1, '2015-08-01 10:32:02', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:32:02', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=90', 0, 'ngg_pictures', '', 0),
(92, 1, '2015-08-01 10:34:55', '2015-08-01 10:34:55', '<pre>[nggallery id=1 template="3dfluxsliderview"]</pre>', 'ABOUT FORT ROUGE GLASS', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2015-08-01 10:34:55', '2015-08-01 10:34:55', '', 83, 'http://frg.loc/2015/08/01/83-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2015-08-01 10:36:51', '2015-08-01 10:36:51', '<pre>[nggallery id=3 template="3dfluxsliderview"]</pre>', 'ABOUT FORT ROUGE GLASS', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2015-08-01 10:36:51', '2015-08-01 10:36:51', '', 83, 'http://frg.loc/2015/08/01/83-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-08-01 10:37:33', '2015-08-01 10:37:33', '[nggallery id=3 template="3dfluxsliderview"]', 'ABOUT FORT ROUGE GLASS', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2015-08-01 10:37:33', '2015-08-01 10:37:33', '', 83, 'http://frg.loc/2015/08/01/83-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2015-08-01 10:46:05', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:46:05', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=95', 0, 'ngg_pictures', '', 0),
(96, 1, '2015-08-01 10:48:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:48:45', '2015-08-01 10:48:45', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=96', 0, 'ngg_pictures', '', 0),
(97, 1, '2015-08-01 10:46:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:46:08', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=97', 0, 'ngg_pictures', '', 0),
(98, 1, '2015-08-01 10:48:46', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:48:46', '2015-08-01 10:48:46', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=98', 0, 'ngg_pictures', '', 0),
(99, 1, '2015-08-01 10:46:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:46:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=99', 0, 'ngg_pictures', '', 0),
(100, 1, '2015-08-01 10:48:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-08-01 10:48:48', '2015-08-01 10:48:48', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://frg.loc/?p=100', 0, 'ngg_pictures', '', 0),
(101, 1, '2015-08-01 11:04:02', '2015-08-01 11:04:02', 'Fort Rouge Glass has built a strong and reputable business over the last 42 years of business in Winnipeg. Our company was established in 1968 when Ben and Muriel Berntt purchased Coyles Hardware, located at 555 Osborne Street, where Ben ran a small hardware and glass store. In the early 1970’s Ben moved to a larger location at 308 Morley Ave, with a crew of up to 7 employees. Ben’s brother-in-law, Bud Holohan, worked with Ben establishing Fort Rouge Plate &amp; Auto Glass Ltd in sales.\r\n\r\nIn 1979 Ben and Muriel’s son Terry, joined the business, after spending several years in the flooring business as a Manufacturer’s Representative of a leading flooring company. Terry’s knowledge of the Home Building industry,became a valuable asset to Fort Rouge Plate &amp; Auto Glass. The company began serving the leading Home Builders, for all their mirror and glass needs. Terry and Ben continued to expand the business over the years providing Winnipeg with quality products and service.\r\n\r\nIn 1983 Fort Rouge Plate &amp; Auto Glass expanded its operations to 380 Osborne Street, where the company still operates today.\r\n\r\n[nggallery id=3 template="3dfluxsliderview"]', 'ABOUT FORT ROUGE GLASS', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2015-08-01 11:04:02', '2015-08-01 11:04:02', '', 83, 'http://frg.loc/2015/08/01/83-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2015-08-01 11:11:48', '2015-08-01 11:11:48', 'Fort Rouge Glass has built a strong and reputable business over the last 42 years of business in Winnipeg. Our company was established in 1968 when Ben and Muriel Berntt purchased Coyles Hardware, located at 555 Osborne Street, where Ben ran a small hardware and glass store. In the early 1970’s Ben moved to a larger location at 308 Morley Ave, with a crew of up to 7 employees. Ben’s brother-in-law, Bud Holohan, worked with Ben establishing Fort Rouge Plate &amp; Auto Glass Ltd in sales.\n\nIn 1979 Ben and Muriel’s son Terry, joined the business, after spending several years in the flooring business as a Manufacturer’s Representative of a leading flooring company. Terry’s knowledge of the Home Building industry,became a valuable asset to Fort Rouge Plate &amp; Auto Glass. The company began serving the leading Home Builders, for all their mirror and glass needs. Terry and Ben continued to expand the business over the years providing Winnipeg with quality products and service.\n\nIn 1983 Fort Rouge Plate &amp; Auto Glass expanded its operations to 380 Osborne Street, where the company still operates today.\n\n[nggallery id=3 template="3dfluxsliderview"]\n\n<strong>QUALITY </strong><strong>IS JOB ONE</strong>\n\n&nbsp;\n\n&nbsp;', 'ABOUT FORT ROUGE GLASS', '', 'inherit', 'open', 'open', '', '83-autosave-v1', '', '', '2015-08-01 11:11:48', '2015-08-01 11:11:48', '', 83, 'http://frg.loc/2015/08/01/83-autosave-v1/', 0, 'revision', '', 0),
(103, 1, '2015-08-01 11:12:33', '2015-08-01 11:12:33', 'Fort Rouge Glass has built a strong and reputable business over the last 42 years of business in Winnipeg. Our company was established in 1968 when Ben and Muriel Berntt purchased Coyles Hardware, located at 555 Osborne Street, where Ben ran a small hardware and glass store. In the early 1970’s Ben moved to a larger location at 308 Morley Ave, with a crew of up to 7 employees. Ben’s brother-in-law, Bud Holohan, worked with Ben establishing Fort Rouge Plate &amp; Auto Glass Ltd in sales.\r\n\r\nIn 1979 Ben and Muriel’s son Terry, joined the business, after spending several years in the flooring business as a Manufacturer’s Representative of a leading flooring company. Terry’s knowledge of the Home Building industry,became a valuable asset to Fort Rouge Plate &amp; Auto Glass. The company began serving the leading Home Builders, for all their mirror and glass needs. Terry and Ben continued to expand the business over the years providing Winnipeg with quality products and service.\r\n\r\nIn 1983 Fort Rouge Plate &amp; Auto Glass expanded its operations to 380 Osborne Street, where the company still operates today.\r\n\r\n[nggallery id=3 template="3dfluxsliderview"]\r\n\r\n<strong>QUALITY </strong><strong>IS JOB ONE</strong>\r\n\r\nIn the late 90’s Terry’s son, Brendan started to work part time at the business. After spending time working on weekends with Ben and Terry, Brendan learned the family business from a very young age. Upon completion of his education at Red River College with a Business degree, he followed in his father and grandfather’s footsteps and joined the family business full time in 2000. Brendan is the Vice President of Fort Rouge Glass.\r\n\r\nIn 2008 Terry’s daughter Bronwyn Dobson joined the family business as the Office Manager and Project Coordinator. At Fort Rouge Glass we have had continual growth over the years and pride ourselves on keeping abreast of new and innovative products and services. Fort Rouge Glass has always believed “quality is job one”! As a family owned and operated business we are able to build trust, and better serve our customers while developing long-term relationships.\r\n\r\nIn 2009, Fort Rouge Plate &amp; Auto Glass Ltd changed its name to Fort Rouge Glass Ltd. and developed a new corporate image. In 2010, Fort Rouge Glass expanded its building at 380 Osborne Street to better serve our customers. Our company team looks forward to continuing our excellent customer service as our company continues to grow into the future.\r\n\r\n&nbsp;', 'ABOUT FORT ROUGE GLASS', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2015-08-01 11:12:33', '2015-08-01 11:12:33', '', 83, 'http://frg.loc/2015/08/01/83-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2015-08-01 11:15:11', '2015-08-01 11:15:11', 'Fort Rouge Glass has built a strong and reputable business over the last 42 years of business in Winnipeg. Our company was established in 1968 when Ben and Muriel Berntt purchased Coyles Hardware, located at 555 Osborne Street, where Ben ran a small hardware and glass store. In the early 1970’s Ben moved to a larger location at 308 Morley Ave, with a crew of up to 7 employees. Ben’s brother-in-law, Bud Holohan, worked with Ben establishing Fort Rouge Plate &amp; Auto Glass Ltd in sales.\r\n\r\nIn 1979 Ben and Muriel’s son Terry, joined the business, after spending several years in the flooring business as a Manufacturer’s Representative of a leading flooring company. Terry’s knowledge of the Home Building industry,became a valuable asset to Fort Rouge Plate &amp; Auto Glass. The company began serving the leading Home Builders, for all their mirror and glass needs. Terry and Ben continued to expand the business over the years providing Winnipeg with quality products and service.\r\n\r\nIn 1983 Fort Rouge Plate &amp; Auto Glass expanded its operations to 380 Osborne Street, where the company still operates today.\r\n\r\n[nggallery id=3 template="3dfluxsliderview"]\r\n\r\n<strong>QUALITY IS JOB ONE </strong>In the late 90’s Terry’s son, Brendan started to work part time at the business. After spending time working on weekends with Ben and Terry, Brendan learned the family business from a very young age. Upon completion of his education at Red River College with a Business degree, he followed in his father and grandfather’s footsteps and joined the family business full time in 2000. Brendan is the Vice President of Fort Rouge Glass.\r\n\r\nIn 2008 Terry’s daughter Bronwyn Dobson joined the family business as the Office Manager and Project Coordinator. At Fort Rouge Glass we have had continual growth over the years and pride ourselves on keeping abreast of new and innovative products and services. Fort Rouge Glass has always believed “quality is job one”! As a family owned and operated business we are able to build trust, and better serve our customers while developing long-term relationships.\r\n\r\nIn 2009, Fort Rouge Plate &amp; Auto Glass Ltd changed its name to Fort Rouge Glass Ltd. and developed a new corporate image. In 2010, Fort Rouge Glass expanded its building at 380 Osborne Street to better serve our customers. Our company team looks forward to continuing our excellent customer service as our company continues to grow into the future.\r\n\r\n&nbsp;', 'ABOUT FORT ROUGE GLASS', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2015-08-01 11:15:11', '2015-08-01 11:15:11', '', 83, 'http://frg.loc/2015/08/01/83-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2015-08-01 13:59:33', '2015-08-01 13:59:33', '', 'Some gallery', '', 'publish', 'open', 'open', '', 'some-gallery', '', '', '2015-08-01 13:59:33', '2015-08-01 13:59:33', '', 0, 'http://frg.loc/?p=105', 0, 'post', '', 0),
(106, 1, '2015-08-01 13:59:26', '2015-08-01 13:59:26', '', 'about_gal', '', 'inherit', 'open', 'open', '', 'about_gal', '', '', '2015-08-01 13:59:26', '2015-08-01 13:59:26', '', 105, 'http://frg.loc/wp-content/uploads/2015/08/about_gal.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2015-08-01 13:59:33', '2015-08-01 13:59:33', '', 'Some gallery', '', 'inherit', 'open', 'open', '', '105-revision-v1', '', '', '2015-08-01 13:59:33', '2015-08-01 13:59:33', '', 105, 'http://frg.loc/2015/08/01/105-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2015-08-01 14:06:32', '2015-08-01 14:06:32', '', 'Request a quote', '', 'publish', 'open', 'open', '', 'request-a-quote', '', '', '2015-08-01 14:06:32', '2015-08-01 14:06:32', '', 0, 'http://frg.loc/?p=108', 0, 'post', '', 0),
(109, 1, '2015-08-01 14:06:26', '2015-08-01 14:06:26', '', 'about_request', '', 'inherit', 'open', 'open', '', 'about_request', '', '', '2015-08-01 14:06:26', '2015-08-01 14:06:26', '', 108, 'http://frg.loc/wp-content/uploads/2015/08/about_request.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2015-08-01 14:06:32', '2015-08-01 14:06:32', '', 'Request a quote', '', 'inherit', 'open', 'open', '', '108-revision-v1', '', '', '2015-08-01 14:06:32', '2015-08-01 14:06:32', '', 108, 'http://frg.loc/2015/08/01/108-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2015-08-01 14:11:48', '2015-08-01 14:11:48', '', 'Ask a question', '', 'publish', 'open', 'open', '', 'ask-a-question', '', '', '2015-08-01 14:11:48', '2015-08-01 14:11:48', '', 0, 'http://frg.loc/?p=111', 0, 'post', '', 0),
(112, 1, '2015-08-01 14:11:25', '2015-08-01 14:11:25', '', 'ask', '', 'inherit', 'open', 'open', '', 'ask', '', '', '2015-08-01 14:11:25', '2015-08-01 14:11:25', '', 111, 'http://frg.loc/wp-content/uploads/2015/08/ask.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2015-08-01 14:11:48', '2015-08-01 14:11:48', '', 'Ask a question', '', 'inherit', 'open', 'open', '', '111-revision-v1', '', '', '2015-08-01 14:11:48', '2015-08-01 14:11:48', '', 111, 'http://frg.loc/2015/08/01/111-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2015-08-01 17:15:08', '2015-08-01 17:15:08', 'We would be happy to assist you. Please email or call one of the contacts below with any questions you may have about our glass services. Or if you are interested in receiveing a free quote by email, please fill out the Request A Quote form below.\r\n<h3>REQUEST A QUOTE</h3>\r\nDrop us a line using this email form and we’ll get back to you as soon as possible.', 'Contact Us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2015-08-02 09:56:56', '2015-08-02 09:56:56', '', 0, 'http://frg.loc/?page_id=114', 0, 'page', '', 0),
(115, 1, '2015-08-01 17:15:08', '2015-08-01 17:15:08', '', 'Contact Us', '', 'inherit', 'open', 'open', '', '114-revision-v1', '', '', '2015-08-01 17:15:08', '2015-08-01 17:15:08', '', 114, 'http://frg.loc/2015/08/01/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2015-08-01 19:55:02', '2015-08-01 19:55:02', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <wordpress@frg.loc>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Fort Rouge Glass (http://frg.loc)\ntest@test.test\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nFort Rouge Glass <wordpress@frg.loc>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Fort Rouge Glass (http://frg.loc)\n[your-email]\nReply-To: test@test.test\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2015-08-01 19:55:02', '2015-08-01 19:55:02', '', 0, 'http://frg.loc/?post_type=wpcf7_contact_form&p=116', 0, 'wpcf7_contact_form', '', 0),
(117, 1, '2015-08-01 20:10:19', '2015-08-01 20:10:19', '<div class=''row''>\r\n<div class=''col-lg-4 col-md-12 col-sm-4''>\r\nName<br />\r\n    [text* your-name]\r\n</div>\r\n\r\n<div class=''col-lg-4 col-md-12 col-sm-4''>\r\nEmail to Reply<br />\r\n    [email* your-email]\r\n</div>\r\n<div class=''col-lg-4 col-md-12 col-sm-4''>\r\nPhone (Optional)<br />\r\n[text phone]\r\n</div>\r\n</div>\r\n\r\n<div>Address (Optional)<br />\r\n    [text address] </div>\r\n\r\n<div>How can we help?<br />\r\n    [textarea message] </div>\r\n<div class=''contact-captcha''>\r\nHuman Verefication<br />\r\n[captchac captcha id:captcha-img] [captchar captcha id:captcha-field]\r\n</div>\r\n\r\n<div class=''contact-submit''>\r\n[submit "Submit"]\r\n</div>\n[your-name]\n[your-name] <wordpress@frg.loc>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Fort Rouge Glass (http://frg.loc)\ntest@test.test\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nFort Rouge Glass <wordpress@frg.loc>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Fort Rouge Glass (http://frg.loc)\n[your-email]\nReply-To: test@test.test\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Contact Us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2015-08-02 08:17:41', '2015-08-02 08:17:41', '', 0, 'http://frg.loc/?post_type=wpcf7_contact_form&#038;p=117', 0, 'wpcf7_contact_form', '', 0),
(118, 1, '2015-08-01 20:22:23', '2015-08-01 20:22:23', 'We would be happy to assist you. Please email or call one of the contacts below with any questions you may have about our glass services. Or if you are interested in receiveing a free quote by email, please fill out the Request A Quote form below.\n\n&nbsp;', 'Contact Us', '', 'inherit', 'open', 'open', '', '114-autosave-v1', '', '', '2015-08-01 20:22:23', '2015-08-01 20:22:23', '', 114, 'http://frg.loc/2015/08/01/114-autosave-v1/', 0, 'revision', '', 0),
(119, 1, '2015-08-01 20:23:30', '2015-08-01 20:23:30', 'We would be happy to assist you. Please email or call one of the contacts below with any questions you may have about our glass services. Or if you are interested in receiveing a free quote by email, please fill out the Request A Quote form below.\r\n\r\n&nbsp;\r\n<h3>REQUEST A QUOTE</h3>\r\nDrop us a line using this email form and we’ll get back to you as soon as possible.', 'Contact Us', '', 'inherit', 'open', 'open', '', '114-revision-v1', '', '', '2015-08-01 20:23:30', '2015-08-01 20:23:30', '', 114, 'http://frg.loc/2015/08/01/114-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2015-08-01 20:33:09', '2015-08-01 20:33:09', 'We would be happy to assist you. Please email or call one of the contacts below with any questions you may have about our glass services. Or if you are interested in receiveing a free quote by email, please fill out the Request A Quote form below.\r\n<h3>REQUEST A QUOTE</h3>\r\nDrop us a line using this email form and we’ll get back to you as soon as possible.', 'Contact Us', '', 'inherit', 'open', 'open', '', '114-revision-v1', '', '', '2015-08-01 20:33:09', '2015-08-01 20:33:09', '', 114, 'http://frg.loc/2015/08/01/114-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2015-08-02 12:15:01', '2015-08-02 12:15:01', ' ', '', '', 'publish', 'open', 'open', '', '121', '', '', '2015-08-02 12:15:01', '2015-08-02 12:15:01', '', 0, 'http://frg.loc/?p=121', 7, 'nav_menu_item', '', 0),
(122, 1, '2015-08-02 12:16:33', '2015-08-02 12:16:33', ' ', '', '', 'publish', 'open', 'open', '', '122', '', '', '2015-08-02 12:16:33', '2015-08-02 12:16:33', '', 0, 'http://frg.loc/?p=122', 10, 'nav_menu_item', '', 0),
(123, 1, '2015-08-02 12:16:32', '2015-08-02 12:16:32', '', 'About FRG', '', 'publish', 'open', 'open', '', 'about-frg', '', '', '2015-08-02 12:16:32', '2015-08-02 12:16:32', '', 0, 'http://frg.loc/?p=123', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Homepage top menu', 'homepage-top-menu', 0),
(3, 'Homepage bottom menu', 'homepage-bottom-menu', 0),
(4, 'News', 'news', 0),
(5, 'main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 3, 0),
(36, 3, 0),
(37, 3, 0),
(38, 3, 0),
(39, 3, 0),
(40, 3, 0),
(44, 1, 0),
(47, 4, 0),
(49, 4, 0),
(51, 4, 0),
(53, 1, 0),
(58, 5, 0),
(59, 5, 0),
(60, 5, 0),
(61, 5, 0),
(63, 5, 0),
(64, 5, 0),
(65, 5, 0),
(81, 5, 0),
(82, 2, 0),
(105, 1, 0),
(108, 1, 0),
(111, 1, 0),
(121, 3, 0),
(122, 5, 0),
(123, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 7),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'category', '', 0, 3),
(5, 5, 'nav_menu', '', 0, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `wp_usermeta`
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
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"41f2ddb889ac83f4e2fe6851981d97acce61bff17815d81e4ddc05d67d48416f";a:4:{s:10:"expiration";i:1438626747;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:131:"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.81 Chrome/43.0.2357.81 Safari/537.36";s:5:"login";i:1438453947;}s:64:"2dd4c781173bb0908eb3e44032839ec8b580ffd3db505aa973535222917501a2";a:4:{s:10:"expiration";i:1438630603;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:131:"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.81 Chrome/43.0.2357.81 Safari/537.36";s:5:"login";i:1438457803;}s:64:"fe2c9391a74a88ee68d950451cf7564f0c7b7149eeedfe72b78c3e486b9fba73";a:4:{s:10:"expiration";i:1438713214;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:131:"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.81 Chrome/43.0.2357.81 Safari/537.36";s:5:"login";i:1438540414;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:11:"add-ngg_tag";}'),
(18, 1, 'nav_menu_recently_edited', '5'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1438427549'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:"revisionsdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(23, 1, 'wpseo_ignore_tour', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BO0zDQ0C6SQMZtxw3Tox4n5K5VU2pL/', 'admin', 'test@test.test', '', '2015-07-20 20:23:49', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza`
--

CREATE TABLE IF NOT EXISTS `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_categories`
--

CREATE TABLE IF NOT EXISTS `wp_wpgmza_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_category_maps`
--

CREATE TABLE IF NOT EXISTS `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_maps`
--

CREATE TABLE IF NOT EXISTS `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(50) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Contact', '100', '350', '44.412970', '-104.427398', '44.41296978814959,-104.42739770019534', 5, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '250', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:7:{s:21:"store_locator_enabled";i:2;s:22:"store_locator_distance";i:2;s:20:"store_locator_bounce";i:1;s:26:"store_locator_query_string";s:14:"ZIP / Address:";s:29:"wpgmza_store_locator_restrict";s:0:"";s:12:"map_max_zoom";s:1:"1";s:15:"transport_layer";i:2;}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_polygon`
--

CREATE TABLE IF NOT EXISTS `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_polylines`
--

CREATE TABLE IF NOT EXISTS `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
