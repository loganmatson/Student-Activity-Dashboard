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
-- Table structure for table `Exam`
--

DROP TABLE IF EXISTS `Exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Exam` (
  `examID` varchar(45) NOT NULL,
  `examTitle` varchar(45) DEFAULT NULL,
  `examDateTime` datetime(3) DEFAULT NULL,
  `pointsPossible` double DEFAULT NULL,
  `pointsReceived` double DEFAULT NULL,
  `Enrollment_EnrollmentID` varchar(45) NOT NULL,
  `Enrollment_Course_courseID` int NOT NULL,
  `Enrollment_Student_studentID` varchar(45) NOT NULL,
  PRIMARY KEY (`Enrollment_EnrollmentID`,`Enrollment_Course_courseID`,`Enrollment_Student_studentID`,`examID`),
  CONSTRAINT `fk_Exam_Enrollment1` FOREIGN KEY (`Enrollment_EnrollmentID`, `Enrollment_Course_courseID`, `Enrollment_Student_studentID`) REFERENCES `Enrollment` (`enrollmentID`, `Course_courseID`, `Student_studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Exam`
--

LOCK TABLES `Exam` WRITE;
/*!40000 ALTER TABLE `Exam` DISABLE KEYS */;
INSERT INTO `Exam` VALUES ('E001','Business Fundamentals Midterm','2022-10-15 14:00:00.000',100,50.5,'101',1001,'811000001'),('E002','Physics Lab Final','2022-05-20 10:00:00.000',50,47.5,'102',1007,'811000002'),('E003','Web Development Project','2022-12-10 23:59:59.000',200,178,'103',1008,'811000003'),('E004','Digital Marketing Strategy Exam','2023-04-05 13:30:00.000',100,92,'104',1004,'811000004'),('E005','Financial Accounting Midterm','2023-11-10 15:00:00.000',120,78,'105',1009,'811000005'),('E006','Data Analytics Case Study','2023-03-25 09:00:00.000',150,135,'106',1002,'811000006'),('E007','Microeconomics Final','2023-12-15 11:00:00.000',100,88,'107',1005,'811000007'),('E008','Web Development Final Project','2024-05-01 23:59:59.000',250,225,'108',1008,'811000008'),('E009','Advanced Financial Reporting Exam','2024-04-20 14:00:00.000',150,132.5,'109',1009,'811000009'),('E010','Business Ethics Case Analysis','2024-12-05 10:00:00.000',100,95,'110',1001,'811000010');
/*!40000 ALTER TABLE `Exam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 21:38:35
