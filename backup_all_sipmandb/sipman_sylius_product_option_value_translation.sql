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
-- Table structure for table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value_translation`
--

LOCK TABLES `sylius_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_option_value_translation` VALUES (1,1,'S','en_US'),(2,1,'S','de_DE'),(3,1,'S','fr_FR'),(4,1,'S','pl_PL'),(5,1,'S','es_ES'),(6,1,'S','es_MX'),(7,1,'S','pt_PT'),(8,1,'S','zh_CN'),(9,2,'M','en_US'),(10,2,'M','de_DE'),(11,2,'M','fr_FR'),(12,2,'M','pl_PL'),(13,2,'M','es_ES'),(14,2,'M','es_MX'),(15,2,'M','pt_PT'),(16,2,'M','zh_CN'),(17,3,'L','en_US'),(18,3,'L','de_DE'),(19,3,'L','fr_FR'),(20,3,'L','pl_PL'),(21,3,'L','es_ES'),(22,3,'L','es_MX'),(23,3,'L','pt_PT'),(24,3,'L','zh_CN'),(25,4,'XL','en_US'),(26,4,'XL','de_DE'),(27,4,'XL','fr_FR'),(28,4,'XL','pl_PL'),(29,4,'XL','es_ES'),(30,4,'XL','es_MX'),(31,4,'XL','pt_PT'),(32,4,'XL','zh_CN'),(33,5,'XXL','en_US'),(34,5,'XXL','de_DE'),(35,5,'XXL','fr_FR'),(36,5,'XXL','pl_PL'),(37,5,'XXL','es_ES'),(38,5,'XXL','es_MX'),(39,5,'XXL','pt_PT'),(40,5,'XXL','zh_CN'),(41,6,'S','en_US'),(42,6,'S','de_DE'),(43,6,'S','fr_FR'),(44,6,'S','pl_PL'),(45,6,'S','es_ES'),(46,6,'S','es_MX'),(47,6,'S','pt_PT'),(48,6,'S','zh_CN'),(49,7,'M','en_US'),(50,7,'M','de_DE'),(51,7,'M','fr_FR'),(52,7,'M','pl_PL'),(53,7,'M','es_ES'),(54,7,'M','es_MX'),(55,7,'M','pt_PT'),(56,7,'M','zh_CN'),(57,8,'L','en_US'),(58,8,'L','de_DE'),(59,8,'L','fr_FR'),(60,8,'L','pl_PL'),(61,8,'L','es_ES'),(62,8,'L','es_MX'),(63,8,'L','pt_PT'),(64,8,'L','zh_CN'),(65,9,'XL','en_US'),(66,9,'XL','de_DE'),(67,9,'XL','fr_FR'),(68,9,'XL','pl_PL'),(69,9,'XL','es_ES'),(70,9,'XL','es_MX'),(71,9,'XL','pt_PT'),(72,9,'XL','zh_CN'),(73,10,'XXL','en_US'),(74,10,'XXL','de_DE'),(75,10,'XXL','fr_FR'),(76,10,'XXL','pl_PL'),(77,10,'XXL','es_ES'),(78,10,'XXL','es_MX'),(79,10,'XXL','pt_PT'),(80,10,'XXL','zh_CN'),(81,11,'Petite','en_US'),(82,11,'Petite','de_DE'),(83,11,'Petite','fr_FR'),(84,11,'Petite','pl_PL'),(85,11,'Petite','es_ES'),(86,11,'Petite','es_MX'),(87,11,'Petite','pt_PT'),(88,11,'Petite','zh_CN'),(89,12,'Regular','en_US'),(90,12,'Regular','de_DE'),(91,12,'Regular','fr_FR'),(92,12,'Regular','pl_PL'),(93,12,'Regular','es_ES'),(94,12,'Regular','es_MX'),(95,12,'Regular','pt_PT'),(96,12,'Regular','zh_CN'),(97,13,'Tall','en_US'),(98,13,'Tall','de_DE'),(99,13,'Tall','fr_FR'),(100,13,'Tall','pl_PL'),(101,13,'Tall','es_ES'),(102,13,'Tall','es_MX'),(103,13,'Tall','pt_PT'),(104,13,'Tall','zh_CN'),(105,14,'S','en_US'),(106,14,'S','de_DE'),(107,14,'S','fr_FR'),(108,14,'S','pl_PL'),(109,14,'S','es_ES'),(110,14,'S','es_MX'),(111,14,'S','pt_PT'),(112,14,'S','zh_CN'),(113,15,'M','en_US'),(114,15,'M','de_DE'),(115,15,'M','fr_FR'),(116,15,'M','pl_PL'),(117,15,'M','es_ES'),(118,15,'M','es_MX'),(119,15,'M','pt_PT'),(120,15,'M','zh_CN'),(121,16,'L','en_US'),(122,16,'L','de_DE'),(123,16,'L','fr_FR'),(124,16,'L','pl_PL'),(125,16,'L','es_ES'),(126,16,'L','es_MX'),(127,16,'L','pt_PT'),(128,16,'L','zh_CN'),(129,17,'XL','en_US'),(130,17,'XL','de_DE'),(131,17,'XL','fr_FR'),(132,17,'XL','pl_PL'),(133,17,'XL','es_ES'),(134,17,'XL','es_MX'),(135,17,'XL','pt_PT'),(136,17,'XL','zh_CN'),(137,18,'XXL','en_US'),(138,18,'XXL','de_DE'),(139,18,'XXL','fr_FR'),(140,18,'XXL','pl_PL'),(141,18,'XXL','es_ES'),(142,18,'XXL','es_MX'),(143,18,'XXL','pt_PT'),(144,18,'XXL','zh_CN');
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;
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
