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
-- Table structure for table `Quiz`
--

DROP TABLE IF EXISTS `Quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Quiz` (
  `quizID` varchar(45) NOT NULL,
  `quizTitle` varchar(45) DEFAULT NULL,
  `quizDateTime` datetime(3) DEFAULT NULL,
  `pointsPossible` double DEFAULT NULL,
  `pointsRecieved` double DEFAULT NULL,
  `Enrollment_EnrollmentID` varchar(45) NOT NULL,
  `Enrollment_Course_courseID` int NOT NULL,
  `Enrollment_Student_studentID` varchar(45) NOT NULL,
  PRIMARY KEY (`quizID`,`Enrollment_EnrollmentID`,`Enrollment_Course_courseID`,`Enrollment_Student_studentID`),
  KEY `fk_Quiz_Enrollment1_idx` (`Enrollment_EnrollmentID`,`Enrollment_Course_courseID`,`Enrollment_Student_studentID`),
  CONSTRAINT `fk_Quiz_Enrollment1` FOREIGN KEY (`Enrollment_EnrollmentID`, `Enrollment_Course_courseID`, `Enrollment_Student_studentID`) REFERENCES `Enrollment` (`enrollmentID`, `Course_courseID`, `Student_studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quiz`
--

LOCK TABLES `Quiz` WRITE;
/*!40000 ALTER TABLE `Quiz` DISABLE KEYS */;
INSERT INTO `Quiz` VALUES ('Q100','Java Fundamentals Quiz','2024-10-10 10:00:00.000',50,45,'101',1001,'811000001'),('Q101','Database Design Quiz','2024-10-12 11:00:00.000',60,55,'102',1007,'811000002'),('Q102','Cybersecurity Principles Quiz','2024-10-15 09:00:00.000',50,48,'103',1008,'811000003'),('Q103','Legal Case Study Quiz','2024-10-18 12:00:00.000',40,35,'104',1004,'811000004'),('Q104','Management Quiz','2024-10-20 13:00:00.000',70,65,'105',1009,'811000005'),('Q105','SQL Queries Quiz','2024-10-25 14:00:00.000',60,58,'106',1002,'811000006'),('Q106','ERP Systems Quiz','2024-10-30 15:00:00.000',50,45,'107',1005,'811000007'),('Q107','Finance and Budgeting Quiz','2024-11-02 16:00:00.000',60,57,'108',1008,'811000008'),('Q108','Physics Quiz - Newton\'s Laws','2024-11-05 10:00:00.000',50,49,'109',1009,'811000009'),('Q109','Marketing Concepts Quiz','2024-11-08 11:00:00.000',40,35,'110',1001,'811000010');
/*!40000 ALTER TABLE `Quiz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 21:38:38
