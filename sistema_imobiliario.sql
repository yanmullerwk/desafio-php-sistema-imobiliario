-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: sistema_imobiliario
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imoveis`
--

DROP TABLE IF EXISTS `imoveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imoveis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complemento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pessoa_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imoveis_pessoa_id_foreign` (`pessoa_id`),
  CONSTRAINT `imoveis_pessoa_id_foreign` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imoveis`
--

LOCK TABLES `imoveis` WRITE;
/*!40000 ALTER TABLE `imoveis` DISABLE KEYS */;
INSERT INTO `imoveis` VALUES (7,'Domenico Forges','892','fort','Suite 078',9,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(8,'Russel Trail','690','berg',NULL,45,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(9,'Abbott Islands','26125','mouth','Apt. 759',108,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(10,'Daniella Ports','79471','fort',NULL,80,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(11,'Annabell Summit','778','mouth','Apt. 330',76,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(12,'Elliott View','2120','mouth','Apt. 998',68,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(13,'Alysson Lakes','7290','mouth',NULL,93,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(14,'McKenzie Locks','21776','berg',NULL,17,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(15,'Schmeler Fork','36407','haven','Apt. 993',29,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(16,'Stiedemann Glen','3767','haven',NULL,78,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(17,'Beier Mews','284','shire','Apt. 022',69,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(18,'Dolores Place','7588','view',NULL,59,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(19,'Ryan Camp','73768','ton',NULL,84,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(20,'Runolfsson Ridges','97910','mouth',NULL,80,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(21,'Vandervort Camp','21944','chester',NULL,89,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(22,'Mitchell Centers','319','borough',NULL,7,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(23,'Whitney Park','50058','berg',NULL,43,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(24,'Homenick Ways','457','ville','Apt. 004',60,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(25,'Lind Point','51387','town',NULL,29,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(26,'Harrison Harbor','29386','burgh','Apt. 889',36,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(27,'Abernathy Manor','69378','borough',NULL,88,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(28,'Penelope Row','37039','mouth','Apt. 194',52,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(29,'Von Circles','9242','mouth','Apt. 496',95,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(30,'Fay Walk','26536','fort','Suite 096',39,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(31,'Blanda Vista','107','bury','Suite 284',27,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(32,'Uriah Underpass','165','side',NULL,77,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(33,'Satterfield Lights','785','haven','Apt. 775',57,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(34,'Luella Manor','5970','ton','Suite 433',41,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(35,'Luther Street','274','port',NULL,13,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(36,'Elijah Cliffs','521','mouth','Suite 384',49,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(37,'Boehm Dale','294','burgh','Apt. 821',90,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(38,'Geo Inlet','128','port','Apt. 758',97,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(39,'Bashirian Glen','222','ton',NULL,89,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(40,'Jodie Hill','471','stad',NULL,86,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(41,'Remington Ford','54831','haven',NULL,15,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(42,'Mayer Ways','3914','view','Apt. 078',27,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(43,'Walker Wells','234','side',NULL,70,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(44,'Jarvis Fall','531','mouth','Suite 947',44,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(45,'Gutkowski Junctions','71120','fort',NULL,99,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(46,'Waters Pass','953','stad','Suite 823',83,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(47,'Lawrence Expressway','84861','stad',NULL,65,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(48,'Madilyn Burgs','9781','borough',NULL,95,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(49,'Lowell Place','92480','mouth',NULL,81,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(50,'McKenzie Coves','5181','stad',NULL,93,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(51,'Marquis Forge','44180','burgh',NULL,41,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(52,'Marquardt Grove','270','furt',NULL,61,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(53,'Wiegand Ranch','47716','chester','Apt. 634',17,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(54,'Wilfrid Fords','6778','stad',NULL,81,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(55,'Delaney Cliff','7803','ville','Apt. 455',15,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(56,'Moore Parkways','3306','burgh',NULL,88,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(57,'Gerlach Burg','4454','bury',NULL,31,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(58,'Heidi Cape','521','borough',NULL,111,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(59,'Ruecker Shoal','940','mouth',NULL,59,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(60,'DuBuque Rest','457','furt',NULL,83,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(61,'Lourdes Glen','3878','haven','Suite 143',73,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(62,'Philip Avenue','712','ville','Suite 434',80,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(63,'Windler Center','67241','burgh',NULL,59,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(64,'Ned Square','97391','land',NULL,61,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(65,'Pansy Streets','512','fort',NULL,21,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(66,'Collins Plaza','398','ton','Suite 689',104,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(67,'Nedra Wells','862','bury','Suite 152',39,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(68,'Gia Circles','1653','haven','Suite 246',97,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(69,'Warren Rapid','26579','berg','Suite 555',69,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(70,'Dominic Springs','52633','ville',NULL,45,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(71,'Runte Expressway','297','borough',NULL,76,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(72,'Erich Valleys','2884','berg',NULL,12,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(73,'Abshire Ports','8460','shire','Apt. 462',60,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(74,'Francesco Shoal','17087','borough',NULL,61,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(75,'Walter Valleys','33629','ville','Suite 512',101,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(76,'Williamson Shores','70069','burgh',NULL,102,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(77,'America Views','3787','haven','Suite 361',33,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(78,'Kreiger Village','2411','shire',NULL,67,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(79,'Mina Parkways','5170','borough','Suite 850',69,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(80,'Aurelie Junctions','224','berg','Apt. 631',99,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(81,'Jeanie Coves','32875','fort','Suite 155',67,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(82,'Simone Heights','25011','borough','Suite 606',103,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(83,'Cristal Row','889','land','Suite 418',6,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(84,'Carmela Landing','6954','berg','Apt. 596',26,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(85,'Terry Mission','1097','ton','Suite 610',29,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(86,'Kreiger Tunnel','4863','bury','Suite 047',24,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(87,'Yost Spring','420','bury','Suite 942',69,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(88,'Predovic Forges','201','shire','Apt. 398',55,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(89,'Homenick Square','7154','side','Apt. 891',7,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(90,'Amani View','505','port',NULL,13,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(91,'Jacobi Creek','54496','haven','Apt. 121',29,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(92,'Tom Drives','658','burgh','Suite 694',42,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(93,'Simonis Camp','7249','burgh',NULL,9,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(94,'Hauck Passage','980','borough','Suite 363',27,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(95,'Jarrod Stravenue','7321','view',NULL,6,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(96,'Frida Square','12589','furt',NULL,75,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(97,'Barrows Fields','1628','burgh','Apt. 650',97,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(98,'Koelpin Canyon','565','burgh',NULL,111,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(99,'Reichert Plains','6673','borough',NULL,72,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(100,'Auer Island','4750','mouth','Apt. 747',40,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(101,'Marquardt Freeway','303','chester','Apt. 361',24,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(102,'Hauck Ville','9312','bury',NULL,27,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(103,'Runolfsson Camp','6721','view',NULL,46,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(104,'Zulauf Shoals','500','mouth',NULL,81,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(105,'Shyann Valleys','758','haven','Apt. 572',82,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(106,'Claudie Lock','63700','town',NULL,106,'2025-04-12 21:07:08','2025-04-12 21:07:08'),(107,'1','2','3','1',20,'2025-04-12 21:40:32','2025-04-12 21:40:32');
/*!40000 ALTER TABLE `imoveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'0001_01_01_000002_create_jobs_table',1),(3,'2025_04_09_193105_create_usuarios_table',1),(4,'2025_04_09_204559_create_pessoas_table',1),(5,'2025_04_09_204834_create_imoveis_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` enum('M','F','Outro') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pessoas_cpf_unique` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (6,'michele','1989-05-09','023333333','F','551245892','mimille@gmail.com','2025-04-12 06:01:26','2025-04-12 06:01:26'),(7,'roberto pera','1992-02-12','00011177733','M','991402766','rob.pe@hotmail.com','2025-04-12 06:02:36','2025-04-12 06:02:36'),(8,'charles','2000-03-12','00023234592','M','998677122','charles@yahoo.com','2025-04-12 06:04:16','2025-04-12 08:11:10'),(9,'Steven Patrick Morrissey','1956-05-22','12788899900','M','11991307555','morrissey.smiths@gmail.com','2025-04-12 06:06:21','2025-04-12 06:06:21'),(10,'pedro','2002-12-06','24567788897','M','51998377655','pedro.r@gemail.com','2025-04-12 07:44:32','2025-04-12 07:44:32'),(12,'Prof. Cydney Bosco','1995-10-02','43331438087','M','(586) 804-7832','pkeeling@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(13,'Merlin Hickle','1973-07-10','66784370170','F','+15719633327','greyson04@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(14,'Vivianne Herman','2002-05-28','22038377865','F','(930) 427-2961','jensen75@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(15,'Mr. Laurel Wolff DDS','2003-10-15','32615283980','F','640.217.1285','elwin72@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(16,'Dr. Wilhelm Gottlieb','1991-02-25','98576827739','M','541-664-0876','morton.rosenbaum@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(17,'Miss Beryl Borer','1970-04-18','36868638836','F','+1 (614) 674-8346','ziemann.amelia@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(18,'Lonzo Farrell MD','1989-09-06','69407055920','F','(812) 205-5235','htoy@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(19,'Caroline Runte','1983-10-30','78259471550','F','970.255.1775','danika03@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(20,'Vida Jaskolski','1975-03-29','11447739948','F','563.681.3140','jeanie38@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(21,'Prof. Tate Watsica I','1974-04-22','09702041230','F','+1-515-771-6309','waelchi.walker@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(22,'Pattie Doyle','1990-10-03','78175315024','M','+1-385-900-6568','jena78@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(23,'Golda Koepp','1999-03-31','97976231850','F','1-813-720-9445','xhirthe@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(24,'Prof. Kassandra Mills MD','1971-05-25','01349937817','M','651-779-7725','ischuster@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(25,'Trace Runolfsson','1980-12-30','52563464682','F','+1-629-385-9441','mitchel28@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(26,'Dr. Yasmine Nienow PhD','1984-03-19','49753093775','F','+1-786-986-0794','floy.price@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(27,'Serena Spencer PhD','1997-05-26','97752281408','F','+1-413-909-4385','umoen@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(28,'Randall Rutherford','1973-12-22','09775415215','M','(754) 695-3511','ukihn@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(29,'Odessa Armstrong MD','1976-06-23','62423817779','M','+1.281.607.2006','qruecker@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(30,'Geoffrey Lebsack','2004-08-30','12250620194','F','+1.737.410.0138','buck.block@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(31,'Mr. Wellington Rice I','2000-12-26','65686040111','F','+18622371418','norene.ullrich@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(32,'Thurman Daugherty Sr.','1995-03-24','17130324511','F','+1 (678) 735-8563','dion26@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(33,'Yasmeen Kovacek','2000-10-03','07638663071','F','1-657-412-5462','nbergstrom@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(34,'Prof. Demarcus Hartmann V','2001-02-04','48790156176','F','+12014919625','zachary.kirlin@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(35,'Elroy Wisozk','1980-07-29','25504521550','M','+1-863-634-3717','douglas.meghan@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(36,'Shaniya Leannon','1983-12-24','41392491271','M','+1-434-458-6164','nitzsche.haylie@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(37,'Maybell Strosin','1972-02-26','64096096830','F','513.997.9630','vpurdy@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(38,'Sherwood Lynch','1971-02-18','30470206316','F','615-625-9378','peggie17@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(39,'Naomi Auer','1984-10-24','69812615920','F','1-386-240-8596','fondricka@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(40,'Ms. Dorothea Kuvalis Jr.','1978-04-27','10948007707','F','+1.510.912.3963','rosella.schamberger@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(41,'Remington Wisoky','1990-01-10','84907955145','F','+1 (667) 260-9238','neha06@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(42,'Mrs. Maiya Bernhard','1973-05-04','30776410526','F','680-206-8433','zhagenes@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(43,'Doyle Beatty','1994-09-29','79617268368','F','+1-630-966-9115','rebert@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(44,'Demetris Skiles','2002-05-28','11300681223','F','1-854-240-6474','peyton75@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(45,'Felipa Pfeffer','1984-05-19','47857882652','F','+1-564-280-0851','rempel.katelin@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(46,'Ardella Keeling','1996-09-17','45840219589','F','610.653.6924','damaris48@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(47,'Kaitlin Robel','1970-01-04','83720290304','M','1-775-380-1846','qbrown@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(48,'Dr. Patrick Kris','1989-12-08','41441579864','F','+1-432-347-9793','funk.camden@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(49,'Grayce Fay','1971-11-13','88468097361','F','+1.540.577.5859','qsauer@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(50,'Prof. Bill Nader','1977-06-24','42900982917','M','1-281-719-9404','aiyana47@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(51,'Ernest Jast','2002-07-23','76861449075','M','+18383602562','kelsi.kemmer@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(52,'Sofia Pacocha PhD','1997-07-24','37207366161','M','+1.213.498.1576','damore.aliya@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(53,'Miss Raquel Hyatt','1992-03-14','29269536620','M','989-886-2878','luisa45@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(54,'Tess Hand','1974-03-10','25537366288','F','+1-228-528-0327','joanie.considine@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(55,'Orion Herzog MD','1998-07-02','19237417599','M','+1-347-766-9111','michelle42@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(56,'Rebecca Smitham','1974-10-15','53278595979','F','947.515.4342','antonette.bauch@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(57,'Katrine Hartmann I','1992-11-26','27551137103','F','(920) 478-0445','greenfelder.thurman@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(58,'Abigayle Williamson','1991-01-15','62443062677','F','(351) 949-5921','aborer@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(59,'Westley Hessel Jr.','2001-11-02','15338144128','F','929-797-0248','boyd.schuppe@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(60,'Polly Predovic','1975-11-16','60315238663','F','541-653-1920','hessel.marguerite@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(61,'Araceli Kunze','1972-05-12','72437814042','M','520-717-8950','price.randall@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(62,'Oleta Johnston','1974-10-08','83986900319','F','(610) 416-2445','easton.schmeler@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(63,'Maye Shields','1984-10-20','07298784638','F','949-270-1696','sporer.carlie@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(64,'Nya King','1997-01-21','92150324085','F','1-805-459-2572','raynor.wilfrid@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(65,'Oswaldo Hoeger DDS','1982-12-03','02748791847','F','(859) 894-0610','cameron70@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(66,'Alta O\'Keefe IV','2000-09-10','25476947047','F','248.332.6504','raleigh32@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(67,'Deven Gleichner','1985-05-10','19553455694','M','(970) 788-8752','jerry.lockman@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(68,'Prof. Adolfo Smith','1979-12-26','01872650130','M','+1.319.784.2475','alba06@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(69,'Prince Hane','1982-11-19','31650496608','F','281.805.9220','okub@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(70,'Mrs. Pink Pfeffer DVM','2003-08-23','25670357949','F','+1.651.819.5777','greenholt.dennis@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(71,'Prof. Reinhold Hodkiewicz','1976-05-24','55728366974','F','(959) 965-4823','nakia02@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(72,'Miss Melba Renner MD','1970-09-16','24196570753','M','+1.651.350.4968','anastacio.quitzon@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(73,'Gregorio Von','2003-02-28','61189412945','F','+1-541-562-2361','bdenesik@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(74,'Darien Beatty Sr.','1999-05-29','35800021981','F','1-928-950-9693','amiya.metz@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(75,'Dr. Arno Glover IV','1972-10-23','16961413849','M','1-210-749-3258','pbergnaum@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(76,'Ruthie Mueller','1975-11-21','85527398312','F','1-580-754-2422','ckuhn@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(77,'Franco Bauch','1970-06-27','35924518055','M','1-651-425-7057','lue52@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(78,'Cale Kunde','1972-01-21','82767391262','M','+1.938.339.9447','douglas.damion@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(79,'Esther Schneider','1989-02-13','69554568713','M','1-364-663-8718','ayana32@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(80,'Ulices Farrell','1970-03-08','81513517038','F','480.478.3151','stuart66@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(81,'Letha Shields DVM','1994-09-23','52690732210','M','708.694.7508','christiansen.quinn@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(82,'Zora Brekke','1974-06-09','70664106048','F','1-641-895-8738','nitzsche.lambert@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(83,'Elenor Hirthe','1982-09-23','06376788425','M','+1-651-974-1243','ejohnson@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(84,'Prof. Oleta Dibbert IV','1999-02-11','30884039646','M','240-371-4092','judd12@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(85,'Evans Bergstrom','1992-03-25','99240820457','M','+1.812.397.3654','olga56@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(86,'Dr. Myrna Bailey','1999-08-31','24263301921','F','914-474-2726','mcruickshank@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(87,'Zola Torp','1980-09-29','67460054466','F','+1-248-319-7548','lydia42@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(88,'Kamren Boyle','1999-07-14','35776076558','F','872-870-5202','kara59@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(89,'Edgardo Rowe','1997-04-19','37174343009','F','1-425-563-7866','idell40@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(90,'Warren Jones','2000-03-02','40995359201','M','1-479-301-7593','alena80@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(91,'Brionna Conroy IV','1976-02-19','82156940760','F','+1-423-234-6227','kaleigh.bahringer@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(92,'Filiberto White','1987-02-28','64721539221','F','1-380-497-1276','ciara.franecki@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(93,'Kim Wilkinson','1987-01-14','79385677466','F','+1-469-209-6204','lkling@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(94,'Tyson Goodwin','1972-08-15','39428258619','F','(352) 832-0902','rwelch@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(95,'Wanda Parker','1981-04-05','21698361772','F','(918) 985-7556','esmeralda46@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(96,'Hyman Welch','1997-02-15','35044813631','F','478.386.5756','cartwright.alisha@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(97,'Kasey Lubowitz','1979-02-18','33710971369','F','(919) 518-0498','rthompson@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(98,'Erik Hammes','1971-08-02','47730786764','F','+1-248-867-6730','eokuneva@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(99,'Lorine Farrell PhD','1973-08-26','16786194100','F','+1-781-859-3836','acollier@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(100,'Miss Vada Hills V','1991-07-14','82128824173','M','1-505-467-5612','gflatley@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(101,'Myrtis Kutch','1984-10-13','40571007619','F','+15395841577','whitney.jacobi@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(102,'Marjory Dietrich','1976-05-01','53973701708','M','585.698.1249','botsford.christina@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(103,'Roger Erdman','2003-10-28','22158516481','F','(208) 860-8276','raegan24@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(104,'Abbigail Hane','1996-12-06','45419101585','M','229.510.4094','green.zelma@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(105,'Ms. Josefa Wiegand Jr.','2001-05-25','25457136282','F','+1.361.591.5167','mdach@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(106,'Maegan Erdman','1983-02-05','96249240538','F','857-870-9590','karine.collins@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(107,'Gladyce Parker','1990-12-23','47286454023','M','+1.360.648.0269','rylee.schmeler@example.net','2025-04-12 21:07:08','2025-04-12 21:07:08'),(108,'Anabel Flatley II','1982-03-07','79695324559','F','929.482.9690','mona.harris@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(109,'Chris Wehner','1999-03-04','31291192821','F','+19478886841','marisa.vonrueden@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(110,'Ms. Ernestina Metz IV','1988-02-07','40734502568','M','+1-310-904-9381','ahilpert@example.org','2025-04-12 21:07:08','2025-04-12 21:07:08'),(111,'Arden Hackett','2001-05-30','93843616552','F','360-576-5565','wmurray@example.com','2025-04-12 21:07:08','2025-04-12 21:07:08'),(112,'1','1000-11-10','111111111','Outro','121220200','0000@00.com','2025-04-12 21:10:17','2025-04-12 21:10:17');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'adm','adm@email.com','$2y$12$v/o0iOjqQWnKOuiM7XrWZu7AEzeHT.M2GeR46An.2HLUj2pvTqKae','2025-04-11 22:54:36','2025-04-11 22:54:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-12 16:14:16
