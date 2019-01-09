-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table hoanganh.admin_menu
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.admin_menu: ~16 rows (approximately)
DELETE FROM `admin_menu`;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
	(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
	(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
	(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
	(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
	(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
	(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
	(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
	(24, 62, 13, 'Banners', 'fa-simplybuilt', 'banner', '2018-03-13 20:10:22', '2018-11-14 21:18:22'),
	(50, 43, 28, 'Shipping', 'fa-ambulance', 'shop_shipping', '2018-05-09 14:33:24', '2018-11-08 06:01:37'),
	(51, 0, 16, 'Cấu hình website', 'fa-cogs', 'config_global', '2018-09-19 20:51:31', '2018-11-14 21:18:22'),
	(53, 0, 15, 'HTML', 'fa-bars', 'config_layout/1/edit', '2018-10-17 06:16:09', '2018-11-14 21:18:22'),
	(62, 0, 12, 'Banner và hình ảnh', 'fa-image', NULL, '2018-11-12 19:25:16', '2018-11-14 21:18:22'),
	(63, 62, 14, 'Images', 'fa-file-image-o', 'documents', '2018-11-12 19:26:13', '2018-11-14 21:18:22'),
	(66, 0, 8, 'Danh mục sản phẩm', 'fa-folder-open-o', 'cms_category', '2018-11-14 21:14:23', '2018-11-14 21:16:41'),
	(67, 0, 9, 'Sản phẩm', 'fa-empire', 'cms_content', '2018-11-14 21:14:49', '2018-11-14 21:16:42'),
	(68, 0, 11, 'Quản lý trang', 'fa-outdent', 'cms_page', '2018-11-14 21:17:23', '2018-11-14 21:18:22'),
	(69, 0, 10, 'Quản lý tin tức', 'fa-copy', 'cms_news', '2018-11-14 21:17:52', '2018-11-14 21:18:22');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

-- Dumping structure for table hoanganh.admin_operation_log
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE IF NOT EXISTS `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.admin_operation_log: ~8 rows (approximately)
DELETE FROM `admin_operation_log`;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
	(1, 1, 'system_admin/auth/logs', 'GET', '127.0.0.1', '[]', '2018-10-09 21:15:35', '2018-10-09 21:15:35'),
	(2, 1, 'system_admin/auth/logs', 'GET', '127.0.0.1', '[]', '2018-10-09 21:15:38', '2018-10-09 21:15:38'),
	(3, 4, 'system_admin', 'GET', '127.0.0.1', '[]', '2018-11-15 22:38:49', '2018-11-15 22:38:49'),
	(4, 4, 'system_admin', 'GET', '127.0.0.1', '[]', '2018-11-15 22:42:24', '2018-11-15 22:42:24'),
	(5, 4, 'system_admin/cms_category', 'GET', '127.0.0.1', '[]', '2018-11-15 22:56:45', '2018-11-15 22:56:45'),
	(6, 4, 'system_admin/config_layout/1/edit', 'GET', '127.0.0.1', '[]', '2018-11-15 22:56:48', '2018-11-15 22:56:48'),
	(7, 4, 'system_admin/config_layout/1/edit', 'GET', '127.0.0.1', '[]', '2018-11-15 22:57:21', '2018-11-15 22:57:21'),
	(8, 4, 'system_admin', 'GET', '127.0.0.1', '[]', '2018-11-15 22:59:37', '2018-11-15 22:59:37');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;

-- Dumping structure for table hoanganh.admin_permissions
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.admin_permissions: ~10 rows (approximately)
DELETE FROM `admin_permissions`;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
	(1, 'All permission', '*', '', '*', NULL, '2018-07-26 14:29:38'),
	(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
	(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
	(4, 'User setting', 'auth.setting', 'GET,PUT,DELETE', '/auth/setting', NULL, '2018-08-25 11:19:26'),
	(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
	(6, 'Admin CMS', 'admin_cms', '', '/cms*', '2018-03-23 15:18:05', '2018-11-14 23:00:57'),
	(7, 'Admin Shop', 'admin_shop', '', '/shop_*\r\n/getInfoProduct\r\n/shop_order_edit\r\n/shop_order_update', '2018-03-23 15:21:36', '2018-03-25 09:27:28'),
	(8, 'Admin Config', 'admin_confi', '', '/config_*', '2018-03-23 15:25:02', '2018-03-23 15:25:02'),
	(9, 'Manager Banner', 'banner', '', '/banner\r\n/banner/*\r\n/documents*', '2018-03-23 15:25:47', '2018-11-14 23:01:50'),
	(10, 'View', 'vieew', 'GET', '/shop*\r\n/cms*\r\n/banner*\r\n/config*\r\n/report*\r\n/process*\r\n/', '2018-09-23 18:56:03', '2018-11-12 19:52:06');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;

-- Dumping structure for table hoanganh.admin_roles
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.admin_roles: ~4 rows (approximately)
DELETE FROM `admin_roles`;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'administrator', '2018-01-12 17:27:40', '2018-01-12 17:27:40'),
	(2, 'Admin', 'admin', '2018-01-12 18:02:33', '2018-01-12 18:02:33'),
	(3, 'User', 'user', '2018-01-12 18:03:14', '2018-01-12 18:03:14'),
	(4, 'Content', 'content', '2018-01-13 08:27:11', '2018-01-13 08:27:11');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;

-- Dumping structure for table hoanganh.admin_role_menu
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.admin_role_menu: ~2 rows (approximately)
DELETE FROM `admin_role_menu`;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
	(1, 2, NULL, NULL),
	(1, 12, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;

-- Dumping structure for table hoanganh.admin_role_permissions
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.admin_role_permissions: ~12 rows (approximately)
DELETE FROM `admin_role_permissions`;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(3, 3, NULL, NULL),
	(2, 2, NULL, NULL),
	(2, 3, NULL, NULL),
	(2, 4, NULL, NULL),
	(4, 3, NULL, NULL),
	(4, 4, NULL, NULL),
	(2, 6, NULL, NULL),
	(2, 7, NULL, NULL),
	(2, 8, NULL, NULL),
	(2, 9, NULL, NULL),
	(3, 10, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;

-- Dumping structure for table hoanganh.admin_role_users
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.admin_role_users: ~2 rows (approximately)
DELETE FROM `admin_role_users`;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(3, 3, NULL, NULL),
	(2, 4, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;

-- Dumping structure for table hoanganh.admin_users
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.admin_users: ~3 rows (approximately)
DELETE FROM `admin_users`;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'lanhktc', '$2y$10$zmDRFmGce0yrCjaag0yX.eET5LsXM4cEUTQLV106pN2q0K00OlJOe', 'Administrator', NULL, 'Qc7pOAIMYmzYDz6Ew1sBD9QaDUoJ83kL8fzPx6yD6XdqkRdmpzkeB8zzlltR', '2018-01-12 17:27:40', '2018-11-14 22:59:29'),
	(3, 'user', '$2y$10$Ao7Uey2z5jPFta/rZG51XuG1OZiWdlbdf3QSgsAjKn9Hfpcp14Ami', 'User', NULL, 'Mle9NHz93h50M8x42L5pqUxm406WTwpvDKxXQTSgMBHaR5qzI5BseTRkYZeM', '2018-01-12 18:05:28', '2018-09-23 18:56:26'),
	(4, 'admin', '$2y$10$MDctxB2MEGcFIZEh484gv.qv/VeNmKmaJoc0CxsMyBEy0GSHzoVpO', 'admin', NULL, 'zth9JT7uQ2HRtWNoa8tLrWXUww9shg4f4FmKp8cIKx7q3AExEKOdZ40sceaD', '2018-11-14 22:59:46', '2018-11-14 22:59:46');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;

-- Dumping structure for table hoanganh.admin_user_permissions
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.admin_user_permissions: ~0 rows (approximately)
DELETE FROM `admin_user_permissions`;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;

-- Dumping structure for table hoanganh.banner
DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `click` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.banner: ~2 rows (approximately)
DELETE FROM `banner`;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`id`, `image`, `url`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
	(16, 'banner/6c1f2be2b68c14361da0dde51ba05b46.jpg', NULL, '<h2>Công ty in vải Hoàng Anh</h2>\r\n                                 <p>In vải 3D cuộn, in bán thành phẩm số lượng lớn</p>\r\n                                 <a href="/lien-he.html" class="lesun-btn">Chi tiết</a>', 1, 0, 0, 1, '2018-08-21 15:09:08', '2018-11-14 06:50:42'),
	(17, 'banner/bac8ba6ea504603a28f253ebcbf0a4db.jpg', NULL, '<h2>Công ty in vải Hoàng Anh</h2>\r\n                                 <p>In vải 3D cuộn, in bán thành phẩm số lượng lớn</p>\r\n                                 <a href="/lien-he.html" class="lesun-btn">Chi tiết</a>', 1, 0, 0, 0, '2018-09-03 16:51:56', '2018-11-14 06:50:34');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- Dumping structure for table hoanganh.cms_category
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE IF NOT EXISTS `cms_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.cms_category: ~6 rows (approximately)
DELETE FROM `cms_category`;
/*!40000 ALTER TABLE `cms_category` DISABLE KEYS */;
INSERT INTO `cms_category` (`id`, `image`, `parent`, `sort`, `status`) VALUES
	(1, 'cms_category/ff3ea3c2bc0b187c1f0f0ba8627c7072.jpg', 0, 0, 1),
	(2, 'cms_category/9c321d8e021fef75f66ed51dcc8fde8d.jpg', 0, 4, 1),
	(3, 'cms_category/265346d5efb169db77780612712e9d04.jpg', 0, 5, 1),
	(4, 'cms_category/830195bb93abcb3899cae5e7b3395fc0.jpg', 0, 3, 1),
	(5, 'cms_category/6d617a614cc30454849803c3bba23d5f.jpg', 0, 2, 1),
	(7, 'cms_category/3c30a26a1a4ff254fe3fbb2c3c654ee6.jpg', 0, 6, 1);
/*!40000 ALTER TABLE `cms_category` ENABLE KEYS */;

-- Dumping structure for table hoanganh.cms_category_description
DROP TABLE IF EXISTS `cms_category_description`;
CREATE TABLE IF NOT EXISTS `cms_category_description` (
  `cms_category_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `cms_category_id_lang_id` (`cms_category_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.cms_category_description: ~6 rows (approximately)
DELETE FROM `cms_category_description`;
/*!40000 ALTER TABLE `cms_category_description` DISABLE KEYS */;
INSERT INTO `cms_category_description` (`cms_category_id`, `lang_id`, `title`, `keyword`, `description`) VALUES
	(1, 2, 'CÁC MẪU THIẾT KẾ', NULL, NULL),
	(2, 2, 'IN TRÊN VẢI CUỘN', NULL, NULL),
	(3, 2, 'IN VẢI COTTON', NULL, NULL),
	(4, 2, 'IN CHUYỂN NHIỆT', NULL, NULL),
	(5, 2, 'IN LỤA TƠ TẰM', NULL, NULL),
	(7, 2, 'IN TRÊN ÁO THUN', NULL, 'Sản phẩm in trên áo thun');
/*!40000 ALTER TABLE `cms_category_description` ENABLE KEYS */;

-- Dumping structure for table hoanganh.cms_conten
DROP TABLE IF EXISTS `cms_conten`;
CREATE TABLE IF NOT EXISTS `cms_conten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) unsigned DEFAULT '0',
  `status` tinyint(4) unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.cms_conten: ~8 rows (approximately)
DELETE FROM `cms_conten`;
/*!40000 ALTER TABLE `cms_conten` DISABLE KEYS */;
INSERT INTO `cms_conten` (`id`, `category_id`, `image`, `sort`, `status`, `created_at`, `updated_at`) VALUES
	(1, 7, 'cms_content/65cbde97eb4b649786820b7af30b78ac.jpg', 0, 1, '2018-11-14 21:39:04', '2018-11-14 21:40:04'),
	(2, 7, 'cms_content/805f968557b7e48d8013b965d0255c1c.jpg', 0, 1, '2018-11-14 21:39:22', '2018-11-14 21:39:22'),
	(3, 7, 'cms_content/d7031e3692b810d9439c20da64b91d28.jpg', 0, 1, '2018-11-14 21:40:48', '2018-11-14 21:40:48'),
	(4, 7, 'cms_content/412e50fd7b1c10e7a495f7cc3804b26b.jpg', 0, 1, '2018-11-14 21:41:16', '2018-11-14 21:41:29'),
	(5, 6, 'cms_content/19f7d433de7ffeaf4315ab05355d9bf5.jpg', 0, 1, '2018-11-15 05:41:22', '2018-11-15 05:41:22'),
	(6, 2, 'cms_content/8129f64040cf1b10760762b351ada316.jpg', 0, 1, '2018-11-15 05:42:12', '2018-11-15 05:42:12'),
	(7, 3, 'cms_content/e47caa09a45b0d0f5c88da5d5d0c200d.jpg', 0, 1, '2018-11-15 05:42:51', '2018-11-15 05:42:51'),
	(8, 5, 'cms_content/6ae9188567b6a7b1c604eee2f40658a8.jpg', 0, 1, '2018-11-15 05:43:55', '2018-11-15 05:43:55'),
	(9, 2, 'cms_content/ff0f9553250267f97528680c39d07a49.jpg', 0, 1, '2018-11-15 06:01:22', '2018-11-15 06:01:22'),
	(10, 3, 'cms_content/42501478_562313874213764_7377956793151913984_n.jpg', 0, 1, '2018-11-15 06:01:53', '2018-11-15 06:01:53');
/*!40000 ALTER TABLE `cms_conten` ENABLE KEYS */;

-- Dumping structure for table hoanganh.cms_content_description
DROP TABLE IF EXISTS `cms_content_description`;
CREATE TABLE IF NOT EXISTS `cms_content_description` (
  `cms_content_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `cms_content_id_lang_id` (`cms_content_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.cms_content_description: ~10 rows (approximately)
DELETE FROM `cms_content_description`;
/*!40000 ALTER TABLE `cms_content_description` DISABLE KEYS */;
INSERT INTO `cms_content_description` (`cms_content_id`, `lang_id`, `title`, `keyword`, `description`, `content`) VALUES
	(1, 2, 'Áo thun 1', NULL, NULL, '<p>Đừng bảo đẹp cũng được, kh&ocirc;ng đẹp cũng được<br />\r\nC&oacute; &aacute;o gi&oacute; in h&igrave;nh, kh&ocirc;ng đẹp cũng th&agrave;nh đẹp&nbsp;</p>'),
	(2, 2, 'In trên náo thun 2', NULL, NULL, '<p>Đừng bảo đẹp cũng được, kh&ocirc;ng đẹp cũng được!&nbsp;<br />\r\nC&oacute; &aacute;o gi&oacute; in h&igrave;nh, kh&ocirc;ng đẹp cũng th&agrave;nh đẹp&nbsp;</p>'),
	(3, 2, 'Áo thun 3', NULL, NULL, '<p>&Aacute;o thun 3</p>'),
	(4, 2, 'Áo thun 4', NULL, NULL, '<p>&Aacute;o thun 4</p>'),
	(5, 2, 'In trên quần áo', NULL, NULL, '<p>In h&igrave;nh tr&ecirc;n quần &aacute;o</p>'),
	(6, 2, 'In hình trên vải cuộc', NULL, NULL, '<p>In h&igrave;nh tr&ecirc;n vải cuộc</p>'),
	(7, 2, 'In trên vải cotton', NULL, NULL, '<p>In tr&ecirc;n vải cotton</p>'),
	(8, 2, 'In trên tơ tằm', NULL, NULL, '<p>In tr&ecirc;n vải cotton</p>'),
	(9, 2, 'In trên vải cuộc', NULL, NULL, '<p>In tr&ecirc;n vải cuộc</p>'),
	(10, 2, 'In trên vải cotton', NULL, NULL, '<p>In tr&ecirc;n vải cotton</p>');
/*!40000 ALTER TABLE `cms_content_description` ENABLE KEYS */;

-- Dumping structure for table hoanganh.cms_image
DROP TABLE IF EXISTS `cms_image`;
CREATE TABLE IF NOT EXISTS `cms_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.cms_image: ~4 rows (approximately)
DELETE FROM `cms_image`;
/*!40000 ALTER TABLE `cms_image` DISABLE KEYS */;
INSERT INTO `cms_image` (`id`, `content_id`, `image`, `sort`, `status`) VALUES
	(1, 3, 'images/1f5eb6db2404b38b86e4246a792f3fac.png', 0, 0),
	(2, 3, 'images/75be44c336696094632625d2d85159b1.jpg', 0, 0),
	(3, 10, 'product_slide/553e16dc2294f9e3d132329e8eae87fb.jpg', 0, 0),
	(4, 10, 'product_slide/e5bee39c3dad703aaf4f15f17f387130.jpg', 0, 0);
/*!40000 ALTER TABLE `cms_image` ENABLE KEYS */;

-- Dumping structure for table hoanganh.cms_news
DROP TABLE IF EXISTS `cms_news`;
CREATE TABLE IF NOT EXISTS `cms_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.cms_news: ~7 rows (approximately)
DELETE FROM `cms_news`;
/*!40000 ALTER TABLE `cms_news` DISABLE KEYS */;
INSERT INTO `cms_news` (`id`, `image`, `sort`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', 0, 1, '2018-02-10 03:35:13', '2018-09-06 06:25:35'),
	(2, 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', 0, 1, '2018-08-02 17:10:19', '2018-09-06 06:25:26'),
	(3, 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', 0, 1, '2018-08-02 17:16:49', '2018-09-06 06:25:17'),
	(4, 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', 0, 1, '2018-08-02 17:59:52', '2018-09-06 06:25:06'),
	(5, 'cms_content/16889dd0f3e75856c9b387420d641ce4.png', 0, 1, '2018-08-09 13:44:08', '2018-09-23 09:27:12'),
	(6, 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', 0, 1, '2018-08-09 13:50:36', '2018-09-23 09:26:59'),
	(7, 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', 0, 1, '2018-08-09 15:59:29', '2018-09-23 09:26:41');
/*!40000 ALTER TABLE `cms_news` ENABLE KEYS */;

-- Dumping structure for table hoanganh.cms_news_description
DROP TABLE IF EXISTS `cms_news_description`;
CREATE TABLE IF NOT EXISTS `cms_news_description` (
  `cms_news_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `cms_news_id_lang_id` (`cms_news_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.cms_news_description: ~14 rows (approximately)
DELETE FROM `cms_news_description`;
/*!40000 ALTER TABLE `cms_news_description` DISABLE KEYS */;
INSERT INTO `cms_news_description` (`cms_news_id`, `lang_id`, `title`, `keyword`, `description`, `content`) VALUES
	(1, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(1, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(2, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(2, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(3, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(3, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(4, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(4, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(5, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(5, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(6, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(6, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(7, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),
	(7, 2, 'Easy Polo Black Edition', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>');
/*!40000 ALTER TABLE `cms_news_description` ENABLE KEYS */;

-- Dumping structure for table hoanganh.cms_page
DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.cms_page: ~2 rows (approximately)
DELETE FROM `cms_page`;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` (`id`, `image`, `uniquekey`, `status`) VALUES
	(1, '', 'gioi-thieu', 1),
	(2, NULL, 'lien-he', 1),
	(3, NULL, 'khuyen-mai', 1);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;

-- Dumping structure for table hoanganh.cms_page_description
DROP TABLE IF EXISTS `cms_page_description`;
CREATE TABLE IF NOT EXISTS `cms_page_description` (
  `cms_page_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `content` text,
  UNIQUE KEY `cms_page_id_lang_id` (`cms_page_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hoanganh.cms_page_description: ~2 rows (approximately)
DELETE FROM `cms_page_description`;
/*!40000 ALTER TABLE `cms_page_description` DISABLE KEYS */;
INSERT INTO `cms_page_description` (`cms_page_id`, `lang_id`, `title`, `keyword`, `description`, `content`) VALUES
	(1, 2, 'Giới thiệu', NULL, NULL, '<p>C&ocirc;ng ty in vải Ho&agrave;ng Anh - in vải 3D cuộn, in b&aacute;n th&agrave;nh phẩm số lượng lớn.<br />\r\n‼️ Mực in chuyển nhiệt nhập khẩu cho ra sản phẩm đẹp si&ecirc;u n&eacute;t.<br />\r\n‼️Tốc độ ra h&agrave;ng si&ecirc;u nhanh 2.500m /1 ng&agrave;y</p>'),
	(2, 2, 'Liên hệ', NULL, NULL, '<p>C&ocirc;ng ty in vải Ho&agrave;ng Anh - in vải 3D cuộn, in b&aacute;n th&agrave;nh phẩm số lượng lớn.<br />\r\n‼️ Mực in chuyển nhiệt nhập khẩu cho ra sản phẩm đẹp si&ecirc;u n&eacute;t.<br />\r\n‼️Tốc độ ra h&agrave;ng si&ecirc;u nhanh 2.500m /1 ng&agrave;y</p>'),
	(3, 2, 'Khuyến mãi', NULL, NULL, '<p>Nội dung đap cập nhật</p>');
/*!40000 ALTER TABLE `cms_page_description` ENABLE KEYS */;

-- Dumping structure for table hoanganh.config
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `detail` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.config: ~29 rows (approximately)
DELETE FROM `config`;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `code`, `key`, `value`, `sort`, `detail`) VALUES
	(10, 'config', 'shop_allow_guest', '1', 11, 'language.admin.shop_allow_guest'),
	(11, 'smtp', 'smtp_host', NULL, 8, 'language.admin.smtp_host'),
	(12, 'smtp', 'smtp_user', '', 7, 'language.admin.smtp_user'),
	(13, 'smtp', 'smtp_password', '', 6, 'language.admin.smtp_password'),
	(14, 'smtp', 'smtp_security', '', 5, 'language.admin.smtp_security'),
	(15, 'smtp', 'smtp_port', '', 4, 'language.admin.smtp_port'),
	(16, 'smtp', 'smtp_mode', '0', 9, 'language.admin.smtp_mode'),
	(18, 'config', 'product_preorder', '1', 18, 'language.admin.product_preorder'),
	(19, 'config', 'product_display_out_of_stock', '1', 19, 'language.admin.product_display_out_of_stock'),
	(20, 'config', 'product_buy_out_of_stock', '1', 20, 'language.admin.product_buy_out_of_stock'),
	(22, 'config', 'show_date_available', '1', 21, 'language.admin.show_date_available'),
	(24, 'config', 'promotion_mode', '0', 1, 'language.admin.use_coupon'),
	(26, 'display', 'product_hot', '12', 0, 'language.admin.hot_product'),
	(27, 'display', 'product_new', '6', 0, 'language.admin.new_product'),
	(28, 'display', 'product_list', '18', 0, 'language.admin.list_product'),
	(29, 'display', 'product_relation', '4', 0, 'language.admin.relation_product'),
	(30, 'config', 'site_ssl', '0', 0, 'language.admin.enable_https'),
	(31, 'config', 'admin_log', '0', 0, 'language.admin.enable_log_admin'),
	(32, 'config', 'watermark', '1', 0, 'language.admin.enable_watermark'),
	(33, 'payment_paypal', 'paypal_client_id', NULL, 0, 'language.admin.paypal_client_id'),
	(34, 'payment_paypal', 'paypal_secret', NULL, 0, 'language.admin.paypal_secret'),
	(35, 'payment_paypal', 'paypal_mode', 'sandbox', 8, 'language.admin.paypal_mode'),
	(36, 'payment_paypal', 'paypal_log', '1', 0, 'language.admin.paypal_log'),
	(37, 'payment_paypal', 'paypal_path_log', 'logs/paypal.log', 0, 'language.admin.paypal_path_log'),
	(40, 'payment_paypal', 'paypal_status', '0', 9, 'language.admin.paypal_status'),
	(41, 'payment_paypal', 'paypal_currency', 'USD', 0, 'language.admin.paypal_currency'),
	(42, 'payment_paypal', 'paypal_order_status_success', '1', 0, 'language.admin.paypal_order_status_success'),
	(43, 'payment_paypal', 'paypal_order_status_faild', '5', 0, 'language.admin.paypal_order_status_faild'),
	(44, 'config', 'site_status', '1', 100, 'language.admin.site_status');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table hoanganh.config_global
DROP TABLE IF EXISTS `config_global`;
CREATE TABLE IF NOT EXISTS `config_global` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `watermark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.config_global: ~0 rows (approximately)
DELETE FROM `config_global`;
/*!40000 ALTER TABLE `config_global` DISABLE KEYS */;
INSERT INTO `config_global` (`id`, `logo`, `watermark`, `template`, `title`, `description`, `keyword`, `phone`, `long_phone`, `email`, `address`, `locale`) VALUES
	(1, 'images/logo.jpg', NULL, 's-cart', 'CÔNG TY IN VẢI HOÀNG ANH', 'Công ty in vải Hoàng Anh - in vải 3D cuộn, in bán thành phẩm số lượng lớn.', NULL, '0383999784', '383999784 - 0986662055', 'invai3dhoanganh@gmail.com', 'số 6a - ngõ 56 - Thạch Cầu - Long Biên - Hà Nội', 'vi');
/*!40000 ALTER TABLE `config_global` ENABLE KEYS */;

-- Dumping structure for table hoanganh.config_layout
DROP TABLE IF EXISTS `config_layout`;
CREATE TABLE IF NOT EXISTS `config_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta` text COLLATE utf8_unicode_ci,
  `header` text COLLATE utf8_unicode_ci,
  `footer_bottom` text COLLATE utf8_unicode_ci,
  `footer_top` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.config_layout: ~0 rows (approximately)
DELETE FROM `config_layout`;
/*!40000 ALTER TABLE `config_layout` DISABLE KEYS */;
INSERT INTO `config_layout` (`id`, `meta`, `header`, `footer_bottom`, `footer_top`) VALUES
	(1, NULL, '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=1715760428638617&autoLogAppEvents=1\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src="https://www.googletagmanager.com/gtag/js?id=UA-128658138-1"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-128658138-1\');\r\n</script>', NULL);
/*!40000 ALTER TABLE `config_layout` ENABLE KEYS */;

-- Dumping structure for table hoanganh.language
DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hoanganh.language: ~2 rows (approximately)
DELETE FROM `language`;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`id`, `name`, `code`, `icon`, `status`, `sort`) VALUES
	(1, 'English', 'en', 'language/flag_uk.png', 0, 1),
	(2, 'Tiếng Việt', 'vi', 'language/flag_vn.png', 1, 1);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;

-- Dumping structure for table hoanganh.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.migrations: ~0 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table hoanganh.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table hoanganh.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hoanganh.users: ~11 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `address1`, `address2`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Hoang Ngoc Tu', 'dfne11pd2707@gmail.com', '$2y$10$yMT7ox6mh6kRQon.06MXZue.PBTwhT0xFLM9s7RDVgLYrMM/sBJHu', '122/23B, Tôn Thất Tùng', 'Quận 7', '009404945435', 'V5VfBF0g3ZjllZJyFo9Guh2E5dxIAA5HlpJScrAplZxmSMjJKiQO6W4m90kh', '2018-01-14 03:12:50', '2018-09-03 17:13:27'),
	(2, 'Hung', 'hung@fdgfdg.com', '$2y$10$eGf2jiO3I7wj879B0RRBBuZgvVvDJLQKP0HF88ZCgr4ti50AgznuO', 'Quan 1', 'Ho chi Minh', '099789987686', NULL, '2018-01-15 15:43:35', '2018-01-15 16:40:14'),
	(3, 'Lê Văn Lanh', 'lanhktc@gmail.com', '$2y$10$4HMDRFpiNXRPYitWP7tDhuYsCYKGK3QFiRvyeQxYbsyzgmsabRrhS', 'Quan 12', 'Ho chi minh', '0667151172', 'GzmAIfW7F4U2cCkLVUpi0VihjbPASKtWzppkDCOemyQrh1i93CQ0hAaJncm6', '2018-02-04 09:56:12', '2018-09-03 17:13:17'),
	(4, 'Châu Tuấn Anh', 'lengocchau_11233@gmail.com', '$2y$10$udnwsVhfef3QcS8oP8OEsuHg9eKTTI7lb0q6Zffd9jHiEGnIIxUBe', 'Tân Kỳ', 'Hồ Chí Minh', '0664456189', 'iYg2W7K79pAleTv2Q0rHsRCsMkx8lLN4l2fTE8o8GlLKBHyrj3TeHvIjWYgt', '2018-03-12 16:20:04', '2018-05-09 15:00:55'),
	(5, 'Bao Khanh', 'baokhanh123@gmail.com', '$2y$10$/DzsZSjPNLRY8NlrMk5lselrbMYQdmr90tXBPlYQe8CNsi1JQFyse', '12', 'TTh07', '09012345678', NULL, '2018-09-05 20:57:19', '2018-09-05 20:57:19'),
	(6, 'ABC', 'abc@abc.com', '$2y$10$1OygbWuORyylC70H5gxBXuk3dloYdwIwVLiABJ0YUZVZsWuLaf6F.', 'Address 1', 'Address 2', '098765432321', '61LIuCv7we6a79eInQTGuQkEFCy23SqgKHEFM5wdlKx32UAA1riBMfFmPS0S', '2018-09-23 07:54:21', '2018-09-23 07:54:21'),
	(7, 'trucnguyen', 'q@gmail.com', '$2y$10$9Lyc.48VCiwh9ldNwaGr6.fZEQjMa1f2j9SVFO4VdhqEkHT08SDKO', 'viet nam', 'viet nam', '0975236548', NULL, '2018-10-17 23:37:56', '2018-10-17 23:37:56'),
	(8, 'trucnguyen', 'qq@gmail.com', '$2y$10$P6TQEEhlkSpx/xTU1ywrX.leBmMCrVQcrEx6UMMR0EDUFb4FlxPfO', 'viet nam', 'viet nam', '0975236549', NULL, '2018-10-18 22:46:20', '2018-10-18 22:46:20'),
	(9, 'Ho Luat', 'holuat162@gmail.com', '$2y$10$Tw3TxCBOtz1ZMgfOsEUca.LVovbFtvf0HPy0UwyCHrEFnwjBc9Xi6', 'Binh Thanh district,Ho Chi Minh city', 'Thu Duc District, Ho Chi Minh City', '01695415813', '1I9kAloLMogFKoi2ie7h8dWC8aPwTgsqu0JJz00yK7cDJYy0toTq2EzKcE6Z', '2018-10-23 08:25:21', '2018-10-23 08:25:21'),
	(10, 'Hoang', 'tuannguyen@gmail.com2', '$2y$10$DdSoAxE33P.s5zJdsbLM7u0z1ICrF/3w8rn0ck2DlRyqADBVmXQHi', 'Van', 'Trnag', '099845345', 'KKPkyip3UYcdwbaCRZX5d9s4y1lljY9FKGKO4kkIg2hnoELdEvTPcAD3kxds', '2018-10-23 11:34:43', '2018-10-23 11:34:43'),
	(11, 'levantu', 'levantu.nd1997@gmail.com', '$2y$10$dLW04M0TIbGGEo0vHsE0XO0M2ZGEmwa0hD1h2ZZi4MA0jZPMtENDK', 'hn', 'hn', '0914731527', NULL, '2018-10-23 13:20:42', '2018-10-23 13:20:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
