-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB-3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `room_residents`
--

DROP TABLE IF EXISTS `room_residents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_residents` (
  `email` varchar(256) NOT NULL,
  `roomNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`email`),
  KEY `roomNumber` (`roomNumber`),
  CONSTRAINT `room_residents_ibfk_1` FOREIGN KEY (`roomNumber`) REFERENCES `rooms` (`roomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_residents`
--

LOCK TABLES `room_residents` WRITE;
/*!40000 ALTER TABLE `room_residents` DISABLE KEYS */;
INSERT INTO `room_residents` VALUES ('david.doe@doecompany.com',13),('john.doe@doecompany.com',13),('sarah.doe@doecompany.com',22),('hannah.doe@doecompany.com',24);
/*!40000 ALTER TABLE `room_residents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `roomNumber` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  UNIQUE KEY `roomNumber` (`roomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (13,2,'Lyxsvit'),(14,2,'Enkelsvit'),(15,2,'Enkelsvit'),(16,2,'Lyxsvit'),(20,3,'Lyxsvit'),(22,3,'Enkelsvit'),(23,3,'Lyxsvit'),(24,3,'Lyxsvit');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-03 13:05:54
