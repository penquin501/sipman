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
-- Table structure for table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shop_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_user`
--

LOCK TABLES `sylius_shop_user` WRITE;
/*!40000 ALTER TABLE `sylius_shop_user` DISABLE KEYS */;
INSERT INTO `sylius_shop_user` VALUES (1,1,'shop@example.com','shop@example.com',1,'8ry6zdjarbk8k0wo08ckw8csockocsw','$argon2i$v=19$m=65536,t=4,p=1$RFRZc0VTV2Q2MUFIcnBDSw$6tdmRQpjEnDpGksFZtkRDfsDw6c/GExNX/yvdrkiFH4','argon2i','2024-03-22 14:08:13',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:18','2024-03-22 14:08:13'),(2,2,'emerald05@yahoo.com','emerald05@yahoo.com',1,'3msk33u6pxa8o8w04cs84cco80sckcw','$argon2i$v=19$m=65536,t=4,p=1$ZnhpSXR3cC9XWVBXNGJzYg$J3jLUfMIN+cwK6TDuxZV5kz3eovLWxSXQeM5tZJwOZ0','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:18','2024-02-28 10:06:18'),(3,3,'shemar02@gmail.com','shemar02@gmail.com',1,'4ffb6lfgcnmsocgwwgcgoggw8wo4wcg','$argon2i$v=19$m=65536,t=4,p=1$cWxhZEpkS29weFlLemkxaw$udfGmPlvN5BPWn5ZClr2J0kmmHFqqd09BxFHTsQ8PUI','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:18','2024-02-28 10:06:18'),(4,4,'coleman78@schulist.com','coleman78@schulist.com',1,'gl3sx1dc0sg00s08sgs0go884kkooos','$argon2i$v=19$m=65536,t=4,p=1$L1NiUHZYMy5Xa2wxQWpTcA$cPMCF9RPbu4R+FDEMUhJ/AWtW7MMChHVIM4QfQxhodw','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:18','2024-02-28 10:06:18'),(5,5,'ayden52@gmail.com','ayden52@gmail.com',1,'jonp5g4vesoogk0kocccokwcs08kko4','$argon2i$v=19$m=65536,t=4,p=1$ZWtmaTFkWEFsbGN0NjI1QQ$seNU93b4s0Ea9vlSjTNnrcw71Kqav6dDiWCcxol97SE','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:18','2024-02-28 10:06:18'),(6,6,'rmraz@yahoo.com','rmraz@yahoo.com',1,'kzucqxyg8a8swswocgo0wwocwww84gc','$argon2i$v=19$m=65536,t=4,p=1$YUVuOXIxZkFPSWZSSE9GZg$hn5DtP7ZYbM+lzPsF4W0KdXy6rYndoZGeJa4+QNzh/U','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:18','2024-02-28 10:06:19'),(7,7,'wehner.evan@bailey.com','wehner.evan@bailey.com',1,'am7tg2oji680o8c84c4c4sssoggg08c','$argon2i$v=19$m=65536,t=4,p=1$alRMT1pkOGZEM1RTRzlwYw$nSUu3Axi+FjAaYJJHUUQX6kL3NOfgGfD06ZBxgRa87c','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:19','2024-02-28 10:06:19'),(8,8,'ward95@gleichner.net','ward95@gleichner.net',1,'dkxtb7wvdy0cs0kk80g8cco8ckswoks','$argon2i$v=19$m=65536,t=4,p=1$TnZwMEtUUmtIYjdPNmFzZQ$yGRI6mIGH7BMFQ2k2pnJCve999NkENH+MglFELu8A2c','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:19','2024-02-28 10:06:19'),(9,9,'judge14@hotmail.com','judge14@hotmail.com',1,'kbat1lktus08cogw0cskk8k8g40wgcg','$argon2i$v=19$m=65536,t=4,p=1$bjhKVHZpUnRVVzJqRTkzQw$Ksm5ilSLlrdY+hsZMwRFQ3onQWxL6Y2Y4c/0F8A9H08','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:19','2024-02-28 10:06:19'),(10,10,'hayes.chelsey@trantow.biz','hayes.chelsey@trantow.biz',1,'ab7tpjjqd340g084cc04co08ccscwco','$argon2i$v=19$m=65536,t=4,p=1$REIzS3lwMXJnMGYyL3Z4Sw$RoW1K6NcCPn8Ahm1ujA7bbwv0xupFX8rPl4GhSlN948','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:19','2024-02-28 10:06:19'),(11,11,'gregory.russel@jakubowski.info','gregory.russel@jakubowski.info',1,'8cdao0u61uccw0o444k0ggocs4o44oo','$argon2i$v=19$m=65536,t=4,p=1$TWNZLmYwdUd6OEYyL3hWRg$cWXi/6qIsfsQ5AsPq5HN7w4ecE9akH6xV1/c2e17Vmg','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:19','2024-02-28 10:06:20'),(12,12,'oconner.aileen@dooley.com','oconner.aileen@dooley.com',1,'iyavpscy9igok4osogs80g8gcwg804s','$argon2i$v=19$m=65536,t=4,p=1$Y21UNHRseE1WcWpGNjVydQ$ceTNPuhy1YzWZZy6ycGPhcsZWxGGcc3IJeCe4/WfSr8','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:20','2024-02-28 10:06:20'),(13,13,'dasia72@hotmail.com','dasia72@hotmail.com',1,'rtz3d0jsu3kkc44o48wc4oksg80sk4c','$argon2i$v=19$m=65536,t=4,p=1$dVBOc2lndTBNOVYyMEVXeQ$u84d/tjIomJcI0RiS4D/oJdd+7lA1BuZT66hJGKyaMs','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:20','2024-02-28 10:06:20'),(14,14,'beier.schuyler@strosin.com','beier.schuyler@strosin.com',1,'t1ko90fdu1w4os8cc4g8kgwgocwwow4','$argon2i$v=19$m=65536,t=4,p=1$dUpxVHdkbFJKUHIzMEtIMw$97dMo3+evib8NIkAmI63x7AuxV0UE13t/zntHnqd/lw','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:20','2024-02-28 10:06:20'),(15,15,'kaden71@yahoo.com','kaden71@yahoo.com',1,'fttnu6an50oo4wwsgk4g4okswkwkk84','$argon2i$v=19$m=65536,t=4,p=1$SU0zNjV1SzVkTnhiSnNFUg$hoqUZHyFVqhvFzh4JSQy88RaVcb7Qrdad87cq5lg47A','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:20','2024-02-28 10:06:20'),(16,16,'chris.rutherford@huels.info','chris.rutherford@huels.info',1,'qlcx4ipkhsg84ggsoock88skk8w40g8','$argon2i$v=19$m=65536,t=4,p=1$ZWdSNjhoSVhIRS5YY2hRMA$xn6dtakp6ti/ca0LOQxXOJEjTfb/Gw4RbWohK1YfzjM','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:20','2024-02-28 10:06:20'),(17,17,'thelma.shanahan@ortiz.biz','thelma.shanahan@ortiz.biz',1,'n8ulxyx3x34w8kgow0w8w0g4kkc4o8k','$argon2i$v=19$m=65536,t=4,p=1$WUxZLjU5cWRMZlNSMXNJbA$iy3xMd5X8zI9gqv2yneSmV5qAl65s5NeuAZPj6siNWc','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:20','2024-02-28 10:06:21'),(18,18,'lowe.marvin@gmail.com','lowe.marvin@gmail.com',1,'9tpias3dtu88gk4o8skkos0g8s84cgc','$argon2i$v=19$m=65536,t=4,p=1$VzNuS05hNEFUQ1RrTkdocA$OuLywEMy+pggwqPALYFnbSBvzSY4T4gHrGaTzpGU9zM','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:21','2024-02-28 10:06:21'),(19,19,'koby30@graham.org','koby30@graham.org',1,'t24jqq3y0u84kc0sgwog4wgk8kw0ow8','$argon2i$v=19$m=65536,t=4,p=1$Ni5ybnB1bEhvSWpBOWVENA$gyOJ+8sKSXd3dGWeNHN0et5TXg9A5D71RNyoqhF4xow','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:21','2024-02-28 10:06:21'),(20,20,'antonetta.ernser@moen.biz','antonetta.ernser@moen.biz',1,'922blva6v5csowg0kogw0c48w4s8w0k','$argon2i$v=19$m=65536,t=4,p=1$akYzeGtWc1VoZm51TWN4Yg$vaBWHoI+WailWtNRbR4TTaxdaClqh3jczu9YejtXVW0','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:21','2024-02-28 10:06:21'),(21,21,'sauer.trinity@langosh.com','sauer.trinity@langosh.com',1,'k4122to0vtc8c00s8000g0ok8okg844','$argon2i$v=19$m=65536,t=4,p=1$WXlUSkNHL1hrY0wzai5jdw$uoLm5PYKleIAcRUs7Et+iTHgsuSGFMJ+uNwidH11+E8','argon2i',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2024-02-28 10:06:21','2024-02-28 10:06:21');
/*!40000 ALTER TABLE `sylius_shop_user` ENABLE KEYS */;
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
