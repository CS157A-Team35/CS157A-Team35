CREATE DATABASE  IF NOT EXISTS `search4houses` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `search4houses`;
-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: search4houses
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `AdditionalContacts`
--

DROP TABLE IF EXISTS `AdditionalContacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AdditionalContacts` (
  `contactAccID` varchar(45) NOT NULL DEFAULT '10',
  `listingID` varchar(50) NOT NULL DEFAULT '10',
  `phoneNum` varchar(45) DEFAULT '408-408-4084',
  `email` varchar(45) DEFAULT 'billy@gmail.com',
  `name` varchar(45) DEFAULT 'Bob',
  PRIMARY KEY (`contactAccID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdditionalContacts`
--

LOCK TABLES `AdditionalContacts` WRITE;
/*!40000 ALTER TABLE `AdditionalContacts` DISABLE KEYS */;
INSERT INTO `AdditionalContacts` VALUES ('10016','100008','408-000-0006','paul@gmail.com','Paul'),('10017','100008','408-000-0007','quincey@gmail.com','Quincey'),('10018','100008','408-000-0008','ron@gmail.com','Ron'),('10019','100008','408-000-0009','sam@gmail.com','Sam'),('10020','100008','408-000-0010','tom@gmail.com','Tom'),('10021','100008','408-000-0011','victor@gmail.com','Victor'),('10022','100015','408-000-0012','walter@gmail.com','Walter'),('10023','100006','408-000-0013','yasmeen@gmail.com','Yasmeen'),('10024','100002','408-000-0014','katie@gmail.com','Katie'),('10025','100003','408-000-0015','catherine@gmail.com','Catherine'),('10026','100007','408-000-0016','joey@gmail.com','Joey'),('10027','100015','408-000-0017','ben@gmail.com','Ben'),('10028','100006','408-000-0018','sarah@gmail.com','Sarah'),('10029','100007','408-000-0019','abdu@gmail.com','Abdu'),('10030','100015','408-000-0020','matt@gmail.com','Matt');
/*!40000 ALTER TABLE `AdditionalContacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29  8:34:51
