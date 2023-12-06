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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_one` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_two` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_three` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_four` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct_ans` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct_ans_str` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `fifty_fifty` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,NULL,NULL,1,'L1 Question Sample1 ?','{name:one,ca:false,50-50:true}','{name:two,ca:false,50-50:false}','{name:three,ca:true,50-50:true}','{name:four,ca:false,50-50:false}','option_three','three',1,'0'),(2,NULL,NULL,1,'L1 Question Sample 2 ?','{name:one,ca:false,50-50:true}','{name:two,ca:false,50-50:false}','{name:three,ca:true,50-50:true}','{name:four,ca:false,50-50:false}','option_four','four',1,'0'),(3,NULL,NULL,1,'L1 Question Sample 3 ?','{name:one,ca:false,50-50:true}','{name:two,ca:false,50-50:false}','{name:three,ca:true,50-50:true}','{name:four,ca:false,50-50:false}','option_one','one',1,'0'),(4,NULL,NULL,2,'L2 Question Sample 1 ?','{name:one,ca:false,50-50:true}','{name:two,ca:false,50-50:false}','{name:three,ca:true,50-50:true}','{name:four,ca:false,50-50:false}','option_four','four',1,'0'),(5,NULL,NULL,2,'L2 Question Sample 2 ?','{name:one,ca:false,50-50:true}','{name:two,ca:false,50-50:false}','{name:three,ca:true,50-50:true}','{name:four,ca:false,50-50:false}','option_two','two',1,'0'),(6,NULL,NULL,2,'L2 Question Sample 3 ?','{name:one,ca:false,50-50:true}','{name:two,ca:false,50-50:false}','{name:three,ca:true,50-50:true}','{name:four,ca:false,50-50:false}','option_two','two',1,'0'),(7,NULL,NULL,3,'L3Question Sample 1 ?','{name:one,ca:false,50-50:true}','{name:two,ca:false,50-50:false}','{name:three,ca:true,50-50:true}','{name:four,ca:false,50-50:false}','option_three','three',1,'0'),(8,NULL,NULL,3,'L3 Question Sample 2 ?','{name:one,ca:false,50-50:true}','{name:two,ca:false,50-50:false}','{name:three,ca:true,50-50:true}','{name:four,ca:false,50-50:false}','option_one','one',1,'0'),(9,NULL,NULL,3,'L3 Question Sample 3 ?','{name:one,ca:false,50-50:true}','{name:two,ca:false,50-50:false}','{name:three,ca:true,50-50:true}','{name:four,ca:false,50-50:false}','option_four','four',1,'0');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
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
