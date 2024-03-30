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
-- Table structure for table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` int NOT NULL,
  `original_unit_price` int DEFAULT NULL,
  `units_total` int NOT NULL,
  `adjustments_total` int NOT NULL,
  `total` int NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
INSERT INTO `sylius_order_item` VALUES (1,1,67,5,4327,4327,20699,0,20699,0,'Ruffle wrap festival dress','S Tall',1),(2,1,100,1,1483,1483,1419,0,1419,0,'727F patched cropped jeans','S',1),(3,2,101,4,9016,9016,35542,0,35542,0,'727F patched cropped jeans','M',1),(4,2,71,2,2037,2037,4015,0,4015,0,'Ruffle wrap festival dress','L Petite',1),(5,2,34,5,5779,5779,28476,0,28476,0,'Cashmere-blend violet beanie','',1),(6,3,31,2,7184,7184,13811,0,13811,0,'Knitted burgundy winter cap','',1),(7,3,65,2,5716,5716,10989,0,10989,0,'Ruffle wrap festival dress','S Petite',1),(8,4,103,3,2561,2561,7683,0,7683,0,'727F patched cropped jeans','XL',1),(9,5,34,5,5779,5779,33792,0,33792,0,'Cashmere-blend violet beanie','',1),(10,5,5,1,1411,1411,1375,0,1375,0,'Everyday white basic T-Shirt','XXL',1),(11,5,6,1,8979,8979,8750,0,8750,0,'Loose white designer T-Shirt','S',1),(12,6,34,2,5779,5779,11355,0,11355,0,'Cashmere-blend violet beanie','',1),(13,6,16,4,5229,5229,20549,0,20549,0,'Sport basic white T-Shirt','S',1),(14,6,118,3,4735,4735,13955,0,13955,0,'666F boyfriend jeans with rips','XL',1),(15,6,103,4,2561,2561,10064,0,10064,0,'727F patched cropped jeans','XL',1),(16,7,23,1,3675,3675,3675,0,3675,0,'Raglan grey & black Tee','L',1),(17,8,61,1,7554,7554,7190,0,7190,0,'Off shoulder boho dress','XL Tall',1),(18,8,33,5,2637,2637,12549,0,12549,0,'Knitted white pompom cap','',1),(19,9,108,3,7540,7540,22264,0,22264,0,'111F patched jeans with fancy badges','XL',1),(20,9,73,2,342,342,673,0,673,0,'Ruffle wrap festival dress','L Tall',1),(21,9,42,1,961,961,946,0,946,0,'Beige strappy summer dress','L Regular',1),(22,9,31,1,7184,7184,7071,0,7071,0,'Knitted burgundy winter cap','',1),(23,9,102,4,8034,8034,31631,0,31631,0,'727F patched cropped jeans','L',1),(24,10,109,1,9840,9840,9776,0,9776,0,'111F patched jeans with fancy badges','XXL',1),(25,10,99,13,7538,7538,97352,0,97352,0,'007M black elegance jeans','XXL',1),(26,10,6,5,8979,8979,44601,0,44601,0,'Loose white designer T-Shirt','S',1),(27,11,31,5,7184,7184,35346,0,35346,0,'Knitted burgundy winter cap','',1),(28,11,51,4,6666,6666,26238,0,26238,0,'Off shoulder boho dress','S Regular',1),(29,12,89,3,7719,7719,22741,0,22741,0,'330M slim fit jeans','XXL',1),(30,12,55,2,4039,4039,7933,0,7933,0,'Off shoulder boho dress','M Tall',1),(31,12,74,1,109,109,107,0,107,0,'Ruffle wrap festival dress','XL Petite',1),(32,12,59,3,8126,8126,23941,0,23941,0,'Off shoulder boho dress','XL Petite',1),(33,13,117,5,575,575,2875,0,2875,0,'666F boyfriend jeans with rips','L',1),(34,13,17,3,6426,6426,19278,0,19278,0,'Sport basic white T-Shirt','M',1),(35,14,95,3,9891,9891,29673,0,29673,0,'007M black elegance jeans','S',1),(36,14,47,1,6124,6124,6124,0,6124,0,'Beige strappy summer dress','XXL Petite',1),(37,15,31,4,7184,7184,34483,0,34483,0,'Knitted burgundy winter cap','',1),(38,15,33,5,2637,2637,15822,0,15822,0,'Knitted white pompom cap','',1),(39,15,50,4,2405,2405,9620,0,9620,0,'Off shoulder boho dress','S Petite',1),(40,16,92,2,4772,4772,9544,0,9544,0,'990M regular fit jeans','L',1),(41,16,20,3,7271,7271,21813,0,21813,0,'Sport basic white T-Shirt','XXL',1),(42,17,32,5,8665,8665,43325,0,43325,0,'Knitted wool-blend green cap','',1),(43,17,45,4,6275,6275,25100,0,25100,0,'Beige strappy summer dress','XL Regular',1),(44,17,91,2,3058,3058,6116,0,6116,0,'990M regular fit jeans','M',1),(45,17,110,4,3339,3339,13356,0,13356,0,'000F office grey jeans','S',1),(46,17,6,4,8979,8979,35916,0,35916,0,'Loose white designer T-Shirt','S',1),(47,18,31,3,7184,7184,21552,0,21552,0,'Knitted burgundy winter cap','',1),(48,19,88,3,2079,2079,6237,0,6237,0,'330M slim fit jeans','XL',1),(49,19,44,5,7345,7345,36725,0,36725,0,'Beige strappy summer dress','XL Petite',1),(50,19,117,4,575,575,2300,0,2300,0,'666F boyfriend jeans with rips','L',1),(51,19,30,1,2114,2114,2114,0,2114,0,'Oversize white cotton T-Shirt','XXL',1),(52,19,87,2,5935,5935,11870,0,11870,0,'330M slim fit jeans','L',1),(53,20,24,2,1363,1363,2726,0,2726,0,'Raglan grey & black Tee','XL',1),(54,20,97,5,2445,2445,12225,0,12225,0,'007M black elegance jeans','L',1),(55,21,148680,1,1000,1000,1000,0,1000,0,'Domaine Bader Alsace Gewurztraminer',NULL,2),(56,21,16,1,5229,5229,5229,0,5229,0,'Sport basic white T-Shirt','S',2),(57,22,148680,1,1000,1000,1000,0,1000,0,'Domaine Bader Alsace Gewurztraminer',NULL,2),(58,23,174578,1,1000,1000,1000,0,1000,0,'François Carillon Cap au Sud',NULL,2),(59,24,174578,7,1000,1000,7000,0,7000,0,'François Carillon Cap au Sud',NULL,2),(61,25,174578,5,1000,1000,5000,0,5000,0,'François Carillon Cap au Sud',NULL,3);
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;
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
