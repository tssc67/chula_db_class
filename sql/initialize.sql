-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
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
  PRIMARY KEY (`TID`),
  CONSTRAINT `admin_fk` FOREIGN KEY (`TID`) REFERENCES `teacher` (`TID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('1234567890');
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
  PRIMARY KEY (`TID`),
  CONSTRAINT `advisor_fk` FOREIGN KEY (`TID`) REFERENCES `teacher` (`TID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advisor`
--

LOCK TABLES `advisor` WRITE;
/*!40000 ALTER TABLE `advisor` DISABLE KEYS */;
INSERT INTO `advisor` VALUES ('1111111111'),('2222222222'),('3333333333');
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
  `CID` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `section` varchar(2) NOT NULL,
  `recieve_grade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`SID`,`CID`,`year`,`semester`,`section`),
  KEY `CID_apply_fk_idx` (`CID`,`year`,`semester`,`section`),
  CONSTRAINT `CID_apply_fk` FOREIGN KEY (`CID`, `year`, `semester`, `section`) REFERENCES `course_admin2` (`CID`, `year`, `semester`, `section`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `SID_apply_fk` FOREIGN KEY (`SID`) REFERENCES `student_advised_enroll` (`SID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES ('5730653221','2110318',2016,2,'1','W'),('5730653421','2110422',2016,2,'2','B'),('5730653621','2110318',2016,2,'1','C+'),('5730653721','2110422',2016,2,'2','A');
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
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`AID`,`year`,`semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
INSERT INTO `award` VALUES ('1111111111',2014,1,'xxxxxx'),('2222222222',2014,2,'yyyyyy'),('3333333333',2016,2,'zzzzzzz');
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
  PRIMARY KEY (`AID`,`year`,`semester`),
  CONSTRAINT `acd_fk` FOREIGN KEY (`AID`, `year`, `semester`) REFERENCES `award` (`AID`, `year`, `semester`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_academic`
--

LOCK TABLES `award_academic` WRITE;
/*!40000 ALTER TABLE `award_academic` DISABLE KEYS */;
INSERT INTO `award_academic` VALUES ('1111111111',2014,1),('3333333333',2016,2);
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
  PRIMARY KEY (`AID`,`year`,`semester`),
  CONSTRAINT `act_fk` FOREIGN KEY (`AID`, `year`, `semester`) REFERENCES `award` (`AID`, `year`, `semester`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_activity`
--

LOCK TABLES `award_activity` WRITE;
/*!40000 ALTER TABLE `award_activity` DISABLE KEYS */;
INSERT INTO `award_activity` VALUES ('2222222222',2014,2);
/*!40000 ALTER TABLE `award_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `FID` varchar(2) NOT NULL,
  `BID` varchar(2) NOT NULL,
  `branch` varchar(30) NOT NULL,
  PRIMARY KEY (`FID`,`BID`),
  CONSTRAINT `branch_pk` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('21','1','Civil Engineering'),('21','10','Computer Engineering'),('21','2','Electrical Engineering'),('22','2','History'),('23','1','Mathematics and Computer'),('23','4','Physics'),('24','1','Government'),('25','1','Architecture');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_admin1`
--

DROP TABLE IF EXISTS `course_admin1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_admin1` (
  `CID` varchar(7) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `credit` int(1) NOT NULL,
  `TID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CID`),
  KEY `TID_course_fk_idx` (`TID`),
  CONSTRAINT `TID_course_fk` FOREIGN KEY (`TID`) REFERENCES `admin` (`TID`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_admin1`
--

LOCK TABLES `course_admin1` WRITE;
/*!40000 ALTER TABLE `course_admin1` DISABLE KEYS */;
INSERT INTO `course_admin1` VALUES ('2110318','Distributed System Essentials',1,'1234567890'),('2110422','Database Management Systems Design',3,'1234567890');
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
  PRIMARY KEY (`CID`,`year`,`semester`,`section`),
  CONSTRAINT `CID_course_fk` FOREIGN KEY (`CID`) REFERENCES `course_admin1` (`CID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_admin2`
--

LOCK TABLES `course_admin2` WRITE;
/*!40000 ALTER TABLE `course_admin2` DISABLE KEYS */;
INSERT INTO `course_admin2` VALUES ('2110318',2016,2,'1'),('2110422',2016,2,'2');
/*!40000 ALTER TABLE `course_admin2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_score_reduction`
--

DROP TABLE IF EXISTS `event_score_reduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_score_reduction` (
  `SID` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `score` int(3) NOT NULL,
  PRIMARY KEY (`SID`,`date`),
  CONSTRAINT `SID_event_fk` FOREIGN KEY (`SID`) REFERENCES `student_advised_enroll` (`SID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_score_reduction`
--

LOCK TABLES `event_score_reduction` WRITE;
/*!40000 ALTER TABLE `event_score_reduction` DISABLE KEYS */;
INSERT INTO `event_score_reduction` VALUES ('5730652921','2014-01-15','C',20),('5730653021','2013-12-10','D',20),('5730653121','2016-08-01','A',20),('5730653221','2016-08-01','A',20),('5730653321','2015-10-27','B',20),('5730653821','2015-10-27','B',20);
/*!40000 ALTER TABLE `event_score_reduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `FID` varchar(2) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES ('21','Faculty of Engineering'),('22','Faculty of Arts'),('23','Faculty of Science'),('24','Faculty of Political Science'),('25','Faculty of Architecture');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `in_program`
--

DROP TABLE IF EXISTS `in_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `in_program` (
  `CID` varchar(10) NOT NULL,
  `FID` varchar(2) NOT NULL,
  `BID` varchar(2) NOT NULL,
  PRIMARY KEY (`CID`,`FID`,`BID`),
  KEY `BID_inp_fk_idx` (`BID`),
  KEY `BID_inp_fk_idx1` (`FID`,`BID`),
  CONSTRAINT `BID_inp_fk` FOREIGN KEY (`FID`, `BID`) REFERENCES `branch` (`FID`, `BID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `CID_inp_fk` FOREIGN KEY (`CID`) REFERENCES `course_admin1` (`CID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `in_program`
--

LOCK TABLES `in_program` WRITE;
/*!40000 ALTER TABLE `in_program` DISABLE KEYS */;
INSERT INTO `in_program` VALUES ('2110318','21','10'),('2110422','21','10');
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
  `house_number` varchar(10) DEFAULT NULL,
  `road` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `post_number` varchar(5) DEFAULT NULL,
  `TID` varchar(10) NOT NULL,
  `FID` varchar(10) NOT NULL,
  `BID` varchar(10) NOT NULL,
  `DateOfBirth` date NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `TID_student_fk_idx` (`TID`),
  KEY `BID_student_fk_idx` (`FID`,`BID`),
  KEY `i1` (`TID`) USING BTREE,
  CONSTRAINT `BID_student_fk` FOREIGN KEY (`FID`, `BID`) REFERENCES `branch` (`FID`, `BID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `TID_student_fk` FOREIGN KEY (`TID`) REFERENCES `advisor` (`TID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_advised_enroll`
--

LOCK TABLES `student_advised_enroll` WRITE;
/*!40000 ALTER TABLE `student_advised_enroll` DISABLE KEYS */;
INSERT INTO `student_advised_enroll` VALUES ('5730652921',2013,'Quincey','Victoria','0834876215','80',3.34,'qc_v@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','2222222222','21','10','1995-09-09'),('5730653021',2013,'Elah','Vera','094561854','80',1.93,'veraria@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1111111111','21','10','1995-09-09'),('5730653121',2013,'Raf','Kalpana','091364664','80',2.93,'anaplak@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','3333333333','21','10','1995-09-09'),('5730653221',2013,'Fergal','Baldo','087135481','80',2.3,'fBaldo@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1111111111','21','1','1995-09-09'),('5730653321',2013,'Karola','Berlin','0862148795','80',2.78,'berlin.nmerlin@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','2222222222','21','1','1995-09-09'),('5730653421',2013,'Chue','Bobo','0817777771','100',3.8,'ssxfe@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','3333333333','21','2','1995-06-03'),('5730653521',2013,'Sures','Suvvee','0813335511','100',1.8,'ssxfe@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','2222222222','21','2','1995-06-03'),('5730653621',2013,'Ggg','Www','0863224444','100',4,'villuwee@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1111111111','21','10','1995-12-23'),('5730653721',2013,'Xuway','Xoras','0811111111','100',1.76,'ssxfe@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','1111111111','21','10','1995-09-09'),('5730653821',2013,'Suwapat','Vorasith','0863823154','80',2.72,'suwapat.wow@gmail.com','0000','xx/xx','rrr','sss','ppp','11110','3333333333','21','10','1995-09-07');
/*!40000 ALTER TABLE `student_advised_enroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teach`
--

DROP TABLE IF EXISTS `teach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teach` (
  `TID` varchar(10) NOT NULL,
  `CID` varchar(45) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `section` varchar(2) NOT NULL,
  PRIMARY KEY (`TID`,`CID`,`year`,`semester`,`section`),
  KEY `CID_teach_fk_idx` (`CID`,`year`,`semester`,`section`),
  CONSTRAINT `CID_teach_fk` FOREIGN KEY (`CID`, `year`, `semester`, `section`) REFERENCES `course_admin2` (`CID`, `year`, `semester`, `section`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `TID_teach_fk` FOREIGN KEY (`TID`) REFERENCES `teacher` (`TID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teach`
--

LOCK TABLES `teach` WRITE;
/*!40000 ALTER TABLE `teach` DISABLE KEYS */;
INSERT INTO `teach` VALUES ('1357913579','2110318',2016,2,'1'),('2468024680','2110422',2016,2,'2');
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
INSERT INTO `teacher` VALUES ('1111111111','Joe','Joe','joe@gmail.com','1111111111'),('1234567890','Smith','Smith','smith@gmail.com','1234567890'),('1357913579','TeacherA','TeacherA','ta@gmail.com','0841239746'),('2222222222','Susan','Susan','susan@gmail.com','2222222222'),('2468024680','TeacherB','TeacherB','tb@gmail.com','0934712584'),('3333333333','Henry','Henry','henry@gmail.com','3333333333');
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
  PRIMARY KEY (`SID`,`AID`,`year`,`semester`),
  KEY `AID_won_fk_idx` (`AID`,`year`,`semester`),
  CONSTRAINT `AID_won_fk` FOREIGN KEY (`AID`, `year`, `semester`) REFERENCES `award` (`AID`, `year`, `semester`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `SID_won_fk` FOREIGN KEY (`SID`) REFERENCES `student_advised_enroll` (`SID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `won_award`
--

LOCK TABLES `won_award` WRITE;
/*!40000 ALTER TABLE `won_award` DISABLE KEYS */;
INSERT INTO `won_award` VALUES ('5730653321','1111111111',2014,1),('5730653421','2222222222',2014,2),('5730653821','3333333333',2016,2);
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

-- Dump completed on 2017-05-09 19:16:43
