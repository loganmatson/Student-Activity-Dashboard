CREATE DATABASE  IF NOT EXISTS `ns_4610Fa24Group5` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ns_4610Fa24Group5`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: codrus.terry.uga.edu    Database: ns_4610Fa24Group5
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `courseType`
--

DROP TABLE IF EXISTS `courseType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseType` (
  `courseTypeID` int NOT NULL,
  `courseTypeName` varchar(45) DEFAULT NULL,
  `courseTypeDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`courseTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseType`
--

LOCK TABLES `courseType` WRITE;
/*!40000 ALTER TABLE `courseType` DISABLE KEYS */;
INSERT INTO `courseType` VALUES (1,'Lecture','A formal presentation where the instructor talks and students listen and take notes.'),(2,'Breakout Group','A small group of students engaged in intensive discussion and small-group activities.'),(3,'Lab','A hands-on environment where students perform experiments or work with practical applications.'),(4,'Online','A course format where students access materials and participate in learning activities via the internet.'),(5,'Lecture','A formal presentation where the instructor talks and students listen and take notes.'),(6,'Lecture','A formal presentation where the instructor talks and students listen and take notes.'),(7,'Lab','A hands-on environment where students perform experiments or work with practical applications.'),(8,'Online','A course format where students access materials and participate in learning activities via the internet.'),(9,'Breakout Group','A small group of students engaged in intensive discussion and small-group activities.'),(10,'Online','A course format where students access materials and participate in learning activities via the internet.');
/*!40000 ALTER TABLE `courseType` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 21:38:40
