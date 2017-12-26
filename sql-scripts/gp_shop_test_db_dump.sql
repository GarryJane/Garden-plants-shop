-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: gp_shop
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `cat_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(128) NOT NULL,
  `cat_descr` varchar(256) NOT NULL,
  `cat_img` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Лилейники','Описание лилейников','img/plant-1.png'),(2,'Хосты','Описание хост','img/plant-2.png'),(3,'Пионы','Описание пион','img/plant-3.png'),(4,'Лилейники2','Описание лилейников2','img/plant-1.png'),(5,'Хосты2','Описание хост2','img/plant-2.png'),(6,'Пионы2','Описание пион2','img/plant-3.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plants`
--

DROP TABLE IF EXISTS `plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plants` (
  `p_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(6) unsigned NOT NULL,
  `p_name` varchar(128) NOT NULL,
  `p_img` varchar(128) NOT NULL,
  `p_intro` text NOT NULL,
  `p_descr` text NOT NULL,
  `p_additional` text,
  `p_price` int(11) NOT NULL,
  PRIMARY KEY (`p_id`),
  KEY `cat_id` (`cat_id`),
  CONSTRAINT `plants_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plants`
--

LOCK TABLES `plants` WRITE;
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;
INSERT INTO `plants` VALUES (1,1,'Лилейник-1','img/plant-1.png','Лилейник-1 intro','Лилейник-1 descr','Лилейник-1 addition descr',101),(2,1,'Лилейник-2','img/plant-1.png','Лилейник-2 intro','Лилейник-2 descr','Лилейник-2 addition descr',102),(3,2,'Хоста-1','img/plant-2.png','Хоста-1 intro','Хоста-1 descr','Хоста-1 addition descr',201),(4,2,'Хоста-2','img/plant-2.png','Хоста-2 intro','Хоста-2 descr','Хоста-2 addition descr',202),(5,3,'Пион-1','img/plant-3.png','Пион-1 intro','Пион-1 descr','Пион-1 addition descr',301),(6,3,'Пион-2','img/plant-3.png','Пион-2 intro','Пион-2 descr','Пион-2 addition descr',302),(7,4,'Лилейник2-1','img/plant-1.png','Лилейник2-1 intro','Лилейник2-1 descr','Лилейник2-1 addition descr',121),(8,4,'Лилейник2-2','img/plant-1.png','Лилейник2-2 intro','Лилейник2-2 descr','Лилейник2-2 addition descr',122),(9,5,'Хоста2-1','img/plant-2.png','Хоста2-1 intro','Хоста2-1 descr','Хоста2-1 addition descr',221),(10,5,'Хоста2-2','img/plant-2.png','Хоста2-2 intro','Хоста2-2 descr','Хоста2-2 addition descr',222),(11,6,'Пион2-1','img/plant-3.png','Пион2-1 intro','Пион2-1 descr','Пион2-1 addition descr',321),(12,6,'Пион2-2','img/plant-3.png','Пион2-2 intro','Пион2-2 descr','Пион2-2 addition descr',322);
/*!40000 ALTER TABLE `plants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-26 14:21:54
