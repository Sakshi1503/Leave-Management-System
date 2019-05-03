-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: leave
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_master`
--

DROP TABLE IF EXISTS `admin_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_master` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(256) NOT NULL,
  `adminGender` varchar(10) NOT NULL,
  `adminContact` varchar(10) NOT NULL,
  `adminEmail` varchar(256) NOT NULL,
  `adminPosition` varchar(256) NOT NULL,
  `adminPassword` varchar(256) NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE KEY `adminContact` (`adminContact`),
  UNIQUE KEY `adminEmail` (`adminEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_master`
--

LOCK TABLES `admin_master` WRITE;
/*!40000 ALTER TABLE `admin_master` DISABLE KEYS */;
INSERT INTO `admin_master` VALUES (1,'Sakshi','Female','9099874140','sakshi@gmail.com','admin','sakshi'),(2,'Prit','Male','8000980071','prit@gmail.com','admin','prit');
/*!40000 ALTER TABLE `admin_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_info`
--

DROP TABLE IF EXISTS `branch_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch_info` (
  `branchCode` int(11) NOT NULL,
  `branchName` varchar(256) NOT NULL,
  PRIMARY KEY (`branchCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_info`
--

LOCK TABLES `branch_info` WRITE;
/*!40000 ALTER TABLE `branch_info` DISABLE KEYS */;
INSERT INTO `branch_info` VALUES (1,'Aeronautical Engineering'),(2,'Automobile Engineering'),(3,'Bio-Medical Engineering'),(4,'Bio Technology'),(5,'Chemical Engineering'),(6,'Civil Engineering'),(7,'Computer Engineering'),(8,'Electrical & Electronics Engineering'),(9,'Electrical Engineering'),(10,'Electronics Engineering'),(11,'Electronics & Communication Engineering'),(13,'Environmental Engineering'),(14,'Food Processing Technology'),(15,'Industrial Engineering'),(16,'Information Technology'),(17,'Instrumentation & Control Engineering'),(19,'Mechanical Engineering'),(20,'Mechatronics Engineering'),(21,'Metallurgy Engineering'),(22,'Mining Engineering'),(23,'Plastic Technology'),(24,'Power electronics'),(25,'Production Engineering');
/*!40000 ALTER TABLE `branch_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_table`
--

DROP TABLE IF EXISTS `document_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `document_table` (
  `leaveDocumentID` int(11) NOT NULL AUTO_INCREMENT,
  `leaveDocument` longblob NOT NULL,
  PRIMARY KEY (`leaveDocumentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_table`
--

LOCK TABLES `document_table` WRITE;
/*!40000 ALTER TABLE `document_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_master`
--

DROP TABLE IF EXISTS `faculty_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `faculty_master` (
  `facultyID` int(11) NOT NULL AUTO_INCREMENT,
  `facultyName` varchar(256) NOT NULL,
  `facultyGender` varchar(10) NOT NULL,
  `facultyContact` varchar(10) NOT NULL,
  `facultyEmail` varchar(256) NOT NULL,
  `facultyPosition` varchar(256) NOT NULL,
  `facultyPassword` varchar(256) NOT NULL,
  `facultyBranch` int(11) NOT NULL,
  `isApprovedFaculty` varchar(3) NOT NULL DEFAULT 'no',
  `isRejectedFaculty` varchar(3) NOT NULL DEFAULT 'no',
  `isHostelIncharge` varchar(10) NOT NULL,
  PRIMARY KEY (`facultyID`),
  UNIQUE KEY `facultyContact_UNIQUE` (`facultyContact`),
  UNIQUE KEY `facultyEmail_UNIQUE` (`facultyEmail`),
  KEY `facultyBranch` (`facultyBranch`),
  CONSTRAINT `faculty_master_ibfk_1` FOREIGN KEY (`facultyBranch`) REFERENCES `branch_info` (`branchCode`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_master`
--

LOCK TABLES `faculty_master` WRITE;
/*!40000 ALTER TABLE `faculty_master` DISABLE KEYS */;
INSERT INTO `faculty_master` VALUES (1,'Kairav Mehta','Male','9164253915','faculty_it_1@gmail.com','Associate Professor','faculty_it_1',16,'no','no','no'),(2,'Nikhil Tripathi','Male','9749897241','faculty_it_2@gmail.com','Assistant Professor','faculty_it_2',16,'no','no','no'),(3,'Mitali Doshi','Female','9835877789','faculty_it_3@gmail.com','Assistant Professor','faculty_it_3',16,'no','no','no'),(4,'Padman Soni','Male','9985305140','faculty_ce_1@gmail.com','Associate Professor','faculty_ce_1',7,'no','no','no'),(5,'Yuvaraj Dave','Male','9943925958','faculty_ce_2@gmail.com','Assistant Professor','faculty_ce_2',7,'no','no','no'),(6,'Aarati Bhatt','Female','9454558309','faculty_ce_3@gmail.com','Assistant Professor','faculty_ce_3',7,'no','no','no'),(7,'Raakhi Ambani','Female','9544028408','faculty_civil_1@gmail.com','Associate Professor','faculty_civil_1',6,'no','no','no'),(8,'Devang Doshi','Male','9894121063','faculty_civil_2@gmail.com','Assistant Professor','faculty_civil_2',6,'no','no','no'),(9,'Nimish Mistry','Male','8967812795','faculty_civil_3@gmail.com','Assistant Professor','faculty_civil_3',6,'no','no','no'),(10,'Tanuj Patel','Male','9528213348','faculty_mech_1@gmail.com','Associate Professor','faculty_mech_1',19,'no','no','no'),(11,'Purvi Oza','Female','9070211932','faculty_mech_2@gmail.com','Assistant Professor','faculty_mech_2',19,'no','no','no'),(12,'Urmil Kotak','Male','8039949728','faculty_mech_3@gmail.com','Assistant Professor','faculty_mech_3',19,'no','no','no');
/*!40000 ALTER TABLE `faculty_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hod_master`
--

DROP TABLE IF EXISTS `hod_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hod_master` (
  `hodID` int(11) NOT NULL AUTO_INCREMENT,
  `hodName` varchar(256) NOT NULL,
  `hodGender` varchar(10) NOT NULL,
  `hodContact` varchar(10) NOT NULL,
  `hodEmail` varchar(256) NOT NULL,
  `hodPassword` varchar(256) NOT NULL,
  `hodBranch` int(11) NOT NULL,
  `isApprovedHod` varchar(3) NOT NULL DEFAULT 'no',
  `isRejectedHod` varchar(3) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`hodID`),
  UNIQUE KEY `hodContact` (`hodContact`),
  UNIQUE KEY `hodEmail` (`hodEmail`),
  KEY `hodBranch` (`hodBranch`),
  CONSTRAINT `hod_master_ibfk_1` FOREIGN KEY (`hodBranch`) REFERENCES `branch_info` (`branchCode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hod_master`
--

LOCK TABLES `hod_master` WRITE;
/*!40000 ALTER TABLE `hod_master` DISABLE KEYS */;
INSERT INTO `hod_master` VALUES (1,'Ujjwal Goradia','Male','8980768906','hod_it@gmail.com','hod_it',16,'no','no'),(2,'Malati Dave','Female','9215515383','hod_ce@gmail.com','hod_ce',7,'no','no'),(3,'Piyush Pathak','Male','9756799987','hod_mech@gmail.com','hod_mech',19,'no','no'),(4,'Kalyan Modi','Male','9926148997','hod_civil@gmail.com','hod_civil',6,'no','no');
/*!40000 ALTER TABLE `hod_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_record`
--

DROP TABLE IF EXISTS `leave_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `leave_record` (
  `recordID` int(11) NOT NULL AUTO_INCREMENT,
  `appID` int(11) NOT NULL,
  `appRole` varchar(10) NOT NULL,
  `leaveType` varchar(45) NOT NULL,
  `leaveReason` varchar(512) NOT NULL,
  `leaveFrom` date NOT NULL,
  `leaveTo` date NOT NULL,
  `leaveApproved` varchar(3) NOT NULL,
  `leaveRejected` varchar(3) NOT NULL DEFAULT 'no',
  `leaveDocumentID` int(11) DEFAULT NULL,
  `apptoID` int(11) NOT NULL,
  `apptoRole` varchar(10) NOT NULL,
  PRIMARY KEY (`recordID`),
  UNIQUE KEY `appID` (`appRole`,`appID`),
  KEY `leaveDocumentID` (`leaveDocumentID`) /*!80000 INVISIBLE */,
  CONSTRAINT `leave_record_ibfk_2` FOREIGN KEY (`leaveDocumentID`) REFERENCES `document_table` (`leaveDocumentID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_record`
--

LOCK TABLES `leave_record` WRITE;
/*!40000 ALTER TABLE `leave_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_master`
--

DROP TABLE IF EXISTS `student_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_master` (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `studentEno` varchar(12) NOT NULL,
  `studentName` varchar(256) NOT NULL,
  `studentSem` int(11) NOT NULL,
  `studentAddress` varchar(512) NOT NULL,
  `studentCity` varchar(256) NOT NULL,
  `studentState` varchar(256) NOT NULL,
  `studentEmail` varchar(256) NOT NULL,
  `studentContact` varchar(10) NOT NULL,
  `studentFatherContact` varchar(10) NOT NULL,
  `studentMotherContact` varchar(10) NOT NULL,
  `studentHosteller` varchar(3) NOT NULL,
  `studentPassword` varchar(256) NOT NULL,
  `studentBranch` int(11) NOT NULL,
  `studentGender` varchar(10) NOT NULL,
  `isApprovedStudent` varchar(3) NOT NULL DEFAULT 'no',
  `isRejectedStudent` varchar(3) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`studentID`),
  UNIQUE KEY `studentEno` (`studentEno`),
  UNIQUE KEY `studentEmail` (`studentEmail`),
  UNIQUE KEY `studentContact` (`studentContact`),
  KEY `studentBranch` (`studentBranch`),
  CONSTRAINT `student_master_ibfk_1` FOREIGN KEY (`studentBranch`) REFERENCES `branch_info` (`branchCode`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_master`
--

LOCK TABLES `student_master` WRITE;
/*!40000 ALTER TABLE `student_master` DISABLE KEYS */;
INSERT INTO `student_master` VALUES (1,'160170116001','Ronak Prajapati',6,'Science City Rd','Ahmedabad','Gujarat','student_it_1@gmail.com','8094089916','8094089916','8094089916','no','student_it_1',16,'Male','no','no'),(2,'160170116002','Virat Shah',6,'Paldi','Ahmedabad','Gujarat','student_it_2@gmail.com','9566712732','9566712732','9566712732','no','student_it_2',16,'Male','no','no'),(3,'160170116003','Samin Sanghavi',6,'Race Course Rd ','Rajkot','Gujarat','student_it_3@gmail.com','9599744327','9599744327','9599744327','yes','student_it_3',16,'Male','no','no'),(4,'160170116004','Dhriti Goswami',6,'Chandkheda','Ahmedabad','Gujarat','student_it_4@gmail.com','8103580721','8103580721','8103580721','no','student_it_4',16,'Female','no','no'),(5,'170173116001','Dhrumil Sanghavi',6,'Bapunagar','Ahmedabad','Gujarat','student_it_5@gmail.com','8686789891','8686789891','8686789891','no','student_it_4',16,'Male','no','no'),(6,'160170107001','Sapan Kansagara',6,'Science City Rd','Ahmedabad','Gujarat','student_ce_1@gmail.com','9226262992','9226262992','9226262992','no','student_ce_1',7,'Male','no','no'),(7,'160170107002','Jaipal Dobariya',6,'Paldi','Ahmedabad','Gujarat','student_ce_2@gmail.com','9480895152','9480895152','9480895152','no','student_ce_2',7,'Male','no','no'),(8,'160170107003','Om Patel',6,'Race Course Rd ','Rajkot','Gujarat','student_ce_3@gmail.com','8486323147','8486323147','8486323147','yes','student_ce_3',7,'Male','no','no'),(9,'160170107004','Kiran Modi',6,'Chandkheda','Ahmedabad','Gujarat','student_ce_4@gmail.com','9658731065','9658731065','9658731065','no','student_ce_4',7,'Female','no','no'),(10,'170173107001','Vardhan Mulani',6,'Bapunagar','Ahmedabad','Gujarat','student_ce_5@gmail.com','9492929538','9492929538','9492929538','no','student_ce_5',7,'Male','no','no'),(11,'160170106001','Alok Sutaria',6,'Science City Rd','Ahmedabad','Gujarat','student_civil_1@gmail.com','8253360341','8253360341','8253360341','no','student_civil_1',6,'Male','no','no'),(12,'160170106002','Gurudutt Trivedi',6,'Paldi','Ahmedabad','Gujarat','student_civil_2@gmail.com','8922833660','8922833660','8922833660','no','student_civil_2',6,'Male','no','no'),(13,'160170106003','Kirti Bapodra',6,'Race Course Rd ','Rajkot','Gujarat','student_civil_3@gmail.com','8872160488','8872160488','8872160488','yes','student_civil_3',6,'Male','no','no'),(14,'160170106004','Dixi Savalia',6,'Chandkheda','Ahmedabad','Gujarat','student_civil_4@gmail.com','8512713275','8512713275','8512713275','no','student_civil_4',6,'Female','no','no'),(15,'170173106001','Vishnu Adani',6,'Bapunagar','Ahmedabad','Gujarat','student_civil_5@gmail.com','8177085690','8177085690','8177085690','no','student_civil_5',6,'Male','no','no'),(16,'160170119001','Pravin Solanki',6,'Science City Rd','Ahmedabad','Gujarat','student_mech_1@gmail.com','8149087015','8149087015','8149087015','no','student_mech_1',19,'Male','no','no'),(17,'160170119002','Rutvij Jadeja',6,'Paldi','Ahmedabad','Gujarat','student_mech_2@gmail.com','9774790501','9774790501','9774790501','no','student_mech_2',19,'Male','no','no'),(18,'160170119003','Hritik Vyas',6,'Race Course Rd ','Rajkot','Gujarat','student_mech_3@gmail.com','8273975092','8273975092','8273975092','yes','student_mech_3',19,'Male','no','no'),(19,'160170119004','Charmi Patel',6,'Chandkheda','Ahmedabad','Gujarat','student_mech_4@gmail.com','8219417300','8219417300','8219417300','no','student_mech_4',19,'Female','no','no'),(20,'170173119001','Chaitanya Pathak',6,'Bapunagar','Ahmedabad','Gujarat','student_mech_5@gmail.com','9604593264','9604593264','9604593264','no','student_mech_5',19,'Male','no','no');
/*!40000 ALTER TABLE `student_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warden_master`
--

DROP TABLE IF EXISTS `warden_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `warden_master` (
  `wardenID` int(11) NOT NULL AUTO_INCREMENT,
  `wardenName` varchar(256) NOT NULL,
  `wardenGender` varchar(10) NOT NULL,
  `wardenContact` varchar(10) NOT NULL,
  `wardenEmail` varchar(256) NOT NULL,
  `wardenPassword` varchar(256) NOT NULL,
  `isApprovedWarden` varchar(3) NOT NULL DEFAULT 'no',
  `isRejectedWarden` varchar(3) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`wardenID`),
  UNIQUE KEY `wardenEmail_UNIQUE` (`wardenEmail`),
  UNIQUE KEY `wardenContact_UNIQUE` (`wardenContact`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warden_master`
--

LOCK TABLES `warden_master` WRITE;
/*!40000 ALTER TABLE `warden_master` DISABLE KEYS */;
INSERT INTO `warden_master` VALUES (1,'Radhika','Female','8987646678','radhika@gmail.com','radhika','no','no'),(2,'Heli','Female','8642457974','heli@gmail.com','heli','yes','no'),(3,'Naishal','Male','8653457789','naishal@gmail.com','naishal','yes','no'),(4,'Jainam','Male','9767292729','jainam@gmail.com','jainam','no','no');
/*!40000 ALTER TABLE `warden_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-03 22:50:43
