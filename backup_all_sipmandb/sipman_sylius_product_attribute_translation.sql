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
-- Table structure for table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

LOCK TABLES `sylius_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_translation` VALUES (1,1,'T-shirt brand','en_US'),(2,1,'T-shirt brand','de_DE'),(3,1,'T-shirt brand','fr_FR'),(4,1,'T-shirt brand','pl_PL'),(5,1,'T-shirt brand','es_ES'),(6,1,'T-shirt brand','es_MX'),(7,1,'T-shirt brand','pt_PT'),(8,1,'T-shirt brand','zh_CN'),(9,2,'T-shirt collection','en_US'),(10,2,'T-shirt collection','de_DE'),(11,2,'T-shirt collection','fr_FR'),(12,2,'T-shirt collection','pl_PL'),(13,2,'T-shirt collection','es_ES'),(14,2,'T-shirt collection','es_MX'),(15,2,'T-shirt collection','pt_PT'),(16,2,'T-shirt collection','zh_CN'),(17,3,'T-shirt material','en_US'),(18,3,'T-shirt material','de_DE'),(19,3,'T-shirt material','fr_FR'),(20,3,'T-shirt material','pl_PL'),(21,3,'T-shirt material','es_ES'),(22,3,'T-shirt material','es_MX'),(23,3,'T-shirt material','pt_PT'),(24,3,'T-shirt material','zh_CN'),(25,4,'Damage reduction','en_US'),(26,4,'Damage reduction','de_DE'),(27,4,'Damage reduction','fr_FR'),(28,4,'Damage reduction','pl_PL'),(29,4,'Damage reduction','es_ES'),(30,4,'Damage reduction','es_MX'),(31,4,'Damage reduction','pt_PT'),(32,4,'Damage reduction','zh_CN'),(33,5,'Cap brand','en_US'),(34,5,'Cap brand','de_DE'),(35,5,'Cap brand','fr_FR'),(36,5,'Cap brand','pl_PL'),(37,5,'Cap brand','es_ES'),(38,5,'Cap brand','es_MX'),(39,5,'Cap brand','pt_PT'),(40,5,'Cap brand','zh_CN'),(41,6,'Cap collection','en_US'),(42,6,'Cap collection','de_DE'),(43,6,'Cap collection','fr_FR'),(44,6,'Cap collection','pl_PL'),(45,6,'Cap collection','es_ES'),(46,6,'Cap collection','es_MX'),(47,6,'Cap collection','pt_PT'),(48,6,'Cap collection','zh_CN'),(49,7,'Cap material','en_US'),(50,7,'Cap material','de_DE'),(51,7,'Cap material','fr_FR'),(52,7,'Cap material','pl_PL'),(53,7,'Cap material','es_ES'),(54,7,'Cap material','es_MX'),(55,7,'Cap material','pt_PT'),(56,7,'Cap material','zh_CN'),(57,8,'Dress brand','en_US'),(58,8,'Dress brand','de_DE'),(59,8,'Dress brand','fr_FR'),(60,8,'Dress brand','pl_PL'),(61,8,'Dress brand','es_ES'),(62,8,'Dress brand','es_MX'),(63,8,'Dress brand','pt_PT'),(64,8,'Dress brand','zh_CN'),(65,9,'Dress collection','en_US'),(66,9,'Dress collection','de_DE'),(67,9,'Dress collection','fr_FR'),(68,9,'Dress collection','pl_PL'),(69,9,'Dress collection','es_ES'),(70,9,'Dress collection','es_MX'),(71,9,'Dress collection','pt_PT'),(72,9,'Dress collection','zh_CN'),(73,10,'Dress material','en_US'),(74,10,'Dress material','de_DE'),(75,10,'Dress material','fr_FR'),(76,10,'Dress material','pl_PL'),(77,10,'Dress material','es_ES'),(78,10,'Dress material','es_MX'),(79,10,'Dress material','pt_PT'),(80,10,'Dress material','zh_CN'),(81,11,'Length','en_US'),(82,11,'Length','de_DE'),(83,11,'Length','fr_FR'),(84,11,'Length','pl_PL'),(85,11,'Length','es_ES'),(86,11,'Length','es_MX'),(87,11,'Length','pt_PT'),(88,11,'Length','zh_CN'),(89,12,'Jeans brand','en_US'),(90,12,'Jeans brand','de_DE'),(91,12,'Jeans brand','fr_FR'),(92,12,'Jeans brand','pl_PL'),(93,12,'Jeans brand','es_ES'),(94,12,'Jeans brand','es_MX'),(95,12,'Jeans brand','pt_PT'),(96,12,'Jeans brand','zh_CN'),(97,13,'Jeans collection','en_US'),(98,13,'Jeans collection','de_DE'),(99,13,'Jeans collection','fr_FR'),(100,13,'Jeans collection','pl_PL'),(101,13,'Jeans collection','es_ES'),(102,13,'Jeans collection','es_MX'),(103,13,'Jeans collection','pt_PT'),(104,13,'Jeans collection','zh_CN'),(105,14,'Jeans material','en_US'),(106,14,'Jeans material','de_DE'),(107,14,'Jeans material','fr_FR'),(108,14,'Jeans material','pl_PL'),(109,14,'Jeans material','es_ES'),(110,14,'Jeans material','es_MX'),(111,14,'Jeans material','pt_PT'),(112,14,'Jeans material','zh_CN');
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;
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
