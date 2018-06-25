-- MySQL dump 10.16  Distrib 10.1.9-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: amsystem
-- ------------------------------------------------------
-- Server version	10.1.9-MariaDB

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'wnyachiro','$2y$10$/ivKSBd5WQ40YjR.xlv4Z.qAlRXpy7n.G1XGMAikVbS5i16q53nqK','Wycliffe','Nyachiro','wycs_passport.jpg','2018-04-30','2018-06-25 06:21:26');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,'2018-06-21','11:17:16',0,'16:36:38',4.3166666666667,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(2,3,'2018-06-21','11:17:42',0,'16:36:43',4.3166666666667,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(3,4,'2018-06-21','11:17:50',0,'16:36:47',4.3,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(4,1,'2018-06-22','09:21:45',0,'20:01:11',9.65,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(5,3,'2018-06-22','09:21:58',0,'20:01:14',9.65,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(6,4,'2018-06-22','09:22:05',0,'20:01:18',9.65,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(7,5,'2018-06-22','09:38:06',1,'20:01:23',9.0166666666667,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(8,6,'2018-06-22','09:38:22',1,'20:01:28',9.0166666666667,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(9,7,'2018-06-22','09:57:24',0,'20:01:05',9.05,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(10,8,'2018-06-22','16:47:48',0,'16:50:52',0.05,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(11,1,'2018-06-23','23:39:27',0,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(12,1,'2018-06-24','17:18:12',0,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(13,3,'2018-06-24','17:18:17',0,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(14,4,'2018-06-24','17:18:21',0,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(15,7,'2018-06-24','17:18:25',0,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(16,5,'2018-06-24','17:18:31',0,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(17,6,'2018-06-24','17:18:35',0,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(18,1,'2018-06-25','06:37:51',1,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(19,3,'2018-06-25','06:37:55',1,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(20,4,'2018-06-25','06:37:58',1,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(21,7,'2018-06-25','06:38:01',1,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(22,5,'2018-06-25','06:38:05',1,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(23,6,'2018-06-25','06:38:10',1,'00:00:00',0,'2018-06-25 06:09:31','0000-00-00 00:00:00'),(86,8,'2018-06-25','09:11:19',0,'00:00:00',0,'2018-06-25 06:11:19','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'ABC123456789','Higgins','Mwinamu','145 Matunda','2018-04-02','09092735719','Male',1,2,'desktop.jpg','2018-04-28','2018-06-25 06:12:32'),(3,'DYE473869250','Rachel','Akoth','138 Eldoret','1991-03-06','0725293352','Female',2,2,'','2018-04-30','2018-06-25 06:12:32'),(4,'JIE625973480','Martin','Njeru','123 Nyeri','1995-10-02','09468029840','Female',2,3,'','2018-04-30','2018-06-25 06:12:32'),(5,'IHV065183947','Mimi','Shujaa','125 Eldoret','1990-01-01','Wycliffe','Male',2,4,'teh.jpg','2018-06-22','2018-06-25 06:12:32'),(6,'JXN021485763','Christine','Kemuma','145 Nairobi','1992-02-04','Credit Advisor','Female',3,4,'th.jpg','2018-06-22','2018-06-25 06:12:32'),(7,'OUI852974106','Emmanuel','Nyamache','189 Nakuru','1990-01-02','Mimi','Male',3,1,'teh.jpg','2018-06-22','2018-06-25 06:12:32'),(8,'VZW249170853','grace','githaiga','145 keroka','1989-02-21','0711093104','Female',6,3,'','2018-06-22','2018-06-25 06:12:32'),(9,'IHU127054968','Petra','Zurie','4568 Eldoret','2017-10-05','0735465970','Female',2,4,'','2018-06-25','2018-06-25 06:58:21'),(10,'DPC074162839','Yeye','Mwenyewe','54 Kisii','1991-10-29','175648','Male',10,5,'','2018-06-25','2018-06-25 06:58:25'),(11,'HUR340172586','Benjamin','Morara','456 kiki','0000-00-00','0735465970','Male',5,5,'','2018-06-25','2018-06-25 07:04:20'),(12,'ILY754216093','Vipi','Kaka','456 KK','0000-00-00','175648','Female',11,5,'','2018-06-25','2018-06-25 07:05:56');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overtime`
--

DROP TABLE IF EXISTS `overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overtime`
--

LOCK TABLES `overtime` WRITE;
/*!40000 ALTER TABLE `overtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Software Developer',100,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(2,'Nurse',50,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(3,'Finance Manager',100,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(4,'Head ICT',1,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(5,'Dialer Manager',1,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(6,'HR Assistant',1,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(7,'Credit Advisor',1,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(8,'System Administrator',1,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(9,'Head BD',1,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(10,'Relationship Manager',1,'2018-06-25 06:17:49','0000-00-00 00:00:00'),(11,'Credit Consultant',1,'2018-06-25 06:17:49','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,'07:00:00','16:00:00','2018-06-25 06:20:24','0000-00-00 00:00:00'),(2,'08:00:00','17:00:00','2018-06-25 06:20:24','0000-00-00 00:00:00'),(3,'09:00:00','18:00:00','2018-06-25 06:20:24','0000-00-00 00:00:00'),(4,'10:00:00','19:00:00','2018-06-25 06:20:24','0000-00-00 00:00:00'),(5,'13:30:00','20:30:00','2018-06-25 06:20:24','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-25 10:14:59
