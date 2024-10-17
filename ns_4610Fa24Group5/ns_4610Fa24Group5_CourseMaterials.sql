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
-- Table structure for table `CourseMaterials`
--

DROP TABLE IF EXISTS `CourseMaterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CourseMaterials` (
  `materialID` int NOT NULL,
  `materialTitle` varchar(45) DEFAULT NULL,
  `materialType` varchar(45) DEFAULT NULL,
  `Course_courseID` int NOT NULL,
  `Course_courseType_courseTypeID` int NOT NULL,
  PRIMARY KEY (`materialID`,`Course_courseID`,`Course_courseType_courseTypeID`),
  KEY `fk_CourseMaterials_Course1_idx` (`Course_courseID`,`Course_courseType_courseTypeID`),
  CONSTRAINT `fk_CourseMaterials_Course1` FOREIGN KEY (`Course_courseID`) REFERENCES `Course` (`courseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseMaterials`
--

LOCK TABLES `CourseMaterials` WRITE;
/*!40000 ALTER TABLE `CourseMaterials` DISABLE KEYS */;
INSERT INTO `CourseMaterials` VALUES (1,'Business Fundamentals Textbook','Textbook',1001,1),(2,'Marketing Textbook','Textbook',1004,4),(3,'Data Analytics Case Studies','Document',1002,2),(4,'VSCode','Software',1008,4),(5,'Chemistry Lab Safety Manual','Manual',1003,3),(6,'Chemical Reactions Video Subscription','Video',1003,3),(7,'Digital Marketing Trends E-book','E-book',1004,4),(8,'JMP','Statistical Software',1002,2),(9,'Financial Calculator','Calculator',1009,1),(10,'Economic Models Simulation','Software',1005,1);
/*!40000 ALTER TABLE `CourseMaterials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 21:38:41
