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
-- Table structure for table `Professor`
--

DROP TABLE IF EXISTS `Professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Professor` (
  `professorID` varchar(45) NOT NULL,
  `profFirstName` varchar(45) DEFAULT NULL,
  `profLastname` varchar(45) DEFAULT NULL,
  `profEmail` varchar(45) DEFAULT NULL,
  `profOfficeLocation` varchar(45) DEFAULT NULL,
  `Faculty_facultyID` varchar(45) NOT NULL,
  PRIMARY KEY (`professorID`),
  KEY `fk_Professor_Faculty1_idx` (`Faculty_facultyID`),
  CONSTRAINT `fk_Professor_Faculty1` FOREIGN KEY (`Faculty_facultyID`) REFERENCES `Faculty` (`facultyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor`
--

LOCK TABLES `Professor` WRITE;
/*!40000 ALTER TABLE `Professor` DISABLE KEYS */;
INSERT INTO `Professor` VALUES ('P001','Karen','Aguar','kaguar@uga.edu','Correll Hall','F001'),('P002','Christopher','Pope','cpope@uga.edu','MLC','F002'),('P003','Nikhil','Srinivasan','nsrinivasan@uga.edu','Benson Hall','F003'),('P004','Benjamin','Ayers','bayers@uga.edu','Orkin','F004'),('P005','Maria-Claude','Boudreau','mcboudreau@uga.edu','Benson Hall','F005'),('P006','Linda','Jones','ljones@uga.edu','Orkin Hall','F006'),('P007','David','Garcia','dgarcia@uga.edu','Ivester Hall','F007'),('P008','Barbara','Miller','bmiller@uga.edu','Correll Hall','F008'),('P009','Susan','Martinez','smartinez@uga.edu','Benson Hall','F009'),('P010','James','Taylor','jtaylor@uga.edu','MLC','F010');
/*!40000 ALTER TABLE `Professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 21:38:36
