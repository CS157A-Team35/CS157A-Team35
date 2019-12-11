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
-- Table structure for table `Favorites`
--

DROP TABLE IF EXISTS `Favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Favorites` (
  `listID` int(11) NOT NULL,
  `listing1ID` varchar(45) DEFAULT NULL,
  `listing2ID` varchar(45) DEFAULT NULL,
  `listing3ID` varchar(45) DEFAULT NULL,
  `listing4ID` varchar(45) DEFAULT NULL,
  `listing5ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`listID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Favorites`
--

LOCK TABLES `Favorites` WRITE;
/*!40000 ALTER TABLE `Favorites` DISABLE KEYS */;
INSERT INTO `Favorites` VALUES (1,'14\r\n','33\r\n',NULL,NULL,NULL),(2,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(3,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(4,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(5,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(6,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(7,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(8,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(9,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(10,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(11,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(12,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(13,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(14,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(15,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(16,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(17,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(21,'2\r\n','9\r\n','9\r\n','9\r\n','14\r\n'),(22,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Favorites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08  3:24:38
