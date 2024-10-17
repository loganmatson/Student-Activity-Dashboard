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
-- Table structure for table `TeachingAssistant`
--

DROP TABLE IF EXISTS `TeachingAssistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TeachingAssistant` (
  `taID` varchar(45) NOT NULL,
  `Course_courseID` int NOT NULL,
  `Professor_professorID` varchar(45) NOT NULL,
  `taFirstName` varchar(45) DEFAULT NULL,
  `taLastName` varchar(45) DEFAULT NULL,
  `taEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`taID`,`Professor_professorID`),
  KEY `fk_table1_Course1_idx` (`Course_courseID`),
  KEY `fk_table1_Professor1` (`Professor_professorID`),
  CONSTRAINT `fk_table1_Course1` FOREIGN KEY (`Course_courseID`) REFERENCES `Course` (`courseID`),
  CONSTRAINT `fk_table1_Professor1` FOREIGN KEY (`Professor_professorID`) REFERENCES `Professor` (`professorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeachingAssistant`
--

LOCK TABLES `TeachingAssistant` WRITE;
/*!40000 ALTER TABLE `TeachingAssistant` DISABLE KEYS */;
INSERT INTO `TeachingAssistant` VALUES ('TA001',1001,'P001','Sarah','Johnson','sjohnson@uga.edu'),('TA002',1002,'P002','Alex','Kim','akim@uga.edu'),('TA003',1003,'P003','James','Smith','jsmith@uga.edu'),('TA004',1004,'P004','Emily','Davis','edavis@uga.edu'),('TA005',1005,'P005','Michael','Brown','mbrown@uga.edu'),('TA006',1006,'P006','Sophia','Lopez','slopez@uga.edu'),('TA007',1007,'P007','Daniel','Garcia','dgarcia@uga.edu'),('TA008',1008,'P008','Grace','Lee','glee@uga.edu'),('TA009',1009,'P009','Olivia','Martinez','omartinez@uga.edu'),('TA010',1001,'P001','David','Taylor','dtaylor@uga.edu');
/*!40000 ALTER TABLE `TeachingAssistant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 21:38:39
