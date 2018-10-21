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

-- Dumping structure for table s-cart-lang.admin_menu
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.admin_menu: ~33 rows (approximately)
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
	(8, 31, 22, 'Customer', 'fa-user-md', 'shop_customer', '2018-01-13 15:27:55', '2018-10-19 20:20:24'),
	(9, 25, 17, 'Order', 'fa-shopping-cart', 'shop_order', '2018-01-13 15:33:55', '2018-10-19 20:20:13'),
	(10, 15, 14, 'Product manager', 'fa-file-photo-o', 'shop_product', '2018-01-13 15:44:02', '2018-10-19 20:19:45'),
	(11, 15, 15, 'Brand', 'fa-bank', 'shop_brand', '2018-01-13 15:47:15', '2018-10-19 20:19:57'),
	(13, 15, 12, 'Categories', 'fa-folder-open-o', 'shop_category', '2018-01-13 15:52:17', '2018-10-19 20:19:05'),
	(14, 15, 13, 'Special price', 'fa-paw', 'shop_special_price', '2018-02-06 18:07:21', '2018-10-19 20:19:35'),
	(15, 0, 11, 'Shop Manager', 'fa-folder-open', NULL, '2018-02-09 06:04:43', '2018-10-18 21:16:47'),
	(17, 0, 8, 'CMS Manager', 'fa-coffee', NULL, '2018-02-10 09:06:05', '2018-10-18 21:16:24'),
	(18, 23, 28, 'Config info', 'fa-cog', 'config_info', '2018-02-10 09:07:45', '2018-10-18 21:10:38'),
	(21, 17, 9, 'Blog & News', 'fa-file-powerpoint-o', 'cms_news', '2018-02-10 09:13:01', '2018-10-19 20:18:25'),
	(22, 17, 10, 'Cms Page', 'fa-clone', 'cms_page', '2018-02-10 09:19:50', '2018-10-19 20:18:37'),
	(23, 0, 27, 'Config Manager', 'fa-cogs', NULL, '2018-02-11 15:01:24', '2018-10-18 21:18:14'),
	(24, 0, 31, 'Banner', 'fa-picture-o', 'banner', '2018-03-13 20:10:22', '2018-10-18 21:18:30'),
	(25, 0, 16, 'Order Manager', 'fa-cart-arrow-down', NULL, '2018-05-06 14:59:14', '2018-10-18 21:17:11'),
	(26, 25, 18, 'Order status', 'fa-asterisk', 'shop_order_status', '2018-05-06 15:56:14', '2018-10-16 08:33:43'),
	(27, 25, 19, 'Payment Status', 'fa-recycle', 'shop_payment_status', '2018-05-06 15:57:12', '2018-10-16 08:33:43'),
	(28, 25, 20, 'Shipping status', 'fa-ambulance', 'shop_shipping_status', '2018-05-06 23:46:53', '2018-10-16 08:33:43'),
	(30, 0, 23, 'Marketing', 'fa-star-half-empty', NULL, '2018-05-07 13:47:33', '2018-10-16 08:33:43'),
	(31, 0, 21, 'Customer Manager', 'fa-group', NULL, '2018-05-07 13:52:20', '2018-10-18 21:17:33'),
	(41, 30, 24, 'Coupon & khuyến mãi', 'fa-rocket', 'shop_promotion', '2018-05-07 23:54:45', '2018-10-16 08:33:43'),
	(43, 0, 25, 'Shipping Manager', 'fa-ambulance', NULL, '2018-05-07 23:56:13', '2018-10-18 21:17:50'),
	(50, 43, 26, 'Shipping', 'fa-ambulance', 'shop_shipping', '2018-05-09 14:33:24', '2018-10-17 20:02:24'),
	(51, 23, 30, 'Config global', 'fa-cogs', 'config_global', '2018-09-19 20:51:31', '2018-10-16 08:33:43'),
	(52, 0, 32, 'Config Language', 'fa-pagelines', 'language', '2018-10-14 21:58:23', '2018-10-18 21:15:34'),
	(53, 55, 0, 'Component', 'fa-bars', 'config_layout/1/edit', '2018-10-17 06:16:09', '2018-10-18 21:14:11'),
	(55, 0, 0, 'Layout customize', 'fa-columns', NULL, '2018-10-18 21:13:41', '2018-10-18 21:13:41');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.admin_operation_log
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.admin_operation_log: ~2 rows (approximately)
DELETE FROM `admin_operation_log`;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
	(1, 1, 'system_admin/auth/logs', 'GET', '127.0.0.1', '[]', '2018-10-09 21:15:35', '2018-10-09 21:15:35'),
	(2, 1, 'system_admin/auth/logs', 'GET', '127.0.0.1', '[]', '2018-10-09 21:15:38', '2018-10-09 21:15:38');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.admin_permissions
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

-- Dumping data for table s-cart-lang.admin_permissions: ~10 rows (approximately)
DELETE FROM `admin_permissions`;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
	(1, 'All permission', '*', '', '*', NULL, '2018-07-26 14:29:38'),
	(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
	(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
	(4, 'User setting', 'auth.setting', 'GET,PUT,DELETE', '/auth/setting', NULL, '2018-08-25 11:19:26'),
	(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
	(6, 'Admin CMS', 'admin_cms', '', '/cms_news\r\n/cms_news/*\r\n/cms_page\r\n/cms_page/*', '2018-03-23 15:18:05', '2018-03-23 16:20:58'),
	(7, 'Admin Shop', 'admin_shop', '', '/shop_*\r\n/getInfoProduct\r\n/shop_order_edit\r\n/shop_order_update', '2018-03-23 15:21:36', '2018-03-25 09:27:28'),
	(8, 'Admin Config', 'admin_confi', '', '/config_*', '2018-03-23 15:25:02', '2018-03-23 15:25:02'),
	(9, 'Manager Banner', 'banner', '', '/banner\r\n/banner/*', '2018-03-23 15:25:47', '2018-03-23 16:21:45'),
	(10, 'View', 'vieew', 'GET', '*', '2018-09-23 18:56:03', '2018-09-23 18:56:03');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.admin_roles
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

-- Dumping data for table s-cart-lang.admin_roles: ~4 rows (approximately)
DELETE FROM `admin_roles`;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'administrator', '2018-01-12 17:27:40', '2018-01-12 17:27:40'),
	(2, 'Admin', 'admin', '2018-01-12 18:02:33', '2018-01-12 18:02:33'),
	(3, 'User', 'user', '2018-01-12 18:03:14', '2018-01-12 18:03:14'),
	(4, 'Content', 'content', '2018-01-13 08:27:11', '2018-01-13 08:27:11');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.admin_role_menu
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.admin_role_menu: ~2 rows (approximately)
DELETE FROM `admin_role_menu`;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
	(1, 2, NULL, NULL),
	(1, 12, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.admin_role_permissions
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.admin_role_permissions: ~12 rows (approximately)
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

-- Dumping structure for table s-cart-lang.admin_role_users
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.admin_role_users: ~2 rows (approximately)
DELETE FROM `admin_role_users`;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(3, 3, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.admin_users
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.admin_users: ~2 rows (approximately)
DELETE FROM `admin_users`;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '$2y$10$xz52J77ECfy3haB8CpCm2.xsuDGBtRDPdrphYPu5RwvVpgSOze0F2', 'Administrator', NULL, '7DwqBloXsOhnYVNTC7Bu0B3PHqYxkuJRAjvUXq194B4oScENMCIVCsJFUxTj', '2018-01-12 17:27:40', '2018-10-22 06:42:07'),
	(3, 'user', '$2y$10$Ao7Uey2z5jPFta/rZG51XuG1OZiWdlbdf3QSgsAjKn9Hfpcp14Ami', 'User', NULL, '3V1Ph1f9iavXGxIm44GHdv5CDXqmTLkrdUX0tBNsoQHducgBMLeRhUPlYU7c', '2018-01-12 18:05:28', '2018-09-23 18:56:26');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.admin_user_permissions
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.admin_user_permissions: ~0 rows (approximately)
DELETE FROM `admin_user_permissions`;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.banner
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

-- Dumping data for table s-cart-lang.banner: ~3 rows (approximately)
DELETE FROM `banner`;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`id`, `image`, `url`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
	(8, 'banner/6122cfae7fdb5fff1a4e7406dcab10ef.jpg', NULL, '<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type="button" class="btn btn-default get">Get it now</button>', 1, 0, 0, 1, '2018-08-02 16:23:32', '2018-09-20 22:24:53'),
	(16, 'banner/7b16dd5b838439ddbe58c3ea506f5db1.jpg', NULL, '<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type="button" class="btn btn-default get">Get it now</button>', 1, 0, 0, 1, '2018-08-21 15:09:08', '2018-09-20 22:24:43'),
	(17, 'banner/36e662803f744d4f9df2cecc2e17b87b.jpg', NULL, '<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type="button" class="btn btn-default get">Get it now</button>', 1, 0, 0, 0, '2018-09-03 16:51:56', '2018-09-20 22:24:23');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.cms_category
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE IF NOT EXISTS `cms_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` tinyint(4) NOT NULL DEFAULT '0',
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.cms_category: ~0 rows (approximately)
DELETE FROM `cms_category`;
/*!40000 ALTER TABLE `cms_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_category` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.cms_category_description
DROP TABLE IF EXISTS `cms_category_description`;
CREATE TABLE IF NOT EXISTS `cms_category_description` (
  `cms_category_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `cms_category_id_lang_id` (`cms_category_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.cms_category_description: ~0 rows (approximately)
DELETE FROM `cms_category_description`;
/*!40000 ALTER TABLE `cms_category_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_category_description` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.cms_conten
DROP TABLE IF EXISTS `cms_conten`;
CREATE TABLE IF NOT EXISTS `cms_conten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(4) unsigned DEFAULT '0',
  `status` tinyint(4) unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.cms_conten: ~0 rows (approximately)
DELETE FROM `cms_conten`;
/*!40000 ALTER TABLE `cms_conten` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_conten` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.cms_image
DROP TABLE IF EXISTS `cms_image`;
CREATE TABLE IF NOT EXISTS `cms_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.cms_image: ~2 rows (approximately)
DELETE FROM `cms_image`;
/*!40000 ALTER TABLE `cms_image` DISABLE KEYS */;
INSERT INTO `cms_image` (`id`, `content_id`, `image`, `sort`, `status`) VALUES
	(1, 3, 'images/1f5eb6db2404b38b86e4246a792f3fac.png', 0, 0),
	(2, 3, 'images/75be44c336696094632625d2d85159b1.jpg', 0, 0);
/*!40000 ALTER TABLE `cms_image` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.cms_news
DROP TABLE IF EXISTS `cms_news`;
CREATE TABLE IF NOT EXISTS `cms_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.cms_news: ~7 rows (approximately)
DELETE FROM `cms_news`;
/*!40000 ALTER TABLE `cms_news` DISABLE KEYS */;
INSERT INTO `cms_news` (`id`, `title`, `content`, `image`, `keyword`, `description`, `sort`, `status`, `created_at`, `updated_at`) VALUES
	(1, NULL, NULL, 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', NULL, NULL, 0, 1, '2018-02-10 03:35:13', '2018-09-06 06:25:35'),
	(2, NULL, NULL, 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', NULL, NULL, 0, 1, '2018-08-02 17:10:19', '2018-09-06 06:25:26'),
	(3, NULL, NULL, 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', NULL, NULL, 0, 1, '2018-08-02 17:16:49', '2018-09-06 06:25:17'),
	(4, NULL, NULL, 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', NULL, NULL, 0, 1, '2018-08-02 17:59:52', '2018-09-06 06:25:06'),
	(5, NULL, NULL, 'cms_content/16889dd0f3e75856c9b387420d641ce4.png', NULL, NULL, 0, 1, '2018-08-09 13:44:08', '2018-09-23 09:27:12'),
	(6, NULL, NULL, 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', NULL, NULL, 0, 1, '2018-08-09 13:50:36', '2018-09-23 09:26:59'),
	(7, NULL, NULL, 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', NULL, NULL, 0, 1, '2018-08-09 15:59:29', '2018-09-23 09:26:41');
/*!40000 ALTER TABLE `cms_news` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.cms_news_description
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

-- Dumping data for table s-cart-lang.cms_news_description: ~14 rows (approximately)
DELETE FROM `cms_news_description`;
/*!40000 ALTER TABLE `cms_news_description` DISABLE KEYS */;
INSERT INTO `cms_news_description` (`cms_news_id`, `lang_id`, `title`, `keyword`, `description`, `content`) VALUES
	(1, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(1, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(2, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(2, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(3, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(3, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(4, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(4, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(5, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(5, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(6, 1, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(6, 2, 'Easy Polo Black Edition', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
	(7, 1, 'Easy Polo Black Edition', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
	(7, 2, 'Easy Polo Black Edition', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
/*!40000 ALTER TABLE `cms_news_description` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.cms_page
DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.cms_page: ~2 rows (approximately)
DELETE FROM `cms_page`;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` (`id`, `title`, `content`, `image`, `keyword`, `description`, `uniquekey`, `status`) VALUES
	(1, NULL, NULL, '', NULL, NULL, 'about', 1),
	(2, NULL, NULL, NULL, NULL, NULL, 'contact', 1);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.cms_page_description
DROP TABLE IF EXISTS `cms_page_description`;
CREATE TABLE IF NOT EXISTS `cms_page_description` (
  `cms_page_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `cms_page_id_lang_id` (`cms_page_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.cms_page_description: ~4 rows (approximately)
DELETE FROM `cms_page_description`;
/*!40000 ALTER TABLE `cms_page_description` DISABLE KEYS */;
INSERT INTO `cms_page_description` (`cms_page_id`, `lang_id`, `title`, `keyword`, `description`, `content`) VALUES
	(1, 1, 'About', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
	(1, 2, 'Giới thiệu', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
	(2, 1, 'Contact', '', NULL, NULL),
	(2, 2, 'Liên hệ với chúng tôi', '', NULL, NULL);
/*!40000 ALTER TABLE `cms_page_description` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.config
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

-- Dumping data for table s-cart-lang.config: ~29 rows (approximately)
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
	(24, 'config', 'promotion_mode', '1', 1, 'language.admin.use_coupon'),
	(26, 'display', 'product_hot', '12', 0, 'language.admin.hot_product'),
	(27, 'display', 'product_new', '6', 0, 'language.admin.new_product'),
	(28, 'display', 'product_list', '18', 0, 'language.admin.list_product'),
	(29, 'display', 'product_relation', '4', 0, 'language.admin.relation_product'),
	(30, 'config', 'site_ssl', '0', 0, 'language.admin.enable_https'),
	(31, 'config', 'admin_log', 'off', 0, 'language.admin.enable_log_admin'),
	(32, 'config', 'watermark', '1', 0, 'language.admin.enable_watermark'),
	(33, 'payment_paypal', 'paypal_client_id', 'Ab4oxAAF4w9FemRcG-XAQ2bTk6r-9wQc-Y73UxZIJtYbta9oPkipddcrFb2-EW0qEo3NdMz0iBnLo4Uf', 0, 'language.admin.paypal_client_id'),
	(34, 'payment_paypal', 'paypal_secret', 'EMManJSa8d4ijhnHfFoSN1bYum5rP1K2250OoMwHJ7WFywUs98O0u9doIfdec6-cjdA847W4WD4XqySh', 0, 'language.admin.paypal_secret'),
	(35, 'payment_paypal', 'paypal_mode', 'sandbox', 8, 'language.admin.paypal_mode'),
	(36, 'payment_paypal', 'paypal_log', '1', 0, 'language.admin.paypal_log'),
	(37, 'payment_paypal', 'paypal_path_log', 'logs/paypal.log', 0, 'language.admin.paypal_path_log'),
	(40, 'payment_paypal', 'paypal_status', '1', 9, 'language.admin.paypal_status'),
	(41, 'payment_paypal', 'paypal_currency', 'USD', 0, 'language.admin.paypal_currency'),
	(42, 'payment_paypal', 'paypal_order_status_success', '1', 0, 'language.admin.paypal_order_status_success'),
	(43, 'payment_paypal', 'paypal_order_status_faild', '5', 0, 'language.admin.paypal_order_status_faild'),
	(44, 'config', 'site_status', '1', 100, 'language.admin.site_status');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.config_global
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.config_global: ~1 rows (approximately)
DELETE FROM `config_global`;
/*!40000 ALTER TABLE `config_global` DISABLE KEYS */;
INSERT INTO `config_global` (`id`, `logo`, `watermark`, `template`, `title`, `description`, `keyword`, `phone`, `long_phone`, `email`, `address`, `locale`) VALUES
	(1, 'images/scart-mid.png', 'images/watermark.png', 's-cart', 'Free open source - eCommerce Platform for Business', 'Free website shopping cart for business', NULL, '0123456789', 'Support: 0987654321', 'admin@admin.com', '123st - abc - xyz', 'en');
/*!40000 ALTER TABLE `config_global` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.config_layout
DROP TABLE IF EXISTS `config_layout`;
CREATE TABLE IF NOT EXISTS `config_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta` text COLLATE utf8_unicode_ci,
  `header` text COLLATE utf8_unicode_ci,
  `footer_bottom` text COLLATE utf8_unicode_ci,
  `footer_top` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.config_layout: ~1 rows (approximately)
DELETE FROM `config_layout`;
/*!40000 ALTER TABLE `config_layout` DISABLE KEYS */;
INSERT INTO `config_layout` (`id`, `meta`, `header`, `footer_bottom`, `footer_top`) VALUES
	(1, NULL, '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\n</script>', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src="https://www.googletagmanager.com/gtag/js?id=UA-125870439-1"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n  gtag(\'config\', \'UA-125870439-1\');\r\n</script>', NULL);
/*!40000 ALTER TABLE `config_layout` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.language
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.language: ~2 rows (approximately)
DELETE FROM `language`;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`id`, `name`, `code`, `icon`, `status`, `sort`) VALUES
	(1, 'English', 'en', 'language/flag_uk.png', 1, 1),
	(2, 'Việt Nam', 'vi', 'language/flag_vn.png', 1, 0);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.migrations: ~6 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_01_04_173148_create_admin_tables', 1),
	(4, '2018_03_27_145238_create_jobs_table', 2),
	(5, '2018_03_27_145322_create_failed_jobs_table', 2),
	(6, '2016_05_17_221000_create_promocodes_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.password_resets: ~3 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('test@gmail.com', '$2y$10$Hig4bWDSh3NzYchxkAK5sOqNYs3dx2oYJMLZ5z6k.1bP91/kTYFyu', '2018-01-14 14:23:29'),
	('asakc@gmail.com', '$2y$10$pDj4LAa6kzG8TvoOHVBjkugNNF.tWxAJmghEETs32v.wkdBeaFe66', '2018-09-20 18:42:04'),
	('lanhktc@gmail.com', '$2y$10$qKtQ1Lqy9WraRawxDh.zQeemGIlYqoCRDNvysHbRlVtHVAtip0SCy', '2018-09-23 08:02:26');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_brand
DROP TABLE IF EXISTS `shop_brand`;
CREATE TABLE IF NOT EXISTS `shop_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_brand: ~6 rows (approximately)
DELETE FROM `shop_brand`;
/*!40000 ALTER TABLE `shop_brand` DISABLE KEYS */;
INSERT INTO `shop_brand` (`id`, `name`, `image`, `url`, `status`, `sort`) VALUES
	(1, 'Husq', 'brand/88360597aa1df738b183d2a2a5e41d92.png', NULL, 1, 0),
	(2, 'Ideal', 'brand/d0782fc5b01353d0b47c5d6b434e282e.png', NULL, 1, 0),
	(3, 'Apex', 'brand/4cbebcdaa679d1dcafccb620d3aea0c9.png', NULL, 1, 0),
	(4, 'CST', 'brand/69763cbe8e62f0de5d54e7a175167b21.png', NULL, 1, 0),
	(5, 'Klein', 'brand/3ef3fc68fb5257294c4a796b0ae08e08.png', NULL, 1, 0),
	(6, 'Metabo', 'brand/66afc30e21e9ada47493dccfad00bd34.png', NULL, 1, 0);
/*!40000 ALTER TABLE `shop_brand` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_category
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE IF NOT EXISTS `shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_category: ~18 rows (approximately)
DELETE FROM `shop_category`;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` (`id`, `name`, `image`, `keyword`, `description`, `parent`, `sort`, `status`) VALUES
	(1, NULL, NULL, NULL, NULL, 0, 0, 1),
	(2, NULL, '', NULL, NULL, 0, 0, 1),
	(3, NULL, '', NULL, NULL, 0, 0, 1),
	(4, NULL, '', NULL, NULL, 0, 0, 1),
	(5, NULL, '', NULL, NULL, 0, 0, 1),
	(6, NULL, '', NULL, NULL, 9, 0, 1),
	(7, NULL, '', NULL, NULL, 4, 0, 1),
	(8, NULL, '', NULL, NULL, 4, 0, 1),
	(9, NULL, '', NULL, NULL, 0, 0, 1),
	(10, NULL, '', NULL, NULL, 2, 0, 1),
	(11, NULL, '', NULL, NULL, 1, 0, 1),
	(12, NULL, '', NULL, NULL, 1, 3, 1),
	(13, NULL, '', NULL, NULL, 9, 2, 1),
	(14, NULL, '', NULL, NULL, 4, 0, 1),
	(15, NULL, '', NULL, NULL, 5, 0, 1),
	(16, NULL, '', NULL, NULL, 2, 0, 1),
	(17, NULL, '', NULL, NULL, 3, 0, 1),
	(18, NULL, '', NULL, NULL, 3, 0, 1);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_category_description
DROP TABLE IF EXISTS `shop_category_description`;
CREATE TABLE IF NOT EXISTS `shop_category_description` (
  `shop_category_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `shop_category_id_lang_id` (`shop_category_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_category_description: ~36 rows (approximately)
DELETE FROM `shop_category_description`;
/*!40000 ALTER TABLE `shop_category_description` DISABLE KEYS */;
INSERT INTO `shop_category_description` (`shop_category_id`, `lang_id`, `name`, `keyword`, `description`) VALUES
	(1, 1, 'SPORTSWEAR', 'sản phẩm', NULL),
	(1, 2, 'Danh mục SPORTSWEAR', 'sản phẩm', NULL),
	(2, 1, 'MENS', 'iot', NULL),
	(2, 2, 'Danh mục MENS', 'iot', NULL),
	(3, 1, 'WOMENS', 'arduino', NULL),
	(3, 2, 'Danh mục WOMENS', 'arduino', NULL),
	(4, 1, 'KIDS', 'linh kiện điện tử', NULL),
	(4, 2, 'Danh mục KIDS', 'linh kiện điện tử', NULL),
	(5, 1, 'FASHION', 'in 3d', NULL),
	(5, 2, 'Danh mục FASHION', 'in 3d', NULL),
	(6, 1, 'GUESS', 'quạt đèn led, led fan', NULL),
	(6, 2, 'Danh mục GUESS', 'quạt đèn led, led fan', NULL),
	(7, 1, 'PUMA', 'ic', NULL),
	(7, 2, 'Danh mục PUMA', 'ic', NULL),
	(8, 1, 'ASICS', 'lcd', NULL),
	(8, 2, 'Danh mục ASICS', 'lcd', NULL),
	(9, 1, 'HOUSEHOLDS', 'quảng cáo, holo 3d, led fan', 'Những sản phẩm công nghệ'),
	(9, 2, 'Danh mục HOUSEHOLDS', 'quảng cáo, holo 3d, led fan', 'Những sản phẩm công nghệ'),
	(10, 1, 'VALENTINO', 'máy in 3d', NULL),
	(10, 2, 'Danh mục VALENTINO', 'máy in 3d', NULL),
	(11, 1, 'DIOR', 'diy, ráp máy in 3d', NULL),
	(11, 2, 'Danh mục DIOR', 'diy, ráp máy in 3d', NULL),
	(12, 1, 'VALENTINO', 'quatang,ledfan,quạt,hologram, quảng cáo', NULL),
	(12, 2, 'Danh mục VALENTINO', 'quatang,ledfan,quạt,hologram, quảng cáo', NULL),
	(13, 1, 'DIOR', 'quatang,ledfan', NULL),
	(13, 2, 'Danh mục DIOR', 'quatang,ledfan', NULL),
	(14, 1, 'FENDI', 'cảm biến, sensor', NULL),
	(14, 2, 'Danh mục FENDI', 'cảm biến, sensor', NULL),
	(15, 1, 'FENDI', 'in 3d, dịch vụ in 3d, 3d print, filament, tạo mẫu nhanh', NULL),
	(15, 2, 'Danh mục  FENDI', 'in 3d, dịch vụ in 3d, 3d print, filament, tạo mẫu nhanh', NULL),
	(16, 1, 'NIKE', '', NULL),
	(16, 2, 'Danh mục NIKE', '', NULL),
	(17, 1, 'UNDER ARMOUR', '', NULL),
	(17, 2, 'Danh mục UNDER ARMOUR', '', NULL),
	(18, 1, 'ADIDAS', 'Arduino Shield', NULL),
	(18, 2, 'Danh mục ADIDAS', 'Arduino Shield', NULL);
/*!40000 ALTER TABLE `shop_category_description` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_image
DROP TABLE IF EXISTS `shop_image`;
CREATE TABLE IF NOT EXISTS `shop_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(2) unsigned NOT NULL DEFAULT '0',
  `status` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_image: ~21 rows (approximately)
DELETE FROM `shop_image`;
/*!40000 ALTER TABLE `shop_image` DISABLE KEYS */;
INSERT INTO `shop_image` (`id`, `image`, `product_id`, `sort`, `status`) VALUES
	(82, 'product_slide/0642809276ecd6a28cb23d464cf41734.jpeg', 38, 0, 0),
	(83, 'product_slide/f4786d81509a8d8ffa461535b07c77bc.png', 38, 0, 0),
	(84, 'product_slide/e09af215f794f8225063c368f46a971d.jpeg', 39, 0, 0),
	(87, 'product_slide/54fac65e58eb9abafe3ac1acbde5ee6d.jpeg', 40, 0, 0),
	(88, 'product_slide/81f37c10d867710075e3ab6153a31d03.png', 40, 0, 0),
	(89, 'product_slide/2fbba5ac3b9c0838e5ce2b536d0c5659.jpeg', 42, 0, 0),
	(90, 'product_slide/8718dfdb75f951010cdce669768c3e3a.png', 42, 0, 0),
	(92, 'product_slide/86282e4f808428108773596dea5ee29c.jpeg', 43, 0, 0),
	(93, 'product_slide/b89873b9c888c0511e14c6e3abc798e8.jpeg', 43, 0, 0),
	(94, 'product_slide/b0d9ffad7e40d07bae6d36665f765e0f.jpeg', 43, 0, 0),
	(95, 'product_slide/70edffd9b5b4121fb8aee7e41c941f03.jpeg', 44, 0, 0),
	(96, 'product_slide/e9d5898fc6daf50751ec0c4e91ed904d.jpeg', 45, 0, 0),
	(102, 'product_slide/a68b1950f148f2688c916cf1c0b5ea06.jpeg', 48, 0, 0),
	(103, 'product_slide/d5d98e50039843507f11ba0bae136624.jpeg', 48, 0, 0),
	(109, 'product_slide/e91e85e37bb89ed854aa4123ce5eb14f.jpeg', 49, 0, 0),
	(110, 'product_slide/bcf85f60d3fe35de2c1be6272f9605ef.png', 52, 0, 0),
	(111, 'product_slide/40999526f41b1d4090e30c6b0ce21dca.jpg', 53, 0, 0),
	(113, 'product_slide/7963a1dc4e1676c2b3bc97ade96de7b6.jpeg', 49, 0, 0),
	(114, 'product_slide/101a109520cfbddde1be1791423010b6.jpeg', 46, 0, 0),
	(115, 'product_slide/f02dbb115272eac46f46f015608ab93a.jpeg', 46, 0, 0),
	(116, 'product_slide/89230e4667315ad3ce14785ebbe0bf2a.jpg', 48, 0, 0);
/*!40000 ALTER TABLE `shop_image` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_order
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE IF NOT EXISTS `shop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `subtotal` int(11) DEFAULT '0',
  `shipping` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `payment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-not send 1-pp send 2-sent',
  `shipping_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-notship 1-sending 2-pp send 3-shipped',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-new 1-processing 2-hold 3-cancel 4-Completed',
  `tax` tinyint(4) DEFAULT '0' COMMENT '%',
  `total` int(11) DEFAULT '0',
  `received` int(11) DEFAULT '0',
  `balance` int(11) DEFAULT '0',
  `toname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(3) DEFAULT NULL,
  `phone` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_order: ~37 rows (approximately)
DELETE FROM `shop_order`;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
INSERT INTO `shop_order` (`id`, `user_id`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `received`, `balance`, `toname`, `address1`, `address2`, `country`, `phone`, `email`, `comment`, `payment_method`, `transaction`, `created_at`, `updated_at`) VALUES
	(4, 0, 320000, 0, 0, 0, 0, 0, 0, 320000, 0, 320000, 'Le Nam', '15 nguyen bach', 'Tan Phu', NULL, '0999988898', '', 'ok', NULL, NULL, '2017-08-25 15:34:21', NULL),
	(38, 3, 485000, 15, -15, 0, 2, 4, 0, 485000, -485000, 0, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', '', NULL, NULL, NULL, '2018-05-15 13:59:39', '2018-05-20 06:13:07'),
	(39, 3, 1360000, 100000, -100000, 3, 1, 1, 0, 1360000, -1060000, 300000, 'Lê Văn Lanh', 'Quan 122', 'Ho chi minh', NULL, '0667151172', '', 'ok', NULL, NULL, '2018-05-18 13:59:31', '2018-09-03 17:17:09'),
	(74, 0, 20000, 10000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'Nguyễn Tuấn', '南陽市長岡', 'fghfghfghfghfg', NULL, '09012345678', '', 'ok', NULL, NULL, '2018-09-03 17:00:37', '2018-09-03 17:14:55'),
	(75, 5, 45000, 20000, 0, 0, 0, 0, 0, 65000, 0, 65000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', '', NULL, NULL, NULL, '2018-09-05 20:59:07', NULL),
	(76, 5, 15000, 20000, -10000, 0, 0, 0, 0, 122000, 0, -115000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', '', NULL, NULL, NULL, '2018-09-06 18:59:25', NULL),
	(77, 5, 20000, 20000, -6000, 0, 0, 0, 0, 34000, 0, 34000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', '', NULL, NULL, NULL, '2018-09-07 20:58:47', NULL),
	(78, 5, NULL, 20000, 0, 0, 0, 0, 0, 20000, 0, 20000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', '', NULL, NULL, NULL, '2018-09-08 00:27:24', '2018-09-12 22:28:50'),
	(93, 3, 25000, 20000, -25000, 0, 0, 0, 0, 20000, 0, 20000, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', '', NULL, 'paypal', NULL, '2018-09-23 12:41:07', NULL),
	(94, 3, 30000, 20000, -30000, 0, 0, 0, 0, 20000, 0, 20000, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', '', NULL, 'paypal', NULL, '2018-09-23 12:44:03', NULL),
	(95, 3, 30000, 20000, -30000, 0, 0, 0, 0, 20000, 0, 20000, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', '', NULL, 'paypal', NULL, '2018-09-23 12:46:05', NULL),
	(96, 3, 10000, 20000, -10000, 0, 0, 3, 0, 20000, -10000, 10000, 'ABC', 'Quan 12', 'Ho chi minh', NULL, '066715117', '', NULL, 'paypal', 'PAY-96U44306W49582248LOTSSOY', '2018-09-23 12:48:40', '2018-09-23 12:53:18'),
	(97, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'H', 'H', 'H', NULL, '01634521235', '', NULL, 'cash', NULL, '2018-09-23 19:50:53', NULL),
	(98, 0, 25000, 20000, 0, 0, 0, 0, 0, 45000, 0, 45000, 'asda', 'sadasd', 'asdasdas', NULL, '0123456789', '', NULL, 'paypal', NULL, '2018-09-23 20:20:04', NULL),
	(99, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'qưewqr', 'qrwqwr', 'qửqwr', NULL, '01654978214', '', NULL, 'paypal', NULL, '2018-09-23 21:43:24', NULL),
	(100, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'rêtrt', 'rbb r', 'weter', NULL, '098765412', '', 'xzfvsf', 'paypal', NULL, '2018-09-23 21:48:17', NULL),
	(101, 0, 30000, 20000, 0, 0, 0, 0, 0, 50000, 0, 50000, 'abc', 'abc', 'abc', NULL, '0938475873', '', NULL, 'paypal', NULL, '2018-09-23 22:43:12', NULL),
	(102, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, '12313', '123123', '123132', NULL, '01656657073', '', NULL, 'paypal', NULL, '2018-09-24 09:14:19', NULL),
	(103, 0, 100000, 20000, 0, 0, 0, 0, 0, 120000, 0, 120000, '12313', 'Mai Dịch', '123123', NULL, '01656657073', '', NULL, 'cash', NULL, '2018-09-24 09:15:16', NULL),
	(104, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, '12313', 'Mai Dịch', '1212', NULL, '01656657073', '', NULL, 'paypal', NULL, '2018-09-24 09:15:56', NULL),
	(105, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'ádas', 'đâsd', 'ádasd', NULL, '0123456789', '', 'ádasd', 'paypal', NULL, '2018-09-24 10:02:55', NULL),
	(106, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'qrweqr', 'safsdafsd', 'safsfds', NULL, '0112353534253', '', NULL, 'cash', NULL, '2018-09-24 11:55:30', NULL),
	(107, 0, 25000, 20000, 0, 0, 0, 0, 0, 45000, 0, 45000, 'fgh', 'ỷty', 'ẻye', NULL, '076895684', '', NULL, 'paypal', NULL, '2018-09-24 15:59:29', NULL),
	(108, 0, 25000, 20000, 0, 0, 0, 0, 0, 45000, 0, 45000, 'aaa', 'aaaa', 'aaaaa', NULL, '0989653466', '', NULL, 'cash', NULL, '2018-09-25 08:41:44', NULL),
	(109, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'viet', 'ha noi', 'ha noi', NULL, '0966694980', '', NULL, 'cash', NULL, '2018-09-25 18:52:30', NULL),
	(110, 0, 25000, 20000, 0, 0, 0, 0, 0, 45000, 0, 45000, 'vhh', '86/26 nguyen huy tuong', 'kjhkj', NULL, '0935147435', '', NULL, 'paypal', NULL, '2018-09-26 10:23:16', NULL),
	(111, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'dũng', 'dũng', 'dũng', NULL, '094949494545', '', NULL, 'cash', NULL, '2018-09-28 09:37:05', NULL),
	(112, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'rtada', '1231addasd', 'ádasdasd', NULL, '0166468236014', '', 'đấ', 'paypal', NULL, '2018-10-05 21:40:26', NULL),
	(113, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'sdfsdf', '123', '123', NULL, '01234567890', '', NULL, 'paypal', NULL, '2018-10-07 22:14:36', NULL),
	(114, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'Test', 'Le Duc Tho', 'vietnam', NULL, '0988606927', '', NULL, 'cash', NULL, '2018-10-08 09:31:50', NULL),
	(115, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'ngnfg', 'sdhsdh', 'ndfnjdf', NULL, '0956756746', '', NULL, 'paypal', NULL, '2018-10-08 18:14:53', NULL),
	(116, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'zxcas4asd', 'Ha noi ba dinh', 'ha noi', NULL, '0955071019', '', NULL, 'paypal', NULL, '2018-10-09 11:23:37', NULL),
	(117, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'paul', 'Najjera', 'Kazo', NULL, '0785297660', '', 'Hi', 'cash', NULL, '2018-10-09 18:02:43', NULL),
	(118, 0, 10000, 20000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'krissanawat kaewsanmuang', 'rhtrthrth', 'rthrth', NULL, '0843534534', '', NULL, 'paypal', NULL, '2018-10-17 06:42:22', NULL),
	(119, 7, 15000, 200000, 0, 0, 0, 0, 0, 215000, 0, 215000, 'trucnguyen', 'viet nam', 'viet nam', NULL, '0975236548', '', NULL, 'paypal', NULL, '2018-10-17 23:38:23', '2018-10-18 21:41:20'),
	(120, 0, 40000, 20000, 0, 0, 0, 0, 0, 60000, 0, 60000, 'dfd', 'sdfsdf', 'sdfsdfsdf', NULL, '09012345678', NULL, NULL, 'paypal', NULL, '2018-10-19 21:44:17', NULL),
	(121, 0, 15000, 20000, 0, 0, 0, 0, 0, 35000, 0, 35000, 'Hung', '南陽市長岡', 'fgdfg', NULL, '09012345678', NULL, 'dgdfgdfg', 'paypal', NULL, '2018-10-19 21:48:06', NULL);
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_order_detail
DROP TABLE IF EXISTS `shop_order_detail`;
CREATE TABLE IF NOT EXISTS `shop_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0' COMMENT 'Price: price of product or type',
  `qty` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT '0',
  `sku` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Attributes',
  `option` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_order_detail: ~42 rows (approximately)
DELETE FROM `shop_order_detail`;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
INSERT INTO `shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `total_price`, `sku`, `type`, `option`, `created_at`, `updated_at`) VALUES
	(131, 74, 32, 'Dây Gia Nhiệt 12V 40W Máy In 3D', 20000, 1, 20000, '3D-HOTWIRE1240', '[]', NULL, '2018-09-03 17:00:37', NULL),
	(132, 75, 44, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, 'P10-IRG', '[]', NULL, '2018-09-05 20:59:07', NULL),
	(133, 75, 20, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, 'SS495A', '[]', NULL, '2018-09-05 20:59:07', NULL),
	(134, 75, 35, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, '3D-SENSOR-NTC 100K', '[]', NULL, '2018-09-05 20:59:07', NULL),
	(135, 76, 35, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, '3D-SENSOR-NTC 100K', '[]', NULL, '2018-09-06 18:59:25', NULL),
	(136, 77, 34, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 20000, 1, 20000, '3D-TEFTLON-W24', '[]', NULL, '2018-09-07 20:58:47', NULL),
	(152, 93, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 12:41:07', NULL),
	(153, 93, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 12:41:07', NULL),
	(154, 94, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 12:44:03', NULL),
	(155, 94, 47, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5U0', '[]', NULL, '2018-09-23 12:44:03', NULL),
	(156, 95, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 12:46:05', NULL),
	(157, 95, 47, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5U0', '[]', NULL, '2018-09-23 12:46:05', NULL),
	(158, 96, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 12:48:40', NULL),
	(159, 97, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 19:50:53', NULL),
	(160, 98, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 20:20:04', NULL),
	(161, 98, 46, 'Easy Polo Black Edition', 15000, 1, 15000, 'P2.5-I', '[]', NULL, '2018-09-23 20:20:04', NULL),
	(162, 99, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 21:43:24', NULL),
	(163, 100, 40, 'Easy Polo Black Edition', 15000, 1, 15000, 'P10-IR', '[]', NULL, '2018-09-23 21:48:17', NULL),
	(164, 101, 45, 'Easy Polo Black Edition', 15000, 2, 30000, 'LFF', '[]', NULL, '2018-09-23 22:43:12', NULL),
	(165, 102, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-09-24 09:14:19', NULL),
	(166, 103, 37, 'Easy Polo Black Edition', 100000, 1, 100000, 'ARDUINO-NANO', '[]', NULL, '2018-09-24 09:15:16', NULL),
	(167, 104, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-24 09:15:56', NULL),
	(168, 105, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-09-24 10:02:55', NULL),
	(169, 106, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-09-24 11:55:30', NULL),
	(170, 107, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-24 15:59:29', NULL),
	(171, 107, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-24 15:59:29', NULL),
	(172, 108, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-25 08:41:44', NULL),
	(173, 108, 45, 'Easy Polo Black Edition', 15000, 1, 15000, 'LFF', '[]', NULL, '2018-09-25 08:41:44', NULL),
	(174, 109, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-25 18:52:30', NULL),
	(175, 110, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-26 10:23:16', NULL),
	(176, 110, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-26 10:23:16', NULL),
	(177, 111, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-28 09:37:05', NULL),
	(178, 112, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-05 21:40:26', NULL),
	(179, 113, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-07 22:14:36', NULL),
	(180, 114, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-08 09:31:50', NULL),
	(181, 115, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-08 18:14:53', NULL),
	(182, 116, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-10-09 11:23:37', NULL),
	(183, 117, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-10-09 18:02:43', NULL),
	(184, 118, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-10-17 06:42:22', NULL),
	(185, 119, 41, 'Easy Polo Black Edition', 15000, 1, 15000, 'P10-IG', '[]', NULL, '2018-10-17 23:38:23', NULL),
	(186, 120, 6, 'Easy Polo Black Edition', 40000, 1, 40000, 'CLOCKFAN2', '[]', NULL, '2018-10-19 21:44:17', NULL),
	(187, 121, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-10-19 21:48:06', NULL);
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_order_history
DROP TABLE IF EXISTS `shop_order_history`;
CREATE TABLE IF NOT EXISTS `shop_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_order_history: ~48 rows (approximately)
DELETE FROM `shop_order_history`;
/*!40000 ALTER TABLE `shop_order_history` DISABLE KEYS */;
INSERT INTO `shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `user_id`, `add_date`) VALUES
	(40, 74, 'New order', 0, 0, '2018-09-03 17:00:37'),
	(41, 74, 'Thay đổi <b>comment</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'ok\'</span>', 1, 0, '2018-09-03 17:14:49'),
	(42, 74, 'Thay đổi <b>shipping</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'10000\'</span>', 1, 0, '2018-09-03 17:14:55'),
	(43, 39, 'Thay đổi <b>status</b> từ <span style="color:blue">\'4\'</span> thành <span style="color:red">\'1\'</span>', 1, 0, '2018-09-03 17:17:00'),
	(44, 39, 'Thay đổi <b>received</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'-1060000\'</span>', 1, 0, '2018-09-03 17:17:09'),
	(45, 75, 'New order', 0, 5, '2018-09-05 20:59:07'),
	(46, 76, 'New order', 0, 5, '2018-09-06 18:59:25'),
	(47, 77, 'New order', 0, 5, '2018-09-07 20:58:47'),
	(48, 78, 'New order', 0, 5, '2018-09-08 00:27:24'),
	(49, 78, 'Xóa sản phẩm pID#137', 1, 0, '2018-09-12 22:28:50'),
	(71, 93, 'New order', 0, 3, '2018-09-23 12:41:07'),
	(72, 94, 'New order', 0, 3, '2018-09-23 12:44:03'),
	(73, 95, 'New order', 0, 3, '2018-09-23 12:46:05'),
	(74, 96, 'New order', 0, 3, '2018-09-23 12:48:40'),
	(75, 96, 'Transaction PAY-96U44306W49582248LOTSSOY', 0, 3, '2018-09-23 12:49:20'),
	(76, 96, 'Thay đổi <b>status</b> từ <span style="color:blue">\'0\'</span> thành <span style="color:red">\'1\'</span>', 1, 0, '2018-09-23 12:51:14'),
	(77, 96, 'Thay đổi <b>status</b> từ <span style="color:blue">\'1\'</span> thành <span style="color:red">\'3\'</span>', 1, 0, '2018-09-23 12:51:21'),
	(78, 96, 'Thay đổi <b>phone</b> từ <span style="color:blue">\'0667151172\'</span> thành <span style="color:red">\'066715117\'</span>', 1, 0, '2018-09-23 12:51:59'),
	(79, 96, 'Thay đổi <b>toname</b> từ <span style="color:blue">\'Lê Văn Lanh\'</span> thành <span style="color:red">\'LLanh\'</span>', 1, 0, '2018-09-23 12:52:05'),
	(80, 96, 'Thay đổi <b>toname</b> từ <span style="color:blue">\'LLanh\'</span> thành <span style="color:red">\'Lê Văn\'</span>', 1, 0, '2018-09-23 12:52:11'),
	(81, 96, 'Thay đổi <b>toname</b> từ <span style="color:blue">\'Lê Văn\'</span> thành <span style="color:red">\'ABC\'</span>', 1, 0, '2018-09-23 12:52:23'),
	(82, 96, 'Thay đổi <b>received</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'-10000\'</span>', 1, 0, '2018-09-23 12:53:18'),
	(83, 97, 'New order', 0, 0, '2018-09-23 19:50:53'),
	(84, 98, 'New order', 0, 0, '2018-09-23 20:20:04'),
	(85, 99, 'New order', 0, 0, '2018-09-23 21:43:24'),
	(86, 100, 'New order', 0, 0, '2018-09-23 21:48:17'),
	(87, 101, 'New order', 0, 0, '2018-09-23 22:43:12'),
	(88, 102, 'New order', 0, 0, '2018-09-24 09:14:19'),
	(89, 103, 'New order', 0, 0, '2018-09-24 09:15:16'),
	(90, 104, 'New order', 0, 0, '2018-09-24 09:15:56'),
	(91, 105, 'New order', 0, 0, '2018-09-24 10:02:55'),
	(92, 106, 'New order', 0, 0, '2018-09-24 11:55:30'),
	(93, 107, 'New order', 0, 0, '2018-09-24 15:59:29'),
	(94, 108, 'New order', 0, 0, '2018-09-25 08:41:44'),
	(95, 109, 'New order', 0, 0, '2018-09-25 18:52:30'),
	(96, 110, 'New order', 0, 0, '2018-09-26 10:23:16'),
	(97, 111, 'New order', 0, 0, '2018-09-28 09:37:05'),
	(98, 112, 'New order', 0, 0, '2018-10-05 21:40:26'),
	(99, 113, 'New order', 0, 0, '2018-10-07 22:14:36'),
	(100, 114, 'New order', 0, 0, '2018-10-08 09:31:51'),
	(101, 115, 'New order', 0, 0, '2018-10-08 18:14:53'),
	(102, 116, 'New order', 0, 0, '2018-10-09 11:23:37'),
	(103, 117, 'New order', 0, 0, '2018-10-09 18:02:43'),
	(104, 118, 'New order', 0, 0, '2018-10-17 06:42:22'),
	(105, 119, 'New order', 0, 7, '2018-10-17 23:38:23'),
	(106, 119, 'Thay đổi <b>shipping</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'200000\'</span>', 1, 0, '2018-10-18 21:41:20'),
	(107, 120, 'New order', 0, 0, '2018-10-19 21:44:17'),
	(108, 121, 'New order', 0, 0, '2018-10-19 21:48:06');
/*!40000 ALTER TABLE `shop_order_history` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_order_status
DROP TABLE IF EXISTS `shop_order_status`;
CREATE TABLE IF NOT EXISTS `shop_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_order_status: ~6 rows (approximately)
DELETE FROM `shop_order_status`;
/*!40000 ALTER TABLE `shop_order_status` DISABLE KEYS */;
INSERT INTO `shop_order_status` (`id`, `name`) VALUES
	(0, 'Mới'),
	(1, 'Đang xử lý'),
	(2, 'Tạm giữ'),
	(3, 'Hủy bỏ'),
	(4, 'Hoàn thành'),
	(5, 'Failed');
/*!40000 ALTER TABLE `shop_order_status` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_order_total
DROP TABLE IF EXISTS `shop_order_total`;
CREATE TABLE IF NOT EXISTS `shop_order_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_order_total: ~250 rows (approximately)
DELETE FROM `shop_order_total`;
/*!40000 ALTER TABLE `shop_order_total` DISABLE KEYS */;
INSERT INTO `shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `sort`, `created_at`, `updated_at`) VALUES
	(34, 38, 'Tổng tiền hàng', 'subtotal', 485000, 1, '2018-05-15 13:59:39', '2018-05-20 06:12:46'),
	(35, 38, 'Phí giao hàng', 'shipping', 15, 10, '2018-05-15 13:59:39', '2018-05-15 14:03:52'),
	(36, 38, 'Giảm giá', 'discount', -15, 20, '2018-05-15 13:59:39', '2018-05-15 14:03:34'),
	(37, 38, 'Đã thanh toán', 'received', -485000, 200, '2018-05-15 13:59:39', '2018-05-20 06:12:58'),
	(38, 38, 'Tổng tiền cần thanh toán', 'total', 485000, 100, '2018-05-15 13:59:39', '2018-05-20 06:12:46'),
	(39, 39, 'Tổng tiền hàng', 'subtotal', 1360000, 1, '2018-05-18 13:59:31', '2018-05-20 05:59:45'),
	(40, 39, 'Phí giao hàng', 'shipping', 100000, 10, '2018-05-18 13:59:31', '2018-05-20 06:07:14'),
	(41, 39, 'Giảm giá', 'discount', -100000, 20, '2018-05-18 13:59:31', '2018-05-20 04:29:42'),
	(42, 39, 'Tổng tiền cần thanh toán', 'total', 1360000, 100, '2018-05-18 13:59:31', '2018-05-20 06:07:14'),
	(43, 39, 'Đã thanh toán', 'received', -1060000, 200, '2018-05-18 13:59:31', '2018-09-03 17:17:09'),
	(214, 74, 'Tổng tiền hàng', 'subtotal', 20000, 1, '2018-09-03 17:00:37', NULL),
	(215, 74, 'Phí giao hàng', 'shipping', 10000, 10, '2018-09-03 17:00:37', '2018-09-03 17:14:55'),
	(216, 74, 'Giảm giá', 'discount', 0, 20, '2018-09-03 17:00:37', NULL),
	(217, 74, 'Tổng tiền cần thanh toán', 'total', 30000, 100, '2018-09-03 17:00:37', '2018-09-03 17:14:55'),
	(218, 74, 'Đã thanh toán', 'received', 0, 200, '2018-09-03 17:00:37', NULL),
	(219, 75, 'Tổng tiền hàng', 'subtotal', 45000, 1, '2018-09-05 20:59:07', NULL),
	(220, 75, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-05 20:59:07', NULL),
	(221, 75, 'Giảm giá', 'discount', 0, 20, '2018-09-05 20:59:07', NULL),
	(222, 75, 'Tổng tiền cần thanh toán', 'total', 65000, 100, '2018-09-05 20:59:07', NULL),
	(223, 75, 'Đã thanh toán', 'received', 0, 200, '2018-09-05 20:59:07', NULL),
	(224, 76, 'Tổng tiền hàng', 'subtotal', 15000, 1, '2018-09-06 18:59:25', NULL),
	(225, 76, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-06 18:59:25', NULL),
	(226, 76, 'Giảm giá 150,000VNĐ (<b>Code:</b> PAA-LLK04)', 'discount', -150000, 20, '2018-09-06 18:59:25', NULL),
	(227, 76, 'Tổng tiền cần thanh toán', 'total', -115000, 100, '2018-09-06 18:59:25', NULL),
	(228, 76, 'Đã thanh toán', 'received', 0, 200, '2018-09-06 18:59:25', NULL),
	(229, 77, 'Tổng tiền hàng', 'subtotal', 20000, 1, '2018-09-07 20:58:47', NULL),
	(230, 77, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-07 20:58:47', NULL),
	(231, 77, 'Giảm tối đa 30% (<b>Code:</b> KKB3-KLLA)', 'discount', -6000, 20, '2018-09-07 20:58:47', NULL),
	(232, 77, 'Tổng tiền cần thanh toán', 'total', 34000, 100, '2018-09-07 20:58:47', NULL),
	(233, 77, 'Đã thanh toán', 'received', 0, 200, '2018-09-07 20:58:47', NULL),
	(234, 78, 'Tổng tiền hàng', 'subtotal', 20000, 1, '2018-09-08 00:27:24', NULL),
	(235, 78, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-08 00:27:24', NULL),
	(236, 78, 'Giảm giá', 'discount', 0, 20, '2018-09-08 00:27:24', NULL),
	(237, 78, 'Tổng tiền cần thanh toán', 'total', 20000, 100, '2018-09-08 00:27:24', '2018-09-12 22:28:50'),
	(238, 78, 'Đã thanh toán', 'received', 0, 200, '2018-09-08 00:27:24', NULL),
	(239, 79, 'Tổng tiền hàng', 'subtotal', 15000, 1, '2018-09-23 08:54:19', NULL),
	(240, 79, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-23 08:54:19', NULL),
	(241, 79, 'Giảm giá', 'discount', 0, 20, '2018-09-23 08:54:19', NULL),
	(242, 79, 'Tổng tiền cần thanh toán', 'total', 35000, 100, '2018-09-23 08:54:19', NULL),
	(243, 79, 'Đã thanh toán', 'received', 0, 200, '2018-09-23 08:54:19', NULL),
	(244, 80, 'Tổng tiền hàng', 'subtotal', 15000, 1, '2018-09-23 09:34:17', NULL),
	(245, 80, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-23 09:34:17', NULL),
	(246, 80, 'Giảm giá', 'discount', 0, 20, '2018-09-23 09:34:17', NULL),
	(247, 80, 'Tổng tiền cần thanh toán', 'total', 35000, 100, '2018-09-23 09:34:17', NULL),
	(248, 80, 'Đã thanh toán', 'received', 0, 200, '2018-09-23 09:34:17', NULL),
	(249, 81, 'Tổng tiền hàng', 'subtotal', 10000, 1, '2018-09-23 09:34:47', NULL),
	(250, 81, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-23 09:34:47', NULL),
	(251, 81, 'Giảm giá', 'discount', 0, 20, '2018-09-23 09:34:47', NULL),
	(252, 81, 'Tổng tiền cần thanh toán', 'total', 30000, 100, '2018-09-23 09:34:47', NULL),
	(253, 81, 'Đã thanh toán', 'received', 0, 200, '2018-09-23 09:34:47', NULL),
	(254, 82, 'Sub total', 'subtotal', 25000, 1, '2018-09-23 11:57:34', NULL),
	(255, 82, 'Shipping', 'shipping', 20000, 10, '2018-09-23 11:57:34', NULL),
	(256, 82, 'Discount', 'discount', 0, 20, '2018-09-23 11:57:34', NULL),
	(257, 82, 'Total', 'total', 45000, 100, '2018-09-23 11:57:34', NULL),
	(258, 82, 'Received', 'received', 0, 200, '2018-09-23 11:57:34', NULL),
	(259, 83, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 11:59:49', NULL),
	(260, 83, 'Shipping', 'shipping', 20000, 10, '2018-09-23 11:59:49', NULL),
	(261, 83, 'Discount', 'discount', 0, 20, '2018-09-23 11:59:49', NULL),
	(262, 83, 'Total', 'total', 35000, 100, '2018-09-23 11:59:49', NULL),
	(263, 83, 'Received', 'received', 0, 200, '2018-09-23 11:59:49', NULL),
	(264, 84, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:00:51', NULL),
	(265, 84, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:00:51', NULL),
	(266, 84, 'Discount', 'discount', 0, 20, '2018-09-23 12:00:51', NULL),
	(267, 84, 'Total', 'total', 35000, 100, '2018-09-23 12:00:51', NULL),
	(268, 84, 'Received', 'received', 0, 200, '2018-09-23 12:00:51', NULL),
	(269, 85, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:09:37', NULL),
	(270, 85, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:09:37', NULL),
	(271, 85, 'Discount', 'discount', 0, 20, '2018-09-23 12:09:37', NULL),
	(272, 85, 'Total', 'total', 35000, 100, '2018-09-23 12:09:37', NULL),
	(273, 85, 'Received', 'received', 0, 200, '2018-09-23 12:09:37', NULL),
	(274, 86, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:11:27', NULL),
	(275, 86, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:11:27', NULL),
	(276, 86, 'Discount', 'discount', 0, 20, '2018-09-23 12:11:27', NULL),
	(277, 86, 'Total', 'total', 35000, 100, '2018-09-23 12:11:27', NULL),
	(278, 86, 'Received', 'received', 0, 200, '2018-09-23 12:11:27', NULL),
	(279, 87, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:15:40', NULL),
	(280, 87, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:15:40', NULL),
	(281, 87, 'Discount', 'discount', 0, 20, '2018-09-23 12:15:40', NULL),
	(282, 87, 'Total', 'total', 35000, 100, '2018-09-23 12:15:40', NULL),
	(283, 87, 'Received', 'received', 0, 200, '2018-09-23 12:15:40', NULL),
	(284, 88, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 12:18:08', NULL),
	(285, 88, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:18:08', NULL),
	(286, 88, 'Discount', 'discount', 0, 20, '2018-09-23 12:18:08', NULL),
	(287, 88, 'Total', 'total', 30000, 100, '2018-09-23 12:18:08', NULL),
	(288, 88, 'Received', 'received', 0, 200, '2018-09-23 12:18:08', NULL),
	(289, 89, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 12:21:04', NULL),
	(290, 89, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:21:04', NULL),
	(291, 89, 'Discount', 'discount', 0, 20, '2018-09-23 12:21:04', NULL),
	(292, 89, 'Total', 'total', 30000, 100, '2018-09-23 12:21:04', NULL),
	(293, 89, 'Received', 'received', 0, 200, '2018-09-23 12:21:04', NULL),
	(294, 90, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:26:19', NULL),
	(295, 90, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:26:19', NULL),
	(296, 90, 'Discount', 'discount', 0, 20, '2018-09-23 12:26:19', NULL),
	(297, 90, 'Total', 'total', 35000, 100, '2018-09-23 12:26:19', NULL),
	(298, 90, 'Received', 'received', 0, 200, '2018-09-23 12:26:19', NULL),
	(299, 91, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:29:11', NULL),
	(300, 91, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:29:11', NULL),
	(301, 91, 'Discount', 'discount', 0, 20, '2018-09-23 12:29:11', NULL),
	(302, 91, 'Total', 'total', 35000, 100, '2018-09-23 12:29:11', NULL),
	(303, 91, 'Received', 'received', 0, 200, '2018-09-23 12:29:11', NULL),
	(304, 92, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:31:28', NULL),
	(305, 92, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:31:28', NULL),
	(306, 92, 'Discount', 'discount', 0, 20, '2018-09-23 12:31:28', NULL),
	(307, 92, 'Total', 'total', 35000, 100, '2018-09-23 12:31:28', NULL),
	(308, 92, 'Received', 'received', 0, 200, '2018-09-23 12:31:28', NULL),
	(309, 93, 'Sub total', 'subtotal', 25000, 1, '2018-09-23 12:41:07', NULL),
	(310, 93, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:41:07', NULL),
	(311, 93, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK07)', 'discount', -25000, 20, '2018-09-23 12:41:07', NULL),
	(312, 93, 'Total', 'total', 20000, 100, '2018-09-23 12:41:07', NULL),
	(313, 93, 'Received', 'received', 0, 200, '2018-09-23 12:41:07', NULL),
	(314, 94, 'Sub total', 'subtotal', 30000, 1, '2018-09-23 12:44:03', NULL),
	(315, 94, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:44:03', NULL),
	(316, 94, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK08)', 'discount', -30000, 20, '2018-09-23 12:44:03', NULL),
	(317, 94, 'Total', 'total', 20000, 100, '2018-09-23 12:44:03', NULL),
	(318, 94, 'Received', 'received', 0, 200, '2018-09-23 12:44:03', NULL),
	(319, 95, 'Sub total', 'subtotal', 30000, 1, '2018-09-23 12:46:05', NULL),
	(320, 95, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:46:05', NULL),
	(321, 95, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK09)', 'discount', -30000, 20, '2018-09-23 12:46:05', NULL),
	(322, 95, 'Total', 'total', 20000, 100, '2018-09-23 12:46:05', NULL),
	(323, 95, 'Received', 'received', 0, 200, '2018-09-23 12:46:05', NULL),
	(324, 96, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 12:48:40', NULL),
	(325, 96, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:48:40', NULL),
	(326, 96, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK010)', 'discount', -10000, 20, '2018-09-23 12:48:40', NULL),
	(327, 96, 'Total', 'total', 20000, 100, '2018-09-23 12:48:40', NULL),
	(328, 96, 'Received', 'received', -10000, 200, '2018-09-23 12:48:40', '2018-09-23 12:53:18'),
	(329, 97, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 19:50:53', NULL),
	(330, 97, 'Shipping', 'shipping', 20000, 10, '2018-09-23 19:50:53', NULL),
	(331, 97, 'Discount', 'discount', 0, 20, '2018-09-23 19:50:53', NULL),
	(332, 97, 'Total', 'total', 30000, 100, '2018-09-23 19:50:53', NULL),
	(333, 97, 'Received', 'received', 0, 200, '2018-09-23 19:50:53', NULL),
	(334, 98, 'Sub total', 'subtotal', 25000, 1, '2018-09-23 20:20:04', NULL),
	(335, 98, 'Shipping', 'shipping', 20000, 10, '2018-09-23 20:20:04', NULL),
	(336, 98, 'Discount', 'discount', 0, 20, '2018-09-23 20:20:04', NULL),
	(337, 98, 'Total', 'total', 45000, 100, '2018-09-23 20:20:04', NULL),
	(338, 98, 'Received', 'received', 0, 200, '2018-09-23 20:20:04', NULL),
	(339, 99, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 21:43:24', NULL),
	(340, 99, 'Shipping', 'shipping', 20000, 10, '2018-09-23 21:43:24', NULL),
	(341, 99, 'Discount', 'discount', 0, 20, '2018-09-23 21:43:24', NULL),
	(342, 99, 'Total', 'total', 35000, 100, '2018-09-23 21:43:24', NULL),
	(343, 99, 'Received', 'received', 0, 200, '2018-09-23 21:43:24', NULL),
	(344, 100, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 21:48:17', NULL),
	(345, 100, 'Shipping', 'shipping', 20000, 10, '2018-09-23 21:48:17', NULL),
	(346, 100, 'Discount', 'discount', 0, 20, '2018-09-23 21:48:17', NULL),
	(347, 100, 'Total', 'total', 35000, 100, '2018-09-23 21:48:17', NULL),
	(348, 100, 'Received', 'received', 0, 200, '2018-09-23 21:48:17', NULL),
	(349, 101, 'Sub total', 'subtotal', 30000, 1, '2018-09-23 22:43:12', NULL),
	(350, 101, 'Shipping', 'shipping', 20000, 10, '2018-09-23 22:43:12', NULL),
	(351, 101, 'Discount', 'discount', 0, 20, '2018-09-23 22:43:12', NULL),
	(352, 101, 'Total', 'total', 50000, 100, '2018-09-23 22:43:12', NULL),
	(353, 101, 'Received', 'received', 0, 200, '2018-09-23 22:43:12', NULL),
	(354, 102, 'Sub total', 'subtotal', 15000, 1, '2018-09-24 09:14:19', NULL),
	(355, 102, 'Shipping', 'shipping', 20000, 10, '2018-09-24 09:14:19', NULL),
	(356, 102, 'Discount', 'discount', 0, 20, '2018-09-24 09:14:19', NULL),
	(357, 102, 'Total', 'total', 35000, 100, '2018-09-24 09:14:19', NULL),
	(358, 102, 'Received', 'received', 0, 200, '2018-09-24 09:14:19', NULL),
	(359, 103, 'Sub total', 'subtotal', 100000, 1, '2018-09-24 09:15:16', NULL),
	(360, 103, 'Shipping', 'shipping', 20000, 10, '2018-09-24 09:15:16', NULL),
	(361, 103, 'Discount', 'discount', 0, 20, '2018-09-24 09:15:16', NULL),
	(362, 103, 'Total', 'total', 120000, 100, '2018-09-24 09:15:16', NULL),
	(363, 103, 'Received', 'received', 0, 200, '2018-09-24 09:15:16', NULL),
	(364, 104, 'Sub total', 'subtotal', 10000, 1, '2018-09-24 09:15:56', NULL),
	(365, 104, 'Shipping', 'shipping', 20000, 10, '2018-09-24 09:15:56', NULL),
	(366, 104, 'Discount', 'discount', 0, 20, '2018-09-24 09:15:56', NULL),
	(367, 104, 'Total', 'total', 30000, 100, '2018-09-24 09:15:56', NULL),
	(368, 104, 'Received', 'received', 0, 200, '2018-09-24 09:15:56', NULL),
	(369, 105, 'Sub total', 'subtotal', 15000, 1, '2018-09-24 10:02:55', NULL),
	(370, 105, 'Shipping', 'shipping', 20000, 10, '2018-09-24 10:02:55', NULL),
	(371, 105, 'Discount', 'discount', 0, 20, '2018-09-24 10:02:55', NULL),
	(372, 105, 'Total', 'total', 35000, 100, '2018-09-24 10:02:55', NULL),
	(373, 105, 'Received', 'received', 0, 200, '2018-09-24 10:02:55', NULL),
	(374, 106, 'Sub total', 'subtotal', 15000, 1, '2018-09-24 11:55:30', NULL),
	(375, 106, 'Shipping', 'shipping', 20000, 10, '2018-09-24 11:55:30', NULL),
	(376, 106, 'Discount', 'discount', 0, 20, '2018-09-24 11:55:30', NULL),
	(377, 106, 'Total', 'total', 35000, 100, '2018-09-24 11:55:30', NULL),
	(378, 106, 'Received', 'received', 0, 200, '2018-09-24 11:55:30', NULL),
	(379, 107, 'Sub total', 'subtotal', 25000, 1, '2018-09-24 15:59:29', NULL),
	(380, 107, 'Shipping', 'shipping', 20000, 10, '2018-09-24 15:59:29', NULL),
	(381, 107, 'Discount', 'discount', 0, 20, '2018-09-24 15:59:29', NULL),
	(382, 107, 'Total', 'total', 45000, 100, '2018-09-24 15:59:29', NULL),
	(383, 107, 'Received', 'received', 0, 200, '2018-09-24 15:59:29', NULL),
	(384, 108, 'Sub total', 'subtotal', 25000, 1, '2018-09-25 08:41:44', NULL),
	(385, 108, 'Shipping', 'shipping', 20000, 10, '2018-09-25 08:41:44', NULL),
	(386, 108, 'Discount', 'discount', 0, 20, '2018-09-25 08:41:44', NULL),
	(387, 108, 'Total', 'total', 45000, 100, '2018-09-25 08:41:44', NULL),
	(388, 108, 'Received', 'received', 0, 200, '2018-09-25 08:41:44', NULL),
	(389, 109, 'Sub total', 'subtotal', 10000, 1, '2018-09-25 18:52:30', NULL),
	(390, 109, 'Shipping', 'shipping', 20000, 10, '2018-09-25 18:52:30', NULL),
	(391, 109, 'Discount', 'discount', 0, 20, '2018-09-25 18:52:30', NULL),
	(392, 109, 'Total', 'total', 30000, 100, '2018-09-25 18:52:30', NULL),
	(393, 109, 'Received', 'received', 0, 200, '2018-09-25 18:52:30', NULL),
	(394, 110, 'Sub total', 'subtotal', 25000, 1, '2018-09-26 10:23:16', NULL),
	(395, 110, 'Shipping', 'shipping', 20000, 10, '2018-09-26 10:23:16', NULL),
	(396, 110, 'Discount', 'discount', 0, 20, '2018-09-26 10:23:16', NULL),
	(397, 110, 'Total', 'total', 45000, 100, '2018-09-26 10:23:16', NULL),
	(398, 110, 'Received', 'received', 0, 200, '2018-09-26 10:23:16', NULL),
	(399, 111, 'Sub total', 'subtotal', 15000, 1, '2018-09-28 09:37:05', NULL),
	(400, 111, 'Shipping', 'shipping', 20000, 10, '2018-09-28 09:37:05', NULL),
	(401, 111, 'Discount', 'discount', 0, 20, '2018-09-28 09:37:05', NULL),
	(402, 111, 'Total', 'total', 35000, 100, '2018-09-28 09:37:05', NULL),
	(403, 111, 'Received', 'received', 0, 200, '2018-09-28 09:37:05', NULL),
	(404, 112, 'Sub total', 'subtotal', 10000, 1, '2018-10-05 21:40:26', NULL),
	(405, 112, 'Shipping', 'shipping', 20000, 10, '2018-10-05 21:40:26', NULL),
	(406, 112, 'Discount', 'discount', 0, 20, '2018-10-05 21:40:26', NULL),
	(407, 112, 'Total', 'total', 30000, 100, '2018-10-05 21:40:26', NULL),
	(408, 112, 'Received', 'received', 0, 200, '2018-10-05 21:40:26', NULL),
	(409, 113, 'Sub total', 'subtotal', 10000, 1, '2018-10-07 22:14:36', NULL),
	(410, 113, 'Shipping', 'shipping', 20000, 10, '2018-10-07 22:14:36', NULL),
	(411, 113, 'Discount', 'discount', 0, 20, '2018-10-07 22:14:36', NULL),
	(412, 113, 'Total', 'total', 30000, 100, '2018-10-07 22:14:36', NULL),
	(413, 113, 'Received', 'received', 0, 200, '2018-10-07 22:14:36', NULL),
	(414, 114, 'Sub total', 'subtotal', 10000, 1, '2018-10-08 09:31:50', NULL),
	(415, 114, 'Shipping', 'shipping', 20000, 10, '2018-10-08 09:31:50', NULL),
	(416, 114, 'Discount', 'discount', 0, 20, '2018-10-08 09:31:50', NULL),
	(417, 114, 'Total', 'total', 30000, 100, '2018-10-08 09:31:50', NULL),
	(418, 114, 'Received', 'received', 0, 200, '2018-10-08 09:31:50', NULL),
	(419, 115, 'Sub total', 'subtotal', 10000, 1, '2018-10-08 18:14:53', NULL),
	(420, 115, 'Shipping', 'shipping', 20000, 10, '2018-10-08 18:14:53', NULL),
	(421, 115, 'Discount', 'discount', 0, 20, '2018-10-08 18:14:53', NULL),
	(422, 115, 'Total', 'total', 30000, 100, '2018-10-08 18:14:53', NULL),
	(423, 115, 'Received', 'received', 0, 200, '2018-10-08 18:14:53', NULL),
	(424, 116, 'Sub total', 'subtotal', 15000, 1, '2018-10-09 11:23:37', NULL),
	(425, 116, 'Shipping', 'shipping', 20000, 10, '2018-10-09 11:23:37', NULL),
	(426, 116, 'Discount', 'discount', 0, 20, '2018-10-09 11:23:37', NULL),
	(427, 116, 'Total', 'total', 35000, 100, '2018-10-09 11:23:37', NULL),
	(428, 116, 'Received', 'received', 0, 200, '2018-10-09 11:23:37', NULL),
	(429, 117, 'Sub total', 'subtotal', 15000, 1, '2018-10-09 18:02:43', NULL),
	(430, 117, 'Shipping', 'shipping', 20000, 10, '2018-10-09 18:02:43', NULL),
	(431, 117, 'Discount', 'discount', 0, 20, '2018-10-09 18:02:43', NULL),
	(432, 117, 'Total', 'total', 35000, 100, '2018-10-09 18:02:43', NULL),
	(433, 117, 'Received', 'received', 0, 200, '2018-10-09 18:02:43', NULL),
	(434, 118, 'Sub total', 'subtotal', 10000, 1, '2018-10-17 06:42:22', NULL),
	(435, 118, 'Shipping', 'shipping', 20000, 10, '2018-10-17 06:42:22', NULL),
	(436, 118, 'Discount', 'discount', 0, 20, '2018-10-17 06:42:22', NULL),
	(437, 118, 'Total', 'total', 30000, 100, '2018-10-17 06:42:22', NULL),
	(438, 118, 'Received', 'received', 0, 200, '2018-10-17 06:42:22', NULL),
	(439, 119, 'Sub total', 'subtotal', 15000, 1, '2018-10-17 23:38:23', NULL),
	(440, 119, 'Shipping', 'shipping', 200000, 10, '2018-10-17 23:38:23', '2018-10-18 21:41:20'),
	(441, 119, 'Discount', 'discount', 0, 20, '2018-10-17 23:38:23', NULL),
	(442, 119, 'Total', 'total', 215000, 100, '2018-10-17 23:38:23', '2018-10-18 21:41:20'),
	(443, 119, 'Received', 'received', 0, 200, '2018-10-17 23:38:23', NULL),
	(444, 120, 'Sub total', 'subtotal', 40000, 1, '2018-10-19 21:44:17', NULL),
	(445, 120, 'Shipping', 'shipping', 20000, 10, '2018-10-19 21:44:17', NULL),
	(446, 120, 'Discount', 'discount', 0, 20, '2018-10-19 21:44:17', NULL),
	(447, 120, 'Total', 'total', 60000, 100, '2018-10-19 21:44:17', NULL),
	(448, 120, 'Received', 'received', 0, 200, '2018-10-19 21:44:17', NULL),
	(449, 121, 'Sub total', 'subtotal', 15000, 1, '2018-10-19 21:48:06', NULL),
	(450, 121, 'Shipping', 'shipping', 20000, 10, '2018-10-19 21:48:06', NULL),
	(451, 121, 'Discount', 'discount', 0, 20, '2018-10-19 21:48:06', NULL),
	(452, 121, 'Total', 'total', 35000, 100, '2018-10-19 21:48:06', NULL),
	(453, 121, 'Received', 'received', 0, 200, '2018-10-19 21:48:06', NULL);
/*!40000 ALTER TABLE `shop_order_total` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_payment_status
DROP TABLE IF EXISTS `shop_payment_status`;
CREATE TABLE IF NOT EXISTS `shop_payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_payment_status: ~4 rows (approximately)
DELETE FROM `shop_payment_status`;
/*!40000 ALTER TABLE `shop_payment_status` DISABLE KEYS */;
INSERT INTO `shop_payment_status` (`id`, `name`) VALUES
	(0, 'Chưa thanh toán'),
	(1, 'Thanh toán một phần'),
	(2, 'Thanh toán xong'),
	(3, 'Khách hàng dư tiền');
/*!40000 ALTER TABLE `shop_payment_status` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_product
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE IF NOT EXISTS `shop_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `brand_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_other` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `cost` int(11) DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-Nomal 1-New 2-Hot',
  `option` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0- inactive 1-active ',
  `view` int(11) DEFAULT '0',
  `date_lastview` timestamp NULL DEFAULT NULL,
  `date_available` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_product: ~40 rows (approximately)
DELETE FROM `shop_product`;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` (`id`, `name`, `sku`, `keyword`, `description`, `image`, `content`, `brand_id`, `category_id`, `category_other`, `price`, `cost`, `stock`, `sold`, `type`, `option`, `sort`, `status`, `view`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
	(3, NULL, 'MEGA2560', NULL, NULL, 'product/f2d9505d28f1b10f949cec466cada01e.jpeg', NULL, 1, 7, NULL, 220000, 150000, 0, -5, 0, NULL, 0, 1, 1, '2018-10-16 17:21:32', NULL, '2018-01-15 14:57:31', '2018-10-16 17:21:32'),
	(4, NULL, 'LEDFAN1', NULL, NULL, 'product/95349d3747fdaf79d391fdc98e083701.jpg', NULL, 1, 6, NULL, 190000, 100000, 17, -1, 1, NULL, 0, 1, 1, '2018-08-27 11:37:16', NULL, '2018-01-16 13:03:54', '2018-08-27 11:37:16'),
	(5, NULL, 'CLOCKFAN1', NULL, NULL, 'product/15aa6b1f31b53a0177d7653761a45274.jpeg', NULL, 2, 13, NULL, 420000, 320000, 11, 1, 1, NULL, 0, 1, 6, '2018-10-18 02:40:46', NULL, '2018-01-16 13:04:41', '2018-10-18 02:40:46'),
	(6, NULL, 'CLOCKFAN2', NULL, NULL, 'product/0e1416d509af3712bd801404ca928702.jpeg', NULL, 1, 13, NULL, 380000, 250000, 98, 79, 1, NULL, 0, 1, 5, '2018-10-19 21:44:01', NULL, '2018-02-02 14:52:50', '2018-10-19 21:44:17'),
	(7, NULL, 'CLOCKFAN3', NULL, NULL, 'product/95349d3747fdaf79d391fdc98e083701.jpg', NULL, 1, 13, NULL, 320000, 250000, 51, 0, 1, NULL, 1, 1, 5, '2018-10-19 10:17:55', NULL, '2018-02-02 14:53:30', '2018-10-19 10:17:55'),
	(8, NULL, 'TMC2208', NULL, NULL, 'product/95349d3747fdaf79d391fdc98e083701.jpg', NULL, 6, 11, NULL, 220000, 130000, 101, 1, 0, NULL, 1, 1, 9, '2018-09-22 23:13:13', NULL, '2018-02-02 14:53:30', '2018-09-22 23:13:13'),
	(9, NULL, 'FILAMENT', NULL, NULL, 'product/95349d3747fdaf79d391fdc98e083701.jpg', NULL, 1, 15, NULL, 299000, 200000, 127, 6, 1, NULL, 1, 1, 1, '2018-10-16 18:44:46', NULL, '2018-02-02 14:53:30', '2018-10-16 18:44:46'),
	(10, NULL, 'A4988', NULL, NULL, 'product/820283598735f98a9b23960821da438b.jpeg', NULL, 1, 11, NULL, 39000, 20000, 107, 33, 0, NULL, 1, 1, 0, NULL, NULL, '2018-02-02 14:53:30', '2018-06-27 16:21:10'),
	(11, NULL, 'ANYCUBIC-P', NULL, NULL, 'product/d63af407fa92299e163696a585566dc7.jpeg', NULL, 3, 10, NULL, 4990000, 3500000, 1, 1048, 0, NULL, 0, 1, 1, '2018-10-18 11:14:26', NULL, '2018-01-15 14:57:31', '2018-10-18 11:14:26'),
	(12, NULL, '3DHLFD', NULL, NULL, 'product/95349d3747fdaf79d391fdc98e083701.jpg', NULL, 1, 12, NULL, 7990000, 5200000, 10, 20, 1, NULL, 0, 1, 0, NULL, NULL, '2018-01-15 14:57:31', '2018-09-03 17:15:38'),
	(20, NULL, 'SS495A', NULL, NULL, 'product/95349d3747fdaf79d391fdc98e083701.jpg', NULL, 2, 14, NULL, 15000, 7000, 1005, 1059, 1, NULL, 0, 1, 2, '2018-09-06 06:45:53', NULL, '2018-01-15 14:57:31', '2018-09-06 06:45:53'),
	(21, NULL, '3D-CARBON1.75', NULL, NULL, 'product/d05966a529efdd8d7b41ed9b687859b6.jpeg', NULL, 2, 15, NULL, 390000, 15000, 10, 19, 1, NULL, 1, 1, 2, '2018-10-16 18:44:49', NULL, '2018-02-02 14:53:30', '2018-10-16 18:44:49'),
	(22, NULL, '3D-GOLD1.75', NULL, NULL, 'product/eedfd153bf368919a134da17f22c8de7.jpeg', NULL, 2, 15, NULL, 500000, 15000, 10, 1, 1, NULL, 1, 1, 3, '2018-10-20 04:49:54', NULL, '2018-04-12 15:05:37', '2018-10-20 04:49:54'),
	(23, NULL, 'LCD12864-3D', NULL, NULL, 'product/a7a315526ecf7594731448d792714a11.jpeg', NULL, 2, 11, NULL, 220000, 15000, 0, 0, 0, NULL, 0, 1, 1, '2018-10-17 08:39:04', NULL, '2018-08-11 13:33:37', '2018-10-17 08:39:04'),
	(24, NULL, 'LCD2004-3D', NULL, NULL, 'product/9215506044b8a350fc082f5350b3653a.jpg', NULL, 2, 11, NULL, 190000, 15000, 0, 0, 0, NULL, 0, 1, 1, '2018-10-17 12:23:19', NULL, '2018-08-11 13:39:31', '2018-10-17 12:23:19'),
	(25, NULL, 'RAMPS1.5-3D', NULL, NULL, 'product/1d6cdd4473603c7a4d162067713b8da8.jpg', NULL, 2, 11, NULL, 120000, 15000, 0, 0, 0, NULL, 0, 1, 1, '2018-10-17 04:10:02', NULL, '2018-08-11 13:41:25', '2018-10-17 04:10:02'),
	(26, NULL, 'EFULL-3D', NULL, NULL, 'product/07e79f6546499878cba383dd5bfe977e.jpeg', NULL, 1, 11, NULL, 890000, 15000, 0, 0, 0, NULL, 0, 1, 1, '2018-08-28 06:39:46', NULL, '2018-08-11 13:50:25', '2018-09-22 17:39:55'),
	(27, NULL, 'ANYCUBIC-I3M', NULL, NULL, 'product/ea88b7078652909f3d6c5d445aa05f59.jpeg', NULL, 1, 10, NULL, 7990000, 15000, 5, 0, 0, NULL, 0, 1, 0, NULL, NULL, '2018-08-22 16:26:00', '2018-09-22 17:34:25'),
	(28, NULL, '3DNOZZLE', NULL, NULL, 'product/c25c81c852823f5ea8ba4250978217a5.jpeg', NULL, 1, 11, NULL, 10000, 15000, 500, 0, 0, NULL, 0, 1, 0, NULL, NULL, '2018-08-24 04:21:48', '2018-09-22 18:17:21'),
	(29, NULL, '3D-TEFLONLOCK', NULL, NULL, 'product/8e28f51184f0a96970c05185b1412fa1.jpeg', NULL, 1, 12, NULL, 10000, 15000, 500, 0, 0, NULL, 0, 1, 11, '2018-10-17 21:28:45', NULL, '2018-08-24 04:32:48', '2018-10-17 21:28:45'),
	(30, NULL, '3D-BELT-GT2', NULL, NULL, 'product/ed74817ffed5bcc692c00135f4288a8c.jpeg', NULL, 1, 11, NULL, 20000, 15000, 0, 0, 1, NULL, 0, 1, 4, '2018-09-22 21:10:20', NULL, '2018-08-24 04:35:39', '2018-10-10 20:39:06'),
	(31, NULL, '3D-TEFLONLOCK-M10', NULL, NULL, 'product/0e1416d509af3712bd801404ca928702.jpeg', NULL, 2, 11, NULL, 10000, 15000, 100, 0, 0, NULL, 0, 1, 4, '2018-09-08 13:19:46', NULL, '2018-08-24 04:39:03', '2018-09-22 17:29:10'),
	(32, NULL, '3D-HOTWIRE1240', NULL, NULL, 'product/efd9fb910ba539c125b7c431a1ccc563.jpg', NULL, 0, 11, NULL, 20000, 15000, -1, 1, 1, NULL, 0, 1, 4, '2018-10-19 19:39:51', NULL, '2018-08-24 04:40:54', '2018-10-19 19:39:51'),
	(33, NULL, '3D-TEFTLON-24', NULL, NULL, 'product/a635cc2bdf5485ccb2c0cc9d186968b2.jpeg', NULL, 2, 16, NULL, 15000, 15000, 100, 0, 0, NULL, 1, 1, 0, NULL, NULL, '2018-08-24 04:44:04', '2018-10-10 20:37:58'),
	(34, NULL, '3D-TEFTLON-W24', NULL, NULL, 'product/a32f12e009ebf0d24ab264706ecbc15e.jpeg', NULL, 5, 11, NULL, 20000, 15000, 99, 1, 1, NULL, 0, 1, 4, '2018-10-19 21:39:59', NULL, '2018-08-24 05:09:34', '2018-10-19 21:39:59'),
	(35, NULL, '3D-SENSOR-NTC 100K', NULL, NULL, 'product/41c8f0d0111cd5a3f0538604233cbed8.jpeg', NULL, 4, 10, NULL, 15000, 15000, 98, 2, 1, NULL, 0, 1, 4, '2018-10-18 17:42:41', NULL, '2018-08-24 05:13:58', '2018-10-18 17:42:41'),
	(36, NULL, 'nRLF24L01+2.4HZ', NULL, NULL, 'product/820283598735f98a9b23960821da438b.jpeg', NULL, 3, 11, NULL, 25000, 15000, 0, 0, 0, NULL, 0, 1, 1, '2018-10-18 17:09:21', NULL, '2018-08-24 06:07:15', '2018-10-18 17:09:21'),
	(37, NULL, 'ARDUINO-NANO', NULL, NULL, 'product/da687e60e54bd7fc7eab5c76e7ec3754.jpeg', NULL, 1, 17, NULL, 100000, 15000, 0, 0, 0, NULL, 0, 1, 2, '2018-10-17 12:20:25', NULL, '2018-08-24 06:25:48', '2018-10-17 12:20:25'),
	(38, NULL, 'LEDSTRIP-5050RGB', NULL, NULL, 'product/61559578baf403e03565e73a14f845ce.jpeg', NULL, 1, 9, NULL, 15000, 15000, 0, 0, 1, NULL, 0, 1, 19, '2018-10-19 21:43:39', NULL, '2018-08-24 06:33:31', '2018-10-19 21:43:39'),
	(39, NULL, 'LEDSTRIP-S', NULL, NULL, 'product/c400aecd5c6d87782ac9af33dd7a5980.jpg', NULL, 4, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 2, '2018-10-16 12:04:10', NULL, '2018-08-24 08:46:21', '2018-10-16 12:04:10'),
	(40, NULL, 'P10-IR', NULL, NULL, 'product/830d640cd17eba0bf186dc649d5c3053.jpeg', NULL, 0, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 6, '2018-08-30 23:20:31', NULL, '2018-08-24 08:49:49', '2018-09-22 17:27:41'),
	(41, NULL, 'P10-IG', NULL, NULL, 'product/9d9aab8be8634708c9cf5b690fee74a4.jpeg', NULL, 0, 19, NULL, 15000, 15000, -1, 1, 1, NULL, 0, 1, 14, '2018-10-20 02:01:25', NULL, '2018-08-24 08:51:11', '2018-10-20 02:01:25'),
	(42, NULL, 'P10-IB', NULL, NULL, 'product/98fafb9da683cd9ee854598f3f3a3bd5.jpeg', NULL, 0, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 9, '2018-08-31 21:45:43', NULL, '2018-08-24 08:52:58', '2018-09-22 17:35:35'),
	(43, NULL, 'P10-IRGB', NULL, NULL, 'product/a111c060ebb6ffbbd2d34ae278501789.jpg', NULL, 0, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 4, '2018-10-17 00:01:45', NULL, '2018-08-24 08:54:45', '2018-10-17 00:01:45'),
	(44, NULL, 'P10-IRG', NULL, NULL, 'product/95349d3747fdaf79d391fdc98e083701.jpg', NULL, 0, 19, NULL, 15000, 15000, -1, 1, 1, NULL, 0, 1, 19, '2018-10-16 18:45:04', NULL, '2018-08-24 08:56:02', '2018-10-16 18:45:04'),
	(45, NULL, 'LFF', NULL, NULL, 'product/3c8f613d30b4e487ef95a5e4cdea634c.jpeg', NULL, 0, 6, NULL, 15000, 15000, -1, 1, 0, NULL, 0, 1, 26, '2018-10-19 18:58:20', NULL, '2018-08-24 08:58:42', '2018-10-19 18:58:20'),
	(46, NULL, 'P2.5-I', NULL, NULL, 'product/949fa36ebd56593445fb61d141fd2a81.jpeg', NULL, 2, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 14, '2018-10-19 21:01:22', NULL, '2018-08-24 09:23:07', '2018-10-19 21:01:22'),
	(47, NULL, 'BX-5U0', NULL, NULL, 'product/cd7aa3394c35330ed7f9e4095c6adb65.jpeg', NULL, 0, 19, NULL, 15000, 15000, -5, 5, 0, NULL, 0, 1, 84, '2018-10-19 10:55:41', NULL, '2018-08-24 09:48:31', '2018-10-19 10:55:41'),
	(48, NULL, 'BX-5UT', NULL, NULL, 'product/6ddd855403d127a9fed049d0ec335481.jpeg', NULL, 0, 19, NULL, 15000, 15000, -11, 11, 0, NULL, 0, 1, 198, '2018-10-20 12:08:38', NULL, '2018-08-24 09:52:15', '2018-10-20 12:08:38'),
	(49, NULL, 'BX-5UTbnv', NULL, NULL, 'product/0950df6d59696ad39a8e5505735f578c.jpeg', NULL, 2, 2, NULL, 15000, 15000, -7, 7, 1, NULL, 0, 1, 47, '2018-10-20 12:08:45', '2018-09-19 00:00:00', '2018-09-03 08:05:59', '2018-10-20 12:08:45');
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_product_description
DROP TABLE IF EXISTS `shop_product_description`;
CREATE TABLE IF NOT EXISTS `shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `product_id_lang_id` (`product_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_product_description: ~80 rows (approximately)
DELETE FROM `shop_product_description`;
/*!40000 ALTER TABLE `shop_product_description` DISABLE KEYS */;
INSERT INTO `shop_product_description` (`product_id`, `lang_id`, `name`, `description`, `keyword`, `content`) VALUES
	(3, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(3, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(4, 1, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(4, 2, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(5, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(5, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(6, 1, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(6, 2, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(7, 1, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(7, 2, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(8, 1, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(8, 2, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(9, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(9, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(10, 1, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(10, 2, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(11, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(11, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(12, 1, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(12, 2, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(20, 1, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(20, 2, 'Easy Polo Black Edition', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
	(21, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(21, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(22, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(22, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(23, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(23, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(24, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(24, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(25, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(25, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(26, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(26, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(27, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(27, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(28, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(28, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(29, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(29, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(30, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(30, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(31, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(31, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(32, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(32, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(33, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(33, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(34, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(34, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(35, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(35, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(36, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(36, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(37, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(37, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(38, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(38, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(39, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(39, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(40, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(40, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(41, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(41, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(42, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(42, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(43, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(43, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(44, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(44, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(45, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(45, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(46, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(46, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(47, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(47, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(48, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(48, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(49, 1, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>'),
	(49, 2, 'Easy Polo Black Edition', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>');
/*!40000 ALTER TABLE `shop_product_description` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_product_like
DROP TABLE IF EXISTS `shop_product_like`;
CREATE TABLE IF NOT EXISTS `shop_product_like` (
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`product_id`,`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_product_like: ~0 rows (approximately)
DELETE FROM `shop_product_like`;
/*!40000 ALTER TABLE `shop_product_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_like` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_product_option
DROP TABLE IF EXISTS `shop_product_option`;
CREATE TABLE IF NOT EXISTS `shop_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opt_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_sku` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_price` int(11) DEFAULT NULL,
  `opt_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `opt_sku` (`opt_sku`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_product_option: ~7 rows (approximately)
DELETE FROM `shop_product_option`;
/*!40000 ALTER TABLE `shop_product_option` DISABLE KEYS */;
INSERT INTO `shop_product_option` (`id`, `opt_name`, `opt_sku`, `opt_price`, `opt_image`, `product_id`) VALUES
	(3, 'Sản phẩm xanh', 'BX-5UT-s', 454, 'product/4c28c6a2fc6a3fa79197798707d55b5c.png', 48),
	(4, '34324234', 'BX-5UT-T', 1111, 'product/293da323794f89ee2d7962f44f930393.png', 48),
	(12, 'fdgdfg', 'fgdfgd', NULL, 'product/68f8a4d063e4ddef447616116dd03e0f.png', 42),
	(13, 'bnmbnmbn', 'BX-5U0-1fgfgjghjhgj', NULL, 'product/2702691387f97f5985843cbb243d267c.png', 42),
	(16, 'Sản phẩm xanh', 'BX-5U0-1fgfgkjh', NULL, 'product/777274d55ff7adeef36ca930022a8db9.jpg', 29),
	(17, 'Sản phẩm xanh', 'BX-5U0-1fgfgl', NULL, 'product/0ba3c6a927bb0e2cd2d54ce0c13df919.jpg', 30),
	(18, 'Sản phẩm xanh', 'BX-5U0-1fgfgg', NULL, 'product/7eb3eefcb94b7548cc4942a42f36e186.jpg', 27);
/*!40000 ALTER TABLE `shop_product_option` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_product_recent_view
DROP TABLE IF EXISTS `shop_product_recent_view`;
CREATE TABLE IF NOT EXISTS `shop_product_recent_view` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `customer_id_product_id` (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table s-cart-lang.shop_product_recent_view: ~8 rows (approximately)
DELETE FROM `shop_product_recent_view`;
/*!40000 ALTER TABLE `shop_product_recent_view` DISABLE KEYS */;
INSERT INTO `shop_product_recent_view` (`user_id`, `product_id`, `created_at`) VALUES
	(3, 35, '2018-08-27 15:58:21'),
	(3, 38, '2018-08-27 16:44:08'),
	(3, 41, '2018-08-27 17:19:33'),
	(3, 42, '2018-08-27 17:02:03'),
	(3, 44, '2018-08-27 17:19:52'),
	(3, 46, '2018-08-27 17:14:29'),
	(3, 47, '2018-08-27 17:01:57'),
	(3, 48, '2018-08-27 17:01:49');
/*!40000 ALTER TABLE `shop_product_recent_view` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_promocodes
DROP TABLE IF EXISTS `shop_promocodes`;
CREATE TABLE IF NOT EXISTS `shop_promocodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `number_uses` int(10) unsigned NOT NULL DEFAULT '1',
  `used` int(11) NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promocodes_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.shop_promocodes: ~14 rows (approximately)
DELETE FROM `shop_promocodes`;
/*!40000 ALTER TABLE `shop_promocodes` DISABLE KEYS */;
INSERT INTO `shop_promocodes` (`id`, `code`, `reward`, `type`, `data`, `number_uses`, `used`, `status`, `expires_at`) VALUES
	(1, 'ABC-XAA01', 100000, 0, 'Khuyến mãi đầu năm', 100, 2, 1, '2018-08-11 00:00:00'),
	(2, 'KKB3-KLLA', 30, 2, NULL, 33, 2, 1, '2018-10-11 00:00:00'),
	(3, 'PAA-LLK01', 100000, 1, 'Tặng điểm khách hàng thân thiết', 22, 1, 1, NULL),
	(4, 'VONN_KKH1', 150000, 0, NULL, 1, 1, 1, '2019-03-08 00:00:00'),
	(5, 'PAA-LLK02', 150000, 1, NULL, 111, 0, 1, NULL),
	(6, 'VONN_KKH2', 900000, 0, 'Refurn', 4, 1, 1, '2018-07-07 00:00:00'),
	(8, 'PAA-LLK03', 150000, 0, NULL, 111, 1, 1, NULL),
	(9, 'PAA-LLK04', 150000, 0, NULL, 111, 2, 1, NULL),
	(10, 'PAA-LLK05', 150000, 0, NULL, 111, 1, 1, NULL),
	(11, 'PAA-LLK06', 150000, 0, NULL, 111, 1, 1, NULL),
	(13, 'PAA-LLK07', 219999, 0, NULL, 111, 2, 1, NULL),
	(15, 'PAA-LLK08', 219999, 0, NULL, 111, 2, 1, NULL),
	(16, 'PAA-LLK09', 219999, 0, NULL, 111, 2, 1, NULL),
	(17, 'PAA-LLK010', 219999, 0, NULL, 111, 2, 1, NULL);
/*!40000 ALTER TABLE `shop_promocodes` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_promocode_user
DROP TABLE IF EXISTS `shop_promocode_user`;
CREATE TABLE IF NOT EXISTS `shop_promocode_user` (
  `user_id` int(10) unsigned NOT NULL,
  `promocode_id` int(10) unsigned NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci,
  `used_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`promocode_id`),
  KEY `promocode_user_promocode_id_foreign` (`promocode_id`),
  CONSTRAINT `promocode_user_promocode_id_foreign` FOREIGN KEY (`promocode_id`) REFERENCES `shop_promocodes` (`id`),
  CONSTRAINT `promocode_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.shop_promocode_user: ~16 rows (approximately)
DELETE FROM `shop_promocode_user`;
/*!40000 ALTER TABLE `shop_promocode_user` DISABLE KEYS */;
INSERT INTO `shop_promocode_user` (`user_id`, `promocode_id`, `log`, `used_at`) VALUES
	(2, 1, 'Đơn hàng 3', '2018-05-20 22:04:28'),
	(3, 1, 'Đơn hàng 11', '2018-05-22 06:22:35'),
	(3, 2, 'Order #48', '2018-06-03 14:20:25'),
	(3, 3, 'Order #43', '2018-05-22 14:06:21'),
	(3, 4, NULL, '2018-05-22 14:03:02'),
	(3, 6, 'Order #45', '2018-05-27 10:53:16'),
	(3, 8, 'Order #50', '2018-06-03 14:56:26'),
	(3, 9, 'Order #51', '2018-06-03 15:15:19'),
	(3, 10, 'Order #52', '2018-06-03 15:41:31'),
	(3, 11, 'Order #62', '2018-06-05 23:01:53'),
	(3, 13, 'Order #93', '2018-09-23 12:41:07'),
	(3, 15, 'Order #94', '2018-09-23 12:44:03'),
	(3, 16, 'Order #95', '2018-09-23 12:46:05'),
	(3, 17, 'Order #96', '2018-09-23 12:48:40'),
	(5, 2, 'Order #77', '2018-09-07 20:58:47'),
	(5, 9, 'Order #76', '2018-09-06 18:59:25');
/*!40000 ALTER TABLE `shop_promocode_user` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_shipping
DROP TABLE IF EXISTS `shop_shipping`;
CREATE TABLE IF NOT EXISTS `shop_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `free` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_shipping: ~1 rows (approximately)
DELETE FROM `shop_shipping`;
/*!40000 ALTER TABLE `shop_shipping` DISABLE KEYS */;
INSERT INTO `shop_shipping` (`id`, `type`, `value`, `free`, `status`) VALUES
	(1, 0, 20000, 10000000, 1);
/*!40000 ALTER TABLE `shop_shipping` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_shipping_address
DROP TABLE IF EXISTS `shop_shipping_address`;
CREATE TABLE IF NOT EXISTS `shop_shipping_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(3) DEFAULT NULL,
  `phone` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_shipping_address: ~1 rows (approximately)
DELETE FROM `shop_shipping_address`;
/*!40000 ALTER TABLE `shop_shipping_address` DISABLE KEYS */;
INSERT INTO `shop_shipping_address` (`id`, `user_id`, `address1`, `address2`, `country`, `phone`, `sort`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Quan 1', 'Ho chi Minh', NULL, '09978998768678', 0, 0, '2018-01-14 03:12:50', '2018-01-14 03:12:50');
/*!40000 ALTER TABLE `shop_shipping_address` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_shipping_status
DROP TABLE IF EXISTS `shop_shipping_status`;
CREATE TABLE IF NOT EXISTS `shop_shipping_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_shipping_status: ~3 rows (approximately)
DELETE FROM `shop_shipping_status`;
/*!40000 ALTER TABLE `shop_shipping_status` DISABLE KEYS */;
INSERT INTO `shop_shipping_status` (`id`, `name`) VALUES
	(0, 'Chưa gửi'),
	(1, 'Đang gửi'),
	(2, 'Gửi xong');
/*!40000 ALTER TABLE `shop_shipping_status` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_shoppingcart
DROP TABLE IF EXISTS `shop_shoppingcart`;
CREATE TABLE IF NOT EXISTS `shop_shoppingcart` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_shoppingcart: ~0 rows (approximately)
DELETE FROM `shop_shoppingcart`;
/*!40000 ALTER TABLE `shop_shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_shoppingcart` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.shop_special_price
DROP TABLE IF EXISTS `shop_special_price`;
CREATE TABLE IF NOT EXISTS `shop_special_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `off` int(11) unsigned NOT NULL,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart-lang.shop_special_price: ~10 rows (approximately)
DELETE FROM `shop_special_price`;
/*!40000 ALTER TABLE `shop_special_price` DISABLE KEYS */;
INSERT INTO `shop_special_price` (`id`, `product_id`, `price`, `off`, `date_start`, `date_end`, `status`, `comment`, `created_at`, `updated_at`) VALUES
	(1, 21, 150000, 0, '2018-01-28 00:00:00', '2019-04-30 00:00:00', 1, NULL, '2018-02-06 12:05:20', '2018-04-12 14:45:17'),
	(4, 6, 40000, 0, NULL, '2019-06-28 00:00:00', 1, NULL, '2018-02-06 12:44:40', '2018-04-12 14:45:32'),
	(6, 8, 30000, 0, '2018-02-07 00:00:00', '2018-03-10 00:00:00', 1, NULL, '2018-02-07 14:45:19', '2018-02-07 15:17:42'),
	(7, 10, 15000, 0, '2018-02-06 00:00:00', '2018-03-29 00:00:00', 1, NULL, '2018-02-07 14:49:48', '2018-03-11 05:36:43'),
	(9, 11, 100000, 0, '2018-03-19 00:00:00', '2018-03-31 00:00:00', 1, NULL, '2018-02-08 15:51:45', '2018-03-25 02:49:07'),
	(11, 12, 100000, 0, NULL, NULL, 1, NULL, '2018-03-27 14:13:47', '2018-03-27 14:18:44'),
	(12, 7, 320000, 0, '2011-10-26 00:00:00', '2019-05-08 00:00:00', 1, NULL, '2018-04-12 14:46:40', '2018-09-01 00:05:12'),
	(13, 23, 198000, 10, '2018-05-08 00:00:00', '2018-06-08 00:00:00', 0, 'test giam gia', '2018-05-09 15:15:37', '2018-08-28 22:13:45'),
	(14, 49, 10000, 0, NULL, NULL, 1, NULL, '2018-09-22 18:19:07', '2018-09-22 18:19:07'),
	(15, 3, 200000, 0, NULL, NULL, 1, NULL, '2018-09-22 18:20:14', '2018-09-22 18:20:14');
/*!40000 ALTER TABLE `shop_special_price` ENABLE KEYS */;

-- Dumping structure for table s-cart-lang.users
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart-lang.users: ~8 rows (approximately)
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
	(8, 'trucnguyen', 'qq@gmail.com', '$2y$10$P6TQEEhlkSpx/xTU1ywrX.leBmMCrVQcrEx6UMMR0EDUFb4FlxPfO', 'viet nam', 'viet nam', '0975236549', NULL, '2018-10-18 22:46:20', '2018-10-18 22:46:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
