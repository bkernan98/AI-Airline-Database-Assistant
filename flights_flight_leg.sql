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
-- Table structure for table `flight_leg`
--

DROP TABLE IF EXISTS `flight_leg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_leg` (
  `Flight_number` varchar(255) NOT NULL,
  `Leg_number` int NOT NULL,
  `Departure_airport_code` varchar(255) DEFAULT NULL,
  `Scheduled_departure_time` varchar(255) DEFAULT NULL,
  `Arrival_airport_code` varchar(255) DEFAULT NULL,
  `Scheduled_arrival_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Flight_number`,`Leg_number`),
  KEY `Departure_airport_code` (`Departure_airport_code`),
  KEY `Arrival_airport_code` (`Arrival_airport_code`),
  CONSTRAINT `flight_leg_ibfk_1` FOREIGN KEY (`Departure_airport_code`) REFERENCES `airport` (`Airport_code`),
  CONSTRAINT `flight_leg_ibfk_2` FOREIGN KEY (`Arrival_airport_code`) REFERENCES `airport` (`Airport_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_leg`
--

LOCK TABLES `flight_leg` WRITE;
/*!40000 ALTER TABLE `flight_leg` DISABLE KEYS */;
INSERT INTO `flight_leg` VALUES ('AA1522',1,'SFO','1159PM','ORD','604AM'),('AA3472',1,'ORD','719AM','MSN','819AM'),('B6624',1,'LAX','915PM','JFK','522AM'),('DL1149',1,'LAX','645PM','HNL','1043PM'),('DL5841',1,'OAK','1240PM','LAX','200PM'),('G4154',1,'IWA','406PM','SCK','451PM'),('G4155',1,'SCK','531PM','IWA','814PM'),('HA48',1,'HNL','215PM','OAK','930PM'),('WN380',1,'MDW','755AM','ONT','1010AM'),('WN380',2,'ONT','1045AM','SMF','1145AM');
/*!40000 ALTER TABLE `flight_leg` ENABLE KEYS */;
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
