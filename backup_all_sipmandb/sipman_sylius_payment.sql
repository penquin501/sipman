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
-- Table structure for table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method_id` int DEFAULT NULL,
  `order_id` int NOT NULL,
  `currency_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` json NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
INSERT INTO `sylius_payment` VALUES (1,2,1,'USD',22588,'completed','[]','2023-03-01 14:38:31','2024-02-28 10:06:22'),(2,2,2,'USD',68503,'completed','[]','2023-03-20 09:33:14','2024-02-28 10:06:22'),(3,1,3,'USD',25781,'completed','[]','2023-04-30 07:39:47','2024-02-28 10:06:22'),(4,1,4,'USD',8594,'completed','[]','2023-05-13 13:30:14','2024-02-28 10:06:22'),(5,2,5,'USD',43917,'completed','[]','2023-05-16 22:38:01','2024-02-28 10:06:22'),(6,1,6,'USD',56393,'completed','[]','2023-07-07 05:16:25','2024-02-28 10:06:22'),(7,2,7,'USD',4656,'completed','[]','2023-09-08 09:56:58','2024-02-28 10:06:22'),(8,1,8,'USD',20720,'completed','[]','2023-09-10 00:23:16','2024-02-28 10:06:22'),(9,1,9,'USD',63055,'completed','[]','2023-10-01 11:16:47','2024-02-28 10:06:22'),(10,1,10,'USD',151729,'completed','[]','2023-11-08 07:38:19','2024-02-28 10:06:22'),(11,1,11,'USD',62495,'completed','[]','2023-11-13 03:13:37','2024-02-28 10:06:22'),(12,2,12,'USD',55192,'completed','[]','2023-12-18 13:52:12','2024-02-28 10:06:22'),(13,2,13,'USD',23064,'new','[]','2023-06-22 09:11:41','2024-02-28 10:06:22'),(14,2,14,'USD',36708,'new','[]','2023-06-26 11:54:19','2024-02-28 10:06:22'),(15,1,15,'USD',59925,'new','[]','2023-07-28 23:41:42','2024-02-28 10:06:22'),(16,1,16,'USD',31357,'new','[]','2023-09-09 02:35:46','2024-02-28 10:06:22'),(17,1,17,'USD',124283,'new','[]','2023-09-21 00:32:40','2024-02-28 10:06:22'),(18,2,18,'USD',22533,'new','[]','2023-09-28 07:42:49','2024-02-28 10:06:22'),(19,2,19,'USD',60227,'new','[]','2023-11-14 22:34:53','2024-02-28 10:06:22'),(20,1,20,'USD',15862,'new','[]','2023-12-10 08:21:53','2024-02-28 10:06:22'),(21,1,21,'USD',6229,'completed','{\"status\": \"pending\"}','2024-03-05 06:05:53','2024-03-05 08:25:18'),(22,1,22,'USD',1000,'new','{\"status\": \"pending\"}','2024-03-05 09:30:36','2024-03-05 09:31:03'),(23,1,23,'USD',1000,'new','{\"status\": \"pending\"}','2024-03-08 03:08:23','2024-03-08 03:11:01'),(24,1,24,'THB',7000,'new','{\"status\": \"pending\"}','2024-03-18 11:37:23','2024-03-18 11:37:56'),(26,1,25,'THB',5000,'new','{\"status\": \"pending\"}','2024-03-18 11:41:25','2024-03-18 11:42:03');
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30  8:55:45
