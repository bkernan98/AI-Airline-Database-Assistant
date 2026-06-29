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
-- Table structure for table `leg_instance`
--

DROP TABLE IF EXISTS `leg_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leg_instance` (
  `Flight_number` varchar(255) NOT NULL,
  `Leg_number` int NOT NULL,
  `Leg_date` date NOT NULL,
  `Number_of_available_seats` int DEFAULT NULL,
  `Airplane_id` int DEFAULT NULL,
  `Departure_airport_code` varchar(255) DEFAULT NULL,
  `Departure_time` varchar(255) DEFAULT NULL,
  `Arrival_airport_code` varchar(255) DEFAULT NULL,
  `Arrival_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Flight_number`,`Leg_number`,`Leg_date`),
  KEY `Airplane_id` (`Airplane_id`),
  KEY `Departure_airport_code` (`Departure_airport_code`),
  KEY `Arrival_airport_code` (`Arrival_airport_code`),
  CONSTRAINT `leg_instance_ibfk_1` FOREIGN KEY (`Airplane_id`) REFERENCES `airplane` (`Airplane_id`),
  CONSTRAINT `leg_instance_ibfk_2` FOREIGN KEY (`Departure_airport_code`) REFERENCES `airport` (`Airport_code`),
  CONSTRAINT `leg_instance_ibfk_3` FOREIGN KEY (`Arrival_airport_code`) REFERENCES `airport` (`Airport_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leg_instance`
--

LOCK TABLES `leg_instance` WRITE;
/*!40000 ALTER TABLE `leg_instance` DISABLE KEYS */;
INSERT INTO `leg_instance` VALUES ('AA1522',1,'2018-08-05',70,9,'SFO','1205AM','ORD','604AM'),('AA3472',1,'2018-08-05',15,18,'ORD','719AM','MSN','819AM'),('B6624',1,'2018-02-09',100,1,'LAX','915PM','JFK','522AM'),('DL1149',1,'2018-02-09',20,13,'LAX','645PM','HNL','1043PM'),('DL5841',1,'2018-02-09',5,21,'OAK','1245PM','LAX','205PM'),('G4154',1,'2018-02-03',19,28,'SCK','406PM','IWA','451PM'),('G4155',1,'2018-01-28',3,28,'SCK','535PM','IWA','819PM'),('G4155',1,'2018-01-31',16,28,'SCK','531PM','IWA','813PM'),('HA48',1,'2018-02-24',10,30,'HNL','215PM','OAK','910PM'),('WN380',1,'2018-08-05',130,10,'MDW','755AM','ONT','1010AM'),('WN380',2,'2018-08-05',130,10,'ONT','1045AM','SMF','1145AM');
/*!40000 ALTER TABLE `leg_instance` ENABLE KEYS */;
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
