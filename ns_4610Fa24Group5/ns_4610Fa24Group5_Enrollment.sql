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
-- Table structure for table `Enrollment`
--

DROP TABLE IF EXISTS `Enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Enrollment` (
  `enrollmentID` varchar(45) NOT NULL,
  `Course_courseID` int NOT NULL,
  `Student_studentID` varchar(45) NOT NULL,
  `enrollmentDate` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`enrollmentID`,`Course_courseID`,`Student_studentID`),
  KEY `fk_Course_has_Student_Student1_idx` (`Student_studentID`),
  KEY `fk_Course_has_Student_Course1_idx` (`Course_courseID`),
  CONSTRAINT `fk_Course_has_Student_Course1` FOREIGN KEY (`Course_courseID`) REFERENCES `Course` (`courseID`),
  CONSTRAINT `fk_Course_has_Student_Student1` FOREIGN KEY (`Student_studentID`) REFERENCES `Student` (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enrollment`
--

LOCK TABLES `Enrollment` WRITE;
/*!40000 ALTER TABLE `Enrollment` DISABLE KEYS */;
INSERT INTO `Enrollment` VALUES ('101',1001,'811000001','2022-08-15','active'),('102',1007,'811000002','2022-01-10','active'),('103',1008,'811000003','2022-08-20','active'),('104',1004,'811000004','2023-01-05','active'),('105',1009,'811000005','2023-08-18','active'),('106',1002,'811000006','2023-01-12','active'),('107',1005,'811000007','2023-08-22','active'),('108',1008,'811000008','2024-01-08','active'),('109',1009,'811000009','2024-01-15','active'),('110',1001,'811000010','2024-08-19','active');
/*!40000 ALTER TABLE `Enrollment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 21:38:29
