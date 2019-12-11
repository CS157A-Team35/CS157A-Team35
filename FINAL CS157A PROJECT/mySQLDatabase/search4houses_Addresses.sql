-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: search4houses
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Addresses` (
  `addrID` int(11) NOT NULL,
  `streetAddress` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`addrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
INSERT INTO `Addresses` VALUES (1,'123 Sesame Street','San Jose','CA','95111'),(2,'345 Hangry Avenue\r\n','San Jose\r\n','CA\r\n\r\n\r\n\r\n\r\n\r\n','95111'),(3,'123 Apple Drive','San Jose','CA','95111'),(4,'9473 Saint Row','San Jose','CA','95111'),(5,'456 Obama Drive','San Jose','CA','95111'),(6,'92 Good Street','San Jose','CA','95111'),(7,'745 N Abel Street','San Jose','CA','95111'),(8,'1771 N Milpitas Boulevard ','San Jose','CA','95111'),(9,'38101 Kearsarge Mill Road','San Jose','CA','95111'),(10,'321 Chicken Way','San Jose','CA','95111'),(11,'423 Mamayack Drive','San Jose','CA','95111'),(12,'4938 Tiktok Street','San Jose','CA','95111'),(13,'4367 Pogs Drive','San Jose','CA','95111'),(14,'232 Pepe Way','San Jose','CA','95111'),(15,'123 Sesame Street','San Jose','CA','95131'),(16,'234 Main Street','San Jose','CA','95110'),(17,'345 Fumia Place','San Jose','CA','95136'),(18,'456 Ryland Court','San Jose','CA','95152'),(19,'567 Scott Street','San Jose','CA','95190'),(20,'678 Central Road','San Jose','CA','95196'),(21,'789 Washington Road','San Jose','CA','95106'),(22,'111 San Fernando','San Jose','CA','94088'),(23,'112 Paseo Padre','San Jose','CA','95002'),(24,'113 Osgood Road','San Jose','CA','95054'),(25,'114 Santa Clara Street','San Jose','CA','95050'),(26,'115 7th Street','San Jose','CA','94560'),(27,'116 Los Gatos Boulevard','San Jose','CA','95123'),(28,'117 Fremont Street','San Jose','CA','95151'),(29,'118 Santa Cruz Road','San Jose','CA','95123'),(30,'8','8','AL\r\n','8'),(31,'85','843','AL\r\n','83221'),(32,'85 Bob Street\r\n','Zeem\r\n','CO\r\n','74821 '),(33,'Harry Potter Drive\r\n','San Jose\r\n','CA\r\n','95111'),(34,'32 Hi Street\r\n','San Jose\r\n','CA\r\n','95111'),(35,'13 bob Ave\r\n','San Jose\r\n','CA\r\n','95111'),(36,'32 Hi Street\r\n','San Jose\r\n','CA\r\n','95111'),(37,'13 bob Ave\r\n','San Jose\r\n','CA\r\n','95111\r\n'),(38,'111 Holla Way\r\n','San Jose\r\n','CA\r\n','95111\r\n'),(39,'101 Nickel Back Drive\r\n','San Jose\r\n','CA\r\n','95111\r\n'),(40,'133 Beens Ave\r\n','San Jose\r\n','CA\r\n','95111\r\n'),(41,'65 Good Babbies Street\r\n','San Jose\r\n','CA\r\n','95111\r\n'),(42,'90 Rad street\r\n','San Jose\r\n','CA\r\n','95111\r\n'),(43,'33 Cute Drive\r\n','San Jose\r\n','CA\r\n','95111\r\n'),(44,'123 Candy Lane\r\n','San Jose\r\n','CA\r\n','95111\r\n'),(45,'299 Two Nine Nine Way\r\n','san jose\r\n','CA\r\n','95111\r\n');
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08  3:24:37
