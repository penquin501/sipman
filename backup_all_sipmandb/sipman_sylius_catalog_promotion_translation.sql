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
-- Table structure for table `sylius_catalog_promotion_translation`
--

DROP TABLE IF EXISTS `sylius_catalog_promotion_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_catalog_promotion_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_catalog_promotion_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_BA065D3C2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_BA065D3C2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_catalog_promotion` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_catalog_promotion_translation`
--

LOCK TABLES `sylius_catalog_promotion_translation` WRITE;
/*!40000 ALTER TABLE `sylius_catalog_promotion_translation` DISABLE KEYS */;
INSERT INTO `sylius_catalog_promotion_translation` VALUES (1,1,'Winter sale','Voluptas praesentium eveniet ut temporibus beatae.','en_US'),(2,1,'Winter sale','Voluptas praesentium eveniet ut temporibus beatae.','de_DE'),(3,1,'Winter sale','Voluptas praesentium eveniet ut temporibus beatae.','fr_FR'),(4,1,'Winter sale','Voluptas praesentium eveniet ut temporibus beatae.','pl_PL'),(5,1,'Winter sale','Voluptas praesentium eveniet ut temporibus beatae.','es_ES'),(6,1,'Winter sale','Voluptas praesentium eveniet ut temporibus beatae.','es_MX'),(7,1,'Winter sale','Voluptas praesentium eveniet ut temporibus beatae.','pt_PT'),(8,1,'Winter sale','Voluptas praesentium eveniet ut temporibus beatae.','zh_CN'),(9,2,'Spring sale','Ipsum ut accusamus saepe aut consectetur velit.','en_US'),(10,2,'Spring sale','Ipsum ut accusamus saepe aut consectetur velit.','de_DE'),(11,2,'Spring sale','Ipsum ut accusamus saepe aut consectetur velit.','fr_FR'),(12,2,'Spring sale','Ipsum ut accusamus saepe aut consectetur velit.','pl_PL'),(13,2,'Spring sale','Ipsum ut accusamus saepe aut consectetur velit.','es_ES'),(14,2,'Spring sale','Ipsum ut accusamus saepe aut consectetur velit.','es_MX'),(15,2,'Spring sale','Ipsum ut accusamus saepe aut consectetur velit.','pt_PT'),(16,2,'Spring sale','Ipsum ut accusamus saepe aut consectetur velit.','zh_CN'),(17,3,'Summer sale','Consequatur ipsam facilis natus quasi impedit.','en_US'),(18,3,'Summer sale','Consequatur ipsam facilis natus quasi impedit.','de_DE'),(19,3,'Summer sale','Consequatur ipsam facilis natus quasi impedit.','fr_FR'),(20,3,'Summer sale','Consequatur ipsam facilis natus quasi impedit.','pl_PL'),(21,3,'Summer sale','Consequatur ipsam facilis natus quasi impedit.','es_ES'),(22,3,'Summer sale','Consequatur ipsam facilis natus quasi impedit.','es_MX'),(23,3,'Summer sale','Consequatur ipsam facilis natus quasi impedit.','pt_PT'),(24,3,'Summer sale','Consequatur ipsam facilis natus quasi impedit.','zh_CN'),(25,4,'Autumn sale','Nemo maxime laboriosam eos voluptas.','en_US'),(26,4,'Autumn sale','Nemo maxime laboriosam eos voluptas.','de_DE'),(27,4,'Autumn sale','Nemo maxime laboriosam eos voluptas.','fr_FR'),(28,4,'Autumn sale','Nemo maxime laboriosam eos voluptas.','pl_PL'),(29,4,'Autumn sale','Nemo maxime laboriosam eos voluptas.','es_ES'),(30,4,'Autumn sale','Nemo maxime laboriosam eos voluptas.','es_MX'),(31,4,'Autumn sale','Nemo maxime laboriosam eos voluptas.','pt_PT'),(32,4,'Autumn sale','Nemo maxime laboriosam eos voluptas.','zh_CN');
/*!40000 ALTER TABLE `sylius_catalog_promotion_translation` ENABLE KEYS */;
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
