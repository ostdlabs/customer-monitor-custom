-- MySQL dump 10.13  Distrib 5.1.70, for pc-linux-gnu (x86_64)
--
-- Host: localhost    Database: eca
-- ------------------------------------------------------
-- Server version	5.1.70-log

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
-- Table structure for table `PERSON`
--

DROP TABLE IF EXISTS `PERSON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERSON` (
  `PERSON_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `apartment` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `cellPhone` varchar(255) DEFAULT NULL,
  `dateOfBirth` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `landLinePhone` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `series` varchar(255) DEFAULT NULL,
  `school` int(11) DEFAULT NULL,
  `vkId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERSON_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSON`
--

LOCK TABLES `PERSON` WRITE;
/*!40000 ALTER TABLE `PERSON` DISABLE KEYS */;
INSERT INTO `PERSON` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Владимировна','Оксана',NULL,'Лапыгина',NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Витальевна','Марина',NULL,'Яшина',NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ниазовна','Лилия',NULL,'Саттарова',NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Анотольевна','Екатерина',NULL,'Спиридонова',NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Александровна','Наталья',NULL,'Портнягина',NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Игоревич','Дмитрий',NULL,'Портнягин',NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Георгиевна','Анна',NULL,'Подпоркина',NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Раидиновна','Светлана',NULL,'Мурадханова',NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Вячеславович','Артур',NULL,'Лаздин',NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Васильевна','Галина',NULL,'Иванова',NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Евгеньевна','Жанна',NULL,'Власова',NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Юрьевич','Александр',NULL,'Иванов',NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Александровна','Юлия',NULL,'Валькова',NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Владимировна','Елизавета',NULL,'Глазова',NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Владиславовна','Елена',NULL,'Хмарик',NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Олеговна','Елена',NULL,'Мамонтова',NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Борисовна','Ирина',NULL,'Дягилева',NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Александрович','Михаил',NULL,'Тынтарев',NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Валентиновна','Татьяна',NULL,'Никитина',NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Олеговна','Елена',NULL,'Мамонтова',NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Николаевич','Юрий',NULL,'Бердинский',NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Викторовна','Инна',NULL,'Лисицына',NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Николаевна','Марина',NULL,'Злыгостева',NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Владимирович','Кирилл',NULL,'Николаев',NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Борисович','Павел',NULL,'Снетков',NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Васильевич','Александр',NULL,'Осипов',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `PERSON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `accountNonExpired` tinyint(1) NOT NULL,
  `accountNonLocked` tinyint(1) NOT NULL,
  `credentialsNonExpired` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `person_PERSON_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `FK27E3CBB9DA9081` (`person_PERSON_ID`),
  CONSTRAINT `FK27E3CBB9DA9081` FOREIGN KEY (`person_PERSON_ID`) REFERENCES `PERSON` (`PERSON_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES (1,1,1,1,1,'$2a$10$aZtKlJN.B4j4l62I4E0GS.Q5H186QEwXSe13Z89JYzzqxFZgvjKsS','admin',NULL),(2,1,1,1,1,'$2a$10$J76v5KEMMsMVmdRzMO5wWeH4wP9QOCf4ggyndAW/ob6t2rad62XPy','manager',NULL);
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHORITY`
--

DROP TABLE IF EXISTS `AUTHORITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHORITY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHORITY`
--

LOCK TABLES `AUTHORITY` WRITE;
/*!40000 ALTER TABLE `AUTHORITY` DISABLE KEYS */;
INSERT INTO `AUTHORITY` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMINISTRATOR'),(3,'ROLE_MANAGER');
/*!40000 ALTER TABLE `AUTHORITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_AUTHORITY`
--

DROP TABLE IF EXISTS `USER_AUTHORITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_AUTHORITY` (
  `USER_USER_ID` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_USER_ID`,`authorities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_AUTHORITY`
--

LOCK TABLES `USER_AUTHORITY` WRITE;
/*!40000 ALTER TABLE `USER_AUTHORITY` DISABLE KEYS */;
INSERT INTO `USER_AUTHORITY` VALUES (1,1),(1,2),(2,1),(2,2),(2,3);
/*!40000 ALTER TABLE `USER_AUTHORITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EDUCATION_YEAR`
--

DROP TABLE IF EXISTS `EDUCATION_YEAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EDUCATION_YEAR` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `yearStart` datetime NOT NULL,
  `yearEnd` datetime NOT NULL,
  `current` tinyint(1) NOT NULL,
  `currentDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EDUCATION_YEAR`
--

LOCK TABLES `EDUCATION_YEAR` WRITE;
/*!40000 ALTER TABLE `EDUCATION_YEAR` DISABLE KEYS */;
INSERT INTO `EDUCATION_YEAR` VALUES (1,'2013-09-01 00:00:00','2014-06-30 19:59:59',1,'2014-07-08 13:21:43');
/*!40000 ALTER TABLE `EDUCATION_YEAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEACHER`
--

DROP TABLE IF EXISTS `TEACHER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEACHER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `school` int(11) DEFAULT NULL,
  `PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_person_id` (`PERSON_ID`),
  CONSTRAINT `teacher_person_id` FOREIGN KEY (`PERSON_ID`) REFERENCES `PERSON` (`PERSON_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEACHER`
--

LOCK TABLES `TEACHER` WRITE;
/*!40000 ALTER TABLE `TEACHER` DISABLE KEYS */;
INSERT INTO `TEACHER` VALUES (1,NULL,1),(2,NULL,2),(3,NULL,3),(4,NULL,4),(5,NULL,5),(6,NULL,6),(7,NULL,7),(8,NULL,8),(9,NULL,9),(10,NULL,10),(11,NULL,11),(12,NULL,12),(13,NULL,13),(14,NULL,14),(16,NULL,15),(17,NULL,16),(18,NULL,17),(19,NULL,18),(20,NULL,19),(21,NULL,20),(22,NULL,21),(23,NULL,22),(24,NULL,23),(25,NULL,24),(26,NULL,25),(27,NULL,26);
/*!40000 ALTER TABLE `TEACHER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUDITORIUM`
--

DROP TABLE IF EXISTS `AUDITORIUM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUDITORIUM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `capacity` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUDITORIUM`
--

LOCK TABLES `AUDITORIUM` WRITE;
/*!40000 ALTER TABLE `AUDITORIUM` DISABLE KEYS */;
INSERT INTO `AUDITORIUM` VALUES (1,0,'1'),(2,0,'2'),(3,0,'3'),(4,0,'4'),(5,0,'5'),(6,0,'6'),(7,0,'7');
/*!40000 ALTER TABLE `AUDITORIUM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attendance_types`
--

DROP TABLE IF EXISTS `Attendance_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attendance_types` (
  `Attendance_id` bigint(20) NOT NULL,
  `types` varchar(255) DEFAULT NULL,
  KEY `FKE02E4FC354658923` (`Attendance_id`),
  CONSTRAINT `FKE02E4FC354658923` FOREIGN KEY (`Attendance_id`) REFERENCES `ATTENDANCE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attendance_types`
--

LOCK TABLES `Attendance_types` WRITE;
/*!40000 ALTER TABLE `Attendance_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `Attendance_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLASS_COST`
--

DROP TABLE IF EXISTS `CLASS_COST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLASS_COST` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classType` int(11) DEFAULT NULL,
  `lastYear` tinyint(1) NOT NULL,
  `numberOfClasses` int(11) DEFAULT NULL,
  `paymentRegime` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLASS_COST`
--

LOCK TABLES `CLASS_COST` WRITE;
/*!40000 ALTER TABLE `CLASS_COST` DISABLE KEYS */;
INSERT INTO `CLASS_COST` VALUES (1,0,0,1,0,1200),(2,0,0,2,0,1163),(3,0,0,3,0,1075),(4,0,0,4,0,1000),(9,0,0,1,1,1080),(10,0,0,2,1,1046),(11,0,0,3,1,968),(12,0,0,4,1,900),(13,1,0,1,0,788),(14,1,0,2,0,763),(15,1,0,3,0,717),(16,1,0,4,0,678),(21,1,0,1,1,709),(22,1,0,2,1,686),(23,1,0,3,1,645),(24,1,0,4,1,610),(25,0,1,1,0,1100),(26,0,1,2,0,1038),(27,0,1,3,0,983),(28,0,1,4,0,931),(33,0,1,1,1,990),(34,0,1,2,1,934),(35,0,1,3,1,885),(36,0,1,4,1,838),(37,1,1,1,0,725),(38,1,1,2,0,694),(39,1,1,3,0,654),(40,1,1,4,0,619),(45,1,1,1,1,653),(46,1,1,2,1,624),(47,1,1,3,1,589),(48,1,1,4,1,557);
/*!40000 ALTER TABLE `CLASS_COST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Operation_types`
--

DROP TABLE IF EXISTS `Operation_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Operation_types` (
  `Operation_id` bigint(20) NOT NULL,
  `types` varchar(255) DEFAULT NULL,
  KEY `operation_attendance_type` (`Operation_id`),
  CONSTRAINT `operation_attendance_type` FOREIGN KEY (`Operation_id`) REFERENCES `ECONOMICAL_OPERATIONS_HISTORY` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Operation_types`
--

LOCK TABLES `Operation_types` WRITE;
/*!40000 ALTER TABLE `Operation_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `Operation_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmigration`
--

DROP TABLE IF EXISTS `dbmigration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbmigration` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `script` char(255) NOT NULL,
  `timestamp` date DEFAULT NULL,
  `user` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmigration`
--

LOCK TABLES `dbmigration` WRITE;
/*!40000 ALTER TABLE `dbmigration` DISABLE KEYS */;
INSERT INTO `dbmigration` VALUES (1,'migration_1_000.sql','2014-07-08','darik'),(2,'migration_1_001.sql','2014-07-08','darik'),(3,'migration_1_002.sql','2014-07-08','darik'),(4,'migration_1_003.sql','2014-07-08','darik'),(5,'migration_1_004.sql','2014-07-08','darik'),(6,'migration_1_005.sql','2014-07-08','darik'),(7,'migration_1_006.sql','2014-07-08','darik'),(8,'migration_1_007.sql','2014-07-08','darik'),(9,'migration_1_008.sql','2014-07-08','darik'),(10,'migration_1_009.sql','2014-07-08','darik'),(11,'migration_1_010.sql','2014-07-08','darik'),(12,'migration_1_011.sql','2014-07-08','darik'),(13,'migration_1_012.sql','2014-07-08','darik'),(14,'migration_1_013.sql','2014-07-08','darik'),(15,'migration_1_014.sql','2014-07-08','darik'),(16,'migration_1_015.sql','2014-07-08','darik'),(17,'migration_1_016.sql','2014-07-08','darik'),(18,'migration_1_017.sql','2014-07-08','darik'),(19,'migration_1_018.sql','2014-07-08','darik'),(20,'migration_1_019.sql','2014-07-08','darik'),(21,'migration_1_020.sql','2014-07-08','darik'),(22,'migration_1_021.sql','2014-07-08','darik'),(23,'migration_1_022.sql','2014-07-08','darik'),(24,'migration_1_023.sql','2014-07-08','darik'),(25,'migration_1_024.sql','2014-07-08','darik'),(26,'migration_1_025.sql','2014-07-08','darik'),(27,'migration_1_026.sql','2014-07-08','darik'),(28,'migration_1_027.sql','2014-07-08','darik'),(29,'migration_1_028.sql','2014-07-08','darik'),(30,'migration_1_029.sql','2014-07-08','darik'),(31,'migration_1_030.sql','2014-07-08','darik'),(32,'migration_1_031.sql','2014-07-08','darik'),(33,'migration_1_032.sql','2014-07-08','darik'),(34,'migration_1_033.sql','2014-07-08','darik'),(35,'migration_1_034.sql','2014-07-08','darik'),(36,'migration_1_035.sql','2014-07-08','darik'),(37,'migration_1_036.sql','2014-07-08','darik'),(38,'migration_1_037.sql','2014-07-08','darik'),(39,'migration_1_038.sql','2014-07-08','darik'),(40,'migration_1_039.sql','2014-07-08','darik'),(41,'migration_1_040.sql','2014-07-08','darik'),(42,'migration_1_041.sql','2014-07-08','darik'),(43,'migration_1_042.sql','2014-07-08','darik'),(44,'migration_1_043.sql','2014-07-08','darik'),(45,'migration_1_044.sql','2014-07-08','darik'),(46,'migration_1_045.sql','2014-07-08','darik'),(47,'migration_1_046.sql','2014-07-08','darik');
/*!40000 ALTER TABLE `dbmigration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-08 13:44:09
