-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: shikusi
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `doctorexaminations`
--

DROP TABLE IF EXISTS `doctorexaminations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctorexaminations` (
  `patientID` varchar(13) NOT NULL,
  `visitID` varchar(45) NOT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `medication` varchar(255) DEFAULT NULL,
  `dateTime` datetime(6) DEFAULT NULL,
  `recommendation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`patientID`,`visitID`),
  KEY `patient_visit_fk_idx` (`visitID`),
  CONSTRAINT `patient_visit_fk` FOREIGN KEY (`visitID`) REFERENCES `patientvisitvitals` (`visitID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorexaminations`
--

LOCK TABLES `doctorexaminations` WRITE;
/*!40000 ALTER TABLE `doctorexaminations` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctorexaminations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientrecords`
--

DROP TABLE IF EXISTS `patientrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientrecords` (
  `patientID` varchar(13) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `dateRegistered` date DEFAULT NULL,
  `maritalStatus` varchar(45) DEFAULT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `education` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientrecords`
--

LOCK TABLES `patientrecords` WRITE;
/*!40000 ALTER TABLE `patientrecords` DISABLE KEYS */;
INSERT INTO `patientrecords` VALUES ('1234453456456','John','Doe','mell','2022-12-12','Male','2023-01-10','Married','Teacher','Degree'),('565252566666','Harry','Smith',NULL,'1978-12-14','Married','2022-01-12','Married','Professor','Degree'),('767676798997','Joel','Merry',NULL,'1998-07-12','Male','2023-01-11','Married','Doctor','Secondary'),('7878787878888','smith','wells','hulla','2000-12-10','male','2023-01-12','single','professor','degree');
/*!40000 ALTER TABLE `patientrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientvisitvitals`
--

DROP TABLE IF EXISTS `patientvisitvitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientvisitvitals` (
  `patientID` varchar(13) NOT NULL,
  `visitID` varchar(45) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL,
  `pulseRate` varchar(45) DEFAULT NULL,
  `bloodPressure` varchar(45) DEFAULT NULL,
  `respiratoryRate` varchar(45) DEFAULT NULL,
  `oxygenSaturation` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `bmi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`visitID`,`patientID`),
  KEY `patientID_fk_idx` (`patientID`),
  CONSTRAINT `patientID_fk` FOREIGN KEY (`patientID`) REFERENCES `patientrecords` (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientvisitvitals`
--

LOCK TABLES `patientvisitvitals` WRITE;
/*!40000 ALTER TABLE `patientvisitvitals` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientvisitvitals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-11 11:33:35
