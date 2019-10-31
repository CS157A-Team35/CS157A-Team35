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
  `photoID` varchar(45) NOT NULL DEFAULT '10',
  `listID` varchar(50) DEFAULT NULL,
  `photoURL` varchar(45) DEFAULT 'hekkkks',
  PRIMARY KEY (`photoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Photos`
--

LOCK TABLES `Photos` WRITE;
/*!40000 ALTER TABLE `Photos` DISABLE KEYS */;
INSERT INTO `Photos` VALUES ('1','1','niceone'),('10','10','a'),('100001','100001','www.search4houses.com/photos/100001.jpeg'),('100002','100001','www.search4houses.com/photos/100002.jpeg'),('100003','100002','www.search4houses.com/photos/100003.jpeg'),('100004','100002','www.search4houses.com/photos/100004.jpeg'),('100005','100002','www.search4houses.com/photos/100005.jpeg'),('100006','100002','www.search4houses.com/photos/100006.jpeg'),('100007','100003','www.search4houses.com/photos/100007.jpeg'),('100008','100003','www.search4houses.com/photos/100008.jpeg'),('100009','100003','www.drive.google.com/photo100009.jpeg'),('100010','100004','www.search4houses.com/photos/100010'),('100011','100004','mobileupload4006100011'),('100012','100005','mobileupload6815100012'),('100013','100006','www.drive.google.com/photo100013.jpeg'),('100014','100006','www.drive.google.com/photo100014.jpeg'),('100015','100006','www.drive.google.com/photo100015.jpeg'),('100016','100007','mobileupoad7314100016'),('100017','100007','mobileupoad7314100017'),('100018','100007','mobileupoad7314100018'),('100019','100007','mobileupoad7314100019'),('100020','100007','mobileupoad7314100020'),('100021','100007','mobileupoad7314100021'),('100022','100008','www.search4houses.com/photos/100022.jpeg'),('100023','100008','www.search4houses.com/photos/100023.jpeg'),('100024','100008','www.search4houses.com/photos/100024.jpeg'),('100025','100008','mobileupoad7314100025'),('100026','100008','www.search4houses.com/photos/100026.jpeg'),('100027','100009','www.google.com/photos/neigborhood100027.jpg'),('100028','100009','www.google.com/photos/apartment100028.jpg'),('100029','100012','www.search4houses.com/photos/100029.jpeg'),('100030','100013','mobileupoad8282100030'),('100031','100014','www.google.com/photos/apartment100031.jpg'),('100032','100015','www.drive.google.com/photo100032.jpeg'),('100033','100015','www.search4houses.com/photos/100033.jpeg'),('11','11','b'),('12','12','c'),('13','13','d'),('14','14','e'),('2','2','studio'),('3','3','cool'),('4','4','image'),('5','5','cute'),('6','6','wow'),('7','7','banana'),('8','8','duplex'),('9','9','duplezz');
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

-- Dump completed on 2019-10-30 22:13:57
