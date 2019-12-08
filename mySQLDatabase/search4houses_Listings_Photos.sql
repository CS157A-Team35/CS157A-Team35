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
-- Table structure for table `Listings_Photos`
--

DROP TABLE IF EXISTS `Listings_Photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Listings_Photos` (
  `photo_id` int(11) NOT NULL,
  `listing_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listings_Photos`
--

LOCK TABLES `Listings_Photos` WRITE;
/*!40000 ALTER TABLE `Listings_Photos` DISABLE KEYS */;
INSERT INTO `Listings_Photos` VALUES (1,'11'),(2,'4'),(3,'1'),(4,'2'),(5,'5'),(6,'3'),(7,'7'),(8,'8'),(9,'9'),(10,'10'),(11,'12'),(12,'13'),(13,'14'),(14,'6'),(15,'3'),(16,'3'),(17,'15'),(18,'15'),(19,'16'),(20,'16'),(21,'16'),(22,'16'),(23,'17'),(24,'17'),(25,'17'),(26,'18'),(27,'18'),(28,'19'),(29,'20'),(30,'20'),(31,'20'),(32,'21'),(33,'21'),(34,'21'),(35,'21'),(36,'21'),(37,'21'),(38,'22'),(39,'22'),(40,'22'),(41,'22'),(42,'22'),(43,'23'),(44,'24'),(45,'25'),(46,'26'),(47,'27'),(48,'28'),(49,'29'),(50,'30'),(51,'31'),(52,'32'),(53,'32'),(54,'32'),(55,'32'),(56,'33'),(57,'34'),(58,'35'),(59,'36'),(60,'37'),(61,'38'),(62,'39'),(63,'39'),(64,'41'),(65,'42'),(66,'43'),(67,'43');
/*!40000 ALTER TABLE `Listings_Photos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08  2:22:31
