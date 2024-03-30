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
-- Table structure for table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_taxon_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2705 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` VALUES (2596,2866,'Sipman','sipman',NULL,'en_US'),(2597,2867,'Sake','sipman-sake',NULL,'en_US'),(2598,2868,'Spirits','sipman-spirits',NULL,'en_US'),(2599,2869,'Water','sipman-water',NULL,'en_US'),(2600,2870,'Wine','sipman-wine',NULL,'en_US'),(2601,2871,'Red','wine-red',NULL,'en_US'),(2602,2872,'Argentina','red-argentina',NULL,'en_US'),(2603,2873,'France','red-france',NULL,'en_US'),(2604,2874,'Chile','red-chile',NULL,'en_US'),(2605,2875,'Croatia','red-croatia',NULL,'en_US'),(2606,2876,'Georgia','red-georgia',NULL,'en_US'),(2607,2877,'Greece','red-greece',NULL,'en_US'),(2608,2878,'Hungary','red-hungary',NULL,'en_US'),(2609,2879,'Italy','red-italy',NULL,'en_US'),(2610,2880,'Australia','red-australia',NULL,'en_US'),(2611,2881,'Luxembourg','red-luxembourg',NULL,'en_US'),(2612,2882,'Malta','red-malta',NULL,'en_US'),(2613,2883,'Moldova','red-moldova',NULL,'en_US'),(2614,2884,'Morocco','red-morocco',NULL,'en_US'),(2615,2885,'New Zealand','red-new zealand',NULL,'en_US'),(2616,2886,'Portugal','red-portugal',NULL,'en_US'),(2617,2887,'Romania','red-romania',NULL,'en_US'),(2618,2888,'South Africa','red-south africa',NULL,'en_US'),(2619,2889,'Spain','red-spain',NULL,'en_US'),(2620,2890,'Switzerland','red-switzerland',NULL,'en_US'),(2621,2891,'USA','red-usa',NULL,'en_US'),(2622,2892,'Austria','red-austria',NULL,'en_US'),(2623,2893,'Belgium','red-belgium',NULL,'en_US'),(2624,2894,'Bulgaria','red-bulgaria',NULL,'en_US'),(2625,2895,'Canada','red-canada',NULL,'en_US'),(2626,2896,'Rosé','wine-rosé',NULL,'en_US'),(2627,2897,'Australia','rosé-australia',NULL,'en_US'),(2628,2898,'France','rosé-france',NULL,'en_US'),(2629,2899,'Greece','rosé-greece',NULL,'en_US'),(2630,2900,'Italy','rosé-italy',NULL,'en_US'),(2631,2901,'Luxembourg','rosé-luxembourg',NULL,'en_US'),(2632,2902,'Morocco','rosé-morocco',NULL,'en_US'),(2633,2903,'Portugal','rosé-portugal',NULL,'en_US'),(2634,2904,'South Africa','rosé-south africa',NULL,'en_US'),(2635,2905,'Spain','rosé-spain',NULL,'en_US'),(2636,2906,'Switzerland','rosé-switzerland',NULL,'en_US'),(2637,2907,'USA','rosé-usa',NULL,'en_US'),(2638,2908,'Austria','rosé-austria',NULL,'en_US'),(2639,2909,'Belgium','rosé-belgium',NULL,'en_US'),(2640,2910,'Chile','rosé-chile',NULL,'en_US'),(2641,2911,'White','wine-white',NULL,'en_US'),(2642,2912,'Chile','white-chile',NULL,'en_US'),(2643,2913,'France','white-france',NULL,'en_US'),(2644,2914,'Croatia','white-croatia',NULL,'en_US'),(2645,2915,'Georgia','white-georgia',NULL,'en_US'),(2646,2916,'Greece','white-greece',NULL,'en_US'),(2647,2917,'Italy','white-italy',NULL,'en_US'),(2648,2918,'Australia','white-australia',NULL,'en_US'),(2649,2919,'Luxembourg','white-luxembourg',NULL,'en_US'),(2650,2920,'Malta','white-malta',NULL,'en_US'),(2651,2921,'Portugal','white-portugal',NULL,'en_US'),(2652,2922,'Romania','white-romania',NULL,'en_US'),(2653,2923,'Serbia','white-serbia',NULL,'en_US'),(2654,2924,'Slovenia','white-slovenia',NULL,'en_US'),(2655,2925,'South Africa','white-south africa',NULL,'en_US'),(2656,2926,'Spain','white-spain',NULL,'en_US'),(2657,2927,'Switzerland','white-switzerland',NULL,'en_US'),(2658,2928,'USA','white-usa',NULL,'en_US'),(2659,2929,'Argentina','white-argentina',NULL,'en_US'),(2660,2930,'Austria','white-austria',NULL,'en_US'),(2661,2931,'Belgium','white-belgium',NULL,'en_US'),(2662,2932,'Canada','white-canada',NULL,'en_US'),(2663,2933,'Sweet','wine-sweet',NULL,'en_US'),(2664,2934,'France','sweet-france',NULL,'en_US'),(2665,2935,'Greece','sweet-greece',NULL,'en_US'),(2666,2936,'Cyprus','sweet-cyprus',NULL,'en_US'),(2667,2937,'Australia','sweet-australia',NULL,'en_US'),(2668,2938,'Italy','sweet-italy',NULL,'en_US'),(2669,2939,'Luxembourg','sweet-luxembourg',NULL,'en_US'),(2670,2940,'Portugal','sweet-portugal',NULL,'en_US'),(2671,2941,'Spain','sweet-spain',NULL,'en_US'),(2672,2942,'Switzerland','sweet-switzerland',NULL,'en_US'),(2673,2943,'USA','sweet-usa',NULL,'en_US'),(2674,2944,'Austria','sweet-austria',NULL,'en_US'),(2675,2945,'Belgium','sweet-belgium',NULL,'en_US'),(2676,2946,'Canada','sweet-canada',NULL,'en_US'),(2677,2947,'Chile','sweet-chile',NULL,'en_US'),(2678,2948,'Orange','wine-orange',NULL,'en_US'),(2679,2949,'France','orange-france',NULL,'en_US'),(2680,2950,'Georgia','orange-georgia',NULL,'en_US'),(2681,2951,'Greece','orange-greece',NULL,'en_US'),(2682,2952,'Italy','orange-italy',NULL,'en_US'),(2683,2953,'Spain','orange-spain',NULL,'en_US'),(2684,2954,'Switzerland','orange-switzerland',NULL,'en_US'),(2685,2955,'Austria','orange-austria',NULL,'en_US'),(2686,2956,'Fortified','wine-fortified',NULL,'en_US'),(2687,2957,'France','fortified-france',NULL,'en_US'),(2688,2958,'Portugal','fortified-portugal',NULL,'en_US'),(2689,2959,'Spain','fortified-spain',NULL,'en_US'),(2690,2960,'Sparkling','wine-sparkling',NULL,'en_US'),(2691,2961,'France','sparkling-france',NULL,'en_US'),(2692,2962,'Italy','sparkling-italy',NULL,'en_US'),(2693,2963,'Luxembourg','sparkling-luxembourg',NULL,'en_US'),(2694,2964,'South Africa','sparkling-south africa',NULL,'en_US'),(2695,2965,'Spain','sparkling-spain',NULL,'en_US'),(2696,2966,'Switzerland','sparkling-switzerland',NULL,'en_US'),(2697,2967,'USA','sparkling-usa',NULL,'en_US'),(2698,2968,'Australia','sparkling-australia',NULL,'en_US'),(2699,2969,'Belgium','sparkling-belgium',NULL,'en_US'),(2700,2970,'Canada','sparkling-canada',NULL,'en_US'),(2701,2971,'Other','wine-other',NULL,'en_US'),(2702,2972,'Italy','other-italy',NULL,'en_US'),(2703,2973,'France','other-france',NULL,'en_US'),(2704,2974,'Canada','other-canada',NULL,'en_US');
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;
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
