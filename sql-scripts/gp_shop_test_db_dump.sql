-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: gp_shop
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Temporary table structure for view `all_plants`
--

DROP TABLE IF EXISTS `all_plants`;
/*!50001 DROP VIEW IF EXISTS `all_plants`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_plants` AS SELECT 
 1 AS `Растение`,
 1 AS `Категория`,
 1 AS `Фото`*/;
SET character_set_client = @saved_cs_client;

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
  `cat_img` varchar(128) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Лилейники','Описание лилейников','img/lil-1.jpg'),(2,'Хосты','Описание хост','img/host-1.jpg'),(3,'Пионы','Описание пион','img/plant-3.png'),(4,'Лилейники2','Описание лилейников2','img/plant-1.png'),(5,'Хосты2','Описание хост2','img/plant-2.png'),(6,'Пионы2','Описание пион2','img/plant-3.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `g_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `g_name` varchar(128) NOT NULL,
  `g_descr` varchar(256) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plants`
--

LOCK TABLES `plants` WRITE;
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;
INSERT INTO `plants` VALUES (1,1,'Лилейник-1','img/lil-1.jpg','Лилейник-1 intro','Лилейник-1 descr','Лилейник-1 addition descr',101),(2,1,'Лилейник-2','img/lil-2.jpg','Лилейник-2 intro','Лилейник-2 descr','Лилейник-2 addition descr',102),(3,2,'Лейксайд эйприл сноу','img/host-1.jpg','Хоста-1 intro','Хоста-1 descr','Хоста-1 addition descr',201),(4,2,'Либерти','img/host-2.jpg','Хоста-2 intro','Хоста-2 descr','Хоста-2 addition descr',202),(5,3,'Пион-1','img/plant-3.png','Пион-1 intro','Пион-1 descr','Пион-1 addition descr',301),(6,3,'Пион-2','img/plant-3.png','Пион-2 intro','Пион-2 descr','Пион-2 addition descr',302),(7,1,'Лилейник3','img/lil-3.jpg','Лилейник3 intro','Лилейник3 descr','Лилейник3 addition descr',121),(8,1,'Лилейник4','img/lil-4.jpg','Лилейник4 intro','Лилейник4 descr','Лилейник4 addition descr',122),(9,5,'Хоста2-1','img/plant-2.png','Хоста2-1 intro','Хоста2-1 descr','Хоста2-1 addition descr',221),(10,5,'Хоста2-2','img/plant-2.png','Хоста2-2 intro','Хоста2-2 descr','Хоста2-2 addition descr',222),(11,6,'Пион2-1','img/plant-3.png','Пион2-1 intro','Пион2-1 descr','Пион2-1 addition descr',321),(12,6,'Пион2-2','img/plant-3.png','Пион2-2 intro','Пион2-2 descr','Пион2-2 addition descr',322),(13,2,'Винте сноу','img/host-3.jpg','Краткое описание хосты 3','Хоста, описание растения в p_descr - мыслью по древу про всё про всё и так далее ...',NULL,103),(14,2,'Голден медоус','img/host-4.jpg','Краткое описание хосты 4','Хоста, описание растения в p_descr - мыслью по древу про всё про всё и так далее ...',NULL,103);
/*!40000 ALTER TABLE `plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `u_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `g_id` int(6) unsigned NOT NULL,
  `u_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`u_id`),
  KEY `g_id` (`g_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `groups` (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `all_plants`
--

/*!50001 DROP VIEW IF EXISTS `all_plants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_plants` AS select `plants`.`p_name` AS `Растение`,`cat`.`cat_name` AS `Категория`,`cat`.`cat_img` AS `Фото` from (`categories` `cat` left join `plants` on((`cat`.`cat_id` = `plants`.`cat_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-25 17:18:14
