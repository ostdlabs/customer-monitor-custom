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
-- Table structure for table `ATTENDANCE`
--

DROP TABLE IF EXISTS `ATTENDANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATTENDANCE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `DATE` datetime DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `group_class_id` bigint(20) DEFAULT NULL,
  `pupil_id` bigint(20) DEFAULT NULL,
  `attendancePaymentState` int(11) DEFAULT NULL,
  `PUPIL_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `BASE_CLASS`
--

DROP TABLE IF EXISTS `BASE_CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BASE_CLASS` (
  `BASE_CLASS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `END_TIME` datetime DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `subject` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `auditorium_id` bigint(20) DEFAULT NULL,
  `TEACHER_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`BASE_CLASS_ID`),
  KEY `base_class_auditorium` (`auditorium_id`),
  KEY `base_startdate_index` (`START_TIME`),
  KEY `base_auditorium_index` (`auditorium_id`),
  KEY `base_class_subject` (`subject`),
  KEY `base_class_teacher_person` (`TEACHER_PERSON_ID`),
  CONSTRAINT `base_class_auditorium` FOREIGN KEY (`auditorium_id`) REFERENCES `AUDITORIUM` (`id`),
  CONSTRAINT `base_class_subject` FOREIGN KEY (`subject`) REFERENCES `SUBJECTS` (`id`),
  CONSTRAINT `base_class_teacher_person` FOREIGN KEY (`TEACHER_PERSON_ID`) REFERENCES `TEACHER` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CLASS_COMMENT`
--

DROP TABLE IF EXISTS `CLASS_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLASS_COMMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commentLine` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `BASE_CLASS_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_comment_base_class_id` (`BASE_CLASS_ID`),
  CONSTRAINT `class_comment_base_class_id` FOREIGN KEY (`BASE_CLASS_ID`) REFERENCES `BASE_CLASS` (`BASE_CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `COMMENT`
--

DROP TABLE IF EXISTS `COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commentLine` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `PUPIL_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_pupil_person` (`PUPIL_PERSON_ID`),
  CONSTRAINT `comment_pupil_person` FOREIGN KEY (`PUPIL_PERSON_ID`) REFERENCES `PUPIL` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CONTRACT`
--

DROP TABLE IF EXISTS `CONTRACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CONTRACT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAY_ATTENDANCE`
--

DROP TABLE IF EXISTS `DAY_ATTENDANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAY_ATTENDANCE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `DAY` datetime DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `group_class_id` bigint(20) DEFAULT NULL,
  `scheduled_class_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_attendance` (`group_class_id`,`DAY`),
  KEY `attendance_group_class` (`group_class_id`),
  CONSTRAINT `attendance_group_class` FOREIGN KEY (`group_class_id`) REFERENCES `GROUP_CLASS` (`BASE_CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ECONOMICAL_DATA`
--

DROP TABLE IF EXISTS `ECONOMICAL_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ECONOMICAL_DATA` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` bigint(20) NOT NULL,
  `paymentRegime` int(11) DEFAULT NULL,
  `personalDiscount` int(11) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `LAST_YEAR_PRICE` tinyint(1) DEFAULT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `PAYMENT_DATE` datetime DEFAULT NULL,
  `PUPIL_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `economical_data_contract_index` (`contract_id`),
  KEY `economical_data_pupil_person` (`PUPIL_PERSON_ID`),
  CONSTRAINT `economical_data_pupil_person` FOREIGN KEY (`PUPIL_PERSON_ID`) REFERENCES `PUPIL` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ECONOMICAL_OPERATIONS_HISTORY`
--

DROP TABLE IF EXISTS `ECONOMICAL_OPERATIONS_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ECONOMICAL_OPERATIONS_HISTORY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `pupilEconomicalData_id` bigint(20) DEFAULT NULL,
  `attendanceId` bigint(20) DEFAULT NULL,
  `ATTENDANCE_DATE` datetime DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `group_class_id` bigint(20) DEFAULT NULL,
  `PUPIL_PERSON_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `economical_data_operations_history_index` (`pupilEconomicalData_id`),
  KEY `ECONOMICAL_OPERATIONS_HISTORY_GROUP` (`group_class_id`),
  KEY `economical_operations_history_pupil_person` (`PUPIL_PERSON_ID`),
  CONSTRAINT `economical_data_operations_history_index` FOREIGN KEY (`pupilEconomicalData_id`) REFERENCES `ECONOMICAL_DATA` (`id`),
  CONSTRAINT `ECONOMICAL_OPERATIONS_HISTORY_GROUP` FOREIGN KEY (`group_class_id`) REFERENCES `GROUP_CLASS` (`BASE_CLASS_ID`),
  CONSTRAINT `economical_operations_history_pupil_person` FOREIGN KEY (`PUPIL_PERSON_ID`) REFERENCES `PUPIL` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `GROUP_CLASS`
--

DROP TABLE IF EXISTS `GROUP_CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUP_CLASS` (
  `BASE_CLASS_ID` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `dayofweek` int(11) DEFAULT NULL,
  PRIMARY KEY (`BASE_CLASS_ID`),
  KEY `group_class_parent` (`BASE_CLASS_ID`),
  KEY `group_day_of_week` (`dayofweek`),
  CONSTRAINT `group_class_parent` FOREIGN KEY (`BASE_CLASS_ID`) REFERENCES `BASE_CLASS` (`BASE_CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `PUPIL`
--

DROP TABLE IF EXISTS `PUPIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PUPIL` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `externat` tinyint(1) NOT NULL,
  `individual` tinyint(1) NOT NULL,
  `ege` varchar(255) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `persisted` tinyint(1) NOT NULL,
  `called` tinyint(1) DEFAULT NULL,
  `site` tinyint(1) NOT NULL,
  `visit` tinyint(1) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `representative_id` bigint(20) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `school` int(11) DEFAULT NULL,
  `PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK48F314E9D447023` (`representative_id`),
  KEY `active_persisted` (`active`,`persisted`),
  KEY `pupil_person_id` (`PERSON_ID`),
  CONSTRAINT `FK48F314E9D447023` FOREIGN KEY (`representative_id`) REFERENCES `REPRESENTATIVE` (`id`),
  CONSTRAINT `pupil_person_id` FOREIGN KEY (`PERSON_ID`) REFERENCES `PERSON` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PUPIL_GROUP_START`
--

DROP TABLE IF EXISTS `PUPIL_GROUP_START`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PUPIL_GROUP_START` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start` datetime DEFAULT NULL,
  `groupClass_BASE_CLASS_ID` bigint(20) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `PUPIL_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PUPIL_GROUP_START_GROUP` (`groupClass_BASE_CLASS_ID`),
  KEY `pupil_group_start_pupil_person` (`PUPIL_PERSON_ID`),
  CONSTRAINT `PUPIL_GROUP_START_GROUP` FOREIGN KEY (`groupClass_BASE_CLASS_ID`) REFERENCES `GROUP_CLASS` (`BASE_CLASS_ID`),
  CONSTRAINT `pupil_group_start_pupil_person` FOREIGN KEY (`PUPIL_PERSON_ID`) REFERENCES `PUPIL` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REPRESENTATIVE`
--

DROP TABLE IF EXISTS `REPRESENTATIVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPRESENTATIVE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SCHEDULED_CLASS`
--

DROP TABLE IF EXISTS `SCHEDULED_CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCHEDULED_CLASS` (
  `BASE_CLASS_ID` bigint(20) NOT NULL,
  `group_class_id` bigint(20) DEFAULT NULL,
  `INITIAL_DATE` datetime DEFAULT NULL,
  `GROUP_START_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BASE_CLASS_ID`),
  KEY `scheduled_class_parent` (`BASE_CLASS_ID`),
  KEY `scheduled_class_groups` (`group_class_id`),
  CONSTRAINT `scheduled_class_groups` FOREIGN KEY (`group_class_id`) REFERENCES `GROUP_CLASS` (`BASE_CLASS_ID`),
  CONSTRAINT `scheduled_class_parent` FOREIGN KEY (`BASE_CLASS_ID`) REFERENCES `BASE_CLASS` (`BASE_CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SUBJECTS`
--

DROP TABLE IF EXISTS `SUBJECTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUBJECTS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject` tinyint(1) NOT NULL,
  `value` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Status`
--

DROP TABLE IF EXISTS `Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `TEACHER_WAGE_RATE`
--

DROP TABLE IF EXISTS `TEACHER_WAGE_RATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEACHER_WAGE_RATE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rate` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `teacher` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salary_teacher` (`teacher`),
  CONSTRAINT `salary_teacher` FOREIGN KEY (`teacher`) REFERENCES `TEACHER` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `base_schedule`
--

DROP TABLE IF EXISTS `base_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_schedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `auditorium_id` bigint(20) DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `subject` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `scheduled_class_id` bigint(20) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `group_class_id` bigint(20) DEFAULT NULL,
  `TEACHER_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_ind` (`start_time`),
  KEY `sc_ind` (`scheduled_class_id`),
  KEY `gc_ind` (`group_class_id`),
  KEY `base_schedule_subject` (`subject`),
  CONSTRAINT `base_schedule_subject` FOREIGN KEY (`subject`) REFERENCES `SUBJECTS` (`id`),
  CONSTRAINT `fk_schedule_class` FOREIGN KEY (`scheduled_class_id`) REFERENCES `SCHEDULED_CLASS` (`BASE_CLASS_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `deleted_students_group_classes`
--

DROP TABLE IF EXISTS `deleted_students_group_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deleted_students_group_classes` (
  `GROUP_CLASS_ID` bigint(20) NOT NULL,
  `PUPIL_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GROUP_CLASS_ID`,`PUPIL_PERSON_ID`),
  KEY `deleted_students_group_classes_groups` (`GROUP_CLASS_ID`),
  KEY `deleted_students_group_classes_person_id` (`PUPIL_PERSON_ID`),
  CONSTRAINT `deleted_students_group_classes_groups` FOREIGN KEY (`GROUP_CLASS_ID`) REFERENCES `GROUP_CLASS` (`BASE_CLASS_ID`),
  CONSTRAINT `deleted_students_group_classes_person_id` FOREIGN KEY (`PUPIL_PERSON_ID`) REFERENCES `PUPIL` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pupil_subjects`
--

DROP TABLE IF EXISTS `pupil_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pupil_subjects` (
  `SUBJ_ID` bigint(20) NOT NULL,
  `PUPIL_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PUPIL_PERSON_ID`,`SUBJ_ID`),
  KEY `pupil_subjects_id` (`SUBJ_ID`),
  KEY `subjects_person_id` (`PUPIL_PERSON_ID`),
  CONSTRAINT `pupil_subjects_id` FOREIGN KEY (`SUBJ_ID`) REFERENCES `SUBJECTS` (`id`),
  CONSTRAINT `subjects_person_id` FOREIGN KEY (`PUPIL_PERSON_ID`) REFERENCES `PUPIL` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `students_classes`
--

DROP TABLE IF EXISTS `students_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_classes` (
  `BASE_CLASS_ID` bigint(20) NOT NULL,
  `PUPIL_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`BASE_CLASS_ID`,`PUPIL_PERSON_ID`),
  KEY `students_classes_classes` (`BASE_CLASS_ID`),
  KEY `students_classes_pupil_person` (`PUPIL_PERSON_ID`),
  CONSTRAINT `students_classes_classes` FOREIGN KEY (`BASE_CLASS_ID`) REFERENCES `SCHEDULED_CLASS` (`BASE_CLASS_ID`),
  CONSTRAINT `students_classes_pupil_person` FOREIGN KEY (`PUPIL_PERSON_ID`) REFERENCES `PUPIL` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `students_group_classes`
--

DROP TABLE IF EXISTS `students_group_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_group_classes` (
  `GROUP_CLASS_ID` bigint(20) NOT NULL,
  `PUPIL_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GROUP_CLASS_ID`,`PUPIL_PERSON_ID`),
  KEY `students_group_classes_groups` (`GROUP_CLASS_ID`),
  KEY `students_group_classes_pupil_person` (`PUPIL_PERSON_ID`),
  CONSTRAINT `students_group_classes_groups` FOREIGN KEY (`GROUP_CLASS_ID`) REFERENCES `GROUP_CLASS` (`BASE_CLASS_ID`),
  CONSTRAINT `students_group_classes_pupil_person` FOREIGN KEY (`PUPIL_PERSON_ID`) REFERENCES `PUPIL` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teacher_subjects`
--

DROP TABLE IF EXISTS `teacher_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_subjects` (
  `subject` bigint(20) NOT NULL,
  `TEACHER_PERSON_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`subject`),
  KEY `subjects_teacher_id` (`subject`),
  KEY `teachers_subject_personal_id` (`TEACHER_PERSON_ID`),
  CONSTRAINT `subjects_teacher_id` FOREIGN KEY (`subject`) REFERENCES `SUBJECTS` (`id`),
  CONSTRAINT `teachers_subject_personal_id` FOREIGN KEY (`TEACHER_PERSON_ID`) REFERENCES `TEACHER` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-08 13:24:49
