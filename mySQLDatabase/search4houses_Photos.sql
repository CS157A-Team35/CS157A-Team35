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
-- Table structure for table `Photos`
--

DROP TABLE IF EXISTS `Photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Photos` (
  `photoID` int(11) NOT NULL,
  `photoURL` varchar(45) DEFAULT 'hekkkks',
  PRIMARY KEY (`photoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Photos`
--

LOCK TABLES `Photos` WRITE;
/*!40000 ALTER TABLE `Photos` DISABLE KEYS */;
INSERT INTO `Photos` VALUES (1,'niceone'),(2,'studio'),(3,'cool'),(4,'image'),(5,'cute'),(6,'wow'),(7,'banana'),(8,'duplex'),(9,'duplezz'),(10,'a'),(11,'b'),(12,'c'),(13,'d'),(14,'e'),(15,'apartinside'),(16,'bathrooom'),(17,'apartment1'),(18,'www.search4houses.com/photos/100002.jpeg'),(19,'www.search4houses.com/photos/100003.jpeg'),(20,'www.search4houses.com/photos/100004.jpeg'),(21,'www.search4houses.com/photos/100005.jpeg'),(22,'www.search4houses.com/photos/100006.jpeg'),(23,'www.search4houses.com/photos/100007.jpeg'),(24,'www.search4houses.com/photos/100008.jpeg'),(25,'www.drive.google.com/photo100009.jpeg'),(26,'www.search4houses.com/photos/100010'),(27,'mobileupload4006100011'),(28,'mobileupload6815100012'),(29,'www.drive.google.com/photo100013.jpeg'),(30,'www.drive.google.com/photo100014.jpeg'),(31,'www.drive.google.com/photo100015.jpeg'),(32,'mobileupoad7314100016'),(33,'mobileupoad7314100017'),(34,'mobileupoad7314100018'),(35,'mobileupoad7314100019'),(36,'mobileupoad7314100020'),(37,'mobileupoad7314100021'),(38,'www.search4houses.com/photos/100022.jpeg'),(39,'www.search4houses.com/photos/100023.jpeg'),(40,'www.search4houses.com/photos/100024.jpeg'),(41,'mobileupoad7314100025'),(42,'www.search4houses.com/photos/100026.jpeg'),(43,'www.google.com/photos/neigborhood100027.jpg'),(44,'www.google.com/photos/apartment100028.jpg'),(45,'www.search4houses.com/photos/100029.jpeg'),(46,'sharedd'),(47,'www.google.com/photos/apartment100031.jpg'),(48,'studioo'),(49,'www.search4houses.com/photos/100033.jpeg'),(50,'duplezz\r\n'),(51,'e'),(52,'image\r\n'),(53,'e\r\n'),(54,'image\r\n'),(55,'e\r\n');
/*!40000 ALTER TABLE `Photos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02  4:09:09
