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
-- Table structure for table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `channel_id` int DEFAULT NULL,
  `promotion_coupon_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `shipping_address_id` int DEFAULT NULL,
  `billing_address_id` int DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int NOT NULL,
  `adjustments_total` int NOT NULL,
  `total` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_guest` tinyint(1) NOT NULL DEFAULT '1',
  `token_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F9BEA95C75` (`token_value`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
INSERT INTO `sylius_order` VALUES (1,1,NULL,15,2,3,'000000001',NULL,'fulfilled','2023-03-01 14:38:31',22118,470,22588,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'iSRb46RP0F',NULL),(2,1,NULL,6,5,6,'000000002',NULL,'fulfilled','2023-03-20 09:33:14',68033,470,68503,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'Pz4o2xbm2w',NULL),(3,1,NULL,16,8,9,'000000003',NULL,'fulfilled','2023-04-30 07:39:47',24800,981,25781,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'scbBGTXhY_',NULL),(4,1,NULL,14,11,12,'000000004',NULL,'fulfilled','2023-05-13 13:30:14',7683,911,8594,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'LYY4PcQyuV',NULL),(5,1,NULL,17,14,15,'000000005',NULL,'fulfilled','2023-05-16 22:38:01',43917,0,43917,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'eZbIuoSx_T',NULL),(6,1,NULL,15,17,18,'000000006',NULL,'fulfilled','2023-07-07 05:16:25',55923,470,56393,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'lEJew83HIU',NULL),(7,1,NULL,15,20,21,'000000007',NULL,'fulfilled','2023-09-08 09:56:58',3675,981,4656,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'n2pqQS391B',NULL),(8,1,NULL,13,23,24,'000000008',NULL,'fulfilled','2023-09-10 00:23:16',19739,981,20720,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'q-hb~35BS2',NULL),(9,1,NULL,6,26,27,'000000009','Est incidunt omnis omnis consequuntur.','fulfilled','2023-10-01 11:16:47',62585,470,63055,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'pnadWEmFyu',NULL),(10,1,NULL,9,29,30,'000000010',NULL,'fulfilled','2023-11-08 07:38:19',151729,0,151729,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'9CLlJqAGyu',NULL),(11,1,NULL,9,32,33,'000000011',NULL,'fulfilled','2023-11-13 03:13:37',61584,911,62495,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'-FvjPUnvtj',NULL),(12,1,NULL,9,35,36,'000000012',NULL,'fulfilled','2023-12-18 13:52:12',54722,470,55192,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','paid','shipped',1,'Uv86u8A9YX',NULL),(13,1,NULL,10,38,39,'000000013','Reprehenderit ex error tenetur voluptatem eligendi.','new','2023-06-22 09:11:41',22153,911,23064,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','awaiting_payment','ready',1,'T70P_XVnet',NULL),(14,1,NULL,4,41,42,'000000014',NULL,'new','2023-06-26 11:54:19',35797,911,36708,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','awaiting_payment','ready',1,'Di3YN3Y065',NULL),(15,1,NULL,19,44,45,'000000015',NULL,'new','2023-07-28 23:41:42',59925,0,59925,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','awaiting_payment','shipped',1,'VVbBjWL8zl',NULL),(16,1,NULL,11,47,48,'000000016','Totam voluptate amet natus officiis porro alias.','new','2023-09-09 02:35:46',31357,0,31357,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','awaiting_payment','shipped',1,'bJ94n5Miyk',NULL),(17,1,NULL,11,50,51,'000000017',NULL,'new','2023-09-21 00:32:40',123813,470,124283,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','awaiting_payment','ready',1,'IxhvqVYWVQ',NULL),(18,1,NULL,12,53,54,'000000018',NULL,'new','2023-09-28 07:42:49',21552,981,22533,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','awaiting_payment','ready',1,'UHxxaSNF4w',NULL),(19,1,NULL,16,56,57,'000000019',NULL,'new','2023-11-14 22:34:53',59246,981,60227,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','awaiting_payment','ready',1,'QG-pZqBfax',NULL),(20,1,NULL,21,59,60,'000000020',NULL,'new','2023-12-10 08:21:53',14951,911,15862,'2024-02-28 10:06:22','2024-02-28 10:06:22','USD','en_US','completed','awaiting_payment','ready',1,'PXnrXqEp2V',NULL),(21,1,NULL,1,71,72,'000000021',NULL,'fulfilled','2024-03-05 08:24:35',6229,0,6229,'2024-03-05 06:05:53','2024-03-05 08:25:30','USD','en_US','completed','paid','shipped',0,'j3JEIhmWzi','127.0.0.1'),(22,1,NULL,1,74,75,'000000022',NULL,'new','2024-03-05 09:31:03',1000,0,1000,'2024-03-05 09:30:36','2024-03-05 09:31:03','USD','en_US','completed','awaiting_payment','ready',0,'VA5GmdD2ms','127.0.0.1'),(23,1,NULL,1,76,77,'000000023',NULL,'new','2024-03-08 03:11:01',1000,0,1000,'2024-03-08 03:08:23','2024-03-08 03:11:01','USD','en_US','completed','awaiting_payment','ready',0,'MWMxp9nzTa','127.0.0.1'),(24,1,NULL,1,78,79,'000000024',NULL,'new','2024-03-18 11:37:55',7000,0,7000,'2024-03-18 11:37:23','2024-03-18 11:37:55','THB','en_US','completed','awaiting_payment','ready',0,'aqaWSZkoIq','127.0.0.1'),(25,1,NULL,1,80,81,'000000025',NULL,'new','2024-03-18 11:42:03',5000,0,5000,'2024-03-18 11:41:11','2024-03-18 11:42:56','THB','en_US','completed','awaiting_payment','shipped',0,'AUQ7BC-bqv','127.0.0.1');
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;
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
