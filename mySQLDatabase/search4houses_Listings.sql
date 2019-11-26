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
-- Table structure for table `Listings`
--

DROP TABLE IF EXISTS `Listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Listings` (
  `listingID` varchar(50) NOT NULL DEFAULT '10',
  `roomType` varchar(50) DEFAULT 'House',
  `price` int(100) DEFAULT '99',
  `leaseTimeframe` int(100) DEFAULT '99',
  `roomNum` int(100) DEFAULT '1',
  `bathroomNum` int(100) DEFAULT '1',
  `description` varchar(100) DEFAULT 'No additional information available.',
  PRIMARY KEY (`listingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listings`
--

LOCK TABLES `Listings` WRITE;
/*!40000 ALTER TABLE `Listings` DISABLE KEYS */;
INSERT INTO `Listings` VALUES ('1','Single Room',10,21,1,1,'No additional information available.'),('10','Single Room',99,99,1,1,'No additional information available.'),('100001','Shared Room',600,10,2,2,'no pets allowed'),('100002','Single Room',1000,12,3,3,'living with a family'),('100003','Single Room',800,12,3,2,'living with a family'),('100004','Single Room',1200,3,2,1,'no partying'),('100005','Shared Room',500,1,1,1,'No additional information available.'),('100006','House',4500,18,6,4,'ready for immediate move-in'),('100007','House',5000,9,5,3,'nice neigborhood'),('100008','Apartment',3000,6,4,2,'gated community'),('100009','Apartment',3500,25,4,3,'safe'),('100010','Shared Room',300,1,1,1,'affordable place in downtown'),('100011','House',8500,24,6,8,'No additional information available.'),('100012','Apartment',3500,4,2,1,'No additional information available.'),('100013','Shared Room',450,4,2,1,'No additional information available.'),('100014','Apartment',2000,1,1,1,'No additional information available.'),('100015','Studio',1500,12,1,1,'roomy place for one with lots of space'),('11','Single Room',21,99,1,1,'No additional information available.'),('12','Single Room',12,99,1,1,'No additional information available.'),('13','Single Room',32,99,1,1,'No additional information available.'),('14','Shared Room',193,99,1,1,'No additional information available.'),('2','Single Room',2,11,1,1,'No additional information available.'),('3','Apartment',5,12,1,2,'No additional information available.'),('4','Studio',11,2,2,3,'No additional information available.'),('5','Apartment',32,99,2,2,'No additional information available.'),('6','Apartment',10420,99,4,2,'No additional information available.'),('7','Apartment',450,99,1,5,'No additional information available.'),('8','Duplex',10000,2,3,1,'No additional information available.'),('9','Duplex',32,200,10,3,'No additional information available.');
/*!40000 ALTER TABLE `Listings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-26 11:20:02
