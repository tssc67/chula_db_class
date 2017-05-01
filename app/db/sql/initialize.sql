-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbproject
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `TID` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `phone_number` int(10) DEFAULT NULL,
  `E-mail` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advisor`
--

DROP TABLE IF EXISTS `advisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advisor` (
  `TID` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `E-mail` varchar(40) NOT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advisor`
--

LOCK TABLES `advisor` WRITE;
/*!40000 ALTER TABLE `advisor` DISABLE KEYS */;
/*!40000 ALTER TABLE `advisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply` (
  `SID` varchar(10) NOT NULL,
  `CID` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `recieve_grade` varchar(2) NOT NULL,
  `section` varchar(2) NOT NULL,
  PRIMARY KEY (`SID`,`CID`,`year`,`semester`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award` (
  `AID` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`AID`,`semester`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_academic`
--

DROP TABLE IF EXISTS `award_academic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_academic` (
  `AID` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`AID`,`year`,`semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_academic`
--

LOCK TABLES `award_academic` WRITE;
/*!40000 ALTER TABLE `award_academic` DISABLE KEYS */;
/*!40000 ALTER TABLE `award_academic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_activity`
--

DROP TABLE IF EXISTS `award_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_activity` (
  `AID` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`AID`,`year`,`semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_activity`
--

LOCK TABLES `award_activity` WRITE;
/*!40000 ALTER TABLE `award_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `award_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_admin1`
--

DROP TABLE IF EXISTS `course_admin1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_admin1` (
  `CID` varchar(7) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `credit` int(1) NOT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_admin1`
--

LOCK TABLES `course_admin1` WRITE;
/*!40000 ALTER TABLE `course_admin1` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_admin1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_admin2`
--

DROP TABLE IF EXISTS `course_admin2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_admin2` (
  `CID` varchar(7) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `section` varchar(2) NOT NULL,
  PRIMARY KEY (`CID`,`year`,`semester`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_admin2`
--

LOCK TABLES `course_admin2` WRITE;
/*!40000 ALTER TABLE `course_admin2` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_admin2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_program1`
--

DROP TABLE IF EXISTS `education_program1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_program1` (
  `FID` varchar(2) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_program1`
--

LOCK TABLES `education_program1` WRITE;
/*!40000 ALTER TABLE `education_program1` DISABLE KEYS */;
INSERT INTO `education_program1` VALUES ('21','Engineering');
/*!40000 ALTER TABLE `education_program1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_program2`
--

DROP TABLE IF EXISTS `education_program2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_program2` (
  `BID` varchar(2) NOT NULL,
  `branch` varchar(30) NOT NULL,
  PRIMARY KEY (`BID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_program2`
--

LOCK TABLES `education_program2` WRITE;
/*!40000 ALTER TABLE `education_program2` DISABLE KEYS */;
INSERT INTO `education_program2` VALUES ('10','Computer Engineering');
/*!40000 ALTER TABLE `education_program2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_score_reduction`
--

DROP TABLE IF EXISTS `event_score_reduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_score_reduction` (
  `SID` varchar(10) NOT NULL,
  `date` varchar(6) NOT NULL,
  `type` varchar(20) NOT NULL,
  `score` int(3) NOT NULL,
  PRIMARY KEY (`SID`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_score_reduction`
--

LOCK TABLES `event_score_reduction` WRITE;
/*!40000 ALTER TABLE `event_score_reduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_score_reduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `in_program`
--

DROP TABLE IF EXISTS `in_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `in_program` (
  `CID` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `section` varchar(2) NOT NULL,
  `FID` varchar(2) NOT NULL,
  `BID` varchar(2) NOT NULL,
  PRIMARY KEY (`CID`,`year`,`semester`,`section`,`FID`,`BID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `in_program`
--

LOCK TABLES `in_program` WRITE;
/*!40000 ALTER TABLE `in_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `in_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_advised_enroll`
--

DROP TABLE IF EXISTS `student_advised_enroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_advised_enroll` (
  `SID` varchar(10) NOT NULL,
  `enroll_year` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `score` varchar(4) NOT NULL,
  `GPAX` float NOT NULL,
  `Email` varchar(40) NOT NULL,
  `status` varchar(5) NOT NULL,
  `house_number` varchar(10) NOT NULL,
  `road` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `province` varchar(20) NOT NULL,
  `post_number` varchar(5) NOT NULL,
  `TID` varchar(10) NOT NULL,
  `FID` varchar(2) NOT NULL,
  `BID` varchar(2) NOT NULL,
  `DateOfBirth` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `student_fk1_idx` (`TID`),
  KEY `student_fk2_idx` (`FID`),
  KEY `student_fk3_idx` (`BID`),
  KEY `i1` (`TID`),
  CONSTRAINT `student_fk1` FOREIGN KEY (`TID`) REFERENCES `teacher` (`TID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_fk2` FOREIGN KEY (`FID`) REFERENCES `education_program1` (`FID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `student_fk3` FOREIGN KEY (`BID`) REFERENCES `education_program2` (`BID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_advised_enroll`
--

LOCK TABLES `student_advised_enroll` WRITE;
/*!40000 ALTER TABLE `student_advised_enroll` DISABLE KEYS */;
INSERT INTO `student_advised_enroll` VALUES ('5730652921',2557,'Quincey','Victoria','0834876215','80',3.34,'qc_v@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','2222222222','21','10','09/09/2538'),('5730653021',2557,'Elah','Vera','094561854','80',3.11,'veraria@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1111111111','21','10','09/09/2538'),('5730653121',2557,'Raf','Kalpana','091364664','80',2.93,'anaplak@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','3333333333','21','10','09/09/2538'),('5730653221',2557,'Fergal','Baldo','087135481','80',2.3,'fBaldo@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1234567890','21','10','09/09/2538'),('5730653321',2557,'Karola','Berlin','0862148795','80',2.78,'berlin.nmerlin@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1234567890','21','10','09/09/2538'),('5730653421',2557,'Chue','Bobo','0817777771','100',3.8,'ssxfe@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','3333333333','21','10','03/06/2538'),('5730653521',2557,'Sures','Suvvee','0813335511','100',3.5,'ssxfe@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','2222222222','21','10','03/06/2538'),('5730653621',2557,'Ggg','Www','0863224444','100',4,'villuwee@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1111111111','21','10','23/12/2538'),('5730653721',2557,'Xuway','Xoras','0811111111','100',3,'ssxfe@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1234567890','21','10','09/09/2538'),('5730653821',2557,'Suwapat','Vorasith','0863823154','80',2.72,'suwapat.wow@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1234567890','21','10','07/09/2538');
/*!40000 ALTER TABLE `student_advised_enroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teach`
--

DROP TABLE IF EXISTS `teach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teach` (
  `STID` varchar(10) NOT NULL,
  `CID` varchar(45) NOT NULL,
  `year` int(4) NOT NULL,
  `ภาคการศึกษา` int(1) NOT NULL,
  `section` varchar(2) NOT NULL,
  PRIMARY KEY (`STID`,`CID`,`year`,`ภาคการศึกษา`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teach`
--

LOCK TABLES `teach` WRITE;
/*!40000 ALTER TABLE `teach` DISABLE KEYS */;
/*!40000 ALTER TABLE `teach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `TID` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('1111111111','Joe','Joe','joe@gmail.com','1111111111'),('1234567890','Smith','Smith','smith@gmail.com','1234567890'),('2222222222','Susan','Susan','susan@gmail.com','2222222222'),('3333333333','Henry','Henry','henry@gmail.com','3333333333');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_login`
--

DROP TABLE IF EXISTS `teacher_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_login` (
  `id` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_login`
--

LOCK TABLES `teacher_login` WRITE;
/*!40000 ALTER TABLE `teacher_login` DISABLE KEYS */;
INSERT INTO `teacher_login` VALUES ('1234567890','1234567890'),('1111111111','1111111111'),('2222222222','2222222222'),('3333333333','3333333333');
/*!40000 ALTER TABLE `teacher_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw`
--

DROP TABLE IF EXISTS `withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw` (
  `SID` varchar(10) NOT NULL,
  `CID` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `recieve_grade` varchar(2) NOT NULL,
  `section` varchar(2) NOT NULL,
  PRIMARY KEY (`SID`,`CID`,`year`,`semester`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw`
--

LOCK TABLES `withdraw` WRITE;
/*!40000 ALTER TABLE `withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `won_award`
--

DROP TABLE IF EXISTS `won_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `won_award` (
  `SID` varchar(10) NOT NULL,
  `AID` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  PRIMARY KEY (`SID`,`AID`,`year`,`semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `won_award`
--

LOCK TABLES `won_award` WRITE;
/*!40000 ALTER TABLE `won_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `won_award` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-01 22:17:42
