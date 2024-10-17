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
-- Table structure for table `Assignment`
--

DROP TABLE IF EXISTS `Assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Assignment` (
  `Enrollment_EnrollmentID` varchar(45) NOT NULL,
  `assignmentID` varchar(45) DEFAULT NULL,
  `assignmentTitle` varchar(45) DEFAULT NULL,
  `assignmentDescription` varchar(255) DEFAULT NULL,
  `dueDate` datetime(3) DEFAULT NULL,
  `pointsPossible` int DEFAULT NULL,
  `Enrollment_Course_courseID` int NOT NULL,
  `Enrollment_Student_studentID` varchar(45) NOT NULL,
  PRIMARY KEY (`Enrollment_EnrollmentID`,`Enrollment_Course_courseID`,`Enrollment_Student_studentID`),
  CONSTRAINT `fk_Assignment_Enrollment1` FOREIGN KEY (`Enrollment_EnrollmentID`, `Enrollment_Course_courseID`, `Enrollment_Student_studentID`) REFERENCES `Enrollment` (`enrollmentID`, `Course_courseID`, `Student_studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assignment`
--

LOCK TABLES `Assignment` WRITE;
/*!40000 ALTER TABLE `Assignment` DISABLE KEYS */;
INSERT INTO `Assignment` VALUES ('101','A100','Java Project','Object-Oriented Programming project focusing on inheritance','2024-10-25 00:00:00.000',100,1001,'811000001'),('102','A101','Database Design','Design a relational database for a business case study','2024-11-05 00:00:00.000',150,1007,'811000002'),('103','A102','Cybersecurity Report','Write a report on current cybersecurity threats','2024-10-30 00:00:00.000',100,1008,'811000003'),('104','A103','Legal Case Study','Analyze a legal case regarding data privacy','2024-11-10 00:00:00.000',80,1004,'811000004'),('105','A104','Final Exam Preparation','Prepare for the end-of-semester exam by reviewing all materials','2024-12-01 00:00:00.000',200,1009,'811000005'),('106','A105','SQL Query Practice','Solve SQL queries based on different business scenarios','2024-11-15 00:00:00.000',120,1002,'811000006'),('107','A106','ERP Systems Review','Analyze SAP S/4HANA implementation case study','2024-11-20 00:00:00.000',100,1005,'811000007'),('108','A107','Finance Case Presentation','Prepare and present a financial proposal','2024-12-05 00:00:00.000',150,1008,'811000008'),('109','A108','Newtons Laws Project','Create and present Newtons Laws','2024-11-25 00:00:00.000',100,1009,'811000009'),('110','A109','Marketing Quiz','Complete a quiz on recent legal cases','2024-10-18 00:00:00.000',50,1001,'811000010');
/*!40000 ALTER TABLE `Assignment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 21:38:34
