-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: profit-edeg
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',4,'auth_token','e7c9697b91542d606365c099001861bdb335298aab1b6dd2a301e36df9968943','[\"*\"]',NULL,NULL,'2023-12-02 06:00:52','2023-12-02 06:00:52'),(2,'App\\Models\\User',5,'auth_token','4e339db5cd3bcdc9327e571442cc3d761ec936eb3e02868c1125cff572ff8266','[\"*\"]',NULL,NULL,'2023-12-02 06:05:20','2023-12-02 06:05:20'),(3,'App\\Models\\User',6,'auth_token','6e783408169ffbbfc9f827c2f37e86acf20db9b7e672304e80e02ae75eac7aef','[\"*\"]',NULL,NULL,'2023-12-02 06:39:06','2023-12-02 06:39:06'),(4,'App\\Models\\User',7,'auth_token','2ba1eed8d36fdd1804d6a7d3a90d5a633c08ca72ad33aa30805aa8cd94039756','[\"*\"]',NULL,NULL,'2023-12-02 06:49:50','2023-12-02 06:49:50'),(5,'App\\Models\\User',8,'auth_token','a4c0856ceeff72dd1697458996c83b506d917895329903c8393a18e955c3b4bb','[\"*\"]',NULL,NULL,'2023-12-02 06:54:06','2023-12-02 06:54:06'),(6,'App\\Models\\User',9,'auth_token','fff5196d6172d95be5f807ef7b4fecbf93748c4feabd9c3404237ddd219fc45e','[\"*\"]','2023-12-02 08:37:30',NULL,'2023-12-02 08:08:57','2023-12-02 08:37:30'),(7,'App\\Models\\User',10,'auth_token','e4ee3de98494e5b558688f68633882a9e197c6799cf116693e92111a99d22995','[\"*\"]',NULL,NULL,'2023-12-02 08:35:53','2023-12-02 08:35:53'),(8,'App\\Models\\User',11,'auth_token','23989c8efb629404ea69f446a7b3d4943491d20322fa3190626e9da149eeb43d','[\"*\"]',NULL,NULL,'2023-12-02 08:36:00','2023-12-02 08:36:00'),(9,'App\\Models\\User',12,'auth_token','0f5095042abfb189936a1ebfc48b4de2e7540fa0bd5d9aa205409fa2ddf52284','[\"*\"]',NULL,NULL,'2023-12-04 00:31:24','2023-12-04 00:31:24'),(10,'App\\Models\\User',13,'auth_token','e3dc0b5e90d02dd2c2f9ccbdc85a761031d84eae5507ff74d298b98430bc5c60','[\"*\"]',NULL,NULL,'2023-12-04 03:19:34','2023-12-04 03:19:34'),(11,'App\\Models\\User',13,'auth_token','b0fdb58c1b070ed7ff2422ddf3e92c24098ae03a18c39b642cbb53524312baa6','[\"*\"]',NULL,NULL,'2023-12-04 04:49:35','2023-12-04 04:49:35'),(12,'App\\Models\\User',8,'auth_token','524db27112d261b9d4af966465a06a37e25e0356b0a65f5f5a166694c787e744','[\"*\"]',NULL,NULL,'2023-12-04 06:23:34','2023-12-04 06:23:34'),(13,'App\\Models\\User',8,'auth_token','b81f12d910c9aa2dddc416de67a3475ccfe2eea7c511d94160f03aeeaa436170','[\"*\"]',NULL,NULL,'2023-12-04 06:23:43','2023-12-04 06:23:43'),(14,'App\\Models\\User',8,'auth_token','53a306d90947295bf201da8f40606c572cd0d9c379b40687c94b2733f1f99252','[\"*\"]','2023-12-05 01:16:26',NULL,'2023-12-04 06:23:48','2023-12-05 01:16:26');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 12:21:10
