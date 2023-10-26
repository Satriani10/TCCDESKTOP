-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: gerentiaCondominium
-- ------------------------------------------------------
-- Server version	8.0.34

DROP DATABASE IF EXISTS `gerentia`;
CREATE DATABASE `gerentia` COLLATE 'utf8_unicode_ci';
use `gerentia`;

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
-- Table structure for table `apartments`
--

DROP TABLE IF EXISTS `apartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `apartmentNumber` int unsigned NOT NULL,
  `block_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apartments_block_id_foreign` (`block_id`),
  CONSTRAINT `apartments_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartments`
--

LOCK TABLES `apartments` WRITE;
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` VALUES (1,'2023-09-20 19:59:33','2023-09-20 19:59:33',11,1),(2,'2023-09-20 19:59:33','2023-09-20 19:59:33',12,1),(3,'2023-09-20 19:59:33','2023-09-20 19:59:33',13,1),(4,'2023-09-20 19:59:33','2023-09-20 19:59:33',14,1),(5,'2023-09-20 19:59:33','2023-09-20 19:59:33',21,1),(6,'2023-09-20 19:59:33','2023-09-20 19:59:33',22,1),(7,'2023-09-20 19:59:33','2023-09-20 19:59:33',23,1),(8,'2023-09-20 19:59:33','2023-09-20 19:59:33',24,1),(9,'2023-09-20 19:59:33','2023-09-20 19:59:33',11,2),(10,'2023-09-20 19:59:33','2023-09-20 19:59:33',12,2),(11,'2023-09-20 19:59:33','2023-09-20 19:59:33',13,2),(12,'2023-09-20 19:59:33','2023-09-20 19:59:33',14,2),(13,'2023-09-20 19:59:33','2023-09-20 19:59:33',21,2),(14,'2023-09-20 19:59:33','2023-09-20 19:59:33',22,2),(15,'2023-09-20 19:59:33','2023-09-20 19:59:33',23,2),(16,'2023-09-20 19:59:33','2023-09-20 19:59:33',24,2);
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blockNumber` int unsigned NOT NULL,
  `numeric` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blocks_blocknumber_unique` (`blockNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'2023-09-20 19:59:21','2023-09-20 19:59:21',1,0),(2,'2023-09-20 19:59:21','2023-09-20 19:59:21',2,0),(3,'2023-09-20 19:59:21','2023-09-20 19:59:21',3,0),(4,'2023-09-20 19:59:21','2023-09-20 19:59:21',4,0),(5,'2023-09-20 19:59:21','2023-09-20 19:59:21',5,0);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inactive_users`
--

DROP TABLE IF EXISTS `inactive_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inactive_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `adm_id` bigint unsigned NOT NULL,
  `descriptionMotive` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `inactive_users_user_id_foreign` (`user_id`),
  KEY `inactive_users_adm_id_foreign` (`adm_id`),
  CONSTRAINT `inactive_users_adm_id_foreign` FOREIGN KEY (`adm_id`) REFERENCES `users` (`id`),
  CONSTRAINT `inactive_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inactive_users`
--

LOCK TABLES `inactive_users` WRITE;
/*!40000 ALTER TABLE `inactive_users` DISABLE KEYS */;
INSERT INTO `inactive_users` VALUES (1,'2023-09-20 19:59:43','2023-09-20 19:59:43',9,18,'Teste 1'),(2,'2023-09-20 19:59:43','2023-09-20 19:59:43',10,17,'Teste 2'),(3,'2023-09-20 19:59:43','2023-09-20 19:59:43',16,19,'Teste 3');
/*!40000 ALTER TABLE `inactive_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_interface_users`
--

DROP TABLE IF EXISTS `menu_interface_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_interface_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_types_id` bigint unsigned NOT NULL,
  `menu_interfaces_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_interface_users_user_types_id_foreign` (`user_types_id`),
  KEY `menu_interface_users_menu_interfaces_id_foreign` (`menu_interfaces_id`),
  CONSTRAINT `menu_interface_users_menu_interfaces_id_foreign` FOREIGN KEY (`menu_interfaces_id`) REFERENCES `menu_interfaces` (`id`),
  CONSTRAINT `menu_interface_users_user_types_id_foreign` FOREIGN KEY (`user_types_id`) REFERENCES `user_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_interface_users`
--

LOCK TABLES `menu_interface_users` WRITE;
/*!40000 ALTER TABLE `menu_interface_users` DISABLE KEYS */;
INSERT INTO `menu_interface_users` VALUES (1,'2023-09-24 22:04:12','2023-09-24 22:04:12',1,1),(2,'2023-09-24 22:04:12','2023-09-24 22:04:12',1,2),(3,'2023-09-24 22:04:12','2023-09-24 22:04:12',1,3),(4,'2023-09-24 22:04:12','2023-09-24 22:04:12',1,4),(5,'2023-09-24 22:04:12','2023-09-24 22:04:12',1,5),(6,'2023-09-24 22:04:12','2023-09-24 22:04:12',1,6),(7,'2023-09-24 22:04:12','2023-09-24 22:04:12',1,7),(8,'2023-09-24 22:04:12','2023-09-24 22:04:12',1,8),(9,'2023-09-24 22:04:12','2023-09-24 22:04:12',1,9),(10,'2023-09-24 22:04:12','2023-09-24 22:04:12',2,1),(11,'2023-09-24 22:04:12','2023-09-24 22:04:12',2,2),(12,'2023-09-24 22:04:12','2023-09-24 22:04:12',2,3),(13,'2023-09-24 22:04:12','2023-09-24 22:04:12',2,6),(14,'2023-09-24 22:04:12','2023-09-24 22:04:12',2,7),(15,'2023-09-24 22:04:12','2023-09-24 22:04:12',2,8),(16,'2023-09-24 22:04:12','2023-09-24 22:04:12',2,9);
/*!40000 ALTER TABLE `menu_interface_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_interfaces`
--

DROP TABLE IF EXISTS `menu_interfaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_interfaces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_interfaces`
--

LOCK TABLES `menu_interfaces` WRITE;
/*!40000 ALTER TABLE `menu_interfaces` DISABLE KEYS */;
INSERT INTO `menu_interfaces` VALUES (1,'2023-09-20 20:01:42','2023-09-20 20:01:42','Início','dashboard.main','bi bi-people-fill'),(2,'2023-09-20 20:01:42','2023-09-20 20:01:42','Meu Condomínio','dashboard.myCondominium','bi bi-house-fill'),(3,'2023-09-20 20:01:42','2023-09-20 20:01:42','Avísos','dashboard.notices','bi bi-bell-fill'),(4,'2023-09-20 20:01:42','2023-09-20 20:01:42','Chamados','dashboard.calls','bi bi-pen-fill'),(5,'2023-09-20 20:01:42','2023-09-20 20:01:42','Correspondências','dashboard.correspondences','bi bi-box-seam-fill'),(6,'2023-09-20 20:01:42','2023-09-20 20:01:42','Reservas','dashboard.entertainments','bi bi-bicycle'),(7,'2023-09-20 20:01:42','2023-09-20 20:01:42','Arquivos','dashboard.archives','bi bi-file-earmark-arrow-down-fill'),(8,'2023-09-20 20:01:42','2023-09-20 20:01:42','Manutenções','dashboard.maintenances','bi bi-tools'),(9,'2023-09-20 20:01:42','2023-09-20 20:01:42','Configurações','dashboard.config','bi bi-gear-fill'),(10,'2023-09-20 18:12:44','2023-09-20 18:12:44','Assembléia','dashboard.assembly','#');
/*!40000 ALTER TABLE `menu_interfaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_09_01_160231_create_user_types_table',1),(6,'2023_09_01_161005_add_user_type_id_to_users_table',1),(7,'2023_09_01_201825_create_blocks_table',1),(8,'2023_09_01_204836_create_apartments_table',1),(9,'2023_09_01_212409_create_owner_apartment_buys_table',1),(10,'2023_09_01_232323_create_tenant_apartments_table',1),(11,'2023_09_03_034708_create_inactive_users_table',1),(12,'2023_09_03_040420_create_owner_apartment_sells_table',1),(13,'2023_09_17_222527_create_menu_interfaces_table',1),(18,'2023_09_20_163815_create_menu_interface_users_table',2),(19,'2023_09_24_182435_create_notices_table',3),(20,'2023_09_25_154637_add_is_numeric_to_blocks_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `adm_id` bigint unsigned NOT NULL,
  `user_types_id` bigint unsigned DEFAULT NULL,
  `blocks_id` bigint unsigned DEFAULT NULL,
  `activated` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notices_adm_id_foreign` (`adm_id`),
  KEY `notices_user_types_id_foreign` (`user_types_id`),
  KEY `notices_blocks_id_foreign` (`blocks_id`),
  CONSTRAINT `notices_adm_id_foreign` FOREIGN KEY (`adm_id`) REFERENCES `users` (`id`),
  CONSTRAINT `notices_blocks_id_foreign` FOREIGN KEY (`blocks_id`) REFERENCES `blocks` (`id`),
  CONSTRAINT `notices_user_types_id_foreign` FOREIGN KEY (`user_types_id`) REFERENCES `user_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,'2023-09-25 18:10:00','2023-09-24 22:16:16','Mensagem para todos os moradores e todos os proprietários','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',17,NULL,NULL,1),(3,'2021-01-25 23:40:00','2023-09-24 22:16:16','Mensagem para os moradores do bloco 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',19,1,2,1),(4,'2023-09-17 13:00:19','2023-09-24 22:16:16','Mensagem para todos os proprietários','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',17,2,NULL,1),(5,'2023-07-20 13:00:19','2023-09-24 22:16:16','Mensagem para os proprietários do bloco 1','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',18,2,1,1),(6,'2023-04-25 15:12:19','2023-09-24 22:16:16','Mensagem para os proprietários do bloco 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',19,2,2,1);
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_apartment_buys`
--

DROP TABLE IF EXISTS `owner_apartment_buys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner_apartment_buys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner_id` bigint unsigned NOT NULL,
  `apartment_id` bigint unsigned NOT NULL,
  `livinIn` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_apartment_buys_owner_id_foreign` (`owner_id`),
  KEY `owner_apartment_buys_apartment_id_foreign` (`apartment_id`),
  CONSTRAINT `owner_apartment_buys_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`),
  CONSTRAINT `owner_apartment_buys_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_apartment_buys`
--

LOCK TABLES `owner_apartment_buys` WRITE;
/*!40000 ALTER TABLE `owner_apartment_buys` DISABLE KEYS */;
INSERT INTO `owner_apartment_buys` VALUES (1,'2023-09-20 19:59:52','2023-09-20 19:59:52',11,1,0),(2,'2023-09-20 19:59:52','2023-09-20 19:59:52',12,2,0),(3,'2023-09-20 19:59:52','2023-09-20 19:59:52',12,3,0),(4,'2023-09-20 19:59:52','2023-09-20 19:59:52',13,4,0),(5,'2023-09-20 19:59:52','2023-09-20 19:59:52',13,5,1),(6,'2023-09-20 19:59:52','2023-09-20 19:59:52',14,6,0),(7,'2023-09-20 19:59:52','2023-09-20 19:59:52',14,7,0),(8,'2023-09-20 19:59:52','2023-09-20 19:59:52',14,8,1),(9,'2023-09-20 19:59:52','2023-09-20 19:59:52',15,9,1),(10,'2023-09-20 19:59:52','2023-09-20 19:59:52',16,10,0),(11,'2023-09-20 20:02:37','2023-09-20 20:02:37',12,7,1),(12,'2023-09-20 20:02:37','2023-09-20 20:02:37',15,10,0);
/*!40000 ALTER TABLE `owner_apartment_buys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_apartment_sells`
--

DROP TABLE IF EXISTS `owner_apartment_sells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner_apartment_sells` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner_apartment_buys_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_apartment_sells_owner_apartment_buys_id_foreign` (`owner_apartment_buys_id`),
  CONSTRAINT `owner_apartment_sells_owner_apartment_buys_id_foreign` FOREIGN KEY (`owner_apartment_buys_id`) REFERENCES `owner_apartment_buys` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_apartment_sells`
--

LOCK TABLES `owner_apartment_sells` WRITE;
/*!40000 ALTER TABLE `owner_apartment_sells` DISABLE KEYS */;
INSERT INTO `owner_apartment_sells` VALUES (1,'2023-09-20 20:00:04','2023-09-20 20:00:04',7),(2,'2023-09-20 20:00:04','2023-09-20 20:00:04',10);
/*!40000 ALTER TABLE `owner_apartment_sells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_apartments`
--

DROP TABLE IF EXISTS `tenant_apartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_apartments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tenant_id` bigint unsigned NOT NULL,
  `apartment_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_apartments_tenant_id_foreign` (`tenant_id`),
  KEY `tenant_apartments_apartment_id_foreign` (`apartment_id`),
  CONSTRAINT `tenant_apartments_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`),
  CONSTRAINT `tenant_apartments_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_apartments`
--

LOCK TABLES `tenant_apartments` WRITE;
/*!40000 ALTER TABLE `tenant_apartments` DISABLE KEYS */;
INSERT INTO `tenant_apartments` VALUES (1,'2023-09-20 20:00:17','2023-09-20 20:00:17',1,1),(2,'2023-09-20 20:00:17','2023-09-20 20:00:17',2,1),(3,'2023-09-20 20:00:17','2023-09-20 20:00:17',3,2),(4,'2023-09-20 20:00:17','2023-09-20 20:00:17',4,3),(5,'2023-09-20 20:00:17','2023-09-20 20:00:17',5,3),(6,'2023-09-20 20:00:17','2023-09-20 20:00:17',6,3),(7,'2023-09-20 20:00:17','2023-09-20 20:00:17',7,4),(8,'2023-09-20 20:00:17','2023-09-20 20:00:17',8,4),(9,'2023-09-20 20:00:17','2023-09-20 20:00:17',9,5),(10,'2023-09-20 20:00:17','2023-09-20 20:00:17',10,6);
/*!40000 ALTER TABLE `tenant_apartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_types_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'2023-09-20 19:58:55','2023-09-20 19:58:55','inquilino'),(2,'2023-09-20 19:58:55','2023-09-20 19:58:55','proprietario'),(3,'2023-09-20 19:58:55','2023-09-20 19:58:55','adm');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `cpf` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_types_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_user_types_id_foreign` (`user_types_id`),
  CONSTRAINT `users_user_types_id_foreign` FOREIGN KEY (`user_types_id`) REFERENCES `user_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Allan Ferreira Soares','2000-01-01','84242820003','allan@laravel.com',NULL,'$2y$10$EQbrccvu5Wqlo8cqj8oCtOan8tcFnFAtyhcEyS7tFvXkFC9HbB9uy',NULL,'2023-09-20 19:59:10','2023-09-20 19:59:10',NULL,1),(2,'Elton Lisboa','2000-01-02','61860339026','elton@laravel.com',NULL,'$2y$10$4Hu1gpT08kGaYS6nD1qFbu6TNNjWP.0JQKa7pdjvQH2oP8JT0/j/a',NULL,'2023-09-20 19:59:10','2023-09-20 19:59:10',NULL,1),(3,'Felipe Unias da Silva','2000-01-03','63236814047','felipe@laravel.com',NULL,'$2y$10$qfZh9c21oCVhhsu0IUkNxuQxBqgZ8hhuNwLLUPFuQLF2ixNL8ea0.',NULL,'2023-09-20 19:59:10','2023-09-20 19:59:10',NULL,1),(4,'Victor','2000-01-04','89657668000','victor@laravel.com',NULL,'$2y$10$eJIni/QmESfBfSljro.ZuuD6viv4BhSQJPp8gdcr9GeLH8A2qj56i',NULL,'2023-09-20 19:59:10','2023-09-20 19:59:10',NULL,1),(5,'Rafael','2000-01-05','14993802080','rafael@laravel.com',NULL,'$2y$10$.lLpzZqGxwIeh8/6MedjNezcb9HgrJ7rNA/qJYG1j.NcnqNqhiMu2',NULL,'2023-09-20 19:59:10','2023-09-20 19:59:10',NULL,1),(6,'Tuvidor','2000-01-06','60316270008','tuvidor@laravel.com',NULL,'$2y$10$t5/54u/UdQqXtNJ5i0bgM.jcnK6GKA8RIM8GTrY/GwRXTdUUwgr/y',NULL,'2023-09-20 19:59:10','2023-09-20 19:59:10',NULL,1),(7,'Tafion','2000-01-07','61246952009','tafion@laravel.com',NULL,'$2y$10$zVswrru18JoPVp3yEHcote2ZvZRc2hifHe4XippBW3GzlbjgwCIUO',NULL,'2023-09-20 19:59:10','2023-09-20 19:59:10',NULL,1),(8,'Amcu','2000-01-08','75377733002','amcu@laravel.com',NULL,'$2y$10$gXZtRjv70uSbej72mCeNGe/vOAwxUejDSOdu1vvoFgiBm7cnHVlvW',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,1),(9,'Ardaol','2000-01-09','71461188008','ardaol@laravel.com',NULL,'$2y$10$elEjgjHZnzwp/sEMrt0q8er0c6jkgRy3zOGZZb9o46gCIsldslJeK',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,1),(10,'Arxi','2000-01-10','27496897086','arxi@laravel.com',NULL,'$2y$10$6IXkUMv6NoOXAoXwxk9W3.zftr.F7N/xgSUYzyczzd8oRWdjKuXxO',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,1),(11,'Zuadan','1980-01-01','64412732096','zuadan@laravel.com',NULL,'$2y$10$H7HI7i9VQZ2wwrMNvaS48.6xAFxZbT4ujSzvEu6pGmtcM0K0Qiwee',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,2),(12,'Elrod','1980-01-02','85946373064','elrod@laravel.com',NULL,'$2y$10$B6AbUbc2DVjy2Mrw2cpmb.qlvt0puHy1cFJKymjOse4bCRjx.rawy',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,2),(13,'Vaborn','1980-01-03','71259723062','vaborn@laravel.com',NULL,'$2y$10$sofFXPSOWsOiOG0MCP0RoeTk.VE0JrbGSNr8htbPCVwGnlRUDdqw2',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,2),(14,'Luor','1980-01-04','61765474078','luor@laravel.com',NULL,'$2y$10$dhS9.B8diqEvOWqigBKjCeo2dIOHxttwIXJ3TBAgjYuXPdE4f..VS',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,2),(15,'Gildir','1980-01-05','35750362094','gildir@laravel.com',NULL,'$2y$10$plobEAUIO7kFUsme4gPMl.chWzrD1v/BHtI79iRJHs3vYwWNvd0s.',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,2),(16,'Doraborn','1980-01-06','33392999008','doraborn@laravel.com',NULL,'$2y$10$UNhuIzbG.tC82s0kZsMCI.VSGNU7nci/QKxpfTtszuLkyckaCCO5e',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,2),(17,'Gecoice','1990-05-01','95499863067','gecoice@laravel.com',NULL,'$2y$10$U3L4MjqDSYfn4hJ0xKxCa.E8orqaqe9GCZ0zt13MFDMpsrPabN7yO',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,3),(18,'Zael','1990-05-02','63002749001','zael@laravel.com',NULL,'$2y$10$GeLOUPm4.DquUn21VElcy.KAYHjThsmZOiGiujEaO53vv852DUrpK',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,3),(19,'Buwa','1990-05-03','97907490073','buwa@laravel.com',NULL,'$2y$10$1Pq5If4eXyaXdHgNczYAgOXERw3aa9ygFsc9U1lapeXVyu0K5Ute.',NULL,'2023-09-20 19:59:11','2023-09-20 19:59:11',NULL,3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 11:27:28
