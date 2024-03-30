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
-- Table structure for table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
INSERT INTO `sylius_address` VALUES (1,15,'Juvenal','Bernier',NULL,'682 Alena Spurs',NULL,'Deionberg','41147-4020','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(2,NULL,'Juvenal','Bernier',NULL,'682 Alena Spurs',NULL,'Deionberg','41147-4020','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(3,NULL,'Juvenal','Bernier',NULL,'682 Alena Spurs',NULL,'Deionberg','41147-4020','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(4,6,'Angeline','Stokes',NULL,'8147 Adonis Village Apt. 199',NULL,'Angietown','60180-1479','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(5,NULL,'Angeline','Stokes',NULL,'8147 Adonis Village Apt. 199',NULL,'Angietown','60180-1479','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(6,NULL,'Angeline','Stokes',NULL,'8147 Adonis Village Apt. 199',NULL,'Angietown','60180-1479','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(7,16,'Sherman','Gerlach',NULL,'97828 Rosalia Curve Suite 252',NULL,'Lake Demetris','66722-3110','2024-02-28 10:06:22','2024-02-28 10:06:22','CN',NULL,NULL),(8,NULL,'Sherman','Gerlach',NULL,'97828 Rosalia Curve Suite 252',NULL,'Lake Demetris','66722-3110','2024-02-28 10:06:22','2024-02-28 10:06:22','CN',NULL,NULL),(9,NULL,'Sherman','Gerlach',NULL,'97828 Rosalia Curve Suite 252',NULL,'Lake Demetris','66722-3110','2024-02-28 10:06:22','2024-02-28 10:06:22','CN',NULL,NULL),(10,14,'Soledad','Stark',NULL,'93498 Joy Brooks',NULL,'North Guyport','58087','2024-02-28 10:06:22','2024-02-28 10:06:22','DE',NULL,NULL),(11,NULL,'Soledad','Stark',NULL,'93498 Joy Brooks',NULL,'North Guyport','58087','2024-02-28 10:06:22','2024-02-28 10:06:22','DE',NULL,NULL),(12,NULL,'Soledad','Stark',NULL,'93498 Joy Brooks',NULL,'North Guyport','58087','2024-02-28 10:06:22','2024-02-28 10:06:22','DE',NULL,NULL),(13,17,'Margie','Gislason',NULL,'646 Dario Lodge',NULL,'Port Elyse','04915','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(14,NULL,'Margie','Gislason',NULL,'646 Dario Lodge',NULL,'Port Elyse','04915','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(15,NULL,'Margie','Gislason',NULL,'646 Dario Lodge',NULL,'Port Elyse','04915','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(16,15,'Clementina','Koepp',NULL,'626 Ullrich Street',NULL,'Feestfurt','98838-8825','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(17,NULL,'Clementina','Koepp',NULL,'626 Ullrich Street',NULL,'Feestfurt','98838-8825','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(18,NULL,'Clementina','Koepp',NULL,'626 Ullrich Street',NULL,'Feestfurt','98838-8825','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(19,15,'Destiney','Pfeffer',NULL,'7571 Armani Wells',NULL,'Port Piper','48556','2024-02-28 10:06:22','2024-02-28 10:06:22','CA',NULL,NULL),(20,NULL,'Destiney','Pfeffer',NULL,'7571 Armani Wells',NULL,'Port Piper','48556','2024-02-28 10:06:22','2024-02-28 10:06:22','CA',NULL,NULL),(21,NULL,'Destiney','Pfeffer',NULL,'7571 Armani Wells',NULL,'Port Piper','48556','2024-02-28 10:06:22','2024-02-28 10:06:22','CA',NULL,NULL),(22,13,'Willard','Weissnat',NULL,'70851 Auer Coves',NULL,'New Malika','48762-4315','2024-02-28 10:06:22','2024-02-28 10:06:22','NZ',NULL,NULL),(23,NULL,'Willard','Weissnat',NULL,'70851 Auer Coves',NULL,'New Malika','48762-4315','2024-02-28 10:06:22','2024-02-28 10:06:22','NZ',NULL,NULL),(24,NULL,'Willard','Weissnat',NULL,'70851 Auer Coves',NULL,'New Malika','48762-4315','2024-02-28 10:06:22','2024-02-28 10:06:22','NZ',NULL,NULL),(25,6,'Marielle','Feil',NULL,'439 Kianna Parks',NULL,'Vidalburgh','90559-3663','2024-02-28 10:06:22','2024-02-28 10:06:22','PL',NULL,NULL),(26,NULL,'Marielle','Feil',NULL,'439 Kianna Parks',NULL,'Vidalburgh','90559-3663','2024-02-28 10:06:22','2024-02-28 10:06:22','PL',NULL,NULL),(27,NULL,'Marielle','Feil',NULL,'439 Kianna Parks',NULL,'Vidalburgh','90559-3663','2024-02-28 10:06:22','2024-02-28 10:06:22','PL',NULL,NULL),(28,9,'Timmy','Schmeler',NULL,'74329 Corrine Highway',NULL,'Kyliehaven','44820','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(29,NULL,'Timmy','Schmeler',NULL,'74329 Corrine Highway',NULL,'Kyliehaven','44820','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(30,NULL,'Timmy','Schmeler',NULL,'74329 Corrine Highway',NULL,'Kyliehaven','44820','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(31,9,'Junius','Becker',NULL,'9874 Rusty Inlet Suite 260',NULL,'Flatleyshire','63797','2024-02-28 10:06:22','2024-02-28 10:06:22','FR',NULL,NULL),(32,NULL,'Junius','Becker',NULL,'9874 Rusty Inlet Suite 260',NULL,'Flatleyshire','63797','2024-02-28 10:06:22','2024-02-28 10:06:22','FR',NULL,NULL),(33,NULL,'Junius','Becker',NULL,'9874 Rusty Inlet Suite 260',NULL,'Flatleyshire','63797','2024-02-28 10:06:22','2024-02-28 10:06:22','FR',NULL,NULL),(34,9,'Ludie','Hackett',NULL,'82007 Huels Valleys Suite 866',NULL,'Gillianport','62437-3763','2024-02-28 10:06:22','2024-02-28 10:06:22','CN',NULL,NULL),(35,NULL,'Ludie','Hackett',NULL,'82007 Huels Valleys Suite 866',NULL,'Gillianport','62437-3763','2024-02-28 10:06:22','2024-02-28 10:06:22','CN',NULL,NULL),(36,NULL,'Ludie','Hackett',NULL,'82007 Huels Valleys Suite 866',NULL,'Gillianport','62437-3763','2024-02-28 10:06:22','2024-02-28 10:06:22','CN',NULL,NULL),(37,10,'Martin','Kutch',NULL,'3180 Maggie Stravenue Apt. 391',NULL,'Runtechester','08526','2024-02-28 10:06:22','2024-02-28 10:06:22','GB',NULL,NULL),(38,NULL,'Martin','Kutch',NULL,'3180 Maggie Stravenue Apt. 391',NULL,'Runtechester','08526','2024-02-28 10:06:22','2024-02-28 10:06:22','GB',NULL,NULL),(39,NULL,'Martin','Kutch',NULL,'3180 Maggie Stravenue Apt. 391',NULL,'Runtechester','08526','2024-02-28 10:06:22','2024-02-28 10:06:22','GB',NULL,NULL),(40,4,'Cordelia','Emard',NULL,'68126 Halvorson Mission Suite 368',NULL,'North Eli','60550','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(41,NULL,'Cordelia','Emard',NULL,'68126 Halvorson Mission Suite 368',NULL,'North Eli','60550','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(42,NULL,'Cordelia','Emard',NULL,'68126 Halvorson Mission Suite 368',NULL,'North Eli','60550','2024-02-28 10:06:22','2024-02-28 10:06:22','PT',NULL,NULL),(43,19,'Jacques','Cole',NULL,'2484 Maggio Keys',NULL,'North Dejahmouth','43399','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(44,NULL,'Jacques','Cole',NULL,'2484 Maggio Keys',NULL,'North Dejahmouth','43399','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(45,NULL,'Jacques','Cole',NULL,'2484 Maggio Keys',NULL,'North Dejahmouth','43399','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(46,11,'Dorcas','Monahan',NULL,'1576 Ova Manor Apt. 855',NULL,'New Jacky','50686','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(47,NULL,'Dorcas','Monahan',NULL,'1576 Ova Manor Apt. 855',NULL,'New Jacky','50686','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(48,NULL,'Dorcas','Monahan',NULL,'1576 Ova Manor Apt. 855',NULL,'New Jacky','50686','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(49,11,'Lila','Waters',NULL,'9941 Vinnie Crossroad',NULL,'West Michale','18156','2024-02-28 10:06:22','2024-02-28 10:06:22','DE',NULL,NULL),(50,NULL,'Lila','Waters',NULL,'9941 Vinnie Crossroad',NULL,'West Michale','18156','2024-02-28 10:06:22','2024-02-28 10:06:22','DE',NULL,NULL),(51,NULL,'Lila','Waters',NULL,'9941 Vinnie Crossroad',NULL,'West Michale','18156','2024-02-28 10:06:22','2024-02-28 10:06:22','DE',NULL,NULL),(52,12,'Osborne','Shields',NULL,'978 Naomie Roads Apt. 250',NULL,'Port Muhammadchester','16211-9290','2024-02-28 10:06:22','2024-02-28 10:06:22','CN',NULL,NULL),(53,NULL,'Osborne','Shields',NULL,'978 Naomie Roads Apt. 250',NULL,'Port Muhammadchester','16211-9290','2024-02-28 10:06:22','2024-02-28 10:06:22','CN',NULL,NULL),(54,NULL,'Osborne','Shields',NULL,'978 Naomie Roads Apt. 250',NULL,'Port Muhammadchester','16211-9290','2024-02-28 10:06:22','2024-02-28 10:06:22','CN',NULL,NULL),(55,16,'Joe','Koelpin',NULL,'10489 Alanna Crossing Apt. 068',NULL,'Walkerbury','72295-1511','2024-02-28 10:06:22','2024-02-28 10:06:22','DE',NULL,NULL),(56,NULL,'Joe','Koelpin',NULL,'10489 Alanna Crossing Apt. 068',NULL,'Walkerbury','72295-1511','2024-02-28 10:06:22','2024-02-28 10:06:22','DE',NULL,NULL),(57,NULL,'Joe','Koelpin',NULL,'10489 Alanna Crossing Apt. 068',NULL,'Walkerbury','72295-1511','2024-02-28 10:06:22','2024-02-28 10:06:22','DE',NULL,NULL),(58,21,'Hollie','Herman',NULL,'563 Moen Hills Suite 552',NULL,'Rogerbury','23549','2024-02-28 10:06:22','2024-02-28 10:06:22','AU',NULL,NULL),(59,NULL,'Hollie','Herman',NULL,'563 Moen Hills Suite 552',NULL,'Rogerbury','23549','2024-02-28 10:06:22','2024-02-28 10:06:22','AU',NULL,NULL),(60,NULL,'Hollie','Herman',NULL,'563 Moen Hills Suite 552',NULL,'Rogerbury','23549','2024-02-28 10:06:22','2024-02-28 10:06:22','AU',NULL,NULL),(61,10,'Rosalia','Beer','+1-518-854-0912','98768 Heathcote Drives Suite 023','Windler LLC','Krisshire','69783','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(62,18,'Norbert','Jones','720-820-7447','30285 Abel Glen Apt. 725','Jerde-Nader','East Dwight','24907','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(63,10,'Allie','Buckridge','781.564.8768','660 Floy Trail','Emmerich-Parisian','Sporerport','42685','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(64,1,'Melody','Feeney','909-979-2979','1679 Drew Station Suite 680',NULL,'Lebsackberg','62491','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(65,10,'Hilario','Thiel','+1-732-503-1085','27548 Riley Estates',NULL,'New Jayceeburgh','57141-9268','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(66,7,'Betsy','Gerhold',NULL,'66021 Swaniawski Dam Apt. 326','Gerhold, Lakin and Mosciski','Casandratown','46790-4480','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(67,14,'Casper','Prosacco',NULL,'364 Alexandra Lodge Suite 124',NULL,'Hannahview','93569','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(68,15,'Katlyn','Bogan','458-382-7779','7180 Gerhold Passage',NULL,'West Addie','94235-6910','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(69,18,'Sienna','Walsh',NULL,'524 Mariela Curve','Legros Inc','Hermanmouth','74494-2335','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(70,20,'Marisol','Price',NULL,'799 Ashton Isle',NULL,'Laylafurt','33147','2024-02-28 10:06:22','2024-02-28 10:06:22','US',NULL,NULL),(71,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-05 06:07:08','2024-03-05 06:07:08','US',NULL,NULL),(72,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-05 06:07:08','2024-03-05 06:07:08','US',NULL,NULL),(73,1,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-05 06:07:08','2024-03-05 06:07:08','US',NULL,NULL),(74,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-05 09:30:54','2024-03-05 09:30:54','US',NULL,NULL),(75,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-05 09:30:54','2024-03-05 09:30:54','US',NULL,NULL),(76,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-08 03:10:40','2024-03-08 03:10:40','US',NULL,NULL),(77,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-08 03:10:40','2024-03-08 03:10:40','US',NULL,NULL),(78,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-18 11:37:47','2024-03-18 11:37:47','US',NULL,NULL),(79,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-18 11:37:47','2024-03-18 11:37:47','US',NULL,NULL),(80,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-18 11:41:55','2024-03-18 11:41:55','US',NULL,NULL),(81,NULL,'Nattharee','Pisarnsathukit',NULL,'60',NULL,'New York','11111','2024-03-18 11:41:55','2024-03-18 11:41:55','US',NULL,NULL);
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;
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
