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
-- Table structure for table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_order_item_unit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_item_id` int NOT NULL,
  `shipment_id` int DEFAULT NULL,
  `adjustments_total` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
INSERT INTO `sylius_order_item_unit` VALUES (1,1,1,-188,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(2,1,1,-187,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(3,1,1,-187,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(4,1,1,-187,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(5,1,1,-187,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(6,2,1,-64,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(7,3,2,-131,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(8,3,2,-131,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(9,3,2,-130,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(10,3,2,-130,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(11,4,2,-30,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(12,4,2,-29,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(13,5,2,-84,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(14,5,2,-84,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(15,5,2,-84,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(16,5,2,-84,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(17,5,2,-83,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(18,6,3,-279,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(19,6,3,-278,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(20,7,3,-222,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(21,7,3,-221,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(22,8,4,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(23,8,4,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(24,8,4,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(25,9,NULL,980,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(26,9,NULL,980,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(27,9,NULL,979,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(28,9,NULL,979,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(29,9,NULL,979,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(30,10,NULL,-36,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(31,11,NULL,-229,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(32,12,5,-102,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(33,12,5,-101,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(34,13,5,-92,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(35,13,5,-92,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(36,13,5,-92,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(37,13,5,-91,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(38,14,5,-84,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(39,14,5,-83,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(40,14,5,-83,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(41,15,5,-45,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(42,15,5,-45,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(43,15,5,-45,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(44,15,5,-45,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(45,16,6,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(46,17,7,-364,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(47,18,7,-128,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(48,18,7,-127,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(49,18,7,-127,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(50,18,7,-127,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(51,18,7,-127,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(52,19,8,-119,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(53,19,8,-119,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(54,19,8,-118,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(55,20,8,-6,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(56,20,8,-5,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(57,21,8,-15,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(58,22,8,-113,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(59,23,8,-127,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(60,23,8,-126,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(61,23,8,-126,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(62,23,8,-126,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(63,24,NULL,-64,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(64,25,NULL,-50,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(65,25,NULL,-50,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(66,25,NULL,-50,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(67,25,NULL,-50,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(68,25,NULL,-50,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(69,25,NULL,-49,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(70,25,NULL,-49,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(71,25,NULL,-49,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(72,25,NULL,-49,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(73,25,NULL,-49,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(74,25,NULL,-49,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(75,25,NULL,-49,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(76,25,NULL,-49,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(77,26,NULL,-59,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(78,26,NULL,-59,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(79,26,NULL,-59,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(80,26,NULL,-59,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(81,26,NULL,-58,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(82,27,9,-115,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(83,27,9,-115,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(84,27,9,-115,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(85,27,9,-115,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(86,27,9,-114,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(87,28,9,-107,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(88,28,9,-107,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(89,28,9,-106,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(90,28,9,-106,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(91,29,10,-139,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(92,29,10,-139,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(93,29,10,-138,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(94,30,10,-73,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(95,30,10,-72,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(96,31,10,-2,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(97,32,10,-146,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(98,32,10,-146,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(99,32,10,-145,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(100,33,11,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(101,33,11,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(102,33,11,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(103,33,11,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(104,33,11,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(105,34,11,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(106,34,11,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(107,34,11,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(108,35,12,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(109,35,12,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(110,35,12,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(111,36,12,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(112,37,NULL,1437,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(113,37,NULL,1437,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(114,37,NULL,1437,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(115,37,NULL,1436,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(116,38,NULL,528,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(117,38,NULL,528,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(118,38,NULL,527,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(119,38,NULL,527,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(120,38,NULL,527,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(121,39,NULL,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(122,39,NULL,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(123,39,NULL,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(124,39,NULL,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(125,40,NULL,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(126,40,NULL,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(127,41,NULL,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(128,41,NULL,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(129,41,NULL,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(130,42,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(131,42,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(132,42,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(133,42,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(134,42,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(135,43,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(136,43,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(137,43,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(138,43,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(139,44,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(140,44,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(141,45,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(142,45,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(143,45,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(144,45,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(145,46,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(146,46,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(147,46,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(148,46,13,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(149,47,14,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(150,47,14,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(151,47,14,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(152,48,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(153,48,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(154,48,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(155,49,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(156,49,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(157,49,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(158,49,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(159,49,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(160,50,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(161,50,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(162,50,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(163,50,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(164,51,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(165,52,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(166,52,15,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(167,53,16,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(168,53,16,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(169,54,16,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(170,54,16,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(171,54,16,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(172,54,16,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(173,54,16,0,'2024-02-28 10:06:22','2024-02-28 10:06:22'),(174,55,17,0,'2024-03-05 06:05:53','2024-03-05 06:05:53'),(175,56,17,0,'2024-03-05 08:22:17','2024-03-05 08:22:17'),(176,57,18,0,'2024-03-05 09:30:36','2024-03-05 09:30:36'),(177,58,19,0,'2024-03-08 03:08:23','2024-03-08 03:08:23'),(178,59,20,0,'2024-03-18 11:37:23','2024-03-18 11:37:23'),(179,59,20,0,'2024-03-18 11:37:23','2024-03-18 11:37:23'),(180,59,20,0,'2024-03-18 11:37:23','2024-03-18 11:37:23'),(181,59,20,0,'2024-03-18 11:37:23','2024-03-18 11:37:23'),(182,59,20,0,'2024-03-18 11:37:23','2024-03-18 11:37:23'),(183,59,20,0,'2024-03-18 11:37:23','2024-03-18 11:37:23'),(184,59,20,0,'2024-03-18 11:37:23','2024-03-18 11:37:23'),(186,61,22,0,'2024-03-18 11:41:25','2024-03-18 11:41:25'),(187,61,22,0,'2024-03-18 11:41:48','2024-03-18 11:41:48'),(188,61,22,0,'2024-03-18 11:41:48','2024-03-18 11:41:48'),(189,61,22,0,'2024-03-18 11:41:48','2024-03-18 11:41:48'),(190,61,22,0,'2024-03-18 11:41:48','2024-03-18 11:41:48');
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;
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