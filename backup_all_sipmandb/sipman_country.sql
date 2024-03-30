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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `Code` varchar(6) NOT NULL,
  `Country` varchar(16) NOT NULL,
  `Parent` varchar(30) DEFAULT NULL,
  `Slug` varchar(16) NOT NULL,
  `Pays` varchar(19) NOT NULL,
  `TH_Country` varchar(18) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('COU-1','South Africa',NULL,'south-africa','Afrique du Sud','แอฟริกาใต้'),('COU-10','Brazil',NULL,'brazil','Brésil','บราซิล'),('COU-11','Bulgaria',NULL,'bulgaria','Bulgarie','บัลแกเรีย'),('COU-12','Canada',NULL,'canada','Canada','แคนาดา'),('COU-13','Chile',NULL,'chile','Chili','ชิลี'),('COU-14','China',NULL,'china','Chine','จีน'),('COU-15','Cyprus',NULL,'cyprus','Chypre','ไซปรัส'),('COU-16','Croatia',NULL,'croatia','Croatie','โครเอเชีย'),('COU-17','Spain',NULL,'spain','Espagne','สเปน'),('COU-18','USA',NULL,'usa','États-Unis','สหรัฐอเมริกา'),('COU-19','France',NULL,'france','France','ฝรั่งเศส'),('COU-2','Algeria',NULL,'algeria','Algérie','ประเทศแอลจีเรีย'),('COU-20','Georgia',NULL,'georgia','Géorgie','รัฐจอร์เจีย'),('COU-21','Greece',NULL,'greece','Grèce','กรีซ'),('COU-22','Hungary',NULL,'hungary','Hongrie','ฮังการี'),('COU-23','India',NULL,'india','Inde','อินเดีย'),('COU-24','Indonesia',NULL,'indonesia','Indonésie','ประเทศอินโดนีเซีย'),('COU-25','Israel',NULL,'israel','Israël','ประเทศอิสราเอล'),('COU-26','Italy',NULL,'italy','Italie','อิตาลี'),('COU-27','Japan',NULL,'japan','Japon','ประเทศญี่ปุ่น'),('COU-28','Jordan',NULL,'jordan','Jordanie','จอร์แดน'),('COU-29','Kosovo',NULL,'kosovo','Kosovo','โคโซโว'),('COU-3','Germany',NULL,'germany','Allemagne','ประเทศเยอรมนี'),('COU-30','Lebanon',NULL,'lebanon','Liban','ชาวเลบานอน'),('COU-31','Luxembourg',NULL,'luxembourg','Luxembourg','ลักเซมเบิร์ก'),('COU-32','Macedonia',NULL,'macedonia','Macédoine','มาซิโดเนีย'),('COU-33','Malta',NULL,'malta','Malte','มอลตา'),('COU-34','Morocco',NULL,'morocco','Maroc','ประเทศโมร็อกโก'),('COU-35','Mexico',NULL,'mexico','Mexique','เม็กซิโก'),('COU-36','Moldova',NULL,'moldova','Moldavie','มอลโดวา'),('COU-37','Montenegro',NULL,'montenegro','Monténégro','มอนเตเนโกร'),('COU-38','New Zealand',NULL,'new-zealand','Nouvelle-Zélande','นิวซีแลนด์'),('COU-39','Peru',NULL,'peru','Pérou','เปรู'),('COU-4','Argentina',NULL,'argentina','Argentine','อาร์เจนตินา'),('COU-40','French Polynesia',NULL,'french-polynesia','Polynésie Française','โปลินีเซียฝรั่งเศส'),('COU-41','Portugal',NULL,'portugal','Portugal','โปรตุเกส'),('COU-42','Czech Republic',NULL,'czech-republic','République tchèque','สาธารณรัฐเช็ก'),('COU-43','Romania',NULL,'romania','Roumanie','ประเทศโรมาเนีย'),('COU-44','United Kingdom',NULL,'united-kingdom','Royaume-Uni','ประเทศอังกฤษ'),('COU-45','Serbia',NULL,'serbia','Serbie','ประเทศเซอร์เบีย'),('COU-46','Slovakia',NULL,'slovakia','Slovaquie','สโลวาเกีย'),('COU-47','Slovenia',NULL,'slovenia','Slovénie','สโลวีเนีย'),('COU-48','Switzerland',NULL,'switzerland','Suisse','สวิตเซอร์แลนด์'),('COU-49','Thailand',NULL,'thailand','Thaïlande','ประเทศไทย'),('COU-5','Armenia',NULL,'armenia','Arménie','อาร์เมเนีย'),('COU-50','Tunisia',NULL,'tunisia','Tunisie','ตูนิเซีย'),('COU-51','Turkey',NULL,'turkey','Turquie','ไก่งวง'),('COU-52','Uruguay',NULL,'uruguay','Uruguay','อุรุกวัย'),('COU-6','Australia',NULL,'australia','Australie','ออสเตรเลีย'),('COU-7','Other',NULL,'other','Autre','อื่น'),('COU-8','Austria',NULL,'austria','Autriche','ประเทศออสเตรีย'),('COU-9','Belgium',NULL,'belgium','Belgique','เบลเยียม');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
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
