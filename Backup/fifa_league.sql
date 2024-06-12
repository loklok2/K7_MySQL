-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: fifa
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
-- Table structure for table `league`
--

DROP TABLE IF EXISTS `league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `league` (
  `league_id` int NOT NULL,
  `league_name` text,
  `league_level` int DEFAULT NULL,
  PRIMARY KEY (`league_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league`
--

LOCK TABLES `league` WRITE;
/*!40000 ALTER TABLE `league` DISABLE KEYS */;
INSERT INTO `league` VALUES (1,'Superliga',1),(4,'Jupiler Pro League',1),(7,'Serie A',1),(10,'Eredivisie',1),(13,'Premier League',1),(14,'Championship',2),(16,'Ligue 1',1),(17,'Ligue 2',2),(19,'Bundesliga',1),(20,'2. Bundesliga',2),(31,'Serie A',1),(32,'Serie B',2),(39,'Major League Soccer',1),(41,'Eliteserien',1),(50,'Premiership',1),(53,'La Liga',1),(54,'La Liga 2',2),(56,'Allsvenskan',1),(60,'League One',3),(61,'League Two',4),(63,'Super League',1),(64,'NB I.',1),(65,'Premier Division',1),(66,'Ekstraklasa',1),(67,'Premier League',1),(68,'Super Lig',1),(78,'Friendly International',NULL),(80,'Bundesliga',1),(83,'K League 1',1),(189,'Super League',1),(308,'Liga Portugal',1),(317,'1. HNL',1),(318,'1. Division',1),(319,'Fortuna Liga',1),(322,'Veikkausliiga',1),(330,'Liga 1',1),(332,'Premier League',1),(335,'Primera Division',1),(336,'Liga BetPlay',1),(337,'Primera División',1),(338,'Primera Division',1),(341,'Liga MX',1),(347,'Premier League',1),(349,'J-League',1),(350,'Pro League',1),(351,'A-League',1),(353,'Liga Profesional',1),(2012,'Super League',1),(2013,'Pro League',1),(2017,'Liga De Futbol Prof',1),(2018,'Liga Pro',1),(2019,'Primera Division',1),(2020,'Primera Division',1),(2025,'Serie B',2),(2076,'3. Liga',3),(2149,'Super League',1);
/*!40000 ALTER TABLE `league` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12  9:37:15
