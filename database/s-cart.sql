-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: s-cart
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Index','fa-bar-chart','/',NULL,NULL,NULL),(2,0,2,'Admin','fa-tasks',NULL,NULL,NULL,'2018-12-30 02:36:54'),(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8,31,27,'Customer','fa-user-md','shop_customer',NULL,'2018-01-13 08:27:55','2019-02-09 10:33:31'),(9,25,22,'Orders','fa-shopping-cart','shop_order',NULL,'2018-01-13 08:33:55','2019-02-09 10:33:31'),(10,15,15,'All products','fa-file-photo-o','shop_product',NULL,'2018-01-13 08:44:02','2019-02-09 10:33:31'),(11,15,17,'Brand','fa-bank','shop_brand',NULL,'2018-01-13 08:47:15','2019-02-09 10:33:31'),(13,15,14,'Categories','fa-folder-open-o','shop_category',NULL,'2018-01-13 08:52:17','2019-02-09 10:33:31'),(14,15,16,'Special price','fa-paw','shop_special_price',NULL,'2018-02-06 11:07:21','2019-02-09 10:33:31'),(15,0,13,'Product Manager','fa-folder-open',NULL,NULL,'2018-02-08 23:04:43','2019-02-09 10:33:31'),(18,23,44,'Config info','fa-cog','config_info',NULL,'2018-02-10 02:07:45','2019-03-23 08:28:54'),(22,0,8,'Pages','fa-clone','shop_page',NULL,'2018-02-10 02:19:50','2019-02-08 09:21:24'),(23,0,43,'Settings','fa-cogs',NULL,NULL,'2018-02-11 08:01:24','2019-03-23 08:28:54'),(24,62,39,'Banners','fa-simplybuilt','banner',NULL,'2018-03-13 13:10:22','2019-03-23 08:28:54'),(25,0,21,'Order Manager','fa-cart-arrow-down',NULL,NULL,'2018-05-06 07:59:14','2019-02-09 10:33:31'),(26,25,23,'Order status','fa-asterisk','shop_order_status',NULL,'2018-05-06 08:56:14','2019-02-09 10:33:31'),(27,25,24,'Payment Status','fa-recycle','shop_payment_status',NULL,'2018-05-06 08:57:12','2019-02-09 10:33:31'),(28,25,25,'Shipping status','fa-ambulance','shop_shipping_status',NULL,'2018-05-06 16:46:53','2019-02-09 10:33:31'),(30,0,29,'Extensions','fa-puzzle-piece',NULL,NULL,'2018-05-07 06:47:33','2019-03-23 08:28:54'),(31,0,26,'Customer Manager','fa-group',NULL,NULL,'2018-05-07 06:52:20','2019-02-09 10:33:31'),(51,23,45,'Config global','fa-cogs','config_global',NULL,'2018-09-19 13:51:31','2019-03-23 08:28:54'),(52,56,47,'Config Language','fa-pagelines','language',NULL,'2018-10-14 14:58:23','2019-03-23 08:28:54'),(53,101,37,'Layout','fa-bars','layout',NULL,'2018-10-16 23:16:09','2019-03-23 08:29:13'),(56,23,46,'Localisation','fa-shirtsinbulk',NULL,NULL,'2018-11-01 23:04:12','2019-03-23 08:28:54'),(57,15,18,'Vendor','fa-user-secret','shop_vendor',NULL,'2018-11-07 15:15:33','2019-02-09 10:33:31'),(58,0,51,'Report & Analytics','fa-pie-chart',NULL,NULL,'2018-11-07 22:59:47','2019-03-23 08:28:54'),(59,58,52,'Customer','fa-bars','report/customer',NULL,'2018-11-07 23:00:54','2019-03-23 08:28:54'),(60,58,53,'Product','fa-bars','report/product',NULL,'2018-11-07 23:01:21','2019-03-23 08:28:54'),(61,15,19,'Import multi product','fa-save','process/productImport',NULL,'2018-11-11 09:10:14','2019-02-09 10:33:31'),(62,0,38,'Images manager','fa-image',NULL,NULL,'2018-11-12 12:25:16','2019-03-23 08:28:54'),(63,62,40,'Images','fa-file-image-o','documents',NULL,'2018-11-12 12:26:13','2019-03-23 08:28:54'),(64,56,48,'Currencies','fa-dollar','currencies',NULL,'2018-12-03 23:55:44','2019-03-23 08:28:54'),(65,0,41,'Api manager','fa-plug',NULL,NULL,'2018-12-16 02:51:06','2019-03-23 08:28:54'),(66,65,42,'Shop Api','fa-usb','modules/api/shop_api',NULL,'2018-12-16 02:53:09','2019-03-23 08:28:54'),(70,15,20,'Attributes group','fa-bars','shop_attribute_group',NULL,'2018-12-27 15:32:39','2019-02-09 10:33:31'),(71,30,30,'Payment','fa-money','extensions/Payment',NULL,'2019-02-01 08:50:26','2019-03-23 08:28:54'),(72,30,31,'Shipping','fa-ambulance','extensions/Shipping',NULL,'2019-02-01 08:51:58','2019-03-23 08:28:54'),(73,30,32,'Total','fa-cog','extensions/Total',NULL,'2019-02-01 08:52:33','2019-03-23 08:28:54'),(74,30,33,'Other','fa-circle-thin','extensions/Other',NULL,'2019-02-01 08:53:09','2019-03-23 08:28:54'),(75,0,34,'Modules','fa-codepen',NULL,NULL,'2019-02-08 05:17:59','2019-03-23 08:28:54'),(76,75,35,'Cms','fa-modx','modules/Cms',NULL,'2019-02-08 05:25:13','2019-03-23 08:28:54'),(81,23,49,'Templates manager','fa-columns','config_template',NULL,'2019-02-25 03:26:36','2019-03-23 08:28:54'),(82,23,50,'Backup & Restore','fa-save','backup_database',NULL,'2019-02-25 03:32:26','2019-03-23 08:28:54'),(83,31,28,'Subscribe manager','fa-user-md','subscribe',NULL,'2019-02-27 01:39:41','2019-03-23 08:28:54'),(101,0,36,'Design Layout','fa-object-ungroup',NULL,NULL,'2019-03-23 08:28:31','2019-03-23 08:28:54'),(102,75,0,'Other','fa-bars','modules/Other',NULL,'2019-03-23 08:31:19','2019-03-23 08:31:19');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'system_admin/layout','GET','127.0.0.1','[]','2019-03-24 04:38:44','2019-03-24 04:38:44'),(2,1,'system_admin/extensions/Payment','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-24 04:38:54','2019-03-24 04:38:54'),(3,1,'system_admin/extensions/uninstallExtension','POST','127.0.0.1','{\"_token\":\"RJsppSapTpggr8QpZNL1nCttekUGu8iBzz0FLRw1\",\"key\":\"Paypal\",\"group\":\"Payment\"}','2019-03-24 04:38:58','2019-03-24 04:38:58'),(4,1,'system_admin/extensions/Payment','GET','127.0.0.1','[]','2019-03-24 04:38:58','2019-03-24 04:38:58'),(5,1,'system_admin/extensions/Shipping','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-24 04:39:01','2019-03-24 04:39:01'),(6,1,'system_admin/extensions/Total','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-24 04:39:03','2019-03-24 04:39:03'),(7,1,'system_admin/extensions/Other','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-24 04:39:05','2019-03-24 04:39:05'),(8,1,'system_admin/modules/Cms','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-24 04:39:10','2019-03-24 04:39:10'),(9,1,'system_admin/modules/uninstallModule','POST','127.0.0.1','{\"_token\":\"RJsppSapTpggr8QpZNL1nCttekUGu8iBzz0FLRw1\",\"key\":\"Content\",\"group\":\"Cms\"}','2019-03-24 04:39:14','2019-03-24 04:39:14'),(10,1,'system_admin/modules/Cms','GET','127.0.0.1','[]','2019-03-24 04:39:14','2019-03-24 04:39:14'),(11,1,'system_admin/modules/uninstallModule','POST','127.0.0.1','{\"_token\":\"RJsppSapTpggr8QpZNL1nCttekUGu8iBzz0FLRw1\",\"key\":\"News\",\"group\":\"Cms\"}','2019-03-24 04:39:17','2019-03-24 04:39:17'),(12,1,'system_admin/modules/Cms','GET','127.0.0.1','[]','2019-03-24 04:39:17','2019-03-24 04:39:17'),(13,1,'system_admin/modules/Other','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-24 04:39:19','2019-03-24 04:39:19'),(14,1,'system_admin/layout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-24 04:39:22','2019-03-24 04:39:22'),(15,1,'system_admin/shop_order','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-24 04:39:35','2019-03-24 04:39:35'),(16,1,'system_admin/backup_database','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-24 04:39:39','2019-03-24 04:39:39'),(17,1,'system_admin/backup','POST','127.0.0.1','{\"_token\":\"RJsppSapTpggr8QpZNL1nCttekUGu8iBzz0FLRw1\"}','2019-03-24 04:39:43','2019-03-24 04:39:43'),(18,1,'system_admin/backup_database','GET','127.0.0.1','[]','2019-03-24 04:39:57','2019-03-24 04:39:57'),(19,1,'system_admin/backup_database','POST','127.0.0.1','{\"_token\":\"RJsppSapTpggr8QpZNL1nCttekUGu8iBzz0FLRw1\",\"file\":\"backup-2019-03-10-06-11-44.sql\",\"action\":\"remove\"}','2019-03-24 04:40:01','2019-03-24 04:40:01'),(20,1,'system_admin/backup_database','GET','127.0.0.1','[]','2019-03-24 04:40:01','2019-03-24 04:40:01'),(21,1,'system_admin/backup_database','GET','127.0.0.1','[]','2019-03-24 04:45:45','2019-03-24 04:45:45'),(22,1,'system_admin/backup','POST','127.0.0.1','{\"_token\":\"RJsppSapTpggr8QpZNL1nCttekUGu8iBzz0FLRw1\"}','2019-03-24 04:45:47','2019-03-24 04:45:47'),(23,1,'system_admin/backup_database','GET','127.0.0.1','[]','2019-03-24 04:45:57','2019-03-24 04:45:57'),(24,1,'system_admin/backup_database','GET','127.0.0.1','[]','2019-03-24 04:48:19','2019-03-24 04:48:19'),(25,1,'system_admin/backup','POST','127.0.0.1','{\"_token\":\"RJsppSapTpggr8QpZNL1nCttekUGu8iBzz0FLRw1\"}','2019-03-24 04:48:37','2019-03-24 04:48:37');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,'2018-07-26 07:29:38'),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT,DELETE','/auth/setting',NULL,'2018-08-25 04:19:26'),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(10,'View','view','GET','*','2018-09-23 11:56:03','2019-02-09 10:41:53');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,12,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(3,3,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(4,3,NULL,NULL),(4,4,NULL,NULL),(3,10,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(3,3,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2018-01-12 10:27:40','2018-01-12 10:27:40'),(2,'Admin','admin','2018-01-12 11:02:33','2018-01-12 11:02:33'),(3,'User','user','2018-01-12 11:03:14','2018-01-12 11:03:14'),(4,'Content','content','2018-01-13 01:27:11','2018-01-13 01:27:11');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$qDTx0HfSq895MDMq2T4HgexJe9LKujR3X48ENp8E2BgD4VxeI5p96','Administrator',NULL,'MLfq9tYMlEVCrEWzR3PCYE316p4J5BtJ6cdMm2x1OnzOMnnCpBKq0bRGBvYr','2018-01-12 10:27:40','2018-09-23 11:54:08'),(3,'test','$2y$10$Ao7Uey2z5jPFta/rZG51XuG1OZiWdlbdf3QSgsAjKn9Hfpcp14Ami','User',NULL,'l3rt92RyCJTudp71bH8phlqkkrfI6pE0vHQ8hScvLFFL9Xn76HPULTcAcyTu','2018-01-12 11:05:28','2018-09-23 11:56:26');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (8,'banner/6122cfae7fdb5fff1a4e7406dcab10ef.jpg',NULL,'<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type=\"button\" class=\"btn btn-default get\">Get it now</button>',1,0,0,1,'2018-08-02 09:23:32','2018-09-20 15:24:53'),(16,'banner/7b16dd5b838439ddbe58c3ea506f5db1.jpg',NULL,'<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type=\"button\" class=\"btn btn-default get\">Get it now</button>',1,0,0,1,'2018-08-21 08:09:08','2018-09-20 15:24:43'),(17,'banner/36e662803f744d4f9df2cecc2e17b87b.jpg',NULL,'<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type=\"button\" class=\"btn btn-default get\">Get it now</button>',1,0,0,0,'2018-09-03 09:51:56','2018-09-20 15:24:23');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `detail` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (10,NULL,'config','shop_allow_guest','1',11,'language.admin.shop_allow_guest'),(11,NULL,'smtp','smtp_host',NULL,8,'language.admin.smtp_host'),(12,NULL,'smtp','smtp_user','',7,'language.admin.smtp_user'),(13,NULL,'smtp','smtp_password','',6,'language.admin.smtp_password'),(14,NULL,'smtp','smtp_security','',5,'language.admin.smtp_security'),(15,NULL,'smtp','smtp_port','',4,'language.admin.smtp_port'),(16,NULL,'smtp','smtp_mode','0',9,'language.admin.smtp_mode'),(18,NULL,'config','product_preorder','1',18,'language.admin.product_preorder'),(19,NULL,'config','product_display_out_of_stock','1',19,'language.admin.product_display_out_of_stock'),(20,NULL,'config','product_buy_out_of_stock','1',20,'language.admin.product_buy_out_of_stock'),(22,NULL,'config','show_date_available','1',21,'language.admin.show_date_available'),(26,NULL,'display','product_hot','6',0,'language.admin.hot_product'),(27,NULL,'display','product_new','6',0,'language.admin.new_product'),(28,NULL,'display','product_list','18',0,'language.admin.list_product'),(29,NULL,'display','product_relation','4',0,'language.admin.relation_product'),(30,NULL,'config','site_ssl','0',0,'language.admin.enable_https'),(32,NULL,'config','watermark','1',0,'language.admin.enable_watermark'),(44,NULL,'config','site_status','1',100,'language.admin.site_status'),(45,NULL,'display','product_viewed','4',0,'language.admin.viewed_product'),(47,'Extensions','Payment','Cash','1',0,'Extensions/Payment/Cash.title'),(48,'Extensions','Shipping','ShippingStandard','1',0,'Shipping Standard'),(55,'Extensions','Total','Discount','1',0,'Extensions/Total/Discount.title'),(67,'Modules','Other','LastViewProduct','1',0,'Modules/Other/LastViewProduct.title');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_global`
--

DROP TABLE IF EXISTS `config_global`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_global` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `watermark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_global`
--

LOCK TABLES `config_global` WRITE;
/*!40000 ALTER TABLE `config_global` DISABLE KEYS */;
INSERT INTO `config_global` VALUES (1,'images/scart-mid.png','images/watermark.png','default','0123456789','Support: 0987654321','admin@admin.com',NULL,'123st - abc - xyz','en','USD');
/*!40000 ALTER TABLE `config_global` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_global_description`
--

DROP TABLE IF EXISTS `config_global_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_global_description` (
  `config_id` int(11) NOT NULL,
  `lang_id` tinyint(4) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keyword` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `config_id_lang_id` (`config_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_global_description`
--

LOCK TABLES `config_global_description` WRITE;
/*!40000 ALTER TABLE `config_global_description` DISABLE KEYS */;
INSERT INTO `config_global_description` VALUES (1,1,'Demo S-cart: Free open source - eCommerce Platform for Business','Free website shopping cart for business',NULL),(1,2,'Demo S-cart: xây dựng website bán hàng miễn phí cho doanh nghiệp','Free website shopping cart for business',NULL);
/*!40000 ALTER TABLE `config_global_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'English','en','language/flag_uk.png',1,1),(2,'Tiếng Việt','vi','language/flag_vn.png',1,1);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES (1,'Facebook code','top','','html','<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\n</script>',1,0),(2,'Google Analytics','header','','html','<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-128658138-1\');\r\n</script>',1,0),(5,'Product last view','left','','module','\\App\\Modules\\Other\\Controllers\\LastViewProduct',1,0),(8,'Product special','left','','view','product_special',1,1);
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_page`
--

DROP TABLE IF EXISTS `layout_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquekey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniquekey` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_page`
--

LOCK TABLES `layout_page` WRITE;
/*!40000 ALTER TABLE `layout_page` DISABLE KEYS */;
INSERT INTO `layout_page` VALUES (1,'home','Home page'),(2,'product_list','Product list'),(3,'product_detail','Product detail'),(4,'shop_cart','Shop cart'),(5,'shop_account','Account'),(6,'shop_profile','Profile'),(7,'shop_compare','Compare page'),(8,'shop_wishlist','Wishlist page');
/*!40000 ALTER TABLE `layout_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_position`
--

DROP TABLE IF EXISTS `layout_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquekey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniquekey` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_position`
--

LOCK TABLES `layout_position` WRITE;
/*!40000 ALTER TABLE `layout_position` DISABLE KEYS */;
INSERT INTO `layout_position` VALUES (1,'meta','Meta'),(2,'top','Top'),(3,'header','Header'),(4,'bottom','Bottom'),(5,'footer','Footer'),(6,'left','Column left'),(7,'right','Column right');
/*!40000 ALTER TABLE `layout_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_type`
--

DROP TABLE IF EXISTS `layout_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquekey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniquekey` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_type`
--

LOCK TABLES `layout_type` WRITE;
/*!40000 ALTER TABLE `layout_type` DISABLE KEYS */;
INSERT INTO `layout_type` VALUES (1,'html','Html'),(2,'view','View'),(4,'module','Module');
/*!40000 ALTER TABLE `layout_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_standard`
--

DROP TABLE IF EXISTS `shipping_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_standard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_standard`
--

LOCK TABLES `shipping_standard` WRITE;
/*!40000 ALTER TABLE `shipping_standard` DISABLE KEYS */;
INSERT INTO `shipping_standard` VALUES (1,20000,100000);
/*!40000 ALTER TABLE `shipping_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_api`
--

DROP TABLE IF EXISTS `shop_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hidden_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'private - secret - public',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_api`
--

LOCK TABLES `shop_api` WRITE;
/*!40000 ALTER TABLE `shop_api` DISABLE KEYS */;
INSERT INTO `shop_api` VALUES (1,'api_product_list',NULL,'secret'),(2,'api_product_detail','cost,sold,stock,sort','private'),(3,'api_order_list','','public'),(4,'api_order_detail','','secret');
/*!40000 ALTER TABLE `shop_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_api_process`
--

DROP TABLE IF EXISTS `shop_api_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_api_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL DEFAULT '0',
  `secret_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hidden_fileds` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_allow` text COLLATE utf8_unicode_ci,
  `ip_deny` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exp` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `secret_key` (`secret_key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_api_process`
--

LOCK TABLES `shop_api_process` WRITE;
/*!40000 ALTER TABLE `shop_api_process` DISABLE KEYS */;
INSERT INTO `shop_api_process` VALUES (1,1,'!CVCBsd$6j9ds3%flh[^d','descriptions,cost','','127.0.0.11,1233.2.2.3','2018-12-16 07:13:16','2018-12-16 07:17:33','2019-12-14 09:20:33',1),(4,1,'%GSFf13gkLtP@d','descriptions,brand_id',NULL,NULL,'2018-12-16 07:13:16','2018-12-16 07:13:16',NULL,1);
/*!40000 ALTER TABLE `shop_api_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_attribute_detail`
--

DROP TABLE IF EXISTS `shop_attribute_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_attribute_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `attribute_id` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_attribute_detail`
--

LOCK TABLES `shop_attribute_detail` WRITE;
/*!40000 ALTER TABLE `shop_attribute_detail` DISABLE KEYS */;
INSERT INTO `shop_attribute_detail` VALUES (5,'Blue',1,48,0),(6,'White',1,48,0),(7,'S',2,48,0),(8,'XL',2,48,0),(9,'Blue',1,49,0),(10,'Red',1,49,0),(11,'S',2,49,0),(12,'M',2,49,0);
/*!40000 ALTER TABLE `shop_attribute_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_attribute_group`
--

DROP TABLE IF EXISTS `shop_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_attribute_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_attribute_group`
--

LOCK TABLES `shop_attribute_group` WRITE;
/*!40000 ALTER TABLE `shop_attribute_group` DISABLE KEYS */;
INSERT INTO `shop_attribute_group` VALUES (1,'Color',1,1,'radio'),(2,'Size',1,2,'select');
/*!40000 ALTER TABLE `shop_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_brand`
--

DROP TABLE IF EXISTS `shop_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_brand`
--

LOCK TABLES `shop_brand` WRITE;
/*!40000 ALTER TABLE `shop_brand` DISABLE KEYS */;
INSERT INTO `shop_brand` VALUES (1,'Husq','brand/1ca28f797c0f2edb635c4b51c2e7e952.png',NULL,1,0),(2,'Ideal','brand/0a778de7e1e2f2a0635d6a1727e3de8d.png',NULL,1,0),(3,'Apex','brand/d3abfcfc8c0fef7e1356fc637ab9d8d8.png',NULL,1,0),(4,'CST','brand/185c50c85b83644e02e8b96639370341.png',NULL,1,0),(5,'Klein','brand/3e11cc022e9f30774ab5f6a0c6c36451.png',NULL,1,0),(6,'Metabo','brand/7868b0924b8f115aef70292aea1a67b8.png',NULL,1,0);
/*!40000 ALTER TABLE `shop_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (1,NULL,0,0,1),(2,'',0,0,1),(3,'',0,0,1),(4,'',0,0,1),(5,'',0,0,1),(6,'',9,0,1),(7,'',4,0,1),(8,'',4,0,1),(9,'',0,0,1),(10,'',2,0,1),(11,'',1,0,1),(12,'',1,3,1),(13,'',9,2,1),(14,'',4,0,1),(15,'',5,0,1),(16,'',2,0,1),(17,'',3,0,1),(18,'',3,0,1);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category_description`
--

DROP TABLE IF EXISTS `shop_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category_description` (
  `shop_category_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `shop_category_id_lang_id` (`shop_category_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category_description`
--

LOCK TABLES `shop_category_description` WRITE;
/*!40000 ALTER TABLE `shop_category_description` DISABLE KEYS */;
INSERT INTO `shop_category_description` VALUES (1,1,'SPORTSWEAR',NULL,NULL),(1,2,'Danh mục SPORTSWEAR',NULL,NULL),(2,1,'MENS',NULL,NULL),(2,2,'Danh mục MENS',NULL,NULL),(3,1,'WOMENS',NULL,NULL),(3,2,'Danh mục WOMENS',NULL,NULL),(4,1,'KIDS',NULL,NULL),(4,2,'Danh mục KIDS',NULL,NULL),(5,1,'FASHION',NULL,NULL),(5,2,'Danh mục FASHION',NULL,NULL),(6,1,'GUESS',NULL,NULL),(6,2,'Danh mục GUESS',NULL,NULL),(7,1,'PUMA',NULL,NULL),(7,2,'Danh mục PUMA',NULL,NULL),(8,1,'ASICS',NULL,NULL),(8,2,'Danh mục ASICS',NULL,NULL),(9,1,'HOUSEHOLDS',NULL,NULL),(9,2,'Danh mục HOUSEHOLDS',NULL,NULL),(10,1,'VALENTINO',NULL,NULL),(10,2,'Danh mục VALENTINO',NULL,NULL),(11,1,'DIOR',NULL,NULL),(11,2,'Danh mục DIOR',NULL,NULL),(12,1,'VALENTINO',NULL,NULL),(12,2,'Danh mục VALENTINO',NULL,NULL),(13,1,'DIOR',NULL,NULL),(13,2,'Danh mục DIOR',NULL,NULL),(14,1,'FENDI',NULL,NULL),(14,2,'Danh mục FENDI',NULL,NULL),(15,1,'FENDI',NULL,NULL),(15,2,'Danh mục  FENDI',NULL,NULL),(16,1,'NIKE',NULL,NULL),(16,2,'Danh mục NIKE',NULL,NULL),(17,1,'UNDER ARMOUR',NULL,NULL),(17,2,'Danh mục UNDER ARMOUR',NULL,NULL),(18,1,'ADIDAS',NULL,NULL),(18,2,'Danh mục ADIDAS',NULL,NULL);
/*!40000 ALTER TABLE `shop_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_currency`
--

DROP TABLE IF EXISTS `shop_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` float NOT NULL,
  `precision` tinyint(1) NOT NULL DEFAULT '2',
  `symbol_first` tinyint(4) NOT NULL DEFAULT '0',
  `thousands` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_currency`
--

LOCK TABLES `shop_currency` WRITE;
/*!40000 ALTER TABLE `shop_currency` DISABLE KEYS */;
INSERT INTO `shop_currency` VALUES (1,'USD Dola','USD','$',1,0,1,',',1,0),(2,'VietNam Dong','VND','₫',20,0,0,',',1,1);
/*!40000 ALTER TABLE `shop_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_discount`
--

DROP TABLE IF EXISTS `shop_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `number_uses` int(11) NOT NULL DEFAULT '1',
  `used` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `login` int(11) NOT NULL DEFAULT '0',
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_discount_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount`
--

LOCK TABLES `shop_discount` WRITE;
/*!40000 ALTER TABLE `shop_discount` DISABLE KEYS */;
INSERT INTO `shop_discount` VALUES (1,'TEST',10,0,NULL,10,0,1,0,NULL);
/*!40000 ALTER TABLE `shop_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_discount_user`
--

DROP TABLE IF EXISTS `shop_discount_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount_user` (
  `user_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci,
  `used_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount_user`
--

LOCK TABLES `shop_discount_user` WRITE;
/*!40000 ALTER TABLE `shop_discount_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_discount_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
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
  `currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchange_rate` float DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_detail`
--

DROP TABLE IF EXISTS `shop_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0' COMMENT 'Price: price of product or type',
  `qty` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT '0',
  `sku` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Attributes',
  `currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchange_rate` float DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Attributes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_detail`
--

LOCK TABLES `shop_order_detail` WRITE;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_history`
--

DROP TABLE IF EXISTS `shop_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_history`
--

LOCK TABLES `shop_order_history` WRITE;
/*!40000 ALTER TABLE `shop_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_status`
--

DROP TABLE IF EXISTS `shop_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_status`
--

LOCK TABLES `shop_order_status` WRITE;
/*!40000 ALTER TABLE `shop_order_status` DISABLE KEYS */;
INSERT INTO `shop_order_status` VALUES (0,'New'),(1,'Processing'),(2,'Hold'),(3,'Canceled'),(4,'Done'),(5,'Failed');
/*!40000 ALTER TABLE `shop_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_total`
--

DROP TABLE IF EXISTS `shop_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) NOT NULL,
  `text` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=709 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_total`
--

LOCK TABLES `shop_order_total` WRITE;
/*!40000 ALTER TABLE `shop_order_total` DISABLE KEYS */;
INSERT INTO `shop_order_total` VALUES (34,38,'Tổng tiền hàng','subtotal',485000,NULL,1,'2018-05-15 06:59:39','2018-05-19 23:12:46'),(35,38,'Phí giao hàng','shipping',15,NULL,10,'2018-05-15 06:59:39','2018-05-15 07:03:52'),(36,38,'Giảm giá','discount',-15,NULL,20,'2018-05-15 06:59:39','2018-05-15 07:03:34'),(37,38,'Đã thanh toán','received',-485000,NULL,200,'2018-05-15 06:59:39','2018-05-19 23:12:58'),(38,38,'Tổng tiền cần thanh toán','total',485000,NULL,100,'2018-05-15 06:59:39','2018-05-19 23:12:46'),(39,39,'Tổng tiền hàng','subtotal',1360000,NULL,1,'2018-05-18 06:59:31','2018-05-19 22:59:45'),(40,39,'Phí giao hàng','shipping',100000,NULL,10,'2018-05-18 06:59:31','2018-05-19 23:07:14'),(41,39,'Giảm giá','discount',-100000,NULL,20,'2018-05-18 06:59:31','2018-05-19 21:29:42'),(42,39,'Tổng tiền cần thanh toán','total',1360000,NULL,100,'2018-05-18 06:59:31','2018-05-19 23:07:14'),(43,39,'Đã thanh toán','received',-1060000,NULL,200,'2018-05-18 06:59:31','2018-09-03 10:17:09'),(214,74,'Tổng tiền hàng','subtotal',20000,NULL,1,'2018-09-03 10:00:37',NULL),(215,74,'Phí giao hàng','shipping',10000,NULL,10,'2018-09-03 10:00:37','2018-09-03 10:14:55'),(216,74,'Giảm giá','discount',0,NULL,20,'2018-09-03 10:00:37',NULL),(217,74,'Tổng tiền cần thanh toán','total',30000,NULL,100,'2018-09-03 10:00:37','2018-09-03 10:14:55'),(218,74,'Đã thanh toán','received',0,NULL,200,'2018-09-03 10:00:37',NULL),(219,75,'Tổng tiền hàng','subtotal',45000,NULL,1,'2018-09-05 13:59:07',NULL),(220,75,'Phí giao hàng','shipping',20000,NULL,10,'2018-09-05 13:59:07',NULL),(221,75,'Giảm giá','discount',0,NULL,20,'2018-09-05 13:59:07',NULL),(222,75,'Tổng tiền cần thanh toán','total',65000,NULL,100,'2018-09-05 13:59:07',NULL),(223,75,'Đã thanh toán','received',0,NULL,200,'2018-09-05 13:59:07',NULL),(224,76,'Tổng tiền hàng','subtotal',15000,NULL,1,'2018-09-06 11:59:25',NULL),(225,76,'Phí giao hàng','shipping',20000,NULL,10,'2018-09-06 11:59:25',NULL),(226,76,'Giảm giá 150,000VNĐ (<b>Code:</b> PAA-LLK04)','discount',-150000,NULL,20,'2018-09-06 11:59:25',NULL),(227,76,'Tổng tiền cần thanh toán','total',-115000,NULL,100,'2018-09-06 11:59:25',NULL),(228,76,'Đã thanh toán','received',0,NULL,200,'2018-09-06 11:59:25',NULL),(229,77,'Tổng tiền hàng','subtotal',20000,NULL,1,'2018-09-07 13:58:47',NULL),(230,77,'Phí giao hàng','shipping',20000,NULL,10,'2018-09-07 13:58:47',NULL),(231,77,'Giảm tối đa 30% (<b>Code:</b> KKB3-KLLA)','discount',-6000,NULL,20,'2018-09-07 13:58:47',NULL),(232,77,'Tổng tiền cần thanh toán','total',34000,NULL,100,'2018-09-07 13:58:47',NULL),(233,77,'Đã thanh toán','received',0,NULL,200,'2018-09-07 13:58:47',NULL),(234,78,'Tổng tiền hàng','subtotal',20000,NULL,1,'2018-09-07 17:27:24',NULL),(235,78,'Phí giao hàng','shipping',20000,NULL,10,'2018-09-07 17:27:24',NULL),(236,78,'Giảm giá','discount',0,NULL,20,'2018-09-07 17:27:24',NULL),(237,78,'Tổng tiền cần thanh toán','total',20000,NULL,100,'2018-09-07 17:27:24','2018-09-12 15:28:50'),(238,78,'Đã thanh toán','received',0,NULL,200,'2018-09-07 17:27:24',NULL),(239,79,'Tổng tiền hàng','subtotal',15000,NULL,1,'2018-09-23 01:54:19',NULL),(240,79,'Phí giao hàng','shipping',20000,NULL,10,'2018-09-23 01:54:19',NULL),(241,79,'Giảm giá','discount',0,NULL,20,'2018-09-23 01:54:19',NULL),(242,79,'Tổng tiền cần thanh toán','total',35000,NULL,100,'2018-09-23 01:54:19',NULL),(243,79,'Đã thanh toán','received',0,NULL,200,'2018-09-23 01:54:19',NULL),(244,80,'Tổng tiền hàng','subtotal',15000,NULL,1,'2018-09-23 02:34:17',NULL),(245,80,'Phí giao hàng','shipping',20000,NULL,10,'2018-09-23 02:34:17',NULL),(246,80,'Giảm giá','discount',0,NULL,20,'2018-09-23 02:34:17',NULL),(247,80,'Tổng tiền cần thanh toán','total',35000,NULL,100,'2018-09-23 02:34:17',NULL),(248,80,'Đã thanh toán','received',0,NULL,200,'2018-09-23 02:34:17',NULL),(249,81,'Tổng tiền hàng','subtotal',10000,NULL,1,'2018-09-23 02:34:47',NULL),(250,81,'Phí giao hàng','shipping',20000,NULL,10,'2018-09-23 02:34:47',NULL),(251,81,'Giảm giá','discount',0,NULL,20,'2018-09-23 02:34:47',NULL),(252,81,'Tổng tiền cần thanh toán','total',30000,NULL,100,'2018-09-23 02:34:47',NULL),(253,81,'Đã thanh toán','received',0,NULL,200,'2018-09-23 02:34:47',NULL),(254,82,'Sub total','subtotal',25000,NULL,1,'2018-09-23 04:57:34',NULL),(255,82,'Shipping','shipping',20000,NULL,10,'2018-09-23 04:57:34',NULL),(256,82,'Discount','discount',0,NULL,20,'2018-09-23 04:57:34',NULL),(257,82,'Total','total',45000,NULL,100,'2018-09-23 04:57:34',NULL),(258,82,'Received','received',0,NULL,200,'2018-09-23 04:57:34',NULL),(259,83,'Sub total','subtotal',15000,NULL,1,'2018-09-23 04:59:49',NULL),(260,83,'Shipping','shipping',20000,NULL,10,'2018-09-23 04:59:49',NULL),(261,83,'Discount','discount',0,NULL,20,'2018-09-23 04:59:49',NULL),(262,83,'Total','total',35000,NULL,100,'2018-09-23 04:59:49',NULL),(263,83,'Received','received',0,NULL,200,'2018-09-23 04:59:49',NULL),(264,84,'Sub total','subtotal',15000,NULL,1,'2018-09-23 05:00:51',NULL),(265,84,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:00:51',NULL),(266,84,'Discount','discount',0,NULL,20,'2018-09-23 05:00:51',NULL),(267,84,'Total','total',35000,NULL,100,'2018-09-23 05:00:51',NULL),(268,84,'Received','received',0,NULL,200,'2018-09-23 05:00:51',NULL),(269,85,'Sub total','subtotal',15000,NULL,1,'2018-09-23 05:09:37',NULL),(270,85,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:09:37',NULL),(271,85,'Discount','discount',0,NULL,20,'2018-09-23 05:09:37',NULL),(272,85,'Total','total',35000,NULL,100,'2018-09-23 05:09:37',NULL),(273,85,'Received','received',0,NULL,200,'2018-09-23 05:09:37',NULL),(274,86,'Sub total','subtotal',15000,NULL,1,'2018-09-23 05:11:27',NULL),(275,86,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:11:27',NULL),(276,86,'Discount','discount',0,NULL,20,'2018-09-23 05:11:27',NULL),(277,86,'Total','total',35000,NULL,100,'2018-09-23 05:11:27',NULL),(278,86,'Received','received',0,NULL,200,'2018-09-23 05:11:27',NULL),(279,87,'Sub total','subtotal',15000,NULL,1,'2018-09-23 05:15:40',NULL),(280,87,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:15:40',NULL),(281,87,'Discount','discount',0,NULL,20,'2018-09-23 05:15:40',NULL),(282,87,'Total','total',35000,NULL,100,'2018-09-23 05:15:40',NULL),(283,87,'Received','received',0,NULL,200,'2018-09-23 05:15:40',NULL),(284,88,'Sub total','subtotal',10000,NULL,1,'2018-09-23 05:18:08',NULL),(285,88,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:18:08',NULL),(286,88,'Discount','discount',0,NULL,20,'2018-09-23 05:18:08',NULL),(287,88,'Total','total',30000,NULL,100,'2018-09-23 05:18:08',NULL),(288,88,'Received','received',0,NULL,200,'2018-09-23 05:18:08',NULL),(289,89,'Sub total','subtotal',10000,NULL,1,'2018-09-23 05:21:04',NULL),(290,89,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:21:04',NULL),(291,89,'Discount','discount',0,NULL,20,'2018-09-23 05:21:04',NULL),(292,89,'Total','total',30000,NULL,100,'2018-09-23 05:21:04',NULL),(293,89,'Received','received',0,NULL,200,'2018-09-23 05:21:04',NULL),(294,90,'Sub total','subtotal',15000,NULL,1,'2018-09-23 05:26:19',NULL),(295,90,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:26:19',NULL),(296,90,'Discount','discount',0,NULL,20,'2018-09-23 05:26:19',NULL),(297,90,'Total','total',35000,NULL,100,'2018-09-23 05:26:19',NULL),(298,90,'Received','received',0,NULL,200,'2018-09-23 05:26:19',NULL),(299,91,'Sub total','subtotal',15000,NULL,1,'2018-09-23 05:29:11',NULL),(300,91,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:29:11',NULL),(301,91,'Discount','discount',0,NULL,20,'2018-09-23 05:29:11',NULL),(302,91,'Total','total',35000,NULL,100,'2018-09-23 05:29:11',NULL),(303,91,'Received','received',0,NULL,200,'2018-09-23 05:29:11',NULL),(304,92,'Sub total','subtotal',15000,NULL,1,'2018-09-23 05:31:28',NULL),(305,92,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:31:28',NULL),(306,92,'Discount','discount',0,NULL,20,'2018-09-23 05:31:28',NULL),(307,92,'Total','total',35000,NULL,100,'2018-09-23 05:31:28',NULL),(308,92,'Received','received',0,NULL,200,'2018-09-23 05:31:28',NULL),(309,93,'Sub total','subtotal',25000,NULL,1,'2018-09-23 05:41:07',NULL),(310,93,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:41:07',NULL),(311,93,'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK07)','discount',-25000,NULL,20,'2018-09-23 05:41:07',NULL),(312,93,'Total','total',20000,NULL,100,'2018-09-23 05:41:07',NULL),(313,93,'Received','received',0,NULL,200,'2018-09-23 05:41:07',NULL),(314,94,'Sub total','subtotal',30000,NULL,1,'2018-09-23 05:44:03',NULL),(315,94,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:44:03',NULL),(316,94,'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK08)','discount',-30000,NULL,20,'2018-09-23 05:44:03',NULL),(317,94,'Total','total',20000,NULL,100,'2018-09-23 05:44:03',NULL),(318,94,'Received','received',0,NULL,200,'2018-09-23 05:44:03',NULL),(319,95,'Sub total','subtotal',30000,NULL,1,'2018-09-23 05:46:05',NULL),(320,95,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:46:05',NULL),(321,95,'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK09)','discount',-30000,NULL,20,'2018-09-23 05:46:05',NULL),(322,95,'Total','total',20000,NULL,100,'2018-09-23 05:46:05',NULL),(323,95,'Received','received',0,NULL,200,'2018-09-23 05:46:05',NULL),(324,96,'Sub total','subtotal',10000,NULL,1,'2018-09-23 05:48:40',NULL),(325,96,'Shipping','shipping',20000,NULL,10,'2018-09-23 05:48:40',NULL),(326,96,'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK010)','discount',-10000,NULL,20,'2018-09-23 05:48:40',NULL),(327,96,'Total','total',20000,NULL,100,'2018-09-23 05:48:40',NULL),(328,96,'Received','received',-10000,NULL,200,'2018-09-23 05:48:40','2018-09-23 05:53:18'),(329,97,'Sub total','subtotal',10000,NULL,1,'2018-09-23 12:50:53',NULL),(330,97,'Shipping','shipping',20000,NULL,10,'2018-09-23 12:50:53',NULL),(331,97,'Discount','discount',0,NULL,20,'2018-09-23 12:50:53',NULL),(332,97,'Total','total',30000,NULL,100,'2018-09-23 12:50:53',NULL),(333,97,'Received','received',0,NULL,200,'2018-09-23 12:50:53',NULL),(334,98,'Sub total','subtotal',25000,NULL,1,'2018-09-23 13:20:04',NULL),(335,98,'Shipping','shipping',20000,NULL,10,'2018-09-23 13:20:04',NULL),(336,98,'Discount','discount',0,NULL,20,'2018-09-23 13:20:04',NULL),(337,98,'Total','total',45000,NULL,100,'2018-09-23 13:20:04',NULL),(338,98,'Received','received',0,NULL,200,'2018-09-23 13:20:04',NULL),(339,99,'Sub total','subtotal',15000,NULL,1,'2018-09-23 14:43:24',NULL),(340,99,'Shipping','shipping',20000,NULL,10,'2018-09-23 14:43:24',NULL),(341,99,'Discount','discount',0,NULL,20,'2018-09-23 14:43:24',NULL),(342,99,'Total','total',35000,NULL,100,'2018-09-23 14:43:24',NULL),(343,99,'Received','received',0,NULL,200,'2018-09-23 14:43:24',NULL),(344,100,'Sub total','subtotal',15000,NULL,1,'2018-09-23 14:48:17',NULL),(345,100,'Shipping','shipping',20000,NULL,10,'2018-09-23 14:48:17',NULL),(346,100,'Discount','discount',0,NULL,20,'2018-09-23 14:48:17',NULL),(347,100,'Total','total',35000,NULL,100,'2018-09-23 14:48:17',NULL),(348,100,'Received','received',0,NULL,200,'2018-09-23 14:48:17',NULL),(349,101,'Sub total','subtotal',30000,NULL,1,'2018-09-23 15:43:12',NULL),(350,101,'Shipping','shipping',20000,NULL,10,'2018-09-23 15:43:12',NULL),(351,101,'Discount','discount',0,NULL,20,'2018-09-23 15:43:12',NULL),(352,101,'Total','total',50000,NULL,100,'2018-09-23 15:43:12',NULL),(353,101,'Received','received',0,NULL,200,'2018-09-23 15:43:12',NULL),(354,102,'Sub total','subtotal',15000,NULL,1,'2018-09-24 02:14:19',NULL),(355,102,'Shipping','shipping',20000,NULL,10,'2018-09-24 02:14:19',NULL),(356,102,'Discount','discount',0,NULL,20,'2018-09-24 02:14:19',NULL),(357,102,'Total','total',35000,NULL,100,'2018-09-24 02:14:19',NULL),(358,102,'Received','received',0,NULL,200,'2018-09-24 02:14:19',NULL),(359,103,'Sub total','subtotal',100000,NULL,1,'2018-09-24 02:15:16',NULL),(360,103,'Shipping','shipping',20000,NULL,10,'2018-09-24 02:15:16',NULL),(361,103,'Discount','discount',0,NULL,20,'2018-09-24 02:15:16',NULL),(362,103,'Total','total',120000,NULL,100,'2018-09-24 02:15:16',NULL),(363,103,'Received','received',0,NULL,200,'2018-09-24 02:15:16',NULL),(364,104,'Sub total','subtotal',10000,NULL,1,'2018-09-24 02:15:56',NULL),(365,104,'Shipping','shipping',20000,NULL,10,'2018-09-24 02:15:56',NULL),(366,104,'Discount','discount',0,NULL,20,'2018-09-24 02:15:56',NULL),(367,104,'Total','total',30000,NULL,100,'2018-09-24 02:15:56',NULL),(368,104,'Received','received',0,NULL,200,'2018-09-24 02:15:56',NULL),(369,105,'Sub total','subtotal',15000,NULL,1,'2018-09-24 03:02:55',NULL),(370,105,'Shipping','shipping',20000,NULL,10,'2018-09-24 03:02:55',NULL),(371,105,'Discount','discount',0,NULL,20,'2018-09-24 03:02:55',NULL),(372,105,'Total','total',35000,NULL,100,'2018-09-24 03:02:55',NULL),(373,105,'Received','received',0,NULL,200,'2018-09-24 03:02:55',NULL),(374,106,'Sub total','subtotal',15000,NULL,1,'2018-09-24 04:55:30',NULL),(375,106,'Shipping','shipping',20000,NULL,10,'2018-09-24 04:55:30',NULL),(376,106,'Discount','discount',0,NULL,20,'2018-09-24 04:55:30',NULL),(377,106,'Total','total',35000,NULL,100,'2018-09-24 04:55:30',NULL),(378,106,'Received','received',0,NULL,200,'2018-09-24 04:55:30',NULL),(379,107,'Sub total','subtotal',25000,NULL,1,'2018-09-24 08:59:29',NULL),(380,107,'Shipping','shipping',20000,NULL,10,'2018-09-24 08:59:29',NULL),(381,107,'Discount','discount',0,NULL,20,'2018-09-24 08:59:29',NULL),(382,107,'Total','total',45000,NULL,100,'2018-09-24 08:59:29',NULL),(383,107,'Received','received',0,NULL,200,'2018-09-24 08:59:29',NULL),(384,108,'Sub total','subtotal',25000,NULL,1,'2018-09-25 01:41:44',NULL),(385,108,'Shipping','shipping',20000,NULL,10,'2018-09-25 01:41:44',NULL),(386,108,'Discount','discount',0,NULL,20,'2018-09-25 01:41:44',NULL),(387,108,'Total','total',45000,NULL,100,'2018-09-25 01:41:44',NULL),(388,108,'Received','received',0,NULL,200,'2018-09-25 01:41:44',NULL),(389,109,'Sub total','subtotal',10000,NULL,1,'2018-09-25 11:52:30',NULL),(390,109,'Shipping','shipping',20000,NULL,10,'2018-09-25 11:52:30',NULL),(391,109,'Discount','discount',0,NULL,20,'2018-09-25 11:52:30',NULL),(392,109,'Total','total',30000,NULL,100,'2018-09-25 11:52:30',NULL),(393,109,'Received','received',0,NULL,200,'2018-09-25 11:52:30',NULL),(394,110,'Sub total','subtotal',25000,NULL,1,'2018-09-26 03:23:16',NULL),(395,110,'Shipping','shipping',20000,NULL,10,'2018-09-26 03:23:16',NULL),(396,110,'Discount','discount',0,NULL,20,'2018-09-26 03:23:16',NULL),(397,110,'Total','total',45000,NULL,100,'2018-09-26 03:23:16',NULL),(398,110,'Received','received',0,NULL,200,'2018-09-26 03:23:16',NULL),(399,111,'Sub total','subtotal',15000,NULL,1,'2018-09-28 02:37:05',NULL),(400,111,'Shipping','shipping',20000,NULL,10,'2018-09-28 02:37:05',NULL),(401,111,'Discount','discount',0,NULL,20,'2018-09-28 02:37:05',NULL),(402,111,'Total','total',35000,NULL,100,'2018-09-28 02:37:05',NULL),(403,111,'Received','received',0,NULL,200,'2018-09-28 02:37:05',NULL),(404,112,'Sub total','subtotal',10000,NULL,1,'2018-10-05 14:40:26',NULL),(405,112,'Shipping','shipping',20000,NULL,10,'2018-10-05 14:40:26',NULL),(406,112,'Discount','discount',0,NULL,20,'2018-10-05 14:40:26',NULL),(407,112,'Total','total',30000,NULL,100,'2018-10-05 14:40:26',NULL),(408,112,'Received','received',0,NULL,200,'2018-10-05 14:40:26',NULL),(409,113,'Sub total','subtotal',10000,NULL,1,'2018-10-07 15:14:36',NULL),(410,113,'Shipping','shipping',20000,NULL,10,'2018-10-07 15:14:36',NULL),(411,113,'Discount','discount',0,NULL,20,'2018-10-07 15:14:36',NULL),(412,113,'Total','total',30000,NULL,100,'2018-10-07 15:14:36',NULL),(413,113,'Received','received',0,NULL,200,'2018-10-07 15:14:36',NULL),(414,114,'Sub total','subtotal',10000,NULL,1,'2018-10-08 02:31:50',NULL),(415,114,'Shipping','shipping',20000,NULL,10,'2018-10-08 02:31:50',NULL),(416,114,'Discount','discount',0,NULL,20,'2018-10-08 02:31:50',NULL),(417,114,'Total','total',30000,NULL,100,'2018-10-08 02:31:50',NULL),(418,114,'Received','received',0,NULL,200,'2018-10-08 02:31:50',NULL),(419,115,'Sub total','subtotal',10000,NULL,1,'2018-10-08 11:14:53',NULL),(420,115,'Shipping','shipping',20000,NULL,10,'2018-10-08 11:14:53',NULL),(421,115,'Discount','discount',0,NULL,20,'2018-10-08 11:14:53',NULL),(422,115,'Total','total',30000,NULL,100,'2018-10-08 11:14:53',NULL),(423,115,'Received','received',0,NULL,200,'2018-10-08 11:14:53',NULL),(424,116,'Sub total','subtotal',15000,NULL,1,'2018-10-09 04:23:37',NULL),(425,116,'Shipping','shipping',20000,NULL,10,'2018-10-09 04:23:37',NULL),(426,116,'Discount','discount',0,NULL,20,'2018-10-09 04:23:37',NULL),(427,116,'Total','total',35000,NULL,100,'2018-10-09 04:23:37',NULL),(428,116,'Received','received',0,NULL,200,'2018-10-09 04:23:37',NULL),(429,117,'Sub total','subtotal',15000,NULL,1,'2018-10-09 11:02:43',NULL),(430,117,'Shipping','shipping',20000,NULL,10,'2018-10-09 11:02:43',NULL),(431,117,'Discount','discount',0,NULL,20,'2018-10-09 11:02:43',NULL),(432,117,'Total','total',35000,NULL,100,'2018-10-09 11:02:43',NULL),(433,117,'Received','received',0,NULL,200,'2018-10-09 11:02:43',NULL),(434,118,'Sub total','subtotal',10000,NULL,1,'2018-10-16 23:42:22',NULL),(435,118,'Shipping','shipping',20000,NULL,10,'2018-10-16 23:42:22',NULL),(436,118,'Discount','discount',0,NULL,20,'2018-10-16 23:42:22',NULL),(437,118,'Total','total',30000,NULL,100,'2018-10-16 23:42:22',NULL),(438,118,'Received','received',0,NULL,200,'2018-10-16 23:42:22',NULL),(439,119,'Sub total','subtotal',15000,NULL,1,'2018-10-17 16:38:23',NULL),(440,119,'Shipping','shipping',200000,NULL,10,'2018-10-17 16:38:23','2018-10-18 14:41:20'),(441,119,'Discount','discount',0,NULL,20,'2018-10-17 16:38:23',NULL),(442,119,'Total','total',215000,NULL,100,'2018-10-17 16:38:23','2018-10-18 14:41:20'),(443,119,'Received','received',0,NULL,200,'2018-10-17 16:38:23',NULL),(444,120,'Sub total','subtotal',40000,NULL,1,'2018-10-19 14:44:17',NULL),(445,120,'Shipping','shipping',20000,NULL,10,'2018-10-19 14:44:17',NULL),(446,120,'Discount','discount',0,NULL,20,'2018-10-19 14:44:17',NULL),(447,120,'Total','total',60000,NULL,100,'2018-10-19 14:44:17',NULL),(448,120,'Received','received',0,NULL,200,'2018-10-19 14:44:17',NULL),(449,121,'Sub total','subtotal',15000,NULL,1,'2018-10-19 14:48:06',NULL),(450,121,'Shipping','shipping',20000,NULL,10,'2018-10-19 14:48:06',NULL),(451,121,'Discount','discount',0,NULL,20,'2018-10-19 14:48:06',NULL),(452,121,'Total','total',35000,NULL,100,'2018-10-19 14:48:06',NULL),(453,121,'Received','received',0,NULL,200,'2018-10-19 14:48:06',NULL),(454,122,'Sub total','subtotal',10000,NULL,1,'2018-10-21 09:44:08',NULL),(455,122,'Shipping','shipping',20000,NULL,10,'2018-10-21 09:44:08',NULL),(456,122,'Discount','discount',0,NULL,20,'2018-10-21 09:44:08',NULL),(457,122,'Total','total',30000,NULL,100,'2018-10-21 09:44:08',NULL),(458,122,'Received','received',0,NULL,200,'2018-10-21 09:44:08',NULL),(459,123,'Sub total','subtotal',10000,NULL,1,'2018-10-23 03:51:11',NULL),(460,123,'Shipping','shipping',20000,NULL,10,'2018-10-23 03:51:11',NULL),(461,123,'Discount','discount',0,NULL,20,'2018-10-23 03:51:11',NULL),(462,123,'Total','total',30000,NULL,100,'2018-10-23 03:51:11',NULL),(463,123,'Received','received',0,NULL,200,'2018-10-23 03:51:11',NULL),(464,124,'Sub total','subtotal',30000,NULL,1,'2018-10-23 06:21:06',NULL),(465,124,'Shipping','shipping',20000,NULL,10,'2018-10-23 06:21:06','2018-11-08 17:11:11'),(466,124,'Discount','discount',0,NULL,20,'2018-10-23 06:21:06',NULL),(467,124,'Total','total',50000,NULL,100,'2018-10-23 06:21:06','2018-11-08 17:11:11'),(468,124,'Received','received',0,NULL,200,'2018-10-23 06:21:06',NULL),(469,125,'Sub total','subtotal',75000,NULL,1,'2018-10-23 15:38:45',NULL),(470,125,'Shipping','shipping',20000,NULL,10,'2018-10-23 15:38:45',NULL),(471,125,'Discount','discount',0,NULL,20,'2018-10-23 15:38:45',NULL),(472,125,'Total','total',95000,NULL,100,'2018-10-23 15:38:45',NULL),(473,125,'Received','received',0,NULL,200,'2018-10-23 15:38:45',NULL),(474,126,'Sub total','subtotal',60000,NULL,1,'2018-10-31 05:50:30',NULL),(475,126,'Shipping','shipping',20000,NULL,10,'2018-10-31 05:50:30',NULL),(476,126,'Discount','discount',0,NULL,20,'2018-10-31 05:50:30',NULL),(477,126,'Total','total',80000,NULL,100,'2018-10-31 05:50:30',NULL),(478,126,'Received','received',0,NULL,200,'2018-10-31 05:50:30',NULL),(479,127,'Sub total','subtotal',125000,NULL,1,'2018-11-01 06:27:57',NULL),(480,127,'Shipping','shipping',20000,NULL,10,'2018-11-01 06:27:57',NULL),(481,127,'Discount','discount',0,NULL,20,'2018-11-01 06:27:57',NULL),(482,127,'Total','total',145000,NULL,100,'2018-11-01 06:27:57',NULL),(483,127,'Received','received',0,NULL,200,'2018-11-01 06:27:57',NULL),(484,128,'Sub total','subtotal',115000,NULL,1,'2018-11-05 11:23:55',NULL),(485,128,'Shipping','shipping',20000,NULL,10,'2018-11-05 11:23:55',NULL),(486,128,'Discount','discount',0,NULL,20,'2018-11-05 11:23:55',NULL),(487,128,'Total','total',135000,NULL,100,'2018-11-05 11:23:55',NULL),(488,128,'Received','received',0,NULL,200,'2018-11-05 11:23:55',NULL),(489,129,'Sub total','subtotal',15000,NULL,1,'2018-11-05 11:35:28',NULL),(490,129,'Shipping','shipping',20000,NULL,10,'2018-11-05 11:35:28',NULL),(491,129,'Discount','discount',0,NULL,20,'2018-11-05 11:35:28',NULL),(492,129,'Total','total',35000,NULL,100,'2018-11-05 11:35:28',NULL),(493,129,'Received','received',0,NULL,200,'2018-11-05 11:35:28',NULL),(494,130,'Subtotal','subtotal',90000,NULL,1,NULL,'2018-11-08 17:13:23'),(495,130,'Shipping','shipping',15000,NULL,10,NULL,'2018-11-08 17:13:39'),(496,130,'Discount','discount',-10000,NULL,20,NULL,'2018-11-08 17:13:47'),(497,130,'Total','total',95000,NULL,100,NULL,'2018-11-08 17:13:47'),(498,130,'Received','received',-35000,NULL,200,NULL,'2018-11-08 17:13:56'),(499,131,'Sub total','subtotal',10000,NULL,1,'2018-11-13 08:08:31',NULL),(500,131,'Shipping','shipping',20000,NULL,10,'2018-11-13 08:08:31',NULL),(501,131,'Discount','discount',0,NULL,20,'2018-11-13 08:08:31',NULL),(502,131,'Total','total',30000,NULL,100,'2018-11-13 08:08:31',NULL),(503,131,'Received','received',0,NULL,200,'2018-11-13 08:08:31',NULL),(504,132,'Sub total','subtotal',15000,NULL,1,'2018-11-15 09:45:22',NULL),(505,132,'Shipping','shipping',20000,NULL,10,'2018-11-15 09:45:22',NULL),(506,132,'Discount','discount',0,NULL,20,'2018-11-15 09:45:22',NULL),(507,132,'Total','total',35000,NULL,100,'2018-11-15 09:45:22',NULL),(508,132,'Received','received',0,NULL,200,'2018-11-15 09:45:22',NULL),(509,133,'Sub total','subtotal',15000,NULL,1,'2018-11-18 01:45:32',NULL),(510,133,'Shipping','shipping',20000,NULL,10,'2018-11-18 01:45:32',NULL),(511,133,'Discount','discount',0,NULL,20,'2018-11-18 01:45:32',NULL),(512,133,'Total','total',35000,NULL,100,'2018-11-18 01:45:32',NULL),(513,133,'Received','received',0,NULL,200,'2018-11-18 01:45:32',NULL),(514,134,'Sub total','subtotal',15000,NULL,1,'2018-11-19 03:38:57',NULL),(515,134,'Shipping','shipping',20000,NULL,10,'2018-11-19 03:38:57',NULL),(516,134,'Discount','discount',0,NULL,20,'2018-11-19 03:38:57',NULL),(517,134,'Total','total',35000,NULL,100,'2018-11-19 03:38:57',NULL),(518,134,'Received','received',0,NULL,200,'2018-11-19 03:38:57',NULL),(519,135,'Sub total','subtotal',319000,NULL,1,'2018-11-20 11:05:30',NULL),(520,135,'Shipping','shipping',20000,NULL,10,'2018-11-20 11:05:30',NULL),(521,135,'Discount','discount',0,NULL,20,'2018-11-20 11:05:30',NULL),(522,135,'Total','total',339000,NULL,100,'2018-11-20 11:05:30',NULL),(523,135,'Received','received',0,NULL,200,'2018-11-20 11:05:30',NULL),(524,136,'Sub total','subtotal',20000,NULL,1,'2018-11-21 20:56:04',NULL),(525,136,'Shipping','shipping',20000,NULL,10,'2018-11-21 20:56:04',NULL),(526,136,'Discount','discount',0,NULL,20,'2018-11-21 20:56:04',NULL),(527,136,'Total','total',40000,NULL,100,'2018-11-21 20:56:04',NULL),(528,136,'Received','received',0,NULL,200,'2018-11-21 20:56:04',NULL),(529,137,'Sub total','subtotal',200000,NULL,1,'2018-11-24 17:30:13',NULL),(530,137,'Shipping','shipping',20000,NULL,10,'2018-11-24 17:30:13',NULL),(531,137,'Discount','discount',0,NULL,20,'2018-11-24 17:30:13',NULL),(532,137,'Total','total',220000,NULL,100,'2018-11-24 17:30:13',NULL),(533,137,'Received','received',0,NULL,200,'2018-11-24 17:30:13',NULL),(534,138,'Sub total','subtotal',335000,NULL,1,'2018-11-24 17:33:21',NULL),(535,138,'Shipping','shipping',20000,NULL,10,'2018-11-24 17:33:21',NULL),(536,138,'Discount','discount',0,NULL,20,'2018-11-24 17:33:21',NULL),(537,138,'Total','total',355000,NULL,100,'2018-11-24 17:33:21',NULL),(538,138,'Received','received',0,NULL,200,'2018-11-24 17:33:21',NULL),(539,139,'Sub total','subtotal',100000,NULL,1,'2018-11-26 11:00:10',NULL),(540,139,'Shipping','shipping',20000,NULL,10,'2018-11-26 11:00:10',NULL),(541,139,'Discount','discount',0,NULL,20,'2018-11-26 11:00:10',NULL),(542,139,'Total','total',120000,NULL,100,'2018-11-26 11:00:10',NULL),(543,139,'Received','received',0,NULL,200,'2018-11-26 11:00:10',NULL),(564,144,'Sub total','subtotal',25000,'$25,000',1,'2018-12-08 02:10:13',NULL),(565,144,'Shipping','shipping',20000,'$20,000',10,'2018-12-08 02:10:13',NULL),(566,144,'Discount','discount',0,'$0',20,'2018-12-08 02:10:13',NULL),(567,144,'Total','total',45000,'$45,000',100,'2018-12-08 02:10:13',NULL),(568,144,'Received','received',0,'$0',200,'2018-12-08 02:10:13',NULL),(569,145,'Sub total','subtotal',35000,'$35,000',1,'2018-12-08 02:12:14',NULL),(570,145,'Shipping','shipping',20000,'$20,000',10,'2018-12-08 02:12:14',NULL),(571,145,'Discount','discount',0,'$0',20,'2018-12-08 02:12:14',NULL),(572,145,'Total','total',55000,'$55,000',100,'2018-12-08 02:12:14',NULL),(573,145,'Received','received',0,'$0',200,'2018-12-08 02:12:14',NULL),(574,146,'Sub total','subtotal',45000,'$45,000',1,'2018-12-08 02:14:51',NULL),(575,146,'Shipping','shipping',20000,'$20,000',10,'2018-12-08 02:14:51',NULL),(576,146,'<b>Code:</b> PAA-LLK023','discount',-50,'-$50',20,'2018-12-08 02:14:51',NULL),(577,146,'Total','total',64950,'$64,950',100,'2018-12-08 02:14:51',NULL),(578,146,'Received','received',0,'$0',200,'2018-12-08 02:14:51',NULL),(579,147,'Sub total','subtotal',45000,'600,000VNĐ',1,'2018-12-08 02:18:02','2018-12-09 16:33:18'),(580,147,'Shipping','shipping',40000,'40,000VNĐ',10,'2018-12-08 02:18:02','2018-12-09 16:33:40'),(581,147,'<b>Code:</b> PAA-LLK024','discount',-10000,'-10,000VNĐ',20,'2018-12-08 02:18:02','2018-12-08 02:22:17'),(582,147,'Total','total',75000,'999,000VNĐ',100,'2018-12-08 02:18:02','2018-12-09 16:33:40'),(583,147,'Received','received',-20000,'-20,000VNĐ',200,'2018-12-08 02:18:02','2018-12-09 16:33:03'),(584,148,'Sub total','subtotal',415000,'300,000VNĐ',1,'2018-12-08 02:18:24','2018-12-09 16:32:11'),(585,148,'Shipping','shipping',400000,'400,000VNĐ',10,'2018-12-08 02:18:24',NULL),(586,148,'Discount','discount',-20000,'-20,000VNĐ',20,'2018-12-08 02:18:24','2018-12-09 16:26:35'),(587,148,'Total','total',795000,'700,000VNĐ',100,'2018-12-08 02:18:24','2018-12-09 16:32:11'),(588,148,'Received','received',-80000,'-80,000VNĐ',200,'2018-12-08 02:18:24','2018-12-09 16:26:45'),(589,149,'Sub total','subtotal',25000,'$25,000',1,'2018-12-11 23:05:17',NULL),(590,149,'Shipping','shipping',20000,'$20,000',10,'2018-12-11 23:05:17',NULL),(591,149,'Discount','discount',0,'$0',20,'2018-12-11 23:05:17',NULL),(592,149,'Total','total',45000,'$45,000',100,'2018-12-11 23:05:17',NULL),(593,149,'Received','received',0,'$0',200,'2018-12-11 23:05:17',NULL),(594,150,'Sub total','subtotal',10000,'$10,000',1,'2018-12-12 16:47:05',NULL),(595,150,'Shipping','shipping',20000,'$20,000',10,'2018-12-12 16:47:05',NULL),(596,150,'Discount','discount',0,'$0',20,'2018-12-12 16:47:05',NULL),(597,150,'Total','total',30000,'$30,000',100,'2018-12-12 16:47:05',NULL),(598,150,'Received','received',0,'$0',200,'2018-12-12 16:47:05',NULL),(599,151,'Sub total','subtotal',10000,'$10,000',1,'2018-12-25 13:02:29',NULL),(600,151,'Shipping','shipping',20000,'$20,000',10,'2018-12-25 13:02:29',NULL),(601,151,'Discount','discount',0,'$0',20,'2018-12-25 13:02:29',NULL),(602,151,'Total','total',30000,'$30,000',100,'2018-12-25 13:02:29',NULL),(603,151,'Received','received',0,'$0',200,'2018-12-25 13:02:29',NULL),(604,152,'Sub total','subtotal',20000,'$20,000',1,'2018-12-26 08:48:31',NULL),(605,152,'Shipping','shipping',20000,'$20,000',10,'2018-12-26 08:48:31',NULL),(606,152,'Discount','discount',0,'$0',20,'2018-12-26 08:48:31',NULL),(607,152,'Total','total',40000,'$40,000',100,'2018-12-26 08:48:31',NULL),(608,152,'Received','received',0,'$0',200,'2018-12-26 08:48:31',NULL),(609,153,'Sub total','subtotal',700000,'700,000₫',1,'2019-01-01 14:51:27',NULL),(610,153,'Shipping','shipping',400000,'400,000₫',10,'2019-01-01 14:51:27',NULL),(611,153,'Discount','discount',0,'0₫',20,'2019-01-01 14:51:27',NULL),(612,153,'Total','total',1100000,'1,100,000₫',100,'2019-01-01 14:51:27',NULL),(613,153,'Received','received',0,'0₫',200,'2019-01-01 14:51:27',NULL),(614,154,'Sub total','subtotal',15000,'$15,000',1,'2019-01-02 14:57:42',NULL),(615,154,'Shipping','shipping',20000,'$20,000',10,'2019-01-02 14:57:42',NULL),(616,154,'Discount','discount',0,'$0',20,'2019-01-02 14:57:42',NULL),(617,154,'Total','total',35000,'$35,000',100,'2019-01-02 14:57:42',NULL),(618,154,'Received','received',0,'$0',200,'2019-01-02 14:57:42',NULL),(619,155,'Sub total','subtotal',80000,'$80,000',1,'2019-01-02 14:59:33',NULL),(620,155,'Shipping','shipping',20000,'$20,000',10,'2019-01-02 14:59:33',NULL),(621,155,'Discount','discount',0,'$0',20,'2019-01-02 14:59:33',NULL),(622,155,'Total','total',100000,'$100,000',100,'2019-01-02 14:59:33',NULL),(623,155,'Received','received',0,'$0',200,'2019-01-02 14:59:33',NULL),(624,156,'Sub total','subtotal',15000,'$15,000',1,'2019-01-24 11:02:30',NULL),(625,156,'Shipping','shipping',20000,'$20,000',10,'2019-01-24 11:02:30',NULL),(626,156,'Discount','discount',0,'$0',20,'2019-01-24 11:02:30',NULL),(627,156,'Total','total',35000,'$35,000',100,'2019-01-24 11:02:30',NULL),(628,156,'Received','received',0,'$0',200,'2019-01-24 11:02:30',NULL),(629,157,'Sub Total','subtotal',15000,'$15,000',1,'2019-02-01 09:15:12',NULL),(630,157,'Shipping demo','shipping',200,'$200',10,'2019-02-01 09:15:12',NULL),(631,157,'Discount','discount',0,'$0',20,'2019-02-01 09:15:12',NULL),(632,157,'Total','total',15200,'$15,200',100,'2019-02-01 09:15:12',NULL),(633,157,'Received','received',0,'$0',200,'2019-02-01 09:15:12',NULL),(634,158,'Sub Total','subtotal',45000,'$45,000',1,'2019-02-01 09:56:44',NULL),(635,158,'Shipping Standard','shipping',20000,'$20,000',10,'2019-02-01 09:56:44',NULL),(636,158,'<b>Discount:</b> abc123','discount',-10,'-$10',20,'2019-02-01 09:56:44',NULL),(637,158,'Total','total',64990,'$64,990',100,'2019-02-01 09:56:44',NULL),(638,158,'Received','received',0,'$0',200,'2019-02-01 09:56:44',NULL),(639,159,'Sub Total','subtotal',30000,'$30,000',1,'2019-02-05 00:10:58',NULL),(640,159,'Shipping Standard','shipping',20000,'$20,000',10,'2019-02-05 00:10:58',NULL),(641,159,'Discount','discount',0,'$0',20,'2019-02-05 00:10:58',NULL),(642,159,'Total','total',50000,'$50,000',100,'2019-02-05 00:10:58',NULL),(643,159,'Received','received',0,'$0',200,'2019-02-05 00:10:58',NULL),(644,160,'Sub Total','subtotal',10000,'$10,000',1,'2019-02-11 06:34:02',NULL),(645,160,'Shipping Standard','shipping',20000,'$20,000',10,'2019-02-11 06:34:02',NULL),(646,160,'Discount','discount',0,'$0',20,'2019-02-11 06:34:02',NULL),(647,160,'Total','total',30000,'$30,000',100,'2019-02-11 06:34:02',NULL),(648,160,'Received','received',0,'$0',200,'2019-02-11 06:34:02',NULL),(649,161,'Sub Total','subtotal',20000,'$20,000',1,'2019-03-08 12:00:19',NULL),(650,161,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-08 12:00:19',NULL),(651,161,'Discount','discount',0,'$0',20,'2019-03-08 12:00:19',NULL),(652,161,'Total','total',40000,'$40,000',100,'2019-03-08 12:00:19',NULL),(653,161,'Received','received',0,'$0',200,'2019-03-08 12:00:19',NULL),(654,162,'Tiền hàng','subtotal',10000,'$10,000',1,'2019-03-09 13:18:21',NULL),(655,162,'Vận chuyển cơ bản','shipping',20000,'$20,000',10,'2019-03-09 13:18:21',NULL),(656,162,'Giảm giá','discount',0,'$0',20,'2019-03-09 13:18:21',NULL),(657,162,'Tổng tiền','total',30000,'$30,000',100,'2019-03-09 13:18:21',NULL),(658,162,'Đã nhận','received',0,'$0',200,'2019-03-09 13:18:21',NULL),(659,163,'Sub Total','subtotal',10000,'$10,000',1,'2019-03-10 05:08:39',NULL),(660,163,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-10 05:08:39',NULL),(661,163,'Discount','discount',0,'$0',20,'2019-03-10 05:08:39',NULL),(662,163,'Total','total',30000,'$30,000',100,'2019-03-10 05:08:39',NULL),(663,163,'Received','received',0,'$0',200,'2019-03-10 05:08:39',NULL),(664,164,'Sub Total','subtotal',15000,'$15,000',1,'2019-03-11 07:50:05',NULL),(665,164,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-11 07:50:05',NULL),(666,164,'Discount','discount',0,'$0',20,'2019-03-11 07:50:05',NULL),(667,164,'Total','total',35000,'$35,000',100,'2019-03-11 07:50:05',NULL),(668,164,'Received','received',0,'$0',200,'2019-03-11 07:50:05',NULL),(669,165,'Sub Total','subtotal',25000,'$25,000',1,'2019-03-13 09:33:09',NULL),(670,165,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-13 09:33:09',NULL),(671,165,'Discount','discount',0,'$0',20,'2019-03-13 09:33:09',NULL),(672,165,'Total','total',45000,'$45,000',100,'2019-03-13 09:33:09',NULL),(673,165,'Received','received',0,'$0',200,'2019-03-13 09:33:09',NULL),(674,166,'Sub Total','subtotal',30000,'$30,000',1,'2019-03-13 09:49:26',NULL),(675,166,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-13 09:49:26',NULL),(676,166,'Discount','discount',0,'$0',20,'2019-03-13 09:49:26',NULL),(677,166,'Total','total',50000,'$50,000',100,'2019-03-13 09:49:26',NULL),(678,166,'Received','received',0,'$0',200,'2019-03-13 09:49:26',NULL),(679,167,'Sub Total','subtotal',30000,'$30,000',1,'2019-03-13 12:29:50',NULL),(680,167,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-13 12:29:50',NULL),(681,167,'Discount','discount',0,'$0',20,'2019-03-13 12:29:50',NULL),(682,167,'Total','total',50000,'$50,000',100,'2019-03-13 12:29:50',NULL),(683,167,'Received','received',0,'$0',200,'2019-03-13 12:29:50',NULL),(684,168,'Sub Total','subtotal',10000,'$10,000',1,'2019-03-13 23:23:20',NULL),(685,168,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-13 23:23:20',NULL),(686,168,'Discount','discount',0,'$0',20,'2019-03-13 23:23:20',NULL),(687,168,'Total','total',30000,'$30,000',100,'2019-03-13 23:23:20',NULL),(688,168,'Received','received',0,'$0',200,'2019-03-13 23:23:20',NULL),(689,169,'Sub Total','subtotal',30000,'$30,000',1,'2019-03-14 11:30:53',NULL),(690,169,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-14 11:30:53',NULL),(691,169,'Discount','discount',0,'$0',20,'2019-03-14 11:30:53',NULL),(692,169,'Total','total',50000,'$50,000',100,'2019-03-14 11:30:53',NULL),(693,169,'Received','received',0,'$0',200,'2019-03-14 11:30:53',NULL),(694,170,'Sub Total','subtotal',15000,'$15,000',1,'2019-03-14 13:26:49',NULL),(695,170,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-14 13:26:49',NULL),(696,170,'Discount','discount',0,'$0',20,'2019-03-14 13:26:49',NULL),(697,170,'Total','total',35000,'$35,000',100,'2019-03-14 13:26:49',NULL),(698,170,'Received','received',0,'$0',200,'2019-03-14 13:26:49',NULL),(699,171,'Sub Total','subtotal',15000,'$15,000',1,'2019-03-18 14:25:08',NULL),(700,171,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-18 14:25:08',NULL),(701,171,'Discount','discount',0,'$0',20,'2019-03-18 14:25:08',NULL),(702,171,'Total','total',35000,'$35,000',100,'2019-03-18 14:25:08',NULL),(703,171,'Received','received',0,'$0',200,'2019-03-18 14:25:08',NULL),(704,172,'Sub Total','subtotal',35000,'$35,000',1,'2019-03-22 07:36:05',NULL),(705,172,'Shipping Standard','shipping',20000,'$20,000',10,'2019-03-22 07:36:05',NULL),(706,172,'Discount','discount',0,'$0',20,'2019-03-22 07:36:05',NULL),(707,172,'Total','total',55000,'$55,000',100,'2019-03-22 07:36:05',NULL),(708,172,'Received','received',0,'$0',200,'2019-03-22 07:36:05',NULL);
/*!40000 ALTER TABLE `shop_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_page`
--

DROP TABLE IF EXISTS `shop_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_page`
--

LOCK TABLES `shop_page` WRITE;
/*!40000 ALTER TABLE `shop_page` DISABLE KEYS */;
INSERT INTO `shop_page` VALUES (1,'','about',1),(2,NULL,'contact',1);
/*!40000 ALTER TABLE `shop_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_page_description`
--

DROP TABLE IF EXISTS `shop_page_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `cms_page_id_lang_id` (`page_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_page_description`
--

LOCK TABLES `shop_page_description` WRITE;
/*!40000 ALTER TABLE `shop_page_description` DISABLE KEYS */;
INSERT INTO `shop_page_description` VALUES (1,1,'About',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(1,2,'Giới thiệu',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(2,1,'Contact','',NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(2,2,'Liên hệ với chúng tôi','',NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.');
/*!40000 ALTER TABLE `shop_page_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_payment_status`
--

DROP TABLE IF EXISTS `shop_payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_payment_status`
--

LOCK TABLES `shop_payment_status` WRITE;
/*!40000 ALTER TABLE `shop_payment_status` DISABLE KEYS */;
INSERT INTO `shop_payment_status` VALUES (0,'Unpaid'),(1,'Partial payment'),(2,'Paid'),(3,'Refurn');
/*!40000 ALTER TABLE `shop_payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(10) unsigned DEFAULT '0',
  `vendor_id` int(10) unsigned DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (3,'MEGA2560','product/f2d9505d28f1b10f949cec466cada01e.jpeg',1,0,7,NULL,220000,150000,100,0,0,NULL,0,1,142,'2019-03-22 21:22:32',NULL,'2018-01-15 07:57:31','2019-03-22 21:22:32'),(4,'LEDFAN1','product/95349d3747fdaf79d391fdc98e083701.jpg',1,0,6,NULL,190000,100000,99,1,1,NULL,0,1,112,'2019-03-21 11:46:03',NULL,'2018-01-16 06:03:54','2019-03-21 11:46:03'),(5,'CLOCKFAN1','product/15aa6b1f31b53a0177d7653761a45274.jpeg',2,0,13,NULL,420000,320000,100,0,1,NULL,0,1,130,'2019-03-20 06:58:28',NULL,'2018-01-16 06:04:41','2019-03-20 06:58:28'),(6,'CLOCKFAN2','product/0e1416d509af3712bd801404ca928702.jpeg',1,0,13,NULL,380000,250000,97,3,1,NULL,0,1,170,'2019-03-20 21:07:40',NULL,'2018-02-02 07:52:50','2019-03-20 21:07:40'),(7,'CLOCKFAN3','product/95349d3747fdaf79d391fdc98e083701.jpg',1,0,13,NULL,320000,250000,99,1,1,NULL,1,1,126,'2019-03-20 04:00:34',NULL,'2018-02-02 07:53:30','2019-03-20 04:00:34'),(8,'TMC2208','product/95349d3747fdaf79d391fdc98e083701.jpg',6,0,11,NULL,220000,130000,100,0,0,NULL,1,1,155,'2019-03-19 04:51:36',NULL,'2018-02-02 07:53:30','2019-03-19 04:51:36'),(9,'FILAMENT','product/95349d3747fdaf79d391fdc98e083701.jpg',1,0,15,NULL,299000,200000,99,1,1,NULL,1,1,187,'2019-03-21 13:14:34',NULL,'2018-02-02 07:53:30','2019-03-21 13:14:34'),(10,'A4988','product/820283598735f98a9b23960821da438b.jpeg',1,0,11,NULL,39000,20000,100,0,0,NULL,1,1,87,'2019-03-22 13:54:04',NULL,'2018-02-02 07:53:30','2019-03-22 13:54:04'),(11,'ANYCUBIC-P','product/d63af407fa92299e163696a585566dc7.jpeg',3,0,10,NULL,4990000,3500000,100,0,0,NULL,0,1,125,'2019-03-22 23:01:08',NULL,'2018-01-15 07:57:31','2019-03-22 23:01:08'),(12,'3DHLFD','product/95349d3747fdaf79d391fdc98e083701.jpg',1,0,12,NULL,7990000,5200000,100,0,1,NULL,0,1,112,'2019-03-17 02:20:21',NULL,'2018-01-15 07:57:31','2019-03-17 02:20:21'),(20,'SS495A','product/95349d3747fdaf79d391fdc98e083701.jpg',2,0,14,NULL,15000,7000,100,0,1,NULL,0,1,159,'2019-03-21 23:54:05',NULL,'2018-01-15 07:57:31','2019-03-21 23:54:05'),(21,'3D-CARBON1.75','product/d05966a529efdd8d7b41ed9b687859b6.jpeg',2,0,15,NULL,390000,15000,100,0,1,NULL,1,1,138,'2019-03-18 07:57:57',NULL,'2018-02-02 07:53:30','2019-03-18 07:57:57'),(22,'3D-GOLD1.75','product/eedfd153bf368919a134da17f22c8de7.jpeg',2,0,15,NULL,500000,15000,100,0,1,NULL,1,1,181,'2019-03-20 18:44:50',NULL,'2018-04-12 08:05:37','2019-03-20 18:44:50'),(23,'LCD12864-3D','product/a7a315526ecf7594731448d792714a11.jpeg',2,0,11,NULL,220000,15000,100,0,0,NULL,0,1,69,'2019-03-22 08:54:43',NULL,'2018-08-11 06:33:37','2019-03-22 08:54:43'),(24,'LCD2004-3D','product/9215506044b8a350fc082f5350b3653a.jpg',2,0,11,NULL,190000,15000,100,0,0,NULL,0,1,88,'2019-03-16 20:25:09',NULL,'2018-08-11 06:39:31','2019-03-16 20:25:09'),(25,'RAMPS1.5-3D','product/1d6cdd4473603c7a4d162067713b8da8.jpg',2,0,11,NULL,120000,15000,100,0,0,NULL,0,1,91,'2019-03-19 01:50:40',NULL,'2018-08-11 06:41:25','2019-03-19 01:50:40'),(26,'EFULL-3D','product/07e79f6546499878cba383dd5bfe977e.jpeg',1,0,11,NULL,890000,15000,100,0,0,NULL,0,1,72,'2019-03-21 10:25:58',NULL,'2018-08-11 06:50:25','2019-03-21 10:25:58'),(27,'ANYCUBIC-I3M','product/ea88b7078652909f3d6c5d445aa05f59.jpeg',1,0,10,NULL,7990000,15000,100,0,0,NULL,0,1,156,'2019-03-23 10:04:55',NULL,'2018-08-22 09:26:00','2019-03-23 10:04:55'),(28,'3DNOZZLE','product/c25c81c852823f5ea8ba4250978217a5.jpeg',1,0,11,NULL,10000,15000,100,0,0,NULL,0,1,74,'2019-03-22 22:14:38',NULL,'2018-08-23 21:21:48','2019-03-22 22:14:38'),(29,'3D-TEFLONLOCK','product/8e28f51184f0a96970c05185b1412fa1.jpeg',1,0,12,NULL,10000,15000,99,1,0,NULL,0,1,112,'2019-03-23 02:37:49',NULL,'2018-08-23 21:32:48','2019-03-23 02:37:49'),(30,'3D-BELT-GT2','product/8f795b2335d42cdb7c7eafcfaf714cb2.jpeg',1,0,11,NULL,20000,15000,100,0,1,NULL,0,1,134,'2019-03-20 08:34:29',NULL,'2018-08-23 21:35:39','2019-03-20 08:34:29'),(31,'3D-TEFLONLOCK-M10','product/0e1416d509af3712bd801404ca928702.jpeg',2,0,11,NULL,10000,15000,100,0,0,NULL,0,1,81,'2019-03-16 07:03:45',NULL,'2018-08-23 21:39:03','2019-03-16 07:03:45'),(32,'3D-HOTWIRE1240','product/efd9fb910ba539c125b7c431a1ccc563.jpg',0,0,11,NULL,20000,15000,100,0,1,NULL,0,1,155,'2019-03-22 13:31:53',NULL,'2018-08-23 21:40:54','2019-03-22 13:31:53'),(33,'3D-TEFTLON-24','product/a635cc2bdf5485ccb2c0cc9d186968b2.jpeg',2,0,16,NULL,15000,15000,100,0,0,NULL,1,1,116,'2019-03-18 02:08:34',NULL,'2018-08-23 21:44:04','2019-03-18 02:08:34'),(34,'3D-TEFTLON-W24','product/a32f12e009ebf0d24ab264706ecbc15e.jpeg',5,0,11,NULL,20000,15000,100,0,1,NULL,0,1,139,'2019-03-18 12:27:12',NULL,'2018-08-23 22:09:34','2019-03-18 12:27:12'),(35,'3D-SENSOR-NTC 100K','product/41c8f0d0111cd5a3f0538604233cbed8.jpeg',4,0,10,NULL,15000,15000,100,0,1,NULL,0,1,204,'2019-03-23 10:04:52',NULL,'2018-08-23 22:13:58','2019-03-23 10:04:52'),(36,'nRLF24L01+2.4HZ','product/820283598735f98a9b23960821da438b.jpeg',3,0,11,NULL,25000,15000,100,0,0,NULL,0,1,133,'2019-03-19 07:42:30',NULL,'2018-08-23 23:07:15','2019-03-19 07:42:30'),(37,'ARDUINO-NANO','product/da687e60e54bd7fc7eab5c76e7ec3754.jpeg',1,0,17,NULL,100000,15000,99,1,0,NULL,0,1,172,'2019-03-22 20:57:32',NULL,'2018-08-23 23:25:48','2019-03-22 20:57:32'),(38,'LEDSTRIP-5050RGB','product/61559578baf403e03565e73a14f845ce.jpeg',1,0,9,NULL,15000,15000,99,1,1,NULL,0,1,188,'2019-03-23 00:11:49',NULL,'2018-08-23 23:33:31','2019-03-23 00:11:49'),(39,'LEDSTRIP-S','product/c400aecd5c6d87782ac9af33dd7a5980.jpg',4,0,12,NULL,15000,15000,100,0,0,NULL,0,1,90,'2019-03-21 05:45:53',NULL,'2018-08-24 01:46:21','2019-03-21 05:45:53'),(40,'P10-IR','product/830d640cd17eba0bf186dc649d5c3053.jpeg',0,0,12,NULL,15000,15000,100,0,0,NULL,0,1,78,'2019-03-23 04:27:03',NULL,'2018-08-24 01:49:49','2019-03-23 04:27:03'),(41,'P10-IG','product/9d9aab8be8634708c9cf5b690fee74a4.jpeg',0,0,10,NULL,15000,15000,99,1,1,NULL,0,1,111,'2019-03-20 12:20:56',NULL,'2018-08-24 01:51:11','2019-03-20 12:20:56'),(42,'P10-IB','product/98fafb9da683cd9ee854598f3f3a3bd5.jpeg',0,0,11,NULL,15000,15000,100,0,0,NULL,0,1,95,'2019-03-21 11:06:28',NULL,'2018-08-24 01:52:58','2019-03-21 11:06:28'),(43,'P10-IRGB','product/a111c060ebb6ffbbd2d34ae278501789.jpg',0,0,6,NULL,15000,15000,99,1,0,NULL,0,1,117,'2019-03-24 04:48:19',NULL,'2018-08-24 01:54:45','2019-03-24 04:48:19'),(44,'P10-IRG','product/95349d3747fdaf79d391fdc98e083701.jpg',0,0,11,NULL,15000,15000,100,0,1,NULL,0,1,154,'2019-03-22 23:07:12',NULL,'2018-08-24 01:56:02','2019-03-22 23:07:12'),(45,'LFF','product/3c8f613d30b4e487ef95a5e4cdea634c.jpeg',0,0,6,NULL,15000,15000,94,6,0,NULL,0,1,215,'2019-03-22 13:53:37',NULL,'2018-08-24 01:58:42','2019-03-22 13:53:37'),(46,'P25-I','product/949fa36ebd56593445fb61d141fd2a81.jpeg',2,0,10,NULL,15000,15000,96,4,0,NULL,0,1,219,'2019-03-24 03:39:12',NULL,'2018-08-24 02:23:07','2019-03-24 03:39:12'),(47,'BX-5U0','product/cd7aa3394c35330ed7f9e4095c6adb65.jpeg',0,0,12,NULL,15000,15000,93,7,0,NULL,0,1,251,'2019-03-23 05:38:16',NULL,'2018-08-24 02:48:31','2019-03-23 05:38:16'),(48,'BX-5UT','product/b0d947f6ddd37e9684055c6cd45cd40d.jpg',0,0,11,NULL,15000,15000,84,16,0,NULL,0,1,480,'2019-03-22 13:55:06',NULL,'2018-08-24 02:52:15','2019-03-22 13:55:06'),(49,'BX-5UTbnv','product/42eb3619452dfabb8ea09f64cff290c6.jpeg',2,0,2,NULL,15000,15000,74,26,1,NULL,0,1,435,'2019-03-24 03:25:12','2019-03-29 17:00:00','2018-09-03 01:05:59','2019-03-24 03:25:12');
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_description`
--

DROP TABLE IF EXISTS `shop_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `product_id_lang_id` (`product_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_description`
--

LOCK TABLES `shop_product_description` WRITE;
/*!40000 ALTER TABLE `shop_product_description` DISABLE KEYS */;
INSERT INTO `shop_product_description` VALUES (3,1,'Easy Polo Black Edition 3','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(3,2,'Easy Polo Black Edition 3','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(4,1,'Easy Polo Black Edition 4','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(4,2,'Easy Polo Black Edition 4','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(5,1,'Easy Polo Black Edition 5','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(5,2,'Easy Polo Black Edition 5','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(6,1,'Easy Polo Black Edition 6','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(6,2,'Easy Polo Black Edition 6','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(7,1,'Easy Polo Black Edition 7','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(7,2,'Easy Polo Black Edition 7','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(8,1,'Easy Polo Black Edition 8','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(8,2,'Easy Polo Black Edition 8','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(9,1,'Easy Polo Black Edition 9','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(9,2,'Easy Polo Black Edition 9','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(10,1,'Easy Polo Black Edition 10','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(10,2,'Easy Polo Black Edition 10','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(11,1,'Easy Polo Black Edition 11','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(11,2,'Easy Polo Black Edition 11','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(12,1,'Easy Polo Black Edition 12','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(12,2,'Easy Polo Black Edition 12','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(20,1,'Easy Polo Black Edition 20','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(20,2,'Easy Polo Black Edition 20','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(21,1,'Easy Polo Black Edition 21','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(21,2,'Easy Polo Black Edition 21','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(22,1,'Easy Polo Black Edition 22','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(22,2,'Easy Polo Black Edition 22','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(23,1,'Easy Polo Black Edition 23','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(23,2,'Easy Polo Black Edition 23','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(24,1,'Easy Polo Black Edition 24','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(24,2,'Easy Polo Black Edition 24','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(25,1,'Easy Polo Black Edition 25','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(25,2,'Easy Polo Black Edition 25','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(26,1,'Easy Polo Black Edition 26','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(26,2,'Easy Polo Black Edition 26','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(27,1,'Easy Polo Black Edition 27','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(27,2,'Easy Polo Black Edition 27','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(28,1,'Easy Polo Black Edition 28','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(28,2,'Easy Polo Black Edition 28','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(29,1,'Easy Polo Black Edition 29','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(29,2,'Easy Polo Black Edition 29','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(30,1,'Easy Polo Black Edition 30','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(30,2,'Easy Polo Black Edition 30','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(31,1,'Easy Polo Black Edition 31','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(31,2,'Easy Polo Black Edition 31','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(32,1,'Easy Polo Black Edition 32','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(32,2,'Easy Polo Black Edition 32','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(33,1,'Easy Polo Black Edition 33','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(33,2,'Easy Polo Black Edition 33','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(34,1,'Easy Polo Black Edition 34','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(34,2,'Easy Polo Black Edition 34','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(35,1,'Easy Polo Black Edition 35','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(35,2,'Easy Polo Black Edition 35','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(36,1,'Easy Polo Black Edition 36','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(36,2,'Easy Polo Black Edition 36','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(37,1,'Easy Polo Black Edition 37','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(37,2,'Easy Polo Black Edition 37','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(38,1,'Easy Polo Black Edition 38','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(38,2,'Easy Polo Black Edition 38','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(39,1,'Easy Polo Black Edition 39','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(39,2,'Easy Polo Black Edition 39','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(40,1,'Easy Polo Black Edition 40','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(40,2,'Easy Polo Black Edition 40','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(41,1,'Easy Polo Black Edition 41','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(41,2,'Easy Polo Black Edition 41','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(42,1,'Easy Polo Black Edition 42','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(42,2,'Easy Polo Black Edition 42','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(43,1,'Easy Polo Black Edition 43','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(43,2,'Easy Polo Black Edition 43','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(44,1,'Easy Polo Black Edition 44','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(44,2,'Easy Polo Black Edition 44','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(45,1,'Easy Polo Black Edition 45','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(45,2,'Easy Polo Black Edition 45','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(46,1,'Easy Polo Black Edition 46','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(46,2,'Easy Polo Black Edition 46','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(47,1,'Easy Polo Black Edition 47','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(47,2,'Easy Polo Black Edition 47','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(48,1,'Easy Polo Black Edition 48','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(48,2,'Easy Polo Black Edition 48','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(49,1,'Easy Polo Black Edition 49','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(49,2,'Easy Polo Black Edition 49','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>');
/*!40000 ALTER TABLE `shop_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_image`
--

DROP TABLE IF EXISTS `shop_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(2) unsigned NOT NULL DEFAULT '0',
  `status` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_image`
--

LOCK TABLES `shop_product_image` WRITE;
/*!40000 ALTER TABLE `shop_product_image` DISABLE KEYS */;
INSERT INTO `shop_product_image` VALUES (82,'product_slide/0642809276ecd6a28cb23d464cf41734.jpeg',38,0,0),(83,'product_slide/f4786d81509a8d8ffa461535b07c77bc.png',38,0,0),(84,'product_slide/e09af215f794f8225063c368f46a971d.jpeg',39,0,0),(87,'product_slide/54fac65e58eb9abafe3ac1acbde5ee6d.jpeg',40,0,0),(88,'product_slide/81f37c10d867710075e3ab6153a31d03.png',40,0,0),(89,'product_slide/2fbba5ac3b9c0838e5ce2b536d0c5659.jpeg',42,0,0),(90,'product_slide/8718dfdb75f951010cdce669768c3e3a.png',42,0,0),(92,'product_slide/86282e4f808428108773596dea5ee29c.jpeg',43,0,0),(93,'product_slide/b89873b9c888c0511e14c6e3abc798e8.jpeg',43,0,0),(94,'product_slide/b0d9ffad7e40d07bae6d36665f765e0f.jpeg',43,0,0),(95,'product_slide/70edffd9b5b4121fb8aee7e41c941f03.jpeg',44,0,0),(96,'product_slide/e9d5898fc6daf50751ec0c4e91ed904d.jpeg',45,0,0),(109,'product_slide/e91e85e37bb89ed854aa4123ce5eb14f.jpeg',49,0,0),(110,'product_slide/bcf85f60d3fe35de2c1be6272f9605ef.png',52,0,0),(111,'product_slide/40999526f41b1d4090e30c6b0ce21dca.jpg',53,0,0),(113,'product_slide/7963a1dc4e1676c2b3bc97ade96de7b6.jpeg',49,0,0),(114,'product_slide/101a109520cfbddde1be1791423010b6.jpeg',46,0,0),(115,'product_slide/f02dbb115272eac46f46f015608ab93a.jpeg',46,0,0);
/*!40000 ALTER TABLE `shop_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_like`
--

DROP TABLE IF EXISTS `shop_product_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_like` (
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`product_id`,`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_like`
--

LOCK TABLES `shop_product_like` WRITE;
/*!40000 ALTER TABLE `shop_product_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_option`
--

DROP TABLE IF EXISTS `shop_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opt_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_sku` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_price` int(11) DEFAULT NULL,
  `opt_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `opt_sku` (`opt_sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_option`
--

LOCK TABLES `shop_product_option` WRITE;
/*!40000 ALTER TABLE `shop_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_recent_view`
--

DROP TABLE IF EXISTS `shop_product_recent_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_recent_view` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `customer_id_product_id` (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_recent_view`
--

LOCK TABLES `shop_product_recent_view` WRITE;
/*!40000 ALTER TABLE `shop_product_recent_view` DISABLE KEYS */;
INSERT INTO `shop_product_recent_view` VALUES (3,35,'2018-08-27 08:58:21'),(3,38,'2018-08-27 09:44:08'),(3,41,'2018-08-27 10:19:33'),(3,42,'2018-08-27 10:02:03'),(3,44,'2018-08-27 10:19:52'),(3,46,'2018-08-27 10:14:29'),(3,47,'2018-08-27 10:01:57'),(3,48,'2018-08-27 10:01:49');
/*!40000 ALTER TABLE `shop_product_recent_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_shipping`
--

DROP TABLE IF EXISTS `shop_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `free` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_shipping`
--

LOCK TABLES `shop_shipping` WRITE;
/*!40000 ALTER TABLE `shop_shipping` DISABLE KEYS */;
INSERT INTO `shop_shipping` VALUES (1,0,20000,10000000,1);
/*!40000 ALTER TABLE `shop_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_shipping_status`
--

DROP TABLE IF EXISTS `shop_shipping_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_shipping_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_shipping_status`
--

LOCK TABLES `shop_shipping_status` WRITE;
/*!40000 ALTER TABLE `shop_shipping_status` DISABLE KEYS */;
INSERT INTO `shop_shipping_status` VALUES (0,'Not sent'),(1,'Sending'),(2,'Shipping done');
/*!40000 ALTER TABLE `shop_shipping_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_shoppingcart`
--

DROP TABLE IF EXISTS `shop_shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_shoppingcart` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_shoppingcart`
--

LOCK TABLES `shop_shoppingcart` WRITE;
/*!40000 ALTER TABLE `shop_shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_special_price`
--

DROP TABLE IF EXISTS `shop_special_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_special_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `off` int(11) DEFAULT '0',
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_special_price`
--

LOCK TABLES `shop_special_price` WRITE;
/*!40000 ALTER TABLE `shop_special_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_special_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_users`
--

DROP TABLE IF EXISTS `shop_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_users` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_users`
--

LOCK TABLES `shop_users` WRITE;
/*!40000 ALTER TABLE `shop_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_vendor`
--

DROP TABLE IF EXISTS `shop_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_vendor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_vendor`
--

LOCK TABLES `shop_vendor` WRITE;
/*!40000 ALTER TABLE `shop_vendor` DISABLE KEYS */;
INSERT INTO `shop_vendor` VALUES (1,'ABC distributor','abc@abc.com','012496657567',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `shop_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
INSERT INTO `subscribe` VALUES (1,'lanhktc@gmail.com');
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-24 11:48:46
