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
-- Table structure for table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int NOT NULL,
  `option_value_id` int NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_option_value`
--

LOCK TABLES `sylius_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_option_value` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,1),(7,2),(8,3),(9,4),(10,5),(11,1),(12,2),(13,3),(14,4),(15,5),(16,1),(17,2),(18,3),(19,4),(20,5),(21,1),(22,2),(23,3),(24,4),(25,5),(26,1),(27,2),(28,3),(29,4),(30,5),(35,6),(35,11),(36,6),(36,12),(37,6),(37,13),(38,7),(38,11),(39,7),(39,12),(40,7),(40,13),(41,8),(41,11),(42,8),(42,12),(43,8),(43,13),(44,9),(44,11),(45,9),(45,12),(46,9),(46,13),(47,10),(47,11),(48,10),(48,12),(49,10),(49,13),(50,6),(50,11),(51,6),(51,12),(52,6),(52,13),(53,7),(53,11),(54,7),(54,12),(55,7),(55,13),(56,8),(56,11),(57,8),(57,12),(58,8),(58,13),(59,9),(59,11),(60,9),(60,12),(61,9),(61,13),(62,10),(62,11),(63,10),(63,12),(64,10),(64,13),(65,6),(65,11),(66,6),(66,12),(67,6),(67,13),(68,7),(68,11),(69,7),(69,12),(70,7),(70,13),(71,8),(71,11),(72,8),(72,12),(73,8),(73,13),(74,9),(74,11),(75,9),(75,12),(76,9),(76,13),(77,10),(77,11),(78,10),(78,12),(79,10),(79,13),(80,14),(81,15),(82,16),(83,17),(84,18),(85,14),(86,15),(87,16),(88,17),(89,18),(90,14),(91,15),(92,16),(93,17),(94,18),(95,14),(96,15),(97,16),(98,17),(99,18),(100,14),(101,15),(102,16),(103,17),(104,18),(105,14),(106,15),(107,16),(108,17),(109,18),(110,14),(111,15),(112,16),(113,17),(114,18),(115,14),(116,15),(117,16),(118,17),(119,18);
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30  8:55:41
