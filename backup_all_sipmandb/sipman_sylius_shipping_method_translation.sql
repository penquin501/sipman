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
-- Table structure for table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_translation` VALUES (1,1,'UPS','Aut est neque non quia modi quod.','en_US'),(2,1,'UPS','Aut est neque non quia modi quod.','de_DE'),(3,1,'UPS','Aut est neque non quia modi quod.','fr_FR'),(4,1,'UPS','Aut est neque non quia modi quod.','pl_PL'),(5,1,'UPS','Aut est neque non quia modi quod.','es_ES'),(6,1,'UPS','Aut est neque non quia modi quod.','es_MX'),(7,1,'UPS','Aut est neque non quia modi quod.','pt_PT'),(8,1,'UPS','Aut est neque non quia modi quod.','zh_CN'),(9,2,'DHL Express','Necessitatibus hic labore consequatur aspernatur necessitatibus.','en_US'),(10,2,'DHL Express','Necessitatibus hic labore consequatur aspernatur necessitatibus.','de_DE'),(11,2,'DHL Express','Necessitatibus hic labore consequatur aspernatur necessitatibus.','fr_FR'),(12,2,'DHL Express','Necessitatibus hic labore consequatur aspernatur necessitatibus.','pl_PL'),(13,2,'DHL Express','Necessitatibus hic labore consequatur aspernatur necessitatibus.','es_ES'),(14,2,'DHL Express','Necessitatibus hic labore consequatur aspernatur necessitatibus.','es_MX'),(15,2,'DHL Express','Necessitatibus hic labore consequatur aspernatur necessitatibus.','pt_PT'),(16,2,'DHL Express','Necessitatibus hic labore consequatur aspernatur necessitatibus.','zh_CN'),(17,3,'FedEx','Amet optio voluptatem delectus est culpa atque sit.','en_US'),(18,3,'FedEx','Amet optio voluptatem delectus est culpa atque sit.','de_DE'),(19,3,'FedEx','Amet optio voluptatem delectus est culpa atque sit.','fr_FR'),(20,3,'FedEx','Amet optio voluptatem delectus est culpa atque sit.','pl_PL'),(21,3,'FedEx','Amet optio voluptatem delectus est culpa atque sit.','es_ES'),(22,3,'FedEx','Amet optio voluptatem delectus est culpa atque sit.','es_MX'),(23,3,'FedEx','Amet optio voluptatem delectus est culpa atque sit.','pt_PT'),(24,3,'FedEx','Amet optio voluptatem delectus est culpa atque sit.','zh_CN');
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30  8:55:44
