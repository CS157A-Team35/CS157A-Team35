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
-- Table structure for table `AdditionalContacts`
--

DROP TABLE IF EXISTS `AdditionalContacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AdditionalContacts` (
  `contactAccID` int(11) NOT NULL,
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
INSERT INTO `AdditionalContacts` VALUES (1,'408-537-2892','hi@gmail.com','Bob'),(2,'230-238-4292','nana@gmail.com','Nana'),(3,'104-248-2482','henry@gmail.com','Henry'),(4,'279-219-3292','taco@gmail.com','Taco'),(5,'538-111-4211','angry@gmail.com','Angry'),(6,'111-222-3333','number@gmail.com','Number'),(7,'019-421-4819','chief@gmail.com','Chief'),(8,'021-414-1411','george@gmail.com','George'),(9,'202-232-2311','red@gmail.com','Red'),(10,'329-421-1900','ginny@gmail.com','Ginny'),(11,'320-0955-5393','hammy@gmail.com','Ham'),(12,'987-878-2912','rem@gmail.com','Rem'),(13,'299-328-2389','kyo@gmail.com','Kyo'),(14,'920-249-3219','expo@gmail.com','Expo'),(15,'248-248-1911','debt@gmail.com','Debt'),(16,'408-000-0006','paul@gmail.com','Paul'),(17,'408-000-0007','quincey@gmail.com','Quincey'),(18,'408-000-0008','ron@gmail.com','Ron'),(19,'408-000-0009','sam@gmail.com','Sam'),(20,'408-000-0010','tom@gmail.com','Tom'),(21,'408-000-0011','victor@gmail.com','Victor'),(22,'408-000-0012','walter@gmail.com','Walter'),(23,'408-000-0013','yasmeen@gmail.com','Yasmeen'),(24,'408-000-0014','katie@gmail.com','Katie'),(25,'408-000-0015','catherine@gmail.com','Catherine'),(26,'408-000-0016','joey@gmail.com','Joey'),(27,'408-000-0017','ben@gmail.com','Ben'),(28,'408-000-0018','sarah@gmail.com','Sarah'),(29,'408-000-0019','abdu@gmail.com','Abdu'),(30,'408-000-0020','matt@gmail.com','Matt'),(31,'785-424-2121\r\n','mrbob@gmail.com\r\n','Mr Bob\r\n'),(33,'123-456-7890','stina@gmail.com','stina'),(34,'104-248-2482\r\n','henry@gmail.com\r\n','Henrie\r\n'),(35,'104-248-2482\r\n','henry@gmail.com\r\n','Henry\r\n'),(36,'408-537-2892\r\n','hi@gmail.com\r\n','Bob\r\n'),(37,'111-111-1111','nick@nick.com','nickel back'),(38,'222-222-2222','Chill@gmail.com','Coke Cake'),(39,'333-333-3333','jennie@yahoo.com','Jennie'),(40,'123-123-1234\r\n','christinanguyen@gmail.com\r\n','Christina Nguyen\r\n');
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

-- Dump completed on 2019-12-08  3:24:38
