-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: polling_system
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `authority_register`
--

DROP TABLE IF EXISTS `authority_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authority_register` (
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority_register`
--

LOCK TABLES `authority_register` WRITE;
/*!40000 ALTER TABLE `authority_register` DISABLE KEYS */;
INSERT INTO `authority_register` VALUES ('Debabrata','Lenka','debabratalenka98@gmail.com','9438330948','deba'),('Krushna','Panda','krushna97@gmail.com','9867354213','panda');
/*!40000 ALTER TABLE `authority_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_creation`
--

DROP TABLE IF EXISTS `poll_creation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_creation` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(75) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `opt_A` varchar(45) NOT NULL,
  `opt_B` varchar(45) NOT NULL,
  `opt_C` varchar(45) NOT NULL,
  `opt_D` varchar(45) NOT NULL,
  `creation_date` varchar(45) DEFAULT NULL,
  `end_date` varchar(45) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_creation`
--

LOCK TABLES `poll_creation` WRITE;
/*!40000 ALTER TABLE `poll_creation` DISABLE KEYS */;
INSERT INTO `poll_creation` VALUES (8,'Economics','Is growth Rate of India satisfactory?','Yes','NO','Partially','Not Measurable',NULL,NULL,'DE-ACTIVATED'),(9,'Entertainment','Who is the best Actor of this Year ?','Hrtitk Roshan','Salman Khan','Akshya Kumar','Amir Khan',NULL,NULL,'DE-ACTIVATED');
/*!40000 ALTER TABLE `poll_creation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answer`
--

DROP TABLE IF EXISTS `user_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_answer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(45) NOT NULL,
  `PollId` int(11) NOT NULL,
  `Answer` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answer`
--

LOCK TABLES `user_answer` WRITE;
/*!40000 ALTER TABLE `user_answer` DISABLE KEYS */;
INSERT INTO `user_answer` VALUES (1,'rahul@gmail.com',2,'partially'),(2,'debabratalenka98@gmail.com',2,'almost'),(3,'debasishpadhi09@gmail.com',2,'fully'),(4,'debabratalenka98@gmail.com',5,'60'),(5,'supravadas24@gmail.com',5,'40'),(6,'debabratalenka98@gmail.com',8,'NO'),(7,'supravadas24@gmail.com',8,'NO'),(8,'rahul@gmail.com',8,'Partially'),(9,'spandan78@gmail.com',8,'NO'),(10,'bony789@yahoo.com',9,'Akshya Kumar'),(11,'bony789@yahoo.com',8,'Partially'),(12,'sonali76@gmail.com',8,'Partially'),(13,'sonali76@gmail.com',9,'Akshya Kumar'),(14,'rishi@gmail.com',8,'NO');
/*!40000 ALTER TABLE `user_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_register`
--

DROP TABLE IF EXISTS `user_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_register` (
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `town` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_register`
--

LOCK TABLES `user_register` WRITE;
/*!40000 ALTER TABLE `user_register` DISABLE KEYS */;
INSERT INTO `user_register` VALUES ('Ritik','Shaw','Rairangpur','Mayurbhanj','bony789@yahoo.com','8895467325','killer3d'),('Debabrata','Lenka','Chhatia','Cuttack','debabratalenka98@gmail.com','9438330948','deba'),('Debasish','Padhi','Jagannathpur','Bhadrak','debasishpadhi09@gmail.com','8895478632','dev'),('Rahul','kumar','jsr','east singhbhum','rahul@gmail.com','8539876651','komal'),('Rishikesh','Rajak','Arari','Jharkhand','rishi@gmail.com','9847563214','rishi'),('Spandan','Paramanik','MidnaPur','West MediniPur','spandan78@gmail.com','9436754523','spandan'),('Suprava','Das','NathPur','Jajpur','supravadas24@gmail.com','7978631469','suprva');
/*!40000 ALTER TABLE `user_register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-09 18:45:15
