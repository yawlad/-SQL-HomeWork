-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: course_work_musicapp
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `albumns`
--

DROP TABLE IF EXISTS `albumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albumns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` bigint unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `albumns_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albumns`
--

LOCK TABLES `albumns` WRITE;
/*!40000 ALTER TABLE `albumns` DISABLE KEYS */;
INSERT INTO `albumns` VALUES (1,1,'amet'),(2,2,'itaque'),(3,3,'corrupti'),(4,4,'perspiciatis'),(5,5,'quia');
/*!40000 ALTER TABLE `albumns` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_a_i` AFTER INSERT ON `albumns` FOR EACH ROW BEGIN 
	CALL add_log('albumns', concat('Inserted with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_a_u` AFTER UPDATE ON `albumns` FOR EACH ROW BEGIN 
	CALL add_log('albumns', concat('Updated with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_a_d` AFTER DELETE ON `albumns` FOR EACH ROW BEGIN 
	CALL add_log('albumns', concat('Deleted with id ', OLD.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `pseudonym` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `pseudonym` (`pseudonym`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,1,'raleigh08'),(2,2,'eryn.herzog'),(3,3,'elenora.kihn'),(4,4,'grimes.zetta'),(5,5,'vesta.schroeder');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_au_i` AFTER INSERT ON `authors` FOR EACH ROW BEGIN 
	CALL add_log('authors', concat('Inserted with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_au_u` AFTER UPDATE ON `authors` FOR EACH ROW BEGIN 
	CALL add_log('authors', concat('Updated with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_au_d` AFTER DELETE ON `authors` FOR EACH ROW BEGIN 
	CALL add_log('authors', concat('Deleted with id ', OLD.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'East Evangeline'),(2,2,'North Freddy'),(3,3,'Connside'),(4,4,'East Mauricioton'),(5,5,'Barbaraberg'),(6,6,'Zariaport'),(7,7,'Jarodfort'),(8,8,'Abernathyfort'),(9,9,'Tomasafort'),(10,10,'South Carmellastad'),(11,1,'Oberbrunnerchester'),(12,2,'Ramiroland'),(13,3,'South Jamil'),(14,4,'Hartmannburgh'),(15,5,'Lake Vidalbury'),(16,6,'Adelletown'),(17,7,'Marlenberg'),(18,8,'Lake Bianka'),(19,9,'Octaviashire'),(20,10,'Boscomouth');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_ci_i` AFTER INSERT ON `cities` FOR EACH ROW BEGIN 
	CALL add_log('cities', concat('Inserted with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_ci_u` AFTER UPDATE ON `cities` FOR EACH ROW BEGIN 
	CALL add_log('cities', concat('Updated with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_ci_d` AFTER DELETE ON `cities` FOR EACH ROW BEGIN 
	CALL add_log('cities', concat('Deleted with id ', OLD.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (2,'Bermuda'),(4,'Bhutan'),(3,'Cameroon'),(9,'Chad'),(7,'Egypt'),(10,'Ghana'),(6,'Korea'),(8,'Saint Barthelemy'),(5,'South Georgia and the South Sandwich Islands'),(1,'Trinidad and Tobago');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_co_i` AFTER INSERT ON `countries` FOR EACH ROW BEGIN 
	CALL add_log('countries', concat('Inserted with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_co_u` AFTER UPDATE ON `countries` FOR EACH ROW BEGIN 
	CALL add_log('countries', concat('Updated with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_co_d` AFTER DELETE ON `countries` FOR EACH ROW BEGIN 
	CALL add_log('countries', concat('Deleted with id ', OLD.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `source` (`source`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (23,'accusantium'),(19,'aperiam'),(3,'at'),(1,'blanditiis'),(27,'commodi'),(15,'consectetur'),(17,'delectus'),(5,'dignissimos'),(30,'distinctio'),(9,'ducimus'),(28,'ea'),(21,'eius'),(20,'est'),(8,'et'),(6,'fugit'),(10,'id'),(13,'incidunt'),(18,'ipsa'),(25,'labore'),(2,'natus'),(11,'nemo'),(14,'nihil'),(16,'pariatur'),(22,'possimus'),(29,'quas'),(12,'qui'),(7,'rerum'),(26,'sequi'),(24,'ullam'),(4,'voluptatem');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_i_i` AFTER INSERT ON `images` FOR EACH ROW BEGIN 
	CALL add_log('images', concat('Inserted with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_i_u` AFTER UPDATE ON `images` FOR EACH ROW BEGIN 
	CALL add_log('images', concat('Updated with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_i_d` AFTER DELETE ON `images` FOR EACH ROW BEGIN 
	CALL add_log('images', concat('Deleted with id ', OLD.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `user_id` bigint unsigned NOT NULL,
  `music_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`music_id`),
  KEY `music_id` (`music_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`music_id`) REFERENCES `music` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(1,10),(10,10),(2,11),(11,11),(3,12),(12,12),(4,13),(13,13),(5,14),(14,14),(6,15),(15,15),(7,16),(16,16),(8,17),(17,17),(9,18),(18,18),(10,19),(19,19),(20,20);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_li_i` AFTER INSERT ON `likes` FOR EACH ROW BEGIN 
	CALL add_log('likes', concat('Inserted with user id ', NEW.user_id, ' and music id ', NEW.music_id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_li_u` AFTER UPDATE ON `likes` FOR EACH ROW BEGIN 
	CALL add_log('likes', concat('Updated with user id ', NEW.user_id, ' and music id ', NEW.music_id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_li_d` AFTER DELETE ON `likes` FOR EACH ROW BEGIN 
	CALL add_log('likes', concat('Deleted with user id ', OLD.user_id, ' and music id ', OLD.music_id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `table_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=ARCHIVE AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'2022-05-26 14:01:51','countries','Inserted with id 2'),(2,'2022-05-26 14:01:51','countries','Inserted with id 4'),(3,'2022-05-26 14:01:51','countries','Inserted with id 3'),(4,'2022-05-26 14:01:51','countries','Inserted with id 9'),(5,'2022-05-26 14:01:51','countries','Inserted with id 7'),(6,'2022-05-26 14:01:51','countries','Inserted with id 10'),(7,'2022-05-26 14:01:51','countries','Inserted with id 6'),(8,'2022-05-26 14:01:51','countries','Inserted with id 8'),(9,'2022-05-26 14:01:51','countries','Inserted with id 5'),(10,'2022-05-26 14:01:51','countries','Inserted with id 1'),(11,'2022-05-26 14:01:51','cities','Inserted with id 1'),(12,'2022-05-26 14:01:51','cities','Inserted with id 2'),(13,'2022-05-26 14:01:51','cities','Inserted with id 3'),(14,'2022-05-26 14:01:51','cities','Inserted with id 4'),(15,'2022-05-26 14:01:51','cities','Inserted with id 5'),(16,'2022-05-26 14:01:51','cities','Inserted with id 6'),(17,'2022-05-26 14:01:51','cities','Inserted with id 7'),(18,'2022-05-26 14:01:51','cities','Inserted with id 8'),(19,'2022-05-26 14:01:51','cities','Inserted with id 9'),(20,'2022-05-26 14:01:51','cities','Inserted with id 10'),(21,'2022-05-26 14:01:51','cities','Inserted with id 11'),(22,'2022-05-26 14:01:51','cities','Inserted with id 12'),(23,'2022-05-26 14:01:51','cities','Inserted with id 13'),(24,'2022-05-26 14:01:51','cities','Inserted with id 14'),(25,'2022-05-26 14:01:51','cities','Inserted with id 15'),(26,'2022-05-26 14:01:51','cities','Inserted with id 16'),(27,'2022-05-26 14:01:51','cities','Inserted with id 17'),(28,'2022-05-26 14:01:51','cities','Inserted with id 18'),(29,'2022-05-26 14:01:51','cities','Inserted with id 19'),(30,'2022-05-26 14:01:51','cities','Inserted with id 20'),(31,'2022-05-26 14:01:51','images','Inserted with id 23'),(32,'2022-05-26 14:01:51','images','Inserted with id 19'),(33,'2022-05-26 14:01:51','images','Inserted with id 3'),(34,'2022-05-26 14:01:51','images','Inserted with id 1'),(35,'2022-05-26 14:01:51','images','Inserted with id 27'),(36,'2022-05-26 14:01:51','images','Inserted with id 15'),(37,'2022-05-26 14:01:51','images','Inserted with id 17'),(38,'2022-05-26 14:01:51','images','Inserted with id 5'),(39,'2022-05-26 14:01:51','images','Inserted with id 30'),(40,'2022-05-26 14:01:51','images','Inserted with id 9'),(41,'2022-05-26 14:01:51','images','Inserted with id 28'),(42,'2022-05-26 14:01:51','images','Inserted with id 21'),(43,'2022-05-26 14:01:51','images','Inserted with id 20'),(44,'2022-05-26 14:01:51','images','Inserted with id 8'),(45,'2022-05-26 14:01:51','images','Inserted with id 6'),(46,'2022-05-26 14:01:51','images','Inserted with id 10'),(47,'2022-05-26 14:01:51','images','Inserted with id 13'),(48,'2022-05-26 14:01:51','images','Inserted with id 18'),(49,'2022-05-26 14:01:51','images','Inserted with id 25'),(50,'2022-05-26 14:01:51','images','Inserted with id 2'),(51,'2022-05-26 14:01:51','images','Inserted with id 11'),(52,'2022-05-26 14:01:51','images','Inserted with id 14'),(53,'2022-05-26 14:01:51','images','Inserted with id 16'),(54,'2022-05-26 14:01:51','images','Inserted with id 22'),(55,'2022-05-26 14:01:51','images','Inserted with id 29'),(56,'2022-05-26 14:01:51','images','Inserted with id 12'),(57,'2022-05-26 14:01:51','images','Inserted with id 7'),(58,'2022-05-26 14:01:51','images','Inserted with id 26'),(59,'2022-05-26 14:01:51','images','Inserted with id 24'),(60,'2022-05-26 14:01:51','images','Inserted with id 4'),(61,'2022-05-26 14:01:51','albumns','Inserted with id 1'),(62,'2022-05-26 14:01:51','albumns','Inserted with id 2'),(63,'2022-05-26 14:01:51','albumns','Inserted with id 3'),(64,'2022-05-26 14:01:51','albumns','Inserted with id 4'),(65,'2022-05-26 14:01:51','albumns','Inserted with id 5'),(66,'2022-05-26 14:01:51','music_types','Inserted with id 3'),(67,'2022-05-26 14:01:51','music_types','Inserted with id 4'),(68,'2022-05-26 14:01:51','music_types','Inserted with id 11'),(69,'2022-05-26 14:01:51','music_types','Inserted with id 10'),(70,'2022-05-26 14:01:51','music_types','Inserted with id 5'),(71,'2022-05-26 14:01:51','music_types','Inserted with id 8'),(72,'2022-05-26 14:01:51','music_types','Inserted with id 13'),(73,'2022-05-26 14:01:51','music_types','Inserted with id 2'),(74,'2022-05-26 14:01:51','music_types','Inserted with id 1'),(75,'2022-05-26 14:01:51','music_types','Inserted with id 9'),(76,'2022-05-26 14:01:51','music_types','Inserted with id 7'),(77,'2022-05-26 14:01:51','music_types','Inserted with id 12'),(78,'2022-05-26 14:01:51','music_types','Inserted with id 6'),(79,'2022-05-26 14:01:51','users','Inserted with id 1'),(80,'2022-05-26 14:01:51','users','Inserted with id 2'),(81,'2022-05-26 14:01:51','users','Inserted with id 3'),(82,'2022-05-26 14:01:51','users','Inserted with id 4'),(83,'2022-05-26 14:01:51','users','Inserted with id 5'),(84,'2022-05-26 14:01:51','users','Inserted with id 6'),(85,'2022-05-26 14:01:51','users','Inserted with id 7'),(86,'2022-05-26 14:01:51','users','Inserted with id 8'),(87,'2022-05-26 14:01:51','users','Inserted with id 9'),(88,'2022-05-26 14:01:51','users','Inserted with id 10'),(89,'2022-05-26 14:01:51','users','Inserted with id 11'),(90,'2022-05-26 14:01:51','users','Inserted with id 12'),(91,'2022-05-26 14:01:51','users','Inserted with id 13'),(92,'2022-05-26 14:01:51','users','Inserted with id 14'),(93,'2022-05-26 14:01:51','users','Inserted with id 15'),(94,'2022-05-26 14:01:51','users','Inserted with id 16'),(95,'2022-05-26 14:01:51','users','Inserted with id 17'),(96,'2022-05-26 14:01:51','users','Inserted with id 18'),(97,'2022-05-26 14:01:51','users','Inserted with id 19'),(98,'2022-05-26 14:01:51','users','Inserted with id 20'),(99,'2022-05-26 14:01:51','authors','Inserted with id 1'),(100,'2022-05-26 14:01:51','authors','Inserted with id 2'),(101,'2022-05-26 14:01:51','authors','Inserted with id 3'),(102,'2022-05-26 14:01:51','authors','Inserted with id 4'),(103,'2022-05-26 14:01:51','authors','Inserted with id 5'),(104,'2022-05-26 14:01:51','music','Inserted with id 1'),(105,'2022-05-26 14:01:51','music','Inserted with id 2'),(106,'2022-05-26 14:01:51','music','Inserted with id 3'),(107,'2022-05-26 14:01:51','music','Inserted with id 4'),(108,'2022-05-26 14:01:51','music','Inserted with id 5'),(109,'2022-05-26 14:01:51','music','Inserted with id 6'),(110,'2022-05-26 14:01:51','music','Inserted with id 7'),(111,'2022-05-26 14:01:51','music','Inserted with id 8'),(112,'2022-05-26 14:01:51','music','Inserted with id 9'),(113,'2022-05-26 14:01:51','music','Inserted with id 10'),(114,'2022-05-26 14:01:51','music','Inserted with id 11'),(115,'2022-05-26 14:01:51','music','Inserted with id 12'),(116,'2022-05-26 14:01:51','music','Inserted with id 13'),(117,'2022-05-26 14:01:51','music','Inserted with id 14'),(118,'2022-05-26 14:01:51','music','Inserted with id 15'),(119,'2022-05-26 14:01:51','music','Inserted with id 16'),(120,'2022-05-26 14:01:51','music','Inserted with id 17'),(121,'2022-05-26 14:01:51','music','Inserted with id 18'),(122,'2022-05-26 14:01:51','music','Inserted with id 19'),(123,'2022-05-26 14:01:51','music','Inserted with id 20'),(124,'2022-05-26 14:01:51','music_albumns','Inserted with id 1'),(125,'2022-05-26 14:01:51','music_albumns','Inserted with id 2'),(126,'2022-05-26 14:01:51','music_albumns','Inserted with id 3'),(127,'2022-05-26 14:01:51','music_albumns','Inserted with id 4'),(128,'2022-05-26 14:01:51','music_albumns','Inserted with id 5'),(129,'2022-05-26 14:01:51','likes','Inserted with user id 1 and music id 1'),(130,'2022-05-26 14:01:51','likes','Inserted with user id 2 and music id 2'),(131,'2022-05-26 14:01:51','likes','Inserted with user id 3 and music id 3'),(132,'2022-05-26 14:01:51','likes','Inserted with user id 4 and music id 4'),(133,'2022-05-26 14:01:51','likes','Inserted with user id 5 and music id 5'),(134,'2022-05-26 14:01:51','likes','Inserted with user id 6 and music id 6'),(135,'2022-05-26 14:01:51','likes','Inserted with user id 7 and music id 7'),(136,'2022-05-26 14:01:51','likes','Inserted with user id 8 and music id 8'),(137,'2022-05-26 14:01:51','likes','Inserted with user id 9 and music id 9'),(138,'2022-05-26 14:01:51','likes','Inserted with user id 10 and music id 10'),(139,'2022-05-26 14:01:51','likes','Inserted with user id 11 and music id 11'),(140,'2022-05-26 14:01:51','likes','Inserted with user id 12 and music id 12'),(141,'2022-05-26 14:01:51','likes','Inserted with user id 13 and music id 13'),(142,'2022-05-26 14:01:51','likes','Inserted with user id 14 and music id 14'),(143,'2022-05-26 14:01:51','likes','Inserted with user id 15 and music id 15'),(144,'2022-05-26 14:01:51','likes','Inserted with user id 16 and music id 16'),(145,'2022-05-26 14:01:51','likes','Inserted with user id 17 and music id 17'),(146,'2022-05-26 14:01:51','likes','Inserted with user id 18 and music id 18'),(147,'2022-05-26 14:01:51','likes','Inserted with user id 19 and music id 19'),(148,'2022-05-26 14:01:51','likes','Inserted with user id 20 and music id 20'),(149,'2022-05-26 14:01:51','likes','Inserted with user id 1 and music id 10'),(150,'2022-05-26 14:01:51','likes','Inserted with user id 2 and music id 11'),(151,'2022-05-26 14:01:51','likes','Inserted with user id 3 and music id 12'),(152,'2022-05-26 14:01:51','likes','Inserted with user id 4 and music id 13'),(153,'2022-05-26 14:01:51','likes','Inserted with user id 5 and music id 14'),(154,'2022-05-26 14:01:51','likes','Inserted with user id 6 and music id 15'),(155,'2022-05-26 14:01:51','likes','Inserted with user id 7 and music id 16'),(156,'2022-05-26 14:01:51','likes','Inserted with user id 8 and music id 17'),(157,'2022-05-26 14:01:51','likes','Inserted with user id 9 and music id 18'),(158,'2022-05-26 14:01:51','likes','Inserted with user id 10 and music id 19');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint unsigned NOT NULL,
  `type_id` bigint unsigned NOT NULL,
  `photo_id` bigint unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `source` (`source`),
  KEY `author_id` (`author_id`),
  KEY `type_id` (`type_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `music_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `music_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `music_types` (`id`),
  CONSTRAINT `music_ibfk_3` FOREIGN KEY (`photo_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES (1,1,1,1,'Commodi enim vel.','34 pr'),(2,2,2,2,'Sapiente qui.','65 bl'),(3,3,3,3,'Dolorum error.','97 mx'),(4,4,4,4,'Veritatis voluptate.','74 uf'),(5,5,5,5,'Ut ipsa.','87 lk'),(6,1,6,6,'Sed vel.','78 tp'),(7,2,7,7,'Vitae sed qui.','70 tk'),(8,3,8,8,'Eum voluptates.','15 gf'),(9,4,9,9,'Modi eaque nisi.','75 eq'),(10,5,10,10,'Deleniti suscipit.','82 wz'),(11,1,11,11,'Provident eaque.','41 es'),(12,2,12,12,'Porro et.','25 cz'),(13,3,13,13,'Itaque adipisci.','83 en'),(14,4,1,14,'Quia quod.','64 he'),(15,5,2,15,'Excepturi eveniet.','96 rs'),(16,1,3,16,'Facilis enim nemo.','21 xi'),(17,2,4,17,'Dolor sint.','50 nt'),(18,3,5,18,'Asperiores quis quis.','86 yw'),(19,4,6,19,'Deserunt provident.','82 va'),(20,5,7,20,'Quam ut.','51 ur');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_m_i` AFTER INSERT ON `music` FOR EACH ROW BEGIN 
	CALL add_log('music', concat('Inserted with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_m_u` AFTER UPDATE ON `music` FOR EACH ROW BEGIN 
	CALL add_log('music', concat('Updated with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_m_d` AFTER DELETE ON `music` FOR EACH ROW BEGIN 
	CALL add_log('music', concat('Deleted with id ', OLD.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `music_albumns`
--

DROP TABLE IF EXISTS `music_albumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_albumns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint unsigned NOT NULL,
  `albumn_id` bigint unsigned NOT NULL,
  `music_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`albumn_id`,`music_id`),
  UNIQUE KEY `id` (`id`),
  KEY `author_id` (`author_id`),
  KEY `music_id` (`music_id`),
  CONSTRAINT `music_albumns_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `music_albumns_ibfk_2` FOREIGN KEY (`albumn_id`) REFERENCES `albumns` (`id`),
  CONSTRAINT `music_albumns_ibfk_3` FOREIGN KEY (`music_id`) REFERENCES `music` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_albumns`
--

LOCK TABLES `music_albumns` WRITE;
/*!40000 ALTER TABLE `music_albumns` DISABLE KEYS */;
INSERT INTO `music_albumns` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5);
/*!40000 ALTER TABLE `music_albumns` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_ma_i` AFTER INSERT ON `music_albumns` FOR EACH ROW BEGIN 
	CALL add_log('music_albumns', concat('Inserted with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_ma_u` AFTER UPDATE ON `music_albumns` FOR EACH ROW BEGIN 
	CALL add_log('music_albumns', concat('Updated with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_ma_d` AFTER DELETE ON `music_albumns` FOR EACH ROW BEGIN 
	CALL add_log('music_albumns', concat('Deleted with id ', OLD.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `music_author_view`
--

DROP TABLE IF EXISTS `music_author_view`;
/*!50001 DROP VIEW IF EXISTS `music_author_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `music_author_view` AS SELECT 
 1 AS `track_name`,
 1 AS `author_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `music_like_view`
--

DROP TABLE IF EXISTS `music_like_view`;
/*!50001 DROP VIEW IF EXISTS `music_like_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `music_like_view` AS SELECT 
 1 AS `music_name`,
 1 AS `likes_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `music_music_type_view`
--

DROP TABLE IF EXISTS `music_music_type_view`;
/*!50001 DROP VIEW IF EXISTS `music_music_type_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `music_music_type_view` AS SELECT 
 1 AS `music_name`,
 1 AS `music_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `music_type_likes_view`
--

DROP TABLE IF EXISTS `music_type_likes_view`;
/*!50001 DROP VIEW IF EXISTS `music_type_likes_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `music_type_likes_view` AS SELECT 
 1 AS `music_type`,
 1 AS `likes_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `music_types`
--

DROP TABLE IF EXISTS `music_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_types`
--

LOCK TABLES `music_types` WRITE;
/*!40000 ALTER TABLE `music_types` DISABLE KEYS */;
INSERT INTO `music_types` VALUES (3,' Blues'),(4,' Country'),(11,' Disco'),(10,' Electronic'),(5,' Fusion'),(8,' Hip-Hop'),(13,' Indie'),(2,' Jazz'),(1,' Pop Music'),(9,' Rap'),(7,' Reggae'),(12,' Rock'),(6,'Classical');
/*!40000 ALTER TABLE `music_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_mt_i` AFTER INSERT ON `music_types` FOR EACH ROW BEGIN 
	CALL add_log('music_types', concat('Inserted with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_mt_u` AFTER UPDATE ON `music_types` FOR EACH ROW BEGIN 
	CALL add_log('music_types', concat('Updated with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_mt_d` AFTER DELETE ON `music_types` FOR EACH ROW BEGIN 
	CALL add_log('music_types', concat('Deleted with id ', OLD.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `user_like_view`
--

DROP TABLE IF EXISTS `user_like_view`;
/*!50001 DROP VIEW IF EXISTS `user_like_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_like_view` AS SELECT 
 1 AS `user_name`,
 1 AS `likes_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `city_id` bigint unsigned NOT NULL,
  `photo_id` bigint unsigned NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `login` (`login`),
  KEY `city_id` (`city_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Eleonore','Lowe',1,1,'anika14@example.com','1-963-511-7824x744','hunter64','f3e5adfd2b915d86c41290b55819ccbf18dc0bc0'),(2,'Carmella','Kunze',2,2,'phoebe48@example.org','(745)747-8724x7882','hstracke','9580e01ed8f03dda8c815c4626c6b584848800d8'),(3,'Shaniya','Kris',3,3,'saige30@example.org','01691752831','considine.martina','819475f4aa156e5292ffd5cf83f52ba60a971971'),(4,'Vernon','Feest',4,4,'nrodriguez@example.org','03429157452','lora36','2ad43d11b8d572357f2cc9ebfbc5b92ff2024b0c'),(5,'Anais','Dickinson',5,5,'eusebio.metz@example.com','08608724356','dedrick.dibbert','a27e33f6518cf6e403518c11df14b0659b37f819'),(6,'Marianna','Harris',6,6,'ondricka.sandy@example.net','260.093.2146x4477','charlotte.wiza','de1c6f540fe7c751d8cf8bf7698b2a64cc062d3b'),(7,'Mariah','Gutmann',7,7,'pearlie59@example.net','(613)810-4914','kaia.stracke','0d8086251fe5ddf0862e61fc62e9667f247ea909'),(8,'Pasquale','Carter',8,8,'esta82@example.com','046-671-6709x0375','sasha40','da1946c64a75e87fce1d41faf39628286ed5590a'),(9,'Carmen','Medhurst',9,9,'kreiger.marquise@example.org','+26(3)9028158749','vvolkman','5d2249358e67c97f34e75dbf7c797547d005db91'),(10,'Elva','Wilderman',10,10,'ryan.wendell@example.org','576.842.9949x40138','marvin.audrey','cfed22de7f6eb46f70037b29ae73054512c795d5'),(11,'Quinten','Cormier',11,11,'aletha63@example.org','740-280-4296','quinten.hoeger','2d988fc6a834214d08c577670b48e2e08e854e53'),(12,'Chad','Von',12,12,'stacey.gorczany@example.com','(093)904-4128x6462','bednar.cullen','83711d059813d0c0213a79d9750f18dc045c7aae'),(13,'Bryana','Mills',13,13,'kkoss@example.org','377-428-2623','frida.heidenreich','573c214ba1901a4f04b2e6a2681694d4c8fedf7b'),(14,'Alejandra','Kuhn',14,14,'qankunding@example.net','(988)918-2466','dkris','33bad7f127c63bfa66a94c5ec3f1a0930656e235'),(15,'Geo','Sipes',15,15,'lebsack.vivian@example.org','059-681-0793','torp.jeff','9aabdaf17c9db8528f76bf5fa2a777c1a93b1f1a'),(16,'Estelle','Koch',16,16,'bret.moore@example.com','(609)181-3089','ivory.schumm','57e2952790a90d12bfaf3bcd250014ebc538dbb6'),(17,'Mina','Johns',17,17,'samanta71@example.net','(443)741-0670','larson.eryn','06d0a14937f557c1f9c6a69197042b00caafb178'),(18,'Meredith','Lesch',18,18,'shields.selina@example.org','(473)287-9162x3029','daugherty.hoyt','5cd1fcb947fac6eb311693d9eff95b7766150213'),(19,'Unique','Block',19,19,'danny63@example.org','1-848-544-9419x20631','ortiz.demetrius','c3e609cde386e44ff3c2038bf7b0620e3bd6b15c'),(20,'Carli','Johns',20,20,'chaz.parker@example.org','524.323.9088','terrence48','73c564a48abfb9224d4c3654f38e8989a4544359');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_u_i` AFTER INSERT ON `users` FOR EACH ROW BEGIN 
	CALL add_log('users', concat('Inserted with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_u_u` AFTER UPDATE ON `users` FOR EACH ROW BEGIN 
	CALL add_log('users', concat('Updated with id ', NEW.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_log_u_d` AFTER DELETE ON `users` FOR EACH ROW BEGIN 
	CALL add_log('users', concat('Deleted with id ', OLD.id));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `music_author_view`
--

/*!50001 DROP VIEW IF EXISTS `music_author_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `music_author_view` AS select `m`.`name` AS `track_name`,`a`.`pseudonym` AS `author_name` from (`music` `m` join `authors` `a` on((`m`.`author_id` = `a`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `music_like_view`
--

/*!50001 DROP VIEW IF EXISTS `music_like_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `music_like_view` AS select `m`.`name` AS `music_name`,count(0) AS `likes_amount` from (`likes` `l` join `music` `m` on((`l`.`music_id` = `m`.`id`))) group by `music_name` order by `likes_amount` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `music_music_type_view`
--

/*!50001 DROP VIEW IF EXISTS `music_music_type_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `music_music_type_view` AS select `m`.`name` AS `music_name`,`mt`.`type` AS `music_type` from (`music` `m` join `music_types` `mt` on((`m`.`type_id` = `mt`.`id`))) group by `music_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `music_type_likes_view`
--

/*!50001 DROP VIEW IF EXISTS `music_type_likes_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `music_type_likes_view` AS select `mt`.`type` AS `music_type`,count(0) AS `likes_amount` from (`music_types` `mt` join (select `m`.`type_id` AS `music_type_id` from (`likes` `l` join `music` `m` on((`l`.`music_id` = `m`.`id`)))) `lm` on((`mt`.`id` = `lm`.`music_type_id`))) group by `music_type` order by `likes_amount` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_like_view`
--

/*!50001 DROP VIEW IF EXISTS `user_like_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_like_view` AS select `u`.`f_name` AS `user_name`,count(0) AS `likes_amount` from (`likes` `l` join `users` `u` on((`l`.`user_id` = `u`.`id`))) group by `user_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26 14:52:43
