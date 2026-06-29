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
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `Airport_code` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Airport_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES ('DCA','Ronald-Reagan-National','Arlington','VA'),('DEN','Denver-Interational','Denver','CO'),('DFW','Dallas-Fort-Worth','DFW','TX'),('EWR','Newark-International','Newark','NJ'),('FAT','Fresno-Yosemite-International','Fresno','CA'),('HNL','Honolulu-International','Honolulu','HI'),('IAD','Washington-Dulles-International','Dulles','VA'),('IAH','Bush-Intercontinental','Houston','TX'),('IWA','Phoenix-Mesa-Gateway','Phoenix','AZ'),('JFK','John-F-Kennedy-International','New-York','NY'),('LAS','McCarren-International','Las-Vegas','NV'),('LAX','Los-Angeles-International','Los-Angeles','CA'),('MDW','Midway','Chicago','IL'),('MSN','Dane-County-Regional','Madison','WI'),('MSP','Minneapolis-St-Paul','Minneapolis-St-Paul','MN'),('MSY','Louis-Armstrong','New-Orleans','LA'),('OAK','Oakland-International','Oakland','CA'),('ONT','Ontario-International','Ontario','CA'),('ORD','Chicago-OHare-International','Chicago','IL'),('PHX','Phoenix-Sky-Harbor','Phoenix','AZ'),('SAN','San-Diego-International','San-Diego','CA'),('SCK','Stockton-Metropolitan','Stockton','CA'),('SFO','San-Francisco-International','San-Francisco','CA'),('SJC','San-Jose-International','San-Jose','CA'),('SLC','Salt-Lake-City-International','Salt-Lake-City','UT'),('SMF','Sacramento-International','Sacramento','CA');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
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
