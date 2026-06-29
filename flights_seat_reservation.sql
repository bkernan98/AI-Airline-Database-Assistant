-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: flights
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `seat_reservation`
--

DROP TABLE IF EXISTS `seat_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat_reservation` (
  `Flight_number` varchar(255) NOT NULL,
  `Leg_number` int DEFAULT NULL,
  `Reservation_date` date DEFAULT NULL,
  `Seat_number` varchar(255) DEFAULT NULL,
  `Customer_name` varchar(255) NOT NULL,
  `Customer_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Flight_number`,`Customer_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_reservation`
--

LOCK TABLES `seat_reservation` WRITE;
/*!40000 ALTER TABLE `seat_reservation` DISABLE KEYS */;
INSERT INTO `seat_reservation` VALUES ('AA1522',1,'2018-08-05','7F','An','555-0022'),('AA1522',1,'2018-08-05','6A','Dorothy','555-0016'),('AA1522',1,'2018-08-05','13A','Lisa','555-0020'),('AA1522',1,'2018-08-05','7E','Max','555-0017'),('AA1522',1,'2018-08-05','7F','Michael','555-0019'),('AA3472',1,'2018-08-05','7A','Alicia','555-0027'),('AA3472',1,'2018-08-05','7E','Antonio','555-0029'),('AA3472',1,'2018-08-05','1A','Edgar','555-0023'),('AA3472',1,'2018-08-05','2B','Jaskaran','555-0030'),('AA3472',1,'2018-08-05','6A','KH','555-0025'),('B6624',1,'2018-02-09','7D','Drew','555-0021'),('B6624',1,'2018-02-09','3D','Hillary','555-0028'),('B6624',1,'2018-02-09','7B','Jeremy','555-0024'),('B6624',1,'2018-02-09','2A','Jillian','555-0018'),('B6624',1,'2018-02-09','7C','Katya','555-0026'),('DL1149',1,'2018-02-09','8A','Carissa','555-0008'),('DL1149',1,'2018-02-09','17A','Mark','555-0002'),('DL1149',1,'2018-02-09','11B','Naomi','555-0004'),('DL5841',1,'2018-02-09','7A','Edgar','555-0003'),('DL5841',1,'2018-02-09','7C','Jillian','555-0007'),('DL5841',1,'2018-02-09','7D','KC','555-0006'),('DL5841',1,'2018-02-09','7F','Mitchell','555-0005'),('G4154',1,'2018-01-31','11A','Dan','555-0000'),('G4154',1,'2018-01-31','1A','Mike','555-5309'),('G4154',1,'2018-01-31','3A','Ryan','555-0001'),('G4155',1,'2018-01-28','2A','Deana','867-5309'),('HA48',1,'2018-02-24','1E','Alex','555-0012'),('HA48',1,'2018-02-24','7E','Clement','555-0009'),('HA48',1,'2018-02-24','10A','John','555-0010'),('HA48',1,'2018-02-24','14A','KH','555-0013'),('HA48',1,'2018-02-24','6A','Kyla','555-0015'),('HA48',1,'2018-02-24','15E','Lisa','555-0014'),('HA48',1,'2018-02-24','13A','Sahib','555-0011'),('WN380',2,'2018-08-05','7E','Alex','555-0039'),('WN380',1,'2018-08-05','8F','Clement','555-0036'),('WN380',2,'2018-08-05','23D','Danilo','555-0037'),('WN380',2,'2018-08-05','10C','Drew','555-0042'),('WN380',2,'2018-08-05','9A','KC','555-0040'),('WN380',2,'2018-08-05','7B','Kyla','555-0041'),('WN380',1,'2018-08-05','7F','Mitchell','555-0035'),('WN380',1,'2018-08-05','8A','Naomi','555-0034'),('WN380',1,'2018-08-05','7A','Norlan','555-0032'),('WN380',1,'2018-08-05','9B','Ryan','555-0033'),('WN380',2,'2018-08-05','19A','Sahib','555-0038'),('WN380',1,'2018-08-05','7C','Tom','555-0031');
/*!40000 ALTER TABLE `seat_reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-29 16:55:26
