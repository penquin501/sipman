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
-- Table structure for table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_attribute` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int NOT NULL,
  `translatable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute`
--

LOCK TABLES `sylius_product_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute` VALUES (1,'t_shirt_brand','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',0,1),(2,'t_shirt_collection','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',1,1),(3,'t_shirt_material','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',2,1),(4,'damage_reduction','percent','float','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',3,0),(5,'cap_brand','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',4,1),(6,'cap_collection','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',5,1),(7,'cap_material','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',6,1),(8,'dress_brand','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',7,1),(9,'dress_collection','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',8,1),(10,'dress_material','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',9,1),(11,'length','integer','integer','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',10,0),(12,'jeans_brand','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',11,1),(13,'jeans_collection','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',12,1),(14,'jeans_material','text','text','a:0:{}','2024-02-28 10:06:22','2024-02-28 10:06:22',13,1);
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30  8:55:42
