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
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationality` (
  `nationality_id` int NOT NULL,
  `nationality_name` mediumtext,
  PRIMARY KEY (`nationality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
INSERT INTO `nationality` VALUES (1,'Albania'),(2,'Andorra'),(3,'Armenia'),(4,'Austria'),(5,'Azerbaijan'),(6,'Belarus'),(7,'Belgium'),(8,'Bosnia and Herzegovina'),(9,'Bulgaria'),(10,'Croatia'),(11,'Cyprus'),(12,'Czech Republic'),(13,'Denmark'),(14,'England'),(15,'Montenegro'),(16,'Faroe Islands'),(17,'Finland'),(18,'France'),(19,'North Macedonia'),(20,'Georgia'),(21,'Germany'),(22,'Greece'),(23,'Hungary'),(24,'Iceland'),(25,'Republic of Ireland'),(26,'Israel'),(27,'Italy'),(28,'Latvia'),(29,'Liechtenstein'),(30,'Lithuania'),(31,'Luxembourg'),(32,'Malta'),(33,'Moldova'),(34,'Netherlands'),(35,'Northern Ireland'),(36,'Norway'),(37,'Poland'),(38,'Portugal'),(39,'Romania'),(40,'Russia'),(41,'San Marino'),(42,'Scotland'),(43,'Slovakia'),(44,'Slovenia'),(45,'Spain'),(46,'Sweden'),(47,'Switzerland'),(48,'Turkey'),(49,'Ukraine'),(50,'Wales'),(51,'Serbia'),(52,'Argentina'),(53,'Bolivia'),(54,'Brazil'),(55,'Chile'),(56,'Colombia'),(57,'Ecuador'),(58,'Paraguay'),(59,'Peru'),(60,'Uruguay'),(61,'Venezuela'),(63,'Antigua and Barbuda'),(64,'Aruba'),(66,'Barbados'),(67,'Belize'),(68,'Bermuda'),(70,'Canada'),(72,'Costa Rica'),(73,'Cuba'),(76,'El Salvador'),(77,'Grenada'),(78,'Guatemala'),(79,'Guyana'),(80,'Haiti'),(81,'Honduras'),(82,'Jamaica'),(83,'Mexico'),(84,'Montserrat'),(85,'Curacao'),(86,'Nicaragua'),(87,'Panama'),(88,'Puerto Rico'),(89,'Saint Kitts and Nevis'),(90,'Saint Lucia'),(91,'Saint Vincent and the Grenadines'),(92,'Suriname'),(93,'Trinidad and Tobago'),(95,'United States'),(97,'Algeria'),(98,'Angola'),(99,'Benin'),(101,'Burkina Faso'),(102,'Burundi'),(103,'Cameroon'),(104,'Cape Verde Islands'),(105,'Central African Republic'),(106,'Chad'),(107,'Congo'),(108,'Côte d\'Ivoire'),(110,'Congo DR'),(111,'Egypt'),(112,'Equatorial Guinea'),(113,'Eritrea'),(114,'Ethiopia'),(115,'Gabon'),(116,'Gambia'),(117,'Ghana'),(118,'Guinea'),(119,'Guinea Bissau'),(120,'Kenya'),(122,'Liberia'),(123,'Libya'),(124,'Madagascar'),(125,'Malawi'),(126,'Mali'),(127,'Mauritania'),(128,'Mauritius'),(129,'Morocco'),(130,'Mozambique'),(131,'Namibia'),(132,'Niger'),(133,'Nigeria'),(134,'Rwanda'),(135,'São Tomé e Príncipe'),(136,'Senegal'),(138,'Sierra Leone'),(139,'Somalia'),(140,'South Africa'),(141,'Sudan'),(142,'Swaziland'),(143,'Tanzania'),(144,'Togo'),(145,'Tunisia'),(146,'Uganda'),(147,'Zambia'),(148,'Zimbabwe'),(149,'Afghanistan'),(150,'Bahrain'),(152,'Bhutan'),(153,'Brunei Darussalam'),(154,'Cambodia'),(155,'China PR'),(157,'Guam'),(158,'Hong Kong'),(159,'India'),(160,'Indonesia'),(161,'Iran'),(162,'Iraq'),(163,'Japan'),(164,'Jordan'),(165,'Kazakhstan'),(166,'Korea DPR'),(167,'Korea Republic'),(168,'Kuwait'),(169,'Kyrgyzstan'),(171,'Lebanon'),(172,'Macau'),(173,'Malaysia'),(177,'Nepal'),(178,'Oman'),(179,'Pakistan'),(180,'Palestine'),(181,'Philippines'),(182,'Qatar'),(183,'Saudi Arabia'),(184,'Singapore'),(185,'Sri Lanka'),(186,'Syria'),(187,'Tajikistan'),(188,'Thailand'),(189,'Turkmenistan'),(190,'United Arab Emirates'),(191,'Uzbekistan'),(192,'Vietnam'),(195,'Australia'),(197,'Fiji'),(198,'New Zealand'),(199,'Papua New Guinea'),(204,'Vanuatu'),(205,'Gibraltar'),(207,'Dominican Republic'),(208,'Estonia'),(212,'Timor-Leste'),(213,'Chinese Taipei'),(214,'Comoros'),(215,'New Caledonia'),(218,'South Sudan'),(219,'Kosovo'),(1037,'Monaco');
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12  9:37:16
