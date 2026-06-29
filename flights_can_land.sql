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
-- Table structure for table `can_land`
--

DROP TABLE IF EXISTS `can_land`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `can_land` (
  `Airplane_type_name` varchar(255) NOT NULL,
  `Airport_code` varchar(255) NOT NULL,
  PRIMARY KEY (`Airplane_type_name`,`Airport_code`),
  KEY `Airport_code` (`Airport_code`),
  CONSTRAINT `can_land_ibfk_1` FOREIGN KEY (`Airplane_type_name`) REFERENCES `airplane_type` (`Airplane_type_name`),
  CONSTRAINT `can_land_ibfk_2` FOREIGN KEY (`Airport_code`) REFERENCES `airport` (`Airport_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `can_land`
--

LOCK TABLES `can_land` WRITE;
/*!40000 ALTER TABLE `can_land` DISABLE KEYS */;
INSERT INTO `can_land` VALUES ('757','DCA'),('747','DEN'),('A321','DEN'),('A321','DFW'),('787','EWR'),('ERJ145','FAT'),('707','HNL'),('757','HNL'),('A332','HNL'),('777','IAD'),('787','IAH'),('A320','IAH'),('ERJ145','IWA'),('MD80','IWA'),('747','JFK'),('787','JFK'),('A320','JFK'),('737','LAS'),('757','LAS'),('MD80','LAS'),('170','LAX'),('727','LAX'),('757','LAX'),('777','LAX'),('A320','LAX'),('707','MDW'),('737','MDW'),('A319','MDW'),('CRJ100','MSN'),('CRJ440','MSN'),('CRJ700','MSN'),('ERJ145','MSN'),('747','MSP'),('A319','MSP'),('CRJ100','MSP'),('CRJ440','MSP'),('170','OAK'),('190','OAK'),('707','OAK'),('737','OAK'),('A332','OAK'),('737','ONT'),('737','ORD'),('747','ORD'),('777','ORD'),('CRJ700','ORD'),('ERJ145','ORD'),('757','PHX'),('A319','PHX'),('737','SAN'),('MD80','SAN'),('MD80','SCK'),('737','SFO'),('747','SFO'),('A319','SFO'),('707','SJC'),('727','SJC'),('737','SJC'),('190','SLC'),('A319','SLC'),('CRJ700','SLC'),('727','SMF'),('737','SMF');
/*!40000 ALTER TABLE `can_land` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-29 16:55:25
