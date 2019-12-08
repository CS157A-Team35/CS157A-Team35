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
-- Table structure for table `Accounts`
--

DROP TABLE IF EXISTS `Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accounts` (
  `accID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `fullName` varchar(45) DEFAULT NULL,
  `profilePicURL` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phoneNum` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`accID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts`
--

LOCK TABLES `Accounts` WRITE;
/*!40000 ALTER TABLE `Accounts` DISABLE KEYS */;
INSERT INTO `Accounts` VALUES (1,'Bob','password','Bob','/billy','hi@gmail.com','408-531-9329'),(2,'Yusuf','Arman','Yusuf Arman','/yusufarman','ya@gmail.com','499-499-4999'),(3,'bing','nani123','Billy Nhieu','/billyn','billy@gmail.com','408-472-1592'),(4,'mannyh','pacquaa1','Manny Paqua','/mannyp','mp@gmail.com','538-482-4238'),(5,'eggz','eggboi1','Egg Man','/eggm','eggm@gmail.com','538-830-4289'),(6,'danker','danky9','Dangerous Man','/danger','dangerman@gmail.com','439-428-2481'),(7,'kylek','kylek2000','kyle kennedy','www.kyle.com/profilepic','kyle@gmail.com','408-000-0001'),(8,'lennyl','lennyl2001','lenny leonard','www.lenny.com/profilepic','lenny@gmail.com','408-000-0002'),(9,'mom','mom2002','mo matsbe','www.mo.com/profilepic','mo@gmail.com','408-000-0003'),(10,'nickn','nickn2003','nick noran','www.nick.com/profilepic','nick@gmail.com','408-000-0004'),(11,'oscaro','oscaro2004','oscar obrien','www.oscar.com/profilepic','oscar@gmail.com','408-000-0005'),(12,'alexa','alexa1990','alex armedano','www.alex.com/profilepic','alex@gmail.com','408-012-3456'),(13,'bobb','bobb1991','bob barnes','www.bob.com/profilepic','bob@gmail.com','408-123-4567'),(14,'candacec','candace1992','candace conney','www.candace.com/profilepic','candace@gmail.com','408-234-5678'),(15,'dannyd','dannyd1993','danny davis','www.danny.com/profilepic','danny@gmail.com','408-345-6789'),(16,'elliee','ellie1994','ellie eyamore','www.ellie.com/profilepic','ellie@gmail.com','408-456-7890'),(17,'frankf','frankf1995','frank feeney','www.frank.com/profilepic','frank@gmail.com','408-567-8901'),(18,'garyg','garyg1996','gary gomez','www.gary.com/profilepic','gary@gmail.com','408-678-9012'),(19,'harryh','harryh1997','harry holmes','www.harry.com/profilepic','harry@gmail.com','408-789-0123'),(20,'ivani','ivani1998','ivan isador','www.ivan.com/profilepic','ivan@gmail.com','408-890-1234'),(21,'johnj','johnj1999','john jacobson','www.john.com/profilepic','john@gmail.com','408-901-2345'),(22,'stina','stina','stina',NULL,'stina@gmail.com','123-456-7890'),(23,'nick','password','nickel back',NULL,'nick@nick.com','111-111-1111');
/*!40000 ALTER TABLE `Accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08  2:22:32
