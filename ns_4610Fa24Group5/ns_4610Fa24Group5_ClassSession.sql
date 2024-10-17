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
-- Table structure for table `ClassSession`
--

DROP TABLE IF EXISTS `ClassSession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClassSession` (
  `sessionID` varchar(45) NOT NULL,
  `Course_courseID` int NOT NULL,
  `Professor_professorID` varchar(45) NOT NULL,
  `sessionDate` date DEFAULT NULL,
  `sessionTopic` varchar(45) DEFAULT NULL,
  `attendanceStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Course_courseID`,`Professor_professorID`,`sessionID`),
  KEY `fk_Course_has_Professor_Professor1_idx` (`Professor_professorID`),
  KEY `fk_Course_has_Professor_Course1_idx` (`Course_courseID`),
  CONSTRAINT `fk_Course_has_Professor_Course1` FOREIGN KEY (`Course_courseID`) REFERENCES `Course` (`courseID`),
  CONSTRAINT `fk_Course_has_Professor_Professor1` FOREIGN KEY (`Professor_professorID`) REFERENCES `Professor` (`professorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClassSession`
--

LOCK TABLES `ClassSession` WRITE;
/*!40000 ALTER TABLE `ClassSession` DISABLE KEYS */;
INSERT INTO `ClassSession` VALUES ('S001',1001,'P001','2024-09-05','Introduction to SQL','Present'),('S010',1001,'P001','2024-10-01','Views','Present'),('S011',1001,'P001','2024-09-05','Views','Absent'),('S020',1001,'P001','2024-10-01','Advanced SQL Techniques','Present'),('S002',1002,'P002','2024-09-07','Entity Relationship Diagrams','Present'),('S012',1002,'P002','2024-09-07','Entity Relationship Diagrams','Absent'),('S003',1003,'P003','2024-09-09','Joins in SQL','Absent'),('S013',1003,'P003','2024-09-09','Joins in SQL','Present'),('S004',1004,'P004','2024-09-12','Normalization','Present'),('S014',1004,'P004','2024-09-12','Normalization','Absent'),('S005',1005,'P005','2024-09-15','Stored Procedures','Present'),('S015',1005,'P005','2024-09-15','Stored Procedures','Absent'),('S006',1006,'P006','2024-09-18','Subqueries','Absent'),('S016',1006,'P006','2024-09-18','Subqueries','Present'),('S007',1007,'P007','2024-09-20','Indexes','Present'),('S017',1007,'P007','2024-09-20','Indexes','Absent'),('S008',1008,'P008','2024-09-25','Transactions','Present'),('S018',1008,'P008','2024-09-25','Transactions','Absent'),('S009',1009,'P009','2024-09-30','Triggers','Absent'),('S019',1009,'P009','2024-09-30','Project Recap','Absent');
/*!40000 ALTER TABLE `ClassSession` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 21:38:30
