-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: sipman
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_group_id` int DEFAULT NULL,
  `default_address_id` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  KEY `created_at_index` (`created_at`),
  CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` VALUES (1,1,NULL,'shop@example.com','shop@example.com','John','Doe','1994-02-02 03:02:19','u','2024-02-28 10:06:18','2024-02-28 10:06:18','+1-718-393-9096',0),(2,1,NULL,'emerald05@yahoo.com','emerald05@yahoo.com','Ora','Littel','1967-08-25 14:27:47','u','2024-02-28 10:06:18','2024-02-28 10:06:18','+12602900102',0),(3,1,NULL,'shemar02@gmail.com','shemar02@gmail.com','Deonte','Wisozk','1988-10-15 19:34:24','u','2024-02-28 10:06:18','2024-02-28 10:06:18','283.267.2577',0),(4,2,NULL,'coleman78@schulist.com','coleman78@schulist.com','Jessika','Champlin','1982-01-27 16:45:32','u','2024-02-28 10:06:18','2024-02-28 10:06:18','1-463-221-9406',0),(5,2,NULL,'ayden52@gmail.com','ayden52@gmail.com','Rogelio','Herman','1948-02-19 02:23:42','u','2024-02-28 10:06:18','2024-02-28 10:06:18','+1.562.720.8153',0),(6,2,NULL,'rmraz@yahoo.com','rmraz@yahoo.com','Ilene','Wyman','1927-01-04 13:50:26','u','2024-02-28 10:06:18','2024-02-28 10:06:19','(484) 690-6227',0),(7,1,NULL,'wehner.evan@bailey.com','wehner.evan@bailey.com','Tatyana','Rippin','1997-11-04 12:48:08','u','2024-02-28 10:06:19','2024-02-28 10:06:19','+1-463-404-7365',0),(8,1,NULL,'ward95@gleichner.net','ward95@gleichner.net','Derick','Ebert','1971-07-24 20:33:46','u','2024-02-28 10:06:19','2024-02-28 10:06:19','540.371.9879',0),(9,1,NULL,'judge14@hotmail.com','judge14@hotmail.com','Rosemarie','Denesik','2004-01-31 04:51:38','u','2024-02-28 10:06:19','2024-02-28 10:06:19','+1-563-737-1988',0),(10,2,NULL,'hayes.chelsey@trantow.biz','hayes.chelsey@trantow.biz','Kelly','Upton','1935-02-26 09:55:06','u','2024-02-28 10:06:19','2024-02-28 10:06:19','689-536-4346',0),(11,1,NULL,'gregory.russel@jakubowski.info','gregory.russel@jakubowski.info','Napoleon','Orn','1936-04-09 15:04:36','u','2024-02-28 10:06:19','2024-02-28 10:06:20','(769) 792-2326',0),(12,2,NULL,'oconner.aileen@dooley.com','oconner.aileen@dooley.com','Ofelia','Zieme','1971-02-18 12:37:46','u','2024-02-28 10:06:20','2024-02-28 10:06:20','(614) 751-5491',0),(13,1,NULL,'dasia72@hotmail.com','dasia72@hotmail.com','Milo','Grimes','1985-09-18 02:44:08','u','2024-02-28 10:06:20','2024-02-28 10:06:20','+1-562-838-1417',0),(14,2,NULL,'beier.schuyler@strosin.com','beier.schuyler@strosin.com','Cynthia','Johnson','1984-05-25 07:59:50','u','2024-02-28 10:06:20','2024-02-28 10:06:20','337.310.7154',0),(15,2,NULL,'kaden71@yahoo.com','kaden71@yahoo.com','Samantha','Keeling','1967-09-29 04:10:12','u','2024-02-28 10:06:20','2024-02-28 10:06:20','424-475-5705',0),(16,1,NULL,'chris.rutherford@huels.info','chris.rutherford@huels.info','Lorna','Hills','1927-01-04 23:23:05','u','2024-02-28 10:06:20','2024-02-28 10:06:20','858-444-5453',0),(17,1,NULL,'thelma.shanahan@ortiz.biz','thelma.shanahan@ortiz.biz','Harmon','Balistreri','1941-09-03 20:00:49','u','2024-02-28 10:06:20','2024-02-28 10:06:21','+1.534.753.2219',0),(18,2,NULL,'lowe.marvin@gmail.com','lowe.marvin@gmail.com','Susanna','Bogisich','1993-09-21 00:40:28','u','2024-02-28 10:06:21','2024-02-28 10:06:21','320-469-2881',0),(19,1,NULL,'koby30@graham.org','koby30@graham.org','Nickolas','Reichel','1981-05-01 18:51:52','u','2024-02-28 10:06:21','2024-02-28 10:06:21','234.606.8351',0),(20,1,NULL,'antonetta.ernser@moen.biz','antonetta.ernser@moen.biz','Shyanne','Mann','1957-11-02 18:35:37','u','2024-02-28 10:06:21','2024-02-28 10:06:21','334.469.8348',0),(21,2,NULL,'sauer.trinity@langosh.com','sauer.trinity@langosh.com','Karl','Wilderman','1974-11-15 05:25:24','u','2024-02-28 10:06:21','2024-02-28 10:06:21','+12317009710',0);
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30  8:55:40
