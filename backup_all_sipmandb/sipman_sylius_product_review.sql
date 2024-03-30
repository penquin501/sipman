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
-- Table structure for table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_review`
--

LOCK TABLES `sylius_product_review` WRITE;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
INSERT INTO `sylius_product_review` VALUES (1,4,10,'veritatis sed ad',5,'Ducimus recusandae laborum labore quo libero ut. Et aut porro officiis et inventore. Unde reprehenderit laudantium aspernatur aut.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(2,6,5,'officia dolorem rerum',2,'Est veritatis facere dicta architecto. Est commodi enim ut laudantium aspernatur nostrum. Et sunt necessitatibus vitae laudantium sed.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(3,9,17,'vitae modi sapiente',5,'Sed sit totam consequatur velit quo. Nihil quod molestiae distinctio quis suscipit tempora omnis. Eius nobis quibusdam voluptatem aut.','accepted','2024-02-28 10:06:22','2024-02-28 10:06:22'),(4,10,3,'non quia dolor',5,'Cupiditate nihil voluptates sint voluptas. Illo perspiciatis fuga incidunt nesciunt illo eligendi. Id aliquid dolor vero.','accepted','2024-02-28 10:06:22','2024-02-28 10:06:22'),(5,20,10,'sequi dolor praesentium',5,'Vero architecto est qui vitae. Molestiae animi qui veritatis possimus. Accusamus veniam laudantium qui optio quia.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(6,1,14,'distinctio qui at',2,'Dignissimos quia aut adipisci quae eos. Voluptatem alias aperiam quas aspernatur omnis aut corporis. Praesentium perspiciatis labore aut culpa nulla fugiat debitis.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(7,9,11,'ut et aut',4,'Sequi cumque qui sequi soluta et quia quia. Vitae impedit iste omnis nostrum. Iste veniam incidunt veritatis voluptatem officia suscipit.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(8,15,13,'nihil est quia',2,'Recusandae rerum in voluptatem quos. Blanditiis velit commodi optio rerum. Omnis maiores id molestias et.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(9,2,18,'provident illo facere',4,'Esse est harum similique. Nesciunt accusantium velit error dolore. Deleniti veritatis quis ea amet minima necessitatibus.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(10,14,12,'beatae veritatis non',1,'Recusandae consequuntur voluptatem quia. Cupiditate ut qui ab explicabo non. Autem dolor provident iusto exercitationem ipsa et.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(11,19,5,'eos nihil culpa',5,'Hic error quae odit sit praesentium. Magni dolorum similique assumenda voluptas velit recusandae qui consequatur. Totam esse nihil quis.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(12,5,15,'voluptate qui commodi',1,'Perspiciatis omnis delectus est accusamus porro dolorem numquam. Mollitia quis doloribus vel aut commodi enim iure. Quia debitis quis corrupti accusamus quia.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(13,15,19,'enim aliquam recusandae',3,'Reprehenderit eveniet aliquam vel illum eligendi. Maxime laborum dicta dolorem commodi sapiente in sequi. Saepe perspiciatis accusantium magni cupiditate et quasi harum.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(14,20,13,'et cumque quo',4,'Est quod enim dolorem non labore asperiores aut. Et voluptas esse eum enim enim debitis. Est eveniet sit nobis et nihil commodi.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(15,12,10,'perferendis aut saepe',4,'Hic voluptatem cum quisquam qui asperiores. Repellendus rerum illum reprehenderit eligendi recusandae est. Ea hic dolores magnam in omnis.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(16,10,19,'culpa quod praesentium',5,'Molestias nemo quae dolor optio. Qui nemo doloremque sed et deleniti. Temporibus repellendus beatae neque dolore id reprehenderit.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(17,3,7,'non at voluptas',1,'Aliquid eos reprehenderit quos. Sit exercitationem enim tempore quaerat. Adipisci sunt assumenda hic rerum autem inventore consequuntur totam.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(18,19,2,'dolor voluptatem enim',5,'Harum qui repudiandae ullam atque alias eaque id. Quis saepe nemo consequatur expedita. Rerum nam enim modi consequatur repudiandae iste nihil est.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(19,4,7,'ut nihil rerum',2,'Est quia quibusdam ipsum consectetur. Ipsum et sapiente velit sunt nihil quod. Voluptatem quis est sed consequatur dolorem.','accepted','2024-02-28 10:06:22','2024-02-28 10:06:22'),(20,12,8,'dolores dicta ut',5,'Voluptas nulla animi qui laudantium quaerat quia perspiciatis. Nihil id expedita id dolorem. Et et dignissimos error aliquid sequi vero voluptatem velit.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(21,16,13,'labore enim cupiditate',4,'Tempora et doloremque et eius. Explicabo optio quasi omnis excepturi. A asperiores consequatur magnam beatae aliquid id excepturi.','accepted','2024-02-28 10:06:22','2024-02-28 10:06:22'),(22,11,6,'et in totam',2,'Unde libero rerum accusamus dolores sunt in. Molestiae consectetur rem soluta quod odio beatae beatae ut. Ullam corrupti ut et sit laudantium.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(23,6,13,'quia laudantium itaque',5,'Autem enim deserunt consequatur repellat praesentium ut quis impedit. Qui veniam neque unde ut dolorem commodi. Consequatur doloremque earum saepe velit.','accepted','2024-02-28 10:06:22','2024-02-28 10:06:22'),(24,10,7,'blanditiis molestiae illum',5,'Repudiandae quidem qui voluptas ipsum. Sapiente optio et velit. Consequatur ex occaecati reiciendis adipisci ut.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(25,19,18,'dignissimos culpa eligendi',5,'Culpa ea sed tempora. Hic ut omnis iste quis et. Ut ut atque nesciunt ab et voluptatem molestiae repudiandae.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(26,21,1,'porro sint corporis',3,'Consequuntur culpa ipsa dolores voluptas corporis sint. Perspiciatis molestiae culpa odio asperiores. Est eius rerum enim excepturi quam eos.','accepted','2024-02-28 10:06:22','2024-02-28 10:06:22'),(27,17,4,'qui assumenda ab',5,'Reprehenderit voluptatem porro officiis. Qui laboriosam et iste rerum omnis nihil atque modi. Aut deleniti quia qui a.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(28,2,13,'autem perspiciatis aut',4,'Et sit id recusandae aut in et. Facere non corporis repellat dolores totam. Doloribus molestiae rerum impedit consequatur quo.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(29,21,15,'reiciendis facilis culpa',2,'Necessitatibus aut distinctio aspernatur ullam. Et qui voluptatem laboriosam laboriosam in sequi eaque. Sint sequi veniam itaque quia sint praesentium doloribus.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(30,5,4,'deserunt inventore quae',2,'Repellendus autem suscipit quia exercitationem. Aliquid illo laboriosam iure reprehenderit eveniet. Explicabo cupiditate ullam omnis rerum quidem a distinctio.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(31,4,5,'aut ut maiores',2,'Perspiciatis similique dicta excepturi deleniti qui consequatur eum aut. Inventore tempora modi quaerat corporis delectus sit alias impedit. Voluptas repellendus vel ab aut dolor.','accepted','2024-02-28 10:06:22','2024-02-28 10:06:22'),(32,20,2,'expedita in labore',2,'Quo similique eum incidunt esse ut incidunt quis. Dolorem porro omnis qui officiis mollitia voluptate. Laudantium esse at quam.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(33,10,21,'ea minus quia',5,'Numquam et modi velit. Ab earum dolorum perferendis. Fugiat cum reprehenderit odit necessitatibus consequatur vel aut et.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(34,3,8,'tenetur delectus totam',1,'Voluptatem accusantium voluptas quae ipsa non sit omnis id. Sunt sapiente deleniti temporibus nihil est neque recusandae. Fugit in libero sint placeat.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(35,13,4,'maiores necessitatibus nulla',2,'Sunt doloribus molestiae nobis veritatis voluptas eaque facere. Mollitia quos tenetur qui consectetur. Ipsa maiores aut eum exercitationem explicabo.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(36,4,14,'explicabo sed sed',1,'Est inventore quae aliquid aut repellat suscipit. Maiores dolores numquam neque debitis voluptates reprehenderit rerum. At ipsam deleniti qui molestiae quis ut autem temporibus.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(37,19,17,'dolore beatae ea',4,'Enim neque illum et. Quae in delectus reiciendis aut. Vitae ea facilis quia sint laboriosam alias sunt commodi.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(38,11,8,'corrupti quibusdam esse',5,'Earum laborum quia et eligendi esse dolores. Dolorum fuga voluptatem aut pariatur veniam ut corrupti. Eaque ratione molestias veritatis nemo autem illum magnam tempore.','new','2024-02-28 10:06:22','2024-02-28 10:06:22'),(39,4,17,'ut in sed',3,'Eos voluptatem ipsum dolores officiis alias doloremque quia. Odio dolorem voluptatem accusantium voluptatum aspernatur dolores magnam. Dolorem animi dolores similique.','rejected','2024-02-28 10:06:22','2024-02-28 10:06:22'),(40,9,6,'fuga quia accusantium',2,'Sint quaerat voluptas itaque voluptatem qui at. Corporis aut autem reprehenderit est accusamus aut. Recusandae ipsa suscipit eum omnis.','new','2024-02-28 10:06:22','2024-02-28 10:06:22');
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;
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
