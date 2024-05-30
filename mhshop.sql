-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mhshop
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `discrict` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `states` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `custId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Pham Giang','0388015984',1,NULL,'Ha noi','Ha noi',NULL,'Ha noi','2023-06-24 15:16:19','2023-06-24 15:16:19',16),(2,'Pham Giang','0388015984',2,NULL,'1','Ha noi',NULL,'aaaaaaaaa','2023-07-03 19:41:31','2023-07-03 19:41:31',16),(3,'','',3,'','','',NULL,'','2023-07-04 09:30:57','2023-07-04 09:30:57',16),(4,'Pham Giang','0388015984',4,NULL,'1','Ha noi',NULL,'','2023-07-04 09:35:27','2023-07-04 09:35:27',16),(5,'Pham Giang','0388015984',5,NULL,'1','Ha noi',NULL,'aaaaaaa','2023-07-04 09:49:52','2023-07-04 09:49:52',16),(6,'','',6,'','','',NULL,'','2023-07-04 10:00:33','2023-07-04 10:00:33',16),(7,'','',7,'','','',NULL,'','2023-07-04 10:02:41','2023-07-04 10:02:41',16),(8,'','',8,'','','',NULL,'','2023-07-04 10:19:13','2023-07-04 10:19:13',16),(9,'','',9,'','','',NULL,'','2023-07-04 10:21:55','2023-07-04 10:21:55',16),(10,'','',10,'','','',NULL,'','2023-07-04 10:27:12','2023-07-04 10:27:12',16),(11,'','',11,'','','',NULL,'','2023-07-04 10:29:02','2023-07-04 10:29:02',16),(12,'Pham Giang','0388015984',12,NULL,'34','Ha noi',NULL,'qqqqwsaassasasaw','2023-07-04 10:29:48','2023-07-04 10:29:48',16),(13,'Pham Giang','0388015984',13,NULL,'10','Ha noi',NULL,'aaaaa','2023-07-04 10:32:21','2023-07-04 10:32:21',16),(14,'Pham Giang','0388015984',14,NULL,'6','Ha noi',NULL,'aaaaa','2023-07-04 10:35:32','2023-07-04 10:35:32',16),(15,'','',15,'','','',NULL,'','2023-07-12 10:21:11','2023-07-12 10:21:11',16),(16,'Pham Giang','0388015984',16,NULL,'1','datistpham@gmail.com',NULL,'Ha noi','2023-07-12 10:24:19','2023-07-12 10:24:19',16),(17,'','',17,'','','',NULL,'','2023-07-12 10:24:34','2023-07-12 10:24:34',16),(18,'','',18,'','','',NULL,'','2023-07-12 10:24:45','2023-07-12 10:24:45',16),(19,'Pham Giang','0388015984',19,NULL,'1','datistpham@gmail.com',NULL,'Ha noi','2023-07-12 10:25:43','2023-07-12 10:25:43',16),(20,'Pham Giang','0388015984',20,NULL,'1','datistpham@gmail.com',NULL,'Ha noi','2023-07-12 11:00:45','2023-07-12 11:00:45',16),(21,'Pham Giang','0388015984',21,NULL,'1','datistpham@gmail.com',NULL,'Ha noi','2023-07-12 12:11:10','2023-07-12 12:11:10',16),(22,'Pham Giang','0388015984',22,NULL,'1','datistpham@gmail.com',NULL,'Ha noi','2023-07-16 10:44:35','2023-07-16 10:44:35',16),(23,'Pham Giang','0388015984',23,NULL,'1','datistpham@gmail.com',NULL,'Ha noi','2023-07-19 10:24:55','2023-07-19 10:24:55',16),(24,'Pham Giang','0388015984',24,NULL,'1','datistpham@gmail.com',NULL,'Ha noi','2023-07-19 12:29:13','2023-07-19 12:29:13',16),(25,'','',25,'','','',NULL,'','2023-07-19 12:33:14','2023-07-19 12:33:14',16),(26,'Pham Giang','0388015984',26,NULL,'1','datistpham@gmail.com',NULL,'Ha noi','2023-07-19 12:35:43','2023-07-19 12:35:43',16),(27,'','',27,'','','',NULL,'','2023-07-19 12:37:21','2023-07-19 12:37:21',16),(28,'','',28,'','','',NULL,'','2023-07-19 12:38:33','2023-07-19 12:38:33',16),(29,'','',29,'','','',NULL,'','2023-07-19 12:43:55','2023-07-19 12:43:55',16),(30,'','',30,'','','',NULL,'','2023-07-19 12:45:24','2023-07-19 12:45:24',16),(31,'Pham Giang','0388015984',31,NULL,'1','datistpham@gmail.com',NULL,'Ha noi','2023-07-19 12:47:05','2023-07-19 12:47:05',16),(32,'','',32,'','','',NULL,'','2023-07-19 12:47:52','2023-07-19 12:47:52',16),(33,'Cao A Minh','0971695810',33,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-05 03:00:36','2024-05-05 03:00:36',17),(34,'Cao A Minh','0971695810',34,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-05 03:06:28','2024-05-05 03:06:28',17),(35,'Cao A Minh','0971695810',35,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-05 16:57:10','2024-05-05 16:57:10',17),(36,'Cao A Minh','0971695810',36,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-05 18:49:38','2024-05-05 18:49:38',17),(37,'Le Minh Hieu','0123456789',NULL,NULL,'79','leminhhieu@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-12 05:17:55','2024-05-12 05:17:55',0),(38,'Cao A Minh','0971695810',NULL,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-12 05:18:20','2024-05-12 05:18:20',0),(39,'Le Minh Hieu','0971695810',NULL,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-12 05:20:34','2024-05-12 05:20:34',0),(40,'Cao A Minh','0971695810',37,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-12 05:20:56','2024-05-12 05:20:56',20),(41,'Cao A Minh','0971695810',NULL,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-12 05:25:09','2024-05-12 05:25:09',0),(42,'Cao A Minh','0971695810',NULL,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-12 05:25:45','2024-05-12 05:25:45',0),(43,'Cao A Minh','0971695810',38,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-12 05:27:16','2024-05-12 05:27:16',24),(44,'Le Minh Hieu','0123456789',39,NULL,'79','leminhhieu@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-12 05:44:41','2024-05-12 05:44:41',24),(45,'Cao A Minh','0971695810',40,NULL,'79','caoaminh12an1nh2019@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-12 06:27:01','2024-05-12 06:27:01',20),(46,'NGuyen van a','0829282318',41,NULL,'1','trungnguyenn@gmail.com',NULL,'HCM CIty','2024-05-17 14:14:00','2024-05-17 14:14:00',20),(47,'Cao A Minh','0971695810',42,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-19 03:16:22','2024-05-19 03:16:22',28),(48,'Cao A Minh','0971695810',43,NULL,'1','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-01-19 03:19:18','2024-01-19 03:19:18',28),(49,'Cao A Minh','0971695810',44,NULL,'1','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-01-19 03:24:27','2024-01-19 03:24:27',28),(50,'Cao','0971695810',45,NULL,'1','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-01-19 03:25:42','2024-01-19 03:25:42',28),(51,'Cao A Minh','0971695810',46,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-19 03:27:16','2024-05-19 03:27:16',28),(52,'Cao A Minh','0971695810',47,NULL,'1','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2023-05-19 03:30:57','2023-05-19 03:30:57',28),(53,'Cao A Minh','0971695810',48,NULL,'1','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2023-12-19 03:34:51','2023-12-19 03:34:51',28),(54,'Cao A Minh','0971695810',49,NULL,'1','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2022-12-17 03:38:45','2022-12-17 03:38:45',28),(55,'Cao A Minh','0971695810',50,NULL,'1','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2023-01-17 03:41:46','2023-01-17 03:41:46',28),(56,'Cao A Minh','0971695810',51,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH CÔng nghiệp','2024-05-19 04:01:00','2024-05-19 04:01:00',28),(57,'Cao A Minh','0971695810',52,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-19 06:37:24','2024-05-19 06:37:24',29),(58,'Cao A Minh','0971695810',53,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-19 18:07:59','2024-05-19 18:07:59',28),(59,'Cao A Minh','0971695810',54,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-20 16:17:32','2024-05-20 16:17:32',28),(60,'Cao A Minh','0971695810',56,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-05-21 04:37:56','2024-05-21 04:37:56',29),(61,'Cao A Minh','0971695810',57,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2023-09-21 04:39:00','2023-09-21 04:39:00',29),(62,'Cao A Minh','0971695810',58,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2024-03-21 04:41:21','2024-03-21 04:41:21',29),(63,'Cao A Minh','0971695810',59,NULL,'79','caoaminh12345@gmail.com',NULL,'ĐH Công Nghiệp','2023-11-21 04:43:12','2023-11-21 04:43:12',29),(64,'Thành Trung Trung78z Nguyễn','0886506127',60,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 11:41:07','2024-05-21 11:41:07',30),(65,'Thành Trung Trung78z Nguyễn','0886506127',61,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 17:18:27','2024-05-21 17:18:27',30),(66,'Thành Trung Trung78z Nguyễn','0886506127',62,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 18:59:20','2024-05-21 18:59:20',30),(67,'Thành Trung Trung78z Nguyễn','0886506127',63,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:19:54','2024-05-21 19:19:54',30),(68,'Thành Trung Trung78z Nguyễn','0886506127',64,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:33:47','2024-05-21 19:33:47',30),(69,'Thành Trung Trung78z Nguyễn','0886506127',65,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:34:25','2024-05-21 19:34:25',30),(70,'Thành Trung Trung78z Nguyễn','0886506127',66,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:40:27','2024-05-21 19:40:27',30),(71,'Thành Trung Trung78z Nguyễn','0886506127',67,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:41:06','2024-05-21 19:41:06',30),(72,'Thành Trung Trung78z Nguyễn','0886506127',68,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:41:36','2024-05-21 19:41:36',30),(73,'Thành Trung Trung78z Nguyễn','0886506127',69,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:42:09','2024-05-21 19:42:09',30),(74,'Thành Trung Trung78z Nguyễn','0886506127',70,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:42:27','2024-05-21 19:42:27',30),(75,'Thành Trung Trung78z Nguyễn','0886506127',71,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:42:51','2024-05-21 19:42:51',30),(76,'Thành Trung Trung78z Nguyễn','0886506127',72,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:43:00','2024-05-21 19:43:00',30),(77,'Thành Trung Trung78z Nguyễn','0886506127',73,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:44:37','2024-05-21 19:44:37',30),(78,'Thành Trung Trung78z Nguyễn','0886506127',74,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:45:03','2024-05-21 19:45:03',30),(79,'Thành Trung Trung78z Nguyễn','0886506127',75,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:45:06','2024-05-21 19:45:06',30),(80,'Thành Trung Trung78z Nguyễn','0886506127',76,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:45:26','2024-05-21 19:45:26',30),(81,'Thành Trung Trung78z Nguyễn','0886506127',77,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:45:28','2024-05-21 19:45:28',30),(82,'Thành Trung Trung78z Nguyễn','0886506127',78,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:46:38','2024-05-21 19:46:38',30),(83,'Thành Trung Trung78z Nguyễn','0886506127',79,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:46:38','2024-05-21 19:46:38',30),(84,'Thành Trung Trung78z Nguyễn','0886506127',80,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:46:41','2024-05-21 19:46:41',30),(85,'Thành Trung Trung78z Nguyễn','0886506127',81,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:49:02','2024-05-21 19:49:02',30),(86,'Thành Trung Trung78z Nguyễn','0886506127',82,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:49:31','2024-05-21 19:49:31',30),(87,'Thành Trung Trung78z Nguyễn','0886506127',83,NULL,'1','trungpspy@hotmail.com',NULL,'Driect 9','2024-05-21 19:54:03','2024-05-21 19:54:03',30),(88,'Iphone 3','0886506127',84,NULL,'79','trungpspy@gmail.com',NULL,'','2024-05-27 08:27:35','2024-05-27 08:27:35',32),(89,'Iphone 3','0886506127',85,NULL,'31','trungpspy@gmail.com',NULL,'','2024-05-27 13:25:12','2024-05-27 13:25:12',32),(90,'Iphone 11','0886506127',86,NULL,'52','trungpspy@gmail.com',NULL,'','2024-05-27 13:44:30','2024-05-27 13:44:30',32),(91,'Iphone 11','0886506127',87,NULL,'52','trungpspy@gmail.com',NULL,'','2024-05-27 13:44:48','2024-05-27 13:44:48',32),(92,'Iphone 3','0886506127',88,NULL,'89','trungpspy@gmail.com',NULL,'','2024-05-28 07:02:12','2024-05-28 07:02:12',32),(93,'Iphone 3','0886506127',89,NULL,'89','trungpspy@gmail.com',NULL,'','2024-05-28 07:02:15','2024-05-28 07:02:15',32),(94,'Iphone 3','0886506127',90,NULL,'89','trungpspy@gmail.com',NULL,'','2024-05-28 07:02:17','2024-05-28 07:02:17',32),(95,'Iphone 3','0886506127',91,NULL,'89','trungpspy@gmail.com',NULL,'','2024-05-28 07:02:17','2024-05-28 07:02:17',32),(96,'Iphone 3','0886506127',92,NULL,'89','trungpspy@gmail.com',NULL,'','2024-05-28 07:02:20','2024-05-28 07:02:20',32),(97,'Iphone 3','0886506127',93,NULL,'89','trungpspy@gmail.com',NULL,'','2024-05-28 07:02:20','2024-05-28 07:02:20',32),(98,'Iphone 3','0886506127',94,NULL,'89','trungpspy@gmail.com',NULL,'','2024-05-28 07:02:40','2024-05-28 07:02:40',32),(99,'Iphone 3','0886506127',95,NULL,'70','trungpspy@gmail.com',NULL,'','2024-05-28 07:04:31','2024-05-28 07:04:31',32),(100,'Iphone 3','0886506127',96,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 07:52:29','2024-05-28 07:52:29',32),(101,'Iphone 3','0886506127',97,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:13:21','2024-05-28 08:13:21',32),(102,'Iphone 3','0886506127',98,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:14:43','2024-05-28 08:14:43',32),(103,'Iphone 3','0886506127',99,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:14:44','2024-05-28 08:14:44',32),(104,'Iphone 3','0886506127',100,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:14:44','2024-05-28 08:14:44',32),(105,'Iphone 3','0886506127',101,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:14:45','2024-05-28 08:14:45',32),(106,'Iphone 3','0886506127',102,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:14:59','2024-05-28 08:14:59',32),(107,'Iphone 3','0886506127',103,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:15:04','2024-05-28 08:15:04',32),(108,'Iphone 3','0886506127',104,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:15:04','2024-05-28 08:15:04',32),(109,'Iphone 3','0886506127',105,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:15:04','2024-05-28 08:15:04',32),(110,'Iphone 3','0886506127',106,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:15:41','2024-05-28 08:15:41',32),(111,'Iphone 3','0886506127',107,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:15:44','2024-05-28 08:15:44',32),(112,'Iphone 3','0886506127',108,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:15:45','2024-05-28 08:15:45',32),(113,'Iphone 3','0886506127',109,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 08:15:45','2024-05-28 08:15:45',32),(114,'Iphone 3','0886506127',110,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 10:36:21','2024-05-28 10:36:21',32),(115,'Iphone 3','0886506127',111,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 10:36:29','2024-05-28 10:36:29',32),(116,'Iphone 3','0886506127',112,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 10:38:55','2024-05-28 10:38:55',32),(117,'Iphone 3','0886506127',113,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 10:39:55','2024-05-28 10:39:55',32),(118,'Iphone 3','0886506127',114,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 10:41:35','2024-05-28 10:41:35',32),(119,'Iphone 3','0886506127',115,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 10:44:33','2024-05-28 10:44:33',32),(120,'Iphone 3','0886506127',116,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 10:49:47','2024-05-28 10:49:47',32),(121,'Iphone 3','0886506127',117,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 10:50:31','2024-05-28 10:50:31',32),(122,'Iphone 3','0886506127',118,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 11:03:02','2024-05-28 11:03:02',32),(123,'Iphone 3','0886506127',119,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 11:04:37','2024-05-28 11:04:37',32),(124,'Iphone 3','0886506127',120,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 11:05:19','2024-05-28 11:05:19',32),(125,'Iphone 3','0886506127',121,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 11:05:42','2024-05-28 11:05:42',32),(126,'Iphone 3','0886506127',122,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 11:15:39','2024-05-28 11:15:39',32),(127,'Iphone 3','0886506127',123,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 11:21:57','2024-05-28 11:21:57',33),(128,'Iphone 3','0886506127',124,NULL,'79','trungpspy@gmail.com',NULL,'quan 9','2024-05-28 11:29:40','2024-05-28 11:29:40',33),(129,'Iphone 3','0886506127',125,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:28:09','2024-05-29 19:28:09',32),(130,'Iphone 3','0886506127',126,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:28:11','2024-05-29 19:28:11',32),(131,'Iphone 3','0886506127',127,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:29:23','2024-05-29 19:29:23',32),(132,'Iphone 3','0886506127',128,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:29:25','2024-05-29 19:29:25',32),(133,'Iphone 3','0886506127',129,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:29:25','2024-05-29 19:29:25',32),(134,'Iphone 3','0886506127',130,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:29:27','2024-05-29 19:29:27',32),(135,'Iphone 3','0886506127',131,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:31:30','2024-05-29 19:31:30',32),(136,'Iphone 3','0886506127',136,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:36:09','2024-05-29 19:36:09',32),(137,'Iphone 3','0886506127',137,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:36:16','2024-05-29 19:36:16',32),(138,'Iphone 3','0886506127',138,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:36:51','2024-05-29 19:36:51',32),(139,'Iphone 3','0886506127',139,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:40:24','2024-05-29 19:40:24',32),(140,'Iphone 3','0886506127',140,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:41:59','2024-05-29 19:41:59',32),(141,'Iphone 3','0886506127',141,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:42:25','2024-05-29 19:42:25',32),(142,'Iphone 3','0886506127',142,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:43:08','2024-05-29 19:43:08',32),(143,'Iphone 3','0886506127',143,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:43:24','2024-05-29 19:43:24',32),(144,'Iphone 3','0886506127',144,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:43:43','2024-05-29 19:43:43',32),(145,'Iphone 3','0886506127',145,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-29 19:44:50','2024-05-29 19:44:50',32),(146,'Iphone 3','0886506127',146,NULL,'52','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:15:58','2024-05-30 07:15:58',32),(147,'Iphone 3','0886506127',147,NULL,'60','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:21:25','2024-05-30 07:21:25',32),(148,'Iphone 3','0886506127',148,NULL,'52','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:22:29','2024-05-30 07:22:29',32),(149,'Iphone 3','0886506127',149,NULL,'11','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:24:11','2024-05-30 07:24:11',32),(150,'Iphone 3','0886506127',150,NULL,'11','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:24:15','2024-05-30 07:24:15',32),(151,'Iphone 3','0886506127',151,NULL,'24','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:26:43','2024-05-30 07:26:43',32),(152,'Iphone 3','0886506127',152,NULL,'74','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:37:50','2024-05-30 07:37:50',32),(153,'Iphone 3','0886506127',153,NULL,'27','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:39:25','2024-05-30 07:39:25',32),(154,'Iphone 3','0886506127',154,NULL,'74','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:42:09','2024-05-30 07:42:09',32),(155,'Iphone 3','0886506127',155,NULL,'74','trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:43:55','2024-05-30 07:43:55',32),(156,'Iphone 3','0886506127',156,NULL,NULL,'trungpspy@gmail.com',NULL,'quan 9','2024-05-30 07:46:10','2024-05-30 07:46:10',32);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `locationId` int DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_general_ci DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `zipcode` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'bcd',1,'active','2023-05-30 02:37:09','2023-05-30 02:37:09',NULL);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `addressId` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `discount` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (187,41,NULL,139,139,500000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716264227/mhbparowyrkgkaxo6ifs.avif',5,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(188,25,NULL,139,139,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(189,25,NULL,139,139,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(190,17,NULL,139,139,1000000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714838740/yxadg0pnpasvfml3z2ym.jpg',0,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(191,34,NULL,139,139,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(192,34,NULL,139,139,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(193,34,NULL,139,139,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(194,34,NULL,139,139,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(195,34,NULL,139,139,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(196,34,NULL,139,139,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(197,34,NULL,139,139,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:40:24','2024-05-29 19:40:24'),(198,41,NULL,140,140,500000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716264227/mhbparowyrkgkaxo6ifs.avif',5,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(199,25,NULL,140,140,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(200,25,NULL,140,140,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(201,17,NULL,140,140,1000000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714838740/yxadg0pnpasvfml3z2ym.jpg',0,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(202,34,NULL,140,140,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(203,34,NULL,140,140,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(204,34,NULL,140,140,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(205,34,NULL,140,140,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(206,34,NULL,140,140,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(207,34,NULL,140,140,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(208,34,NULL,140,140,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:41:59','2024-05-29 19:41:59'),(209,41,NULL,141,141,500000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716264227/mhbparowyrkgkaxo6ifs.avif',5,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(210,25,NULL,141,141,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(211,25,NULL,141,141,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(212,17,NULL,141,141,1000000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714838740/yxadg0pnpasvfml3z2ym.jpg',0,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(213,34,NULL,141,141,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(214,34,NULL,141,141,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(215,34,NULL,141,141,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(216,34,NULL,141,141,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(217,34,NULL,141,141,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(218,34,NULL,141,141,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(219,34,NULL,141,141,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:42:25','2024-05-29 19:42:25'),(220,41,NULL,142,142,500000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716264227/mhbparowyrkgkaxo6ifs.avif',5,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(221,25,NULL,142,142,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(222,25,NULL,142,142,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(223,17,NULL,142,142,1000000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714838740/yxadg0pnpasvfml3z2ym.jpg',0,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(224,34,NULL,142,142,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(225,34,NULL,142,142,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(226,34,NULL,142,142,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(227,34,NULL,142,142,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(228,34,NULL,142,142,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(229,34,NULL,142,142,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(230,34,NULL,142,142,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:08','2024-05-29 19:43:08'),(231,41,NULL,143,143,500000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716264227/mhbparowyrkgkaxo6ifs.avif',5,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(232,25,NULL,143,143,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(233,25,NULL,143,143,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(234,17,NULL,143,143,1000000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714838740/yxadg0pnpasvfml3z2ym.jpg',0,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(235,34,NULL,143,143,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(236,34,NULL,143,143,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(237,34,NULL,143,143,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(238,34,NULL,143,143,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(239,34,NULL,143,143,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(240,34,NULL,143,143,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(241,34,NULL,143,143,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:24','2024-05-29 19:43:24'),(242,41,NULL,144,144,500000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716264227/mhbparowyrkgkaxo6ifs.avif',5,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(243,25,NULL,144,144,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(244,25,NULL,144,144,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(245,17,NULL,144,144,1000000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714838740/yxadg0pnpasvfml3z2ym.jpg',0,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(246,34,NULL,144,144,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(247,34,NULL,144,144,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(248,34,NULL,144,144,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(249,34,NULL,144,144,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(250,34,NULL,144,144,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(251,34,NULL,144,144,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(252,34,NULL,144,144,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:43:43','2024-05-29 19:43:43'),(253,41,NULL,145,145,500000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716264227/mhbparowyrkgkaxo6ifs.avif',5,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(254,25,NULL,145,145,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(255,25,NULL,145,145,350000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg',5,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(256,17,NULL,145,145,1000000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714838740/yxadg0pnpasvfml3z2ym.jpg',0,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(257,34,NULL,145,145,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(258,34,NULL,145,145,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(259,34,NULL,145,145,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(260,34,NULL,145,145,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(261,34,NULL,145,145,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(262,34,NULL,145,145,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(263,34,NULL,145,145,950000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif',30,'2024-05-29 19:44:50','2024-05-29 19:44:50'),(264,19,'Đầm sơ mi tay chờm đai eo',146,146,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714839281/tfdlp2iv6wmjqgc97ep8.jpg',0,'2024-05-30 07:15:58','2024-05-30 07:15:58'),(265,8,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái',147,147,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp',0,'2024-05-30 07:21:25','2024-05-30 07:21:25'),(266,8,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái',148,148,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp',0,'2024-05-30 07:22:29','2024-05-30 07:22:29'),(267,8,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái',150,150,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp',0,'2024-05-30 07:24:15','2024-05-30 07:24:15'),(268,8,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái',151,151,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp',0,'2024-05-30 07:26:43','2024-05-30 07:26:43'),(269,8,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái',152,152,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp',0,'2024-05-30 07:37:50','2024-05-30 07:37:50'),(270,8,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái',153,153,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp',0,'2024-05-30 07:39:25','2024-05-30 07:39:25'),(271,8,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái',154,154,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp',0,'2024-05-30 07:42:09','2024-05-30 07:42:09'),(272,8,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái',155,155,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp',0,'2024-05-30 07:43:55','2024-05-30 07:43:55'),(273,8,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái',156,156,499000,1000000,1,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp',0,'2024-05-30 07:46:10','2024-05-30 07:46:10');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (6,'Quần','2024-05-04 12:03:51','2024-05-04 12:03:51','quần'),(7,'Áo','2024-05-04 12:03:56','2024-05-04 12:03:56','áo'),(8,'Đồ bộ','2024-05-04 12:04:31','2024-05-04 12:04:31','đồ-bộ'),(9,'Váy','2024-05-04 12:05:58','2024-05-04 12:05:58','váy'),(11,'Giày dép','2024-05-04 12:11:45','2024-05-04 12:11:45','giày-dép');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_send` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `reply_text` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `user_reply` int NOT NULL,
  `createdAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `updatedAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (4,'Tuan 123','','xin chào tôi muốn ','datistpham@gmail.com','','processed','',0,'2023-06-29 10:27:24','2023-07-02 10:13:00'),(6,'Cao A Minh','2024-05-04T12:57:37.459Z','Tôi có vài câu hỏi muốn nhắn cho shop...','caoaminh12an1nh2019@gmail.com','0971695810','replied','Rất cảm ơn bạn đã quan tâm đến cửa hàng của chúng tôi...',3,'2024-05-04 12:57:37','2024-05-04 12:58:31'),(7,'Minh','2024-05-05T02:53:05.412Z','abcde','caoaminh1@gmai.com','0971695810','replied','hfkjashfksahfkashfkjasfhkfjkjhfkhkd',0,'2024-05-05 02:53:05','2024-05-12 06:29:03'),(8,'Cao A Minh','2024-05-12T06:31:14.238Z','XIn chào tôi muốn ....','caoaminh12an1nh2019@gmail.com','0971695810','replied','àiasklfhskalhfklsafk',0,'2024-05-12 06:31:14','2024-05-12 06:31:24'),(9,'Cao A Minh','2024-05-19T04:06:05.257Z','Tôi muốn hỏi về ...','caoaminh12345@gmail.com','0971695810','waiting for reply','',0,'2024-05-19 04:06:05','2024-05-19 04:06:05'),(10,'Cao A Minh','2024-05-19T04:06:30.114Z','abcopsjfopjfjoa','caoaminh12an1nh2019@gmail.com','0971695810','replied','hfahfkjsahkjashfkashfk',3,'2024-05-19 04:06:30','2024-05-19 04:06:47'),(11,'dsadsadsa','2024-05-30T08:07:42.007Z','dsadsadsa','trungpspy@gmail.com','0886506127','replied','Hellllooo',7,'2024-05-30 08:07:42','2024-05-30 08:08:23'),(13,'dsadsadsa','2024-05-30T08:11:39.101Z','dsadsadsadsaddwnguyenv adsa','trungpspy@gmail.com','0886506127','replied','Nguyen van aaaaaaaaaaaaaaaaaaaaaaaa',7,'2024-05-30 08:11:39','2024-05-30 08:11:54');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `userid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (16,'Pham','Giang','027381213123','datistpham@gmail.com','$2a$10$gnCLg350nOUNasemG/rW5ujqvEdLVLO7lDGboQ1X1YgIvjgSTUJGq',NULL,'Male','2023-06-15 17:46:27','2024-03-10 12:56:12'),(17,'Cao','A Minh','0971695810','caoaminh1@gmail.com','$2a$10$ug3RQuXAXwcjXsQc3TEdBOwxq7MQ3on93KlKRbx0J89dolLJ2M8RO',NULL,'Male','2024-05-03 14:22:10','2024-05-05 02:59:40'),(19,'Minh','Hiếu','0364973299','leminhhieu7801@gmail.com','$2a$10$C0Lu3by7dVFn/lST9Ksuuu6bcj8KupCfpjimzs2D3sM6kKW8NnUkq',NULL,'Male','2024-05-05 03:16:58','2024-05-05 03:17:38'),(20,'Cao','A Minh','0971695810','caoaminh12an1nh2019@gmail.com','$2a$10$B6oRcOtLQIdgVFo8BaC7Bu/pxBVwC.HjAF5trq.iFWvVGJrxTWWlK',NULL,'Male','2024-05-05 16:46:24','2024-05-12 04:03:37'),(24,'Le','Minh Hieu','0123456789','leminhhieu@gmail.com','6ebe76c9fb411be97b3b0d48b791a7c9',NULL,'Male','2024-05-03 14:22:10','2024-05-05 02:59:40'),(28,'Minh','Cao','0971695810','caoaminh12345@gmail.com','25f9e794323b453885f5181f1b624d0b',NULL,'Male','2024-05-19 03:12:14','2024-05-19 14:38:09'),(29,'Minh','Cao','09716595810','caoaminh11111@gmail.com','25f9e794323b453885f5181f1b624d0b',NULL,'Nam','2024-05-19 06:35:47','2024-05-19 06:35:59'),(32,'Trung','Trung','0886506127','trungpspy@gmail.com','466e8bb2041f64f94d6603dc513afe27',NULL,'Female','2024-05-26 04:25:58','2024-05-29 15:32:47'),(33,'Trung','Nguyen ','0886506127','trungpyy@gmail.com','205a5e1b36738602846a555cee9b6029',NULL,'Nam','2024-05-28 11:17:56','2024-05-28 11:18:01');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_general_ci DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `zipcode` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'aaaa','active','2023-05-29 04:38:39','2023-05-29 04:38:39',NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custId` int DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paymentmethod` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `grandtotal` int DEFAULT NULL,
  `status` enum('processing','shipping','delieverd','cancel') COLLATE utf8mb4_general_ci DEFAULT 'processing',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deliverydate` datetime DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `voucherId` int NOT NULL,
  `deliveryFee` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `custId` (`custId`),
  KEY `voucherId` (`voucherId`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (38,24,'149384338093','cash',230000,'shipping','2024-05-12 05:27:16','2024-05-12 05:31:03','2024-05-24 00:00:00','',0,50000),(39,24,'150881788574','cash',267550,'processing','2024-05-12 05:44:41','2024-05-12 05:44:41',NULL,'',0,50000),(40,20,'520931467050','cash',1400000,'delieverd','2024-05-12 06:27:01','2024-05-12 06:27:48','2024-05-16 00:00:00','',0,50000),(41,20,'114629940400','cash',0,'processing','2024-05-17 14:14:00','2024-05-17 14:14:00',NULL,'',0,0),(42,28,'2813229652','cash',1799200,'delieverd','2024-05-19 03:16:22','2024-01-19 03:22:58',NULL,'',0,50000),(43,28,'116725193708','cash',1399000,'processing','2024-01-19 03:19:18','2024-01-19 03:19:18',NULL,'',0,0),(44,28,'136117919858','cash',1000000,'processing','2024-01-19 03:24:27','2024-01-19 03:24:27',NULL,'',0,0),(45,28,'505074596036','cash',180000,'processing','2024-01-19 03:25:42','2024-01-19 03:25:42',NULL,'',0,0),(46,28,'1092941304906','cash',1449200,'delieverd','2024-05-19 03:27:16','2024-05-19 03:27:39','2024-05-19 00:00:00','',0,50000),(47,28,'495627972440','cash',898000,'processing','2023-05-19 03:30:57','2023-05-19 03:30:57',NULL,'',0,0),(48,28,'201954294742','cash',1394200,'processing','2023-12-19 03:34:51','2023-12-19 03:34:51',NULL,'',0,0),(49,28,'1102582897734','cash',2229000,'delieverd','2022-12-17 03:38:45','2024-05-21 04:45:04','2023-12-19 00:00:00','',0,0),(50,28,'145400554152','cash',1730000,'processing','2023-01-17 03:41:46','2023-01-17 03:41:46',NULL,'',0,0),(51,28,'543860903188','cash',544000,'delieverd','2024-05-19 04:01:00','2024-05-19 04:01:42','2024-05-18 00:00:00','',0,50000),(52,29,'34973827860','cash',1050000,'delieverd','2024-05-19 06:37:24','2024-05-21 04:46:58','2024-05-21 00:00:00','',0,50000),(53,28,'443774325684','cash',1850000,'delieverd','2024-05-19 18:07:59','2024-05-21 04:46:47','2024-05-22 00:00:00','',0,50000),(54,28,'709022381744','cash',764000,'delieverd','2024-05-20 16:17:32','2024-05-21 04:46:32','2024-05-22 00:00:00','',0,50000),(55,28,'709022381714','cash',764000,'delieverd','2024-01-01 16:17:32','2024-01-01 16:17:32','2024-01-03 10:47:50','',0,50000),(56,29,'228148263513','cash',3572500,'shipping','2024-05-21 04:37:56','2024-05-21 04:46:14','2024-05-23 00:00:00','',0,50000),(57,29,'133411263937','cash',3950000,'processing','2023-09-21 04:39:00','2023-09-21 04:39:00',NULL,'',0,50000),(58,29,'148725429488','cash',2867000,'processing','2024-03-21 04:41:21','2024-03-21 04:41:21',NULL,'',0,50000),(59,29,'175379765022','cash',7637000,'processing','2023-11-21 04:43:12','2023-11-21 04:43:12',NULL,'',0,50000),(60,30,'193043555369','cash',665000,'processing','2024-05-21 11:41:07','2024-05-21 11:41:07',NULL,'',0,0),(61,30,'541144818193','cash',499000,'processing','2024-05-21 17:18:27','2024-05-21 17:18:27',NULL,'',0,0),(62,30,'557520677424','cash',624000,'processing','2024-05-21 18:59:20','2024-05-21 18:59:20',NULL,'',0,0),(63,30,'33914685142','cash',1330000,'processing','2024-05-21 19:19:54','2024-05-21 19:19:54',NULL,'',0,0),(64,30,'125748668450','cash',1330000,'processing','2024-05-21 19:33:47','2024-05-21 19:33:47',NULL,'',0,0),(65,30,'1174831824066','cash',1330000,'processing','2024-05-21 19:34:25','2024-05-21 19:34:25',NULL,'',0,0),(66,30,'492242790351','cash',624000,'processing','2024-05-21 19:40:27','2024-05-21 19:40:27',NULL,'',0,0),(67,30,'85388036948','cash',624000,'processing','2024-05-21 19:41:06','2024-05-21 19:41:06',NULL,'',0,0),(68,30,'487678337002','cash',624000,'processing','2024-05-21 19:41:36','2024-05-21 19:41:36',NULL,'',0,0),(69,30,'267113605202','cash',624000,'processing','2024-05-21 19:42:09','2024-05-21 19:42:09',NULL,'',0,0),(70,30,'334131846515','cash',624000,'processing','2024-05-21 19:42:27','2024-05-21 19:42:27',NULL,'',0,0),(71,30,'289051366908','cash',624000,'processing','2024-05-21 19:42:51','2024-05-21 19:42:51',NULL,'',0,0),(72,30,'954565904556','cash',624000,'processing','2024-05-21 19:43:00','2024-05-21 19:43:00',NULL,'',0,0),(73,30,'681264133993','cash',624000,'processing','2024-05-21 19:44:37','2024-05-21 19:44:37',NULL,'',0,0),(74,30,'169437525327','cash',624000,'processing','2024-05-21 19:45:03','2024-05-21 19:45:03',NULL,'',0,0),(75,30,'6081934075','cash',624000,'processing','2024-05-21 19:45:06','2024-05-21 19:45:06',NULL,'',0,0),(76,30,'59276376314','cash',624000,'processing','2024-05-21 19:45:26','2024-05-21 19:45:26',NULL,'',0,0),(77,30,'441874863594','cash',624000,'processing','2024-05-21 19:45:28','2024-05-21 19:45:28',NULL,'',0,0),(78,30,'614391828579','cash',624000,'processing','2024-05-21 19:46:38','2024-05-21 19:46:38',NULL,'',0,0),(79,30,'148514281974','cash',624000,'processing','2024-05-21 19:46:38','2024-05-21 19:46:38',NULL,'',0,0),(80,30,'240781578690','cash',624000,'processing','2024-05-21 19:46:41','2024-05-21 19:46:41',NULL,'',0,0),(81,30,'78686064962','cash',624000,'processing','2024-05-21 19:49:02','2024-05-21 19:49:02',NULL,'',0,0),(82,30,'10826264082','cash',624000,'processing','2024-05-21 19:49:31','2024-05-21 19:49:31',NULL,'',0,0),(83,30,'330503133131','cash',665000,'processing','2024-05-21 19:54:03','2024-05-21 19:54:03',NULL,'',0,0),(84,32,'1091132275752','cash',715000,'processing','2024-05-27 08:27:35','2024-05-27 08:27:35',NULL,'',0,50000),(85,32,'1132479618411','cash',2311800,'processing','2024-05-27 13:25:12','2024-05-27 13:25:12',NULL,'',0,50000),(122,32,'232888025399','payment',715000,'processing','2024-05-28 11:15:39','2024-05-28 11:15:39',NULL,'',0,50000),(123,33,'777322426824','payment',449200,'processing','2024-05-28 11:21:57','2024-05-28 11:21:57',NULL,'',0,50000),(124,33,'1082211308041','payment',715000,'processing','2024-05-28 11:29:40','2024-05-28 11:29:40',NULL,'',0,50000),(135,32,'113825537030','cash',6845000,'processing','2024-05-29 19:35:51','2024-05-29 19:35:51',NULL,'',0,50000),(136,32,'217707666491','cash',6845000,'processing','2024-05-29 19:36:09','2024-05-29 19:36:09',NULL,'',0,50000),(137,32,'17514418094','cash',6845000,'processing','2024-05-29 19:36:16','2024-05-29 19:36:16',NULL,'',0,50000),(138,32,'232468779715','cash',6845000,'processing','2024-05-29 19:36:50','2024-05-29 19:36:50',NULL,'',0,50000),(139,32,'127146838970','cash',6845000,'processing','2024-05-29 19:40:24','2024-05-29 19:40:24',NULL,'',0,50000),(140,32,'110757145126','cash',6845000,'processing','2024-05-29 19:41:59','2024-05-29 19:41:59',NULL,'',0,50000),(141,32,'255179166335','cash',6845000,'processing','2024-05-29 19:42:25','2024-05-29 19:42:25',NULL,'',0,50000),(142,32,'263952183801','cash',6845000,'processing','2024-05-29 19:43:08','2024-05-29 19:43:08',NULL,'',0,50000),(143,32,'143943978285','cash',6845000,'processing','2024-05-29 19:43:24','2024-05-29 19:43:24',NULL,'',0,50000),(144,32,'285616088778','cash',6845000,'processing','2024-05-29 19:43:43','2024-05-29 19:43:43',NULL,'',0,50000),(145,32,'888708445219','cash',6845000,'processing','2024-05-29 19:44:50','2024-05-29 19:44:50',NULL,'',0,50000),(146,32,'681415876303','cash',549000,'processing','2024-05-30 07:15:58','2024-05-30 07:15:58',NULL,'',0,50000),(147,32,'76453401723','cash',549000,'processing','2024-05-30 07:21:25','2024-05-30 07:21:25',NULL,'',0,50000),(148,32,'187603175940','cash',549000,'processing','2024-05-30 07:22:29','2024-05-30 07:22:29',NULL,'',0,50000),(149,32,'296522741328','',549000,'processing','2024-05-30 07:24:11','2024-05-30 07:24:11',NULL,'',0,50000),(150,32,'341188031632','cash',549000,'processing','2024-05-30 07:24:15','2024-05-30 07:24:15',NULL,'',0,50000),(151,32,'259812693608','payment',549000,'processing','2024-05-30 07:26:43','2024-05-30 07:26:43',NULL,'',0,50000),(152,32,'16032547555','payment',549000,'processing','2024-05-30 07:37:50','2024-05-30 07:37:50',NULL,'',0,50000),(153,32,'326427799881','payment',549000,'processing','2024-05-30 07:39:25','2024-05-30 07:39:25',NULL,'',0,50000),(154,32,'74358115932','payment',549000,'processing','2024-05-30 07:42:09','2024-05-30 07:42:09',NULL,'',0,50000),(155,32,'36154373567','payment',549000,'processing','2024-05-30 07:43:55','2024-05-30 07:43:55',NULL,'',0,50000),(156,32,'542684130565','payment',549000,'processing','2024-05-30 07:46:10','2024-05-30 07:46:10',NULL,'',0,50000);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otps`
--

DROP TABLE IF EXISTS `otps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `otp` varchar(255) NOT NULL,
  `expiresAt` timestamp NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otps`
--

LOCK TABLES `otps` WRITE;
/*!40000 ALTER TABLE `otps` DISABLE KEYS */;
/*!40000 ALTER TABLE `otps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderCreationId` varchar(255) DEFAULT NULL,
  `zalopayPaymentId` varchar(255) DEFAULT NULL,
  `custId` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `zalopayOrderId` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'372074005670','240528_624461',32,1,'0','240528_624461','payment','','2024-05-28 11:05:43','2024-05-28 11:05:43'),(2,'232888025399','240528_542712',32,1,'0','240528_542712','payment','','2024-05-28 11:15:40','2024-05-28 11:15:40'),(3,'777322426824','240528_654768',33,1,'0','240528_654768','payment','','2024-05-28 11:21:58','2024-05-28 11:21:58'),(4,'1082211308041','240528_839490',33,1,'0','240528_839490','payment','','2024-05-28 11:29:41','2024-05-28 11:29:41'),(5,'259812693608','240530_139218',32,1,'0','240530_139218','payment','','2024-05-30 07:26:43','2024-05-30 07:26:43'),(6,'16032547555','240530_706791',32,1,'0','240530_706791','payment','','2024-05-30 07:37:51','2024-05-30 07:37:51'),(7,'326427799881','240530_354693',32,1,'0','240530_354693','payment','','2024-05-30 07:39:26','2024-05-30 07:39:26'),(8,'74358115932','240530_802534',32,1,'0','240530_802534','payment','','2024-05-30 07:42:10','2024-05-30 07:42:10'),(9,'36154373567','240530_672173',32,1,'0','240530_672173','payment','','2024-05-30 07:43:55','2024-05-30 07:43:55'),(10,'542684130565','240530_209488',32,1,'0','240530_209488','payment','','2024-05-30 07:46:11','2024-05-30 07:46:11');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productoffers`
--

DROP TABLE IF EXISTS `productoffers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productoffers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `discount_per` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `discount_price` float DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `total` float DEFAULT NULL,
  `net_price` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoffers`
--

LOCK TABLES `productoffers` WRITE;
/*!40000 ALTER TABLE `productoffers` DISABLE KEYS */;
/*!40000 ALTER TABLE `productoffers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productphotos`
--

DROP TABLE IF EXISTS `productphotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productphotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `imgUrl` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productphotos`
--

LOCK TABLES `productphotos` WRITE;
/*!40000 ALTER TABLE `productphotos` DISABLE KEYS */;
INSERT INTO `productphotos` VALUES (16,2,'https://res.cloudinary.com/cockbook/image/upload/v1687351312/oehqpkery5daf8szhhkk.png','2023-06-21 12:41:54','2023-06-21 12:41:54'),(17,2,'https://res.cloudinary.com/cockbook/image/upload/v1687351312/k98f1mqjckzufln0e88e.png','2023-06-21 12:41:54','2023-06-21 12:41:54'),(18,2,'https://res.cloudinary.com/cockbook/image/upload/v1687351312/cgh0fnenyjkqppdhlxqd.png','2023-06-21 12:41:54','2023-06-21 12:41:54'),(19,2,'https://res.cloudinary.com/cockbook/image/upload/v1687618575/eo4nbwchpfzeacwuivt7.png','2023-06-24 14:56:16','2023-06-24 14:56:16'),(21,2,'https://res.cloudinary.com/cockbook/image/upload/v1687618575/oaui7udnhmks1ggkvuvj.png','2023-06-24 14:56:16','2023-06-24 14:56:16'),(22,2,'https://res.cloudinary.com/cockbook/image/upload/v1687618576/zzekebnzxygpurwvfme7.png','2023-06-24 14:56:16','2023-06-24 14:56:16'),(23,2,'https://res.cloudinary.com/cockbook/image/upload/v1687618575/u1psrnr7rsnu38oq5swe.png','2023-06-24 14:56:16','2023-06-24 14:56:16'),(24,2,'https://res.cloudinary.com/cockbook/image/upload/v1687618575/sbdrnzkdntrv6rmxyxxr.png','2023-06-24 14:56:16','2023-06-24 14:56:16'),(46,16,'https://res.cloudinary.com/cockbook/image/upload/v1688847154/fl5vw48tdp5dl3nzmwnq.png','2023-07-08 20:12:43','2023-07-08 20:12:43'),(47,16,'https://res.cloudinary.com/cockbook/image/upload/v1688847154/xjfuowdv5rgecuo3teit.png','2023-07-08 20:12:43','2023-07-08 20:12:43'),(48,16,'https://res.cloudinary.com/cockbook/image/upload/v1688847154/ptvpebaxcy3v5bwj5qxo.png','2023-07-08 20:12:43','2023-07-08 20:12:43'),(49,16,'https://res.cloudinary.com/cockbook/image/upload/v1688847154/pnuozlrkdy6s1o4oc5mh.png','2023-07-08 20:12:43','2023-07-08 20:12:43'),(61,2,'https://res.cloudinary.com/cockbook/image/upload/v1710073971/g10f0d1afrqul09ewmo6.jpg','2024-03-10 12:33:00','2024-03-10 12:33:00'),(63,4,'https://res.cloudinary.com/cockbook/image/upload/v1710074223/v5d6jpvnus1sdze6up1m.jpg','2024-03-10 12:37:22','2024-03-10 12:37:22'),(64,5,'https://res.cloudinary.com/cockbook/image/upload/v1710074425/plyu4wcyaernov2bysug.jpg','2024-03-10 12:40:37','2024-03-10 12:40:37'),(65,NULL,'https://res.cloudinary.com/cockbook/image/upload/v1710074434/ks9vfzlutmek6zidsr7a.jpg','2024-03-10 12:40:37','2024-03-10 12:40:37'),(66,NULL,'https://res.cloudinary.com/cockbook/image/upload/v1710074434/dprln1gnsttcsvuschgw.jpg','2024-03-10 12:40:37','2024-03-10 12:40:37'),(67,3,'https://res.cloudinary.com/cockbook/image/upload/v1710075321/no1szhkwn493cnnuz1tc.jpg','2024-03-10 12:55:21','2024-03-10 12:55:21'),(68,3,'https://res.cloudinary.com/cockbook/image/upload/v1710075321/dnnqwndhgx6vttv9bmf9.jpg','2024-03-10 12:55:21','2024-03-10 12:55:21'),(69,3,'https://res.cloudinary.com/cockbook/image/upload/v1710075321/d95klwgce5hrnpmauzyr.jpg','2024-03-10 12:55:21','2024-03-10 12:55:21'),(70,6,'https://res.cloudinary.com/cockbook/image/upload/v1714826014/aqutpkxdljpggidyjq6w.webp','2024-05-04 12:33:37','2024-05-04 12:33:37'),(71,6,'https://res.cloudinary.com/cockbook/image/upload/v1714826014/nlf4anmom34ttvhalqxb.webp','2024-05-04 12:33:37','2024-05-04 12:33:37'),(72,6,'https://res.cloudinary.com/cockbook/image/upload/v1714826014/wjwchzs5jkwp9ojnrngj.webp','2024-05-04 12:33:37','2024-05-04 12:33:37'),(73,8,'https://res.cloudinary.com/cockbook/image/upload/v1714832213/rw8xcmurpuifhvtuluhy.webp','2024-05-04 14:16:53','2024-05-04 14:16:53'),(74,8,'https://res.cloudinary.com/cockbook/image/upload/v1714832212/zwuy9hqjcif5vnfzup95.webp','2024-05-04 14:16:53','2024-05-04 14:16:53'),(75,8,'https://res.cloudinary.com/cockbook/image/upload/v1714832212/jsvt7lgmbivppp4n8fwj.webp','2024-05-04 14:16:53','2024-05-04 14:16:53'),(76,8,'https://res.cloudinary.com/cockbook/image/upload/v1714832212/pwnkpyeq9prclirliopz.webp','2024-05-04 14:16:53','2024-05-04 14:16:53'),(77,7,'https://res.cloudinary.com/cockbook/image/upload/v1714833772/ac24itpjvh1ukq5ztfpl.webp','2024-05-04 14:42:53','2024-05-04 14:42:53'),(78,7,'https://res.cloudinary.com/cockbook/image/upload/v1714833772/tigzdg8zrohgrtrplt8u.webp','2024-05-04 14:42:53','2024-05-04 14:42:53'),(79,7,'https://res.cloudinary.com/cockbook/image/upload/v1714833773/snkxdaccgjaoptgbjkts.webp','2024-05-04 14:42:53','2024-05-04 14:42:53'),(80,7,'https://res.cloudinary.com/cockbook/image/upload/v1714833772/dcylfhekpdfo8jionwy8.webp','2024-05-04 14:42:53','2024-05-04 14:42:53'),(81,9,'https://res.cloudinary.com/cockbook/image/upload/v1714833850/m8jrz20hzonxia54ipnw.jpg','2024-05-04 14:44:11','2024-05-04 14:44:11'),(82,9,'https://res.cloudinary.com/cockbook/image/upload/v1714833850/l2kw0urw1hynakc3vwox.jpg','2024-05-04 14:44:11','2024-05-04 14:44:11'),(83,9,'https://res.cloudinary.com/cockbook/image/upload/v1714833851/sxdppawablx6faod413q.jpg','2024-05-04 14:44:11','2024-05-04 14:44:11'),(84,9,'https://res.cloudinary.com/cockbook/image/upload/v1714833850/vfe0hp5qracuwazt5jur.jpg','2024-05-04 14:44:11','2024-05-04 14:44:11'),(85,10,'https://res.cloudinary.com/cockbook/image/upload/v1714833917/dsl3qn5etfge3fgzbzoy.jpg','2024-05-04 14:45:17','2024-05-04 14:45:17'),(86,10,'https://res.cloudinary.com/cockbook/image/upload/v1714833917/e6d9vraxvrodqdqrvzeb.jpg','2024-05-04 14:45:17','2024-05-04 14:45:17'),(87,10,'https://res.cloudinary.com/cockbook/image/upload/v1714833917/wblhiaf2i5elmtkqldqw.jpg','2024-05-04 14:45:17','2024-05-04 14:45:17'),(88,10,'https://res.cloudinary.com/cockbook/image/upload/v1714833917/s2xsepya8do88lnzxl7j.jpg','2024-05-04 14:45:17','2024-05-04 14:45:17'),(94,13,'https://res.cloudinary.com/cockbook/image/upload/v1714837013/tpvrzfhbcfmmtigxh8dg.webp','2024-05-04 15:37:11','2024-05-04 15:37:11'),(95,13,'https://res.cloudinary.com/cockbook/image/upload/v1714837073/gtu2ol5ljwsiqdegcvqz.webp','2024-05-04 15:37:53','2024-05-04 15:37:53'),(96,13,'https://res.cloudinary.com/cockbook/image/upload/v1714837073/yqkvsvkkrxpfbdc8wij3.webp','2024-05-04 15:37:53','2024-05-04 15:37:53'),(97,14,'https://res.cloudinary.com/cockbook/image/upload/v1714837420/an8v3flgmvoq5klskwys.webp','2024-05-04 15:43:40','2024-05-04 15:43:40'),(98,14,'https://res.cloudinary.com/cockbook/image/upload/v1714837420/qvtqdheh1low8rkovj9r.webp','2024-05-04 15:43:40','2024-05-04 15:43:40'),(99,14,'https://res.cloudinary.com/cockbook/image/upload/v1714837420/f2jinjuqicftgruyirsm.webp','2024-05-04 15:43:40','2024-05-04 15:43:40'),(100,11,'https://res.cloudinary.com/cockbook/image/upload/v1714837461/jhvez8slthzs79oeutjz.jpg','2024-05-04 15:44:22','2024-05-04 15:44:22'),(101,11,'https://res.cloudinary.com/cockbook/image/upload/v1714837461/i7xyhzmchdspbowyyotv.jpg','2024-05-04 15:44:22','2024-05-04 15:44:22'),(102,11,'https://res.cloudinary.com/cockbook/image/upload/v1714837461/vz5luc9aj9whq2az1pgq.jpg','2024-05-04 15:44:22','2024-05-04 15:44:22'),(103,15,'https://res.cloudinary.com/cockbook/image/upload/v1714837729/fgnnssrpwcn8co7291vh.webp','2024-05-04 15:48:50','2024-05-04 15:48:50'),(104,15,'https://res.cloudinary.com/cockbook/image/upload/v1714837729/yoayj9p2cynlirnsdjao.webp','2024-05-04 15:48:50','2024-05-04 15:48:50'),(105,15,'https://res.cloudinary.com/cockbook/image/upload/v1714837730/hdwljnooeqsui7reamqe.webp','2024-05-04 15:48:50','2024-05-04 15:48:50'),(106,15,'https://res.cloudinary.com/cockbook/image/upload/v1714837729/vdunst5puccbxttgsjg1.webp','2024-05-04 15:48:50','2024-05-04 15:48:50'),(107,16,'https://res.cloudinary.com/cockbook/image/upload/v1714838079/weefqwupytxpbkibccg0.webp','2024-05-04 15:57:16','2024-05-04 15:57:16'),(108,17,'https://res.cloudinary.com/cockbook/image/upload/v1714838769/oppvj2wism7vku1fwyji.jpg','2024-05-04 16:06:09','2024-05-04 16:06:09'),(109,17,'https://res.cloudinary.com/cockbook/image/upload/v1714838767/a3e5syj8gnu4biqpfj96.jpg','2024-05-04 16:06:09','2024-05-04 16:06:09'),(110,17,'https://res.cloudinary.com/cockbook/image/upload/v1714838767/rfafy8xwzyz2fvn2gpar.jpg','2024-05-04 16:06:09','2024-05-04 16:06:09'),(111,17,'https://res.cloudinary.com/cockbook/image/upload/v1714838767/loh3rhub2x4aucc9n0uf.jpg','2024-05-04 16:06:09','2024-05-04 16:06:09'),(112,18,'https://res.cloudinary.com/cockbook/image/upload/v1714839033/qlfowcmgzs34p6lfcmgl.jpg','2024-05-04 16:10:44','2024-05-04 16:10:44'),(113,18,'https://res.cloudinary.com/cockbook/image/upload/v1714839082/f3ebk6ilpoqxn3t9dypx.jpg','2024-05-04 16:11:22','2024-05-04 16:11:22'),(114,18,'https://res.cloudinary.com/cockbook/image/upload/v1714839081/fm3cma1p72cgof9ui1eu.jpg','2024-05-04 16:11:22','2024-05-04 16:11:22'),(115,19,'https://res.cloudinary.com/cockbook/image/upload/v1714839273/rd1vsfqfucytuipxb2qf.jpg','2024-05-04 16:14:41','2024-05-04 16:14:41'),(116,20,'https://res.cloudinary.com/cockbook/image/upload/v1714839452/y6j7skpdc9lx3o1cxjwm.webp','2024-05-04 16:17:40','2024-05-04 16:17:40'),(117,21,'https://res.cloudinary.com/cockbook/image/upload/v1714839649/qpxxbo8l9c7iqsnk3tam.webp','2024-05-04 16:20:58','2024-05-04 16:20:58'),(118,21,'https://res.cloudinary.com/cockbook/image/upload/v1714839737/s2ujiessid3btqy2fqeo.webp','2024-05-04 16:22:17','2024-05-04 16:22:17'),(119,21,'https://res.cloudinary.com/cockbook/image/upload/v1714839737/sruwoydmxjonwbas1p5t.webp','2024-05-04 16:22:17','2024-05-04 16:22:17'),(120,22,'https://res.cloudinary.com/cockbook/image/upload/v1714877467/hhyo6ucseoyfembpxzgs.jpg','2024-05-05 02:51:16','2024-05-05 02:51:16'),(121,23,'https://res.cloudinary.com/cockbook/image/upload/v1714928882/nlqxcurlyot40fcz9pir.jpg','2024-05-05 17:08:13','2024-05-05 17:08:13'),(122,24,'https://res.cloudinary.com/cockbook/image/upload/v1714935113/vrmryfkjmwwtvt793mxv.jpg','2024-05-05 18:52:06','2024-05-05 18:52:06'),(123,25,'https://res.cloudinary.com/cockbook/image/upload/v1715493925/yvmpqod4ppcmnmbznxky.jpg','2024-05-12 06:05:35','2024-05-12 06:05:35'),(124,25,'https://res.cloudinary.com/cockbook/image/upload/v1715493958/ocr6iyvibygzgubo8ell.jpg','2024-05-12 06:05:57','2024-05-12 06:05:57'),(125,25,'https://res.cloudinary.com/cockbook/image/upload/v1715493954/i8avxfm9b1vn4udosy3s.jpg','2024-05-12 06:05:57','2024-05-12 06:05:57'),(126,26,'https://res.cloudinary.com/cockbook/image/upload/v1715494179/ks3j2fchrclmgmwopipo.webp','2024-05-12 06:09:48','2024-05-12 06:09:48'),(127,26,'https://res.cloudinary.com/cockbook/image/upload/v1715494206/pr2fmj71amw8yzd2lb2n.webp','2024-05-12 06:10:06','2024-05-12 06:10:06'),(128,26,'https://res.cloudinary.com/cockbook/image/upload/v1715494207/femqiniwd6jsbr1ndtfa.webp','2024-05-12 06:10:06','2024-05-12 06:10:06'),(129,27,'https://res.cloudinary.com/cockbook/image/upload/v1715494360/elrxa5egb88ujwgie8mx.jpg','2024-05-12 06:12:47','2024-05-12 06:12:47'),(130,27,'https://res.cloudinary.com/cockbook/image/upload/v1715494379/wfb5p7kxwvlx9vae9thf.jpg','2024-05-12 06:12:59','2024-05-12 06:12:59'),(131,28,'https://res.cloudinary.com/cockbook/image/upload/v1715494740/m36ezfur7lbham9cj67b.webp','2024-05-12 06:19:06','2024-05-12 06:19:06'),(132,29,'https://res.cloudinary.com/cockbook/image/upload/v1715494830/ctqxyx7cf4tj67t7ij3z.webp','2024-05-12 06:20:39','2024-05-12 06:20:39'),(133,29,'https://res.cloudinary.com/cockbook/image/upload/v1715494863/ouexgsiruik9qdbps9y0.webp','2024-05-12 06:21:03','2024-05-12 06:21:03'),(134,29,'https://res.cloudinary.com/cockbook/image/upload/v1715494864/c7wpkywyq8bgs3kq0f6v.webp','2024-05-12 06:21:03','2024-05-12 06:21:03'),(135,30,'https://res.cloudinary.com/cockbook/image/upload/v1715495002/q40oheyzhi4t97s78fyh.webp','2024-05-12 06:23:29','2024-05-12 06:23:29'),(136,30,'https://res.cloudinary.com/cockbook/image/upload/v1715495033/i8on37sgdrqfep7ixo99.webp','2024-05-12 06:23:52','2024-05-12 06:23:52'),(137,30,'https://res.cloudinary.com/cockbook/image/upload/v1715495032/cybpwxrt64yl8termqtr.webp','2024-05-12 06:23:52','2024-05-12 06:23:52'),(138,31,'https://res.cloudinary.com/cockbook/image/upload/v1715954595/xybqnknhghi4iagalfza.jpg','2024-05-17 14:03:29','2024-05-17 14:03:29'),(139,32,'https://res.cloudinary.com/cockbook/image/upload/v1716091157/sgrtwbfuzvddjoitugaz.jpg','2024-05-19 03:59:25','2024-05-19 03:59:25'),(140,32,'https://res.cloudinary.com/cockbook/image/upload/v1716091186/bbm78dm99cybrbmuipi0.jpg','2024-05-19 03:59:58','2024-05-19 03:59:58'),(141,32,'https://res.cloudinary.com/cockbook/image/upload/v1716091198/xvsvvzzp5pstvukfo5qg.jpg','2024-05-19 03:59:58','2024-05-19 03:59:58'),(142,33,'https://res.cloudinary.com/cockbook/image/upload/v1716097006/vo98dmvs8rjngwgisjmm.avif','2024-05-19 05:36:53','2024-05-19 05:36:53'),(143,33,'https://res.cloudinary.com/cockbook/image/upload/v1716097030/txwtxmomrtf8yitwcq8f.avif','2024-05-19 05:37:11','2024-05-19 05:37:11'),(144,33,'https://res.cloudinary.com/cockbook/image/upload/v1716097030/hyypou6ataullslfadw4.avif','2024-05-19 05:37:11','2024-05-19 05:37:11'),(145,34,'https://res.cloudinary.com/cockbook/image/upload/v1716097170/empi7qjwzavi0p9gvasw.avif','2024-05-19 05:40:00','2024-05-19 05:40:00'),(146,35,'https://res.cloudinary.com/cockbook/image/upload/v1716097493/m7vzib61gkdjkblson47.avif','2024-05-19 05:45:02','2024-05-19 05:45:02'),(147,36,'https://res.cloudinary.com/cockbook/image/upload/v1716222044/bx7eo8emdgz9mdpvwhym.webp','2024-05-20 16:20:53','2024-05-20 16:20:53'),(148,36,'https://res.cloudinary.com/cockbook/image/upload/v1716222074/jo1d3bqlgho2rcklv1gt.webp','2024-05-20 16:21:14','2024-05-20 16:21:14'),(149,37,'https://res.cloudinary.com/cockbook/image/upload/v1716263716/w611jxtc06o6eth3qbao.avif','2024-05-21 03:55:22','2024-05-21 03:55:22'),(150,38,'https://res.cloudinary.com/cockbook/image/upload/v1716263852/xp6bhhwqkt8xkg9htveg.avif','2024-05-21 03:57:40','2024-05-21 03:57:40'),(151,39,'https://res.cloudinary.com/cockbook/image/upload/v1716263973/wrj2mza0w6cxucgxe6lx.avif','2024-05-21 03:59:39','2024-05-21 03:59:39'),(152,40,'https://res.cloudinary.com/cockbook/image/upload/v1716264079/mg9lr4ftbp2y921gcrpt.avif','2024-05-21 04:01:24','2024-05-21 04:01:24'),(153,41,'https://res.cloudinary.com/cockbook/image/upload/v1716264220/ke9qbzc2vlo9rqj1ejea.avif','2024-05-21 04:03:46','2024-05-21 04:03:46'),(154,42,'https://res.cloudinary.com/cockbook/image/upload/v1716264353/pegxvpyzznnt69gvgemw.avif','2024-05-21 04:06:00','2024-05-21 04:06:00'),(155,43,'https://res.cloudinary.com/cockbook/image/upload/v1716264439/ogfl4dkoqgaf0e4dxmdm.avif','2024-05-21 04:07:26','2024-05-21 04:07:26'),(156,44,'https://res.cloudinary.com/cockbook/image/upload/v1716264606/p0napvidvwxeh1eqyash.avif','2024-05-21 04:10:13','2024-05-21 04:10:13'),(157,45,'https://res.cloudinary.com/cockbook/image/upload/v1716264755/tznrtdx4vi62kcji4xwi.avif','2024-05-21 04:12:40','2024-05-21 04:12:40'),(158,46,'https://res.cloudinary.com/cockbook/image/upload/v1716264974/p8repih3iqywlzbfwcxd.avif','2024-05-21 04:16:20','2024-05-21 04:16:20'),(159,47,'https://res.cloudinary.com/cockbook/image/upload/v1716265074/uesgsqmhpcb7hrvygp6o.avif','2024-05-21 04:18:01','2024-05-21 04:18:01'),(160,48,'https://res.cloudinary.com/cockbook/image/upload/v1716265234/t5c2bit7cntvmkg5lmjk.avif','2024-05-21 04:20:40','2024-05-21 04:20:40'),(161,49,'https://res.cloudinary.com/cockbook/image/upload/v1716265374/gyx4suijt1g1h5izixmk.avif','2024-05-21 04:23:00','2024-05-21 04:23:00'),(162,50,'https://res.cloudinary.com/cockbook/image/upload/v1716265476/dbbdzkg5phiklj459ias.avif','2024-05-21 04:24:42','2024-05-21 04:24:42'),(163,51,'https://res.cloudinary.com/cockbook/image/upload/v1716265643/dlp3pb40rbw3oyfv5pwe.avif','2024-05-21 04:27:28','2024-05-21 04:27:28'),(164,52,'https://res.cloudinary.com/cockbook/image/upload/v1716265797/fzwc9ucszas2ft3rkxab.avif','2024-05-21 04:30:02','2024-05-21 04:30:02'),(165,53,'https://res.cloudinary.com/cockbook/image/upload/v1716265964/jftpsgocrjbev3rvas1t.avif','2024-05-21 04:32:50','2024-05-21 04:32:50'),(166,54,'https://res.cloudinary.com/cockbook/image/upload/v1716266153/wpookxkd2rzy1mzqliqn.webp','2024-05-21 04:36:01','2024-05-21 04:36:01'),(167,55,'https://res.cloudinary.com/cockbook/image/upload/v1716323376/jiye4wg7qkcvu2z1x7j8.png','2024-05-21 20:29:42','2024-05-21 20:29:42'),(168,55,'https://res.cloudinary.com/cockbook/image/upload/v1716323380/xkzviypk4hponywkgrzw.png','2024-05-21 20:29:42','2024-05-21 20:29:42');
/*!40000 ALTER TABLE `productphotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryId` int DEFAULT NULL,
  `subCategoryId` int DEFAULT NULL,
  `childCategoryId` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `unitSize` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `buyerPrice` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `discountPer` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `netPrice` int DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sortDesc` text COLLATE utf8mb4_general_ci,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (7,6,2,0,'Quần Âu Nam Cao Cấp Giữ Phom, Co Giãn Thoải Mái','OWEN','active','',150000,399000,100,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714831927/iouq4dpnurm2mblytvuo.webp','null','quần-âu-nam-cao-cấp-giữ-phom,-co-giãn-thoải-mái','<p>Chất liệu Tuytsi 79</p><p>Thành phần: 78% Polyester, 18% Viscose, 4% Spandex</p><p>Thiết kế suông nhẹ, vừa đảm bảo sự thoải mái</p><p>Túi được xẻ 2 bên, sau hông có tùi cài tiện lợi, cạp cao</p><p>Cảm giác co giãn tốt, tăng cường khả năng chống nhăn trên vải, thấm hút mồ hôi và hút ẩm cao, thoáng mát&nbsp;</p><p>Thiết kế trẻ trung mà vẫn lịch lãm hứa hẹn sẽ là chiếc quần đắt giá mà bạn muốn diện trong mọi công việc.</p><p>Sản xuất tại Việt Nam</p>','2024-05-04 14:12:07','2024-05-19 05:28:47'),(8,6,2,0,'Quần Âu Nam Ống Đứng Co Giãn Thoải Mái','OWEN','active','',120000,499000,150,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714832154/rvhcypcgrdtikdmoezo0.webp','null','quần-âu-nam-ống-đứng-co-giãn-thoải-mái','<p>Chất liệu vải Nano</p><p>Vải sử dụng công nghệ Nano xoắn nhiều sợi li ti thành một sợi.</p><p>Nano thuộc nhóm vải công nghệ mới,là bước đột phá trong ngành vải sợi thế giới</p><p>Vải dệt đôi 2 mặt là kiểu dệt khá phức tạp giúp định hình form dáng sản phẩm</p><p>Cấu trúc dệt khác biệt, giúp tạo cảm giác thoải mái.&nbsp;</p><p>Sản xuất tại Việt Nam</p>','2024-05-04 14:15:54','2024-05-19 05:28:32'),(9,6,3,0,'Quần Jeans Nam dáng Slim Fit V2','ZONADO','active','',99000,329000,200,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714832520/bfpaxqwbro84taktjpai.jpg','null','quần-jeans-nam-dáng-slim-fit-v2','<p>Chất liệu: 78% Cotton+ 10% Polyester + 11% Rayon + 1% Spandex</p><p>10% Polyester và 11% Rayon đảm bảo tính mềm tay</p><p>1% Spandex để có sự co giãn, đàn hồi</p><p>Kiểu dáng Slim Fit, không bo ống</p><p>Tự hào sản xuất tại Việt Nam</p>','2024-05-04 14:22:00','2024-05-04 14:44:11'),(10,6,3,0,'Quần Jeans Nam Basics dáng Slim fit','ZONADO','active','',120000,499000,150,20,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714832841/zjkqwogrvojr1ysp3mmm.jpg','null','quần-jeans-nam-basics-dáng-slim-fit','<p>Chất liệu: Denim</p><p>Thành phần: 98% Cotton + 2% Spandex</p><p>Công nghệ Laser Marking tạo các vệt hiệu ứng chuẩn xác trên sản phẩm</p><p>Vải Denim được wash trước khi may nên không rút và hạn chế ra màu sau khi giặt</p><p>Bề mặt quần không thô rápCo giãn tốt giúp quần ôm vừa vặn, thoải mái</p><p>Dáng Slim Fit ôm tôn dáng, giúp bạn \"hack\" đôi chân dài và gọn đẹp</p><p>Người mẫu: 179 cm - 75 kg, mặc quần size 32</p><p>Tự hào sản xuất tại Việt Nam</p><p><strong>Lưu ý:</strong></p><p>Sản phẩm vẫn sẽ bạc màu sau một thời gian dài sử dụng theo tính chất tự nhiên</p>','2024-05-04 14:27:21','2024-05-04 14:45:17'),(11,6,4,0,'Quần short Khaki nam cao cấp BHG - Xanh quân đội','KENTA','active','',120000,240000,0,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714833641/ie436fgcp35pvrup7fce.jpg','null','quần-short-khaki-nam-cao-cấp-bhg---xanh-quân-đội','<p class=\"ql-align-justify\">Quần Short Khaki nam cao cấp BHG Xanh quân đội chất liệu cotton mềm mại, thoáng khí, thấm hút mồ hôi, kháng khuẩn, không xù, không nhăn, tạo cảm giác thoải mái cho người mặc.</p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Giới tính: Nam</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nhãn hiệu: BHG</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chất liệu:&nbsp;Vải Khaki 100% Cotton cao cấp</span></p><p><span style=\"color: rgb(51, 51, 51);\">Size: L, XL, 2XL</span></p><p><span style=\"color: rgb(51, 51, 51);\">Màu: Kaki, Xanh đậm, Xanh quân đội, Xám đậm</span></p>','2024-05-04 14:40:41','2024-05-12 06:02:09'),(13,7,5,0,'Áo sơ mi nam cộc tay cổ đức dáng suông','COOLMATE','active','',79000,229000,90,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714837031/senawarz6wfoivudq8u7.webp','null','áo-sơ-mi-nam-cộc-tay-cổ-đức-dáng-suông','<p><strong>Mô tả</strong></p><p class=\"ql-align-justify\">Áo sơ mi chất liệu linen pha, cổ đức tay cộc, phom regular.</p><p><strong>Chất liệu</strong></p><p class=\"ql-align-justify\">55% rayon 45% linen</p><p><strong>Hướng dẫn sử dụng</strong></p><p class=\"ql-align-justify\">Giặt máy ở nhiệt độ thường.</p><p class=\"ql-align-justify\">Không sử dụng hóa chất tẩy có chứa Clo.</p><p class=\"ql-align-justify\">Phơi trong bóng mát.</p><p class=\"ql-align-justify\">Không sử dụng máy sấy.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><br></p>','2024-05-04 15:37:11','2024-05-05 18:48:15'),(14,7,5,0,'Áo sơ mi nam cotton cộc tay','COOLMATE','active','',120000,399000,150,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714837221/upcknjundstxbb9ozhah.webp','null','áo-sơ-mi-nam-cotton-cộc-tay','<p><strong>Mô tả</strong></p><p class=\"ql-align-justify\">Áo sơ mi nam phom regular, chất liệu 100% cotton,</p><p class=\"ql-align-justify\">mềm mát. Sản phẩm phù hợp mặc đi làm, đi chơi, có thể kết hợp cùng quần vải, quần khaki,...</p><p><strong>Chất liệu</strong></p><p class=\"ql-align-justify\">100% cotton.</p><p><strong>Hướng dẫn sử dụng</strong></p><p class=\"ql-align-justify\">Giặt máy ở nhiệt độ thường.</p><p class=\"ql-align-justify\">Không sử dụng hóa chất tẩy có chứa clo.</p><p class=\"ql-align-justify\">Phơi trong bóng mát.</p><p class=\"ql-align-justify\">Sấy khô ở nhiệt độ trung bình.</p>','2024-05-04 15:40:21','2024-05-04 15:43:40'),(15,7,6,0,'Áo phông nam','CANIFA','active','',79000,229000,30,5,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714837698/nk2h80peahurmbr82h8l.webp','null','áo-phông-nam','<p><span style=\"color: rgb(51, 63, 72); background-color: rgb(250, 250, 250);\">Áo phông chất liệu 100% cotton phom regular, cổ tròn tay cộc.</span></p>','2024-05-04 15:48:18','2024-05-05 03:19:55'),(17,8,8,0,'Bộ Suit Đen Dày Vengoc Một Nút TGS146','THEGIOIVEST','active','',500000,1000000,0,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714838740/yxadg0pnpasvfml3z2ym.jpg','null','bộ-suit-đen-dày-vengoc-một-nút-tgs146','<p class=\"ql-align-justify\"><strong>Mô tả : Sản phẩm bao gồm 1 áo và 1 quần tây cùng màu</strong></p><p class=\"ql-align-justify\"><strong>Kiểu dáng : Form slimfit ôm vừa người và tôn dáng</strong></p><p class=\"ql-align-justify\"><strong>Thiết kế :</strong>&nbsp;<strong>Ve áo thiết kế chữ K tinh tế và sang trọng</strong></p><p class=\"ql-align-justify\"><strong>Áo vest có nắp túi 2 bên, chiết eo và xẻ 2 tà sau</strong></p><p class=\"ql-align-justify\"><strong>Quần tây đi kèm form trẻ trung, ống đứng, 2 túi xẻ và 2 túi sau cài khuy</strong></p>','2024-05-04 16:05:41','2024-05-04 16:06:09'),(18,8,8,0,'Bộ Suit Xám Đậm Kẻ Ô Classic Fit TGS368','THEGIOIVEST','active','',700000,1800000,50,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714839044/raaa3y2ejsckosyx4ihw.jpg','null','bộ-suit-xám-đậm-kẻ-ô-classic-fit-tgs368','<ul><li class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 128);\">Mô tả :</strong><strong>&nbsp;Sản phẩm gồm 1 áo và 1 quần tây cùng màu</strong></li><li class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 128);\">Kiểu dáng :</strong><strong>&nbsp;Form suông tạo độ thoải mái nhưng vẫn tôn dáng người mặc</strong></li><li class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 128);\">Thiết kế :</strong>&nbsp;<strong>Ve áo thiết kế chữ K tinh tế và sang trọng</strong></li><li class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 128);\">Chất liệu :</strong><strong>&nbsp;70% Cotton - 10% Poly - 20% Wool</strong></li><li class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 128);\">Áo vest :</strong><strong>&nbsp;Có nắp túi 2 bên và xẻ 2 tà sau</strong></li><li class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 128);\">Quần tây :</strong><strong>&nbsp;Form suông lịch sự, 2 túi xẻ và 2 túi sau cài khuy</strong></li></ul>','2024-05-04 16:10:44','2024-05-19 05:27:53'),(19,8,9,0,'Đầm sơ mi tay chờm đai eo','LEIKA','active','',150000,499000,150,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714839281/tfdlp2iv6wmjqgc97ep8.jpg','null','đầm-sơ-mi-tay-chờm-đai-eo','<p><strong>Chất liệu</strong>&nbsp;Chéo Ý</p><p><strong>Màu sắc</strong>&nbsp;Xanh lá, Trắng</p><p><strong>Đặc điểm nổi bật</strong></p><p>Với thiết kế có kiểu dáng đơn giản, nhưng vẫn rất duyên dáng và nữ tính, chất liệu vải mềm mại, đầm sơ mi tay chờm đai eo ôm lấy cơ thể một cách tinh tế và tạo nên vẻ đẹp khác biệt cho người mặc.&nbsp;Tôn lên vòng eo thon gọn của người phụ nữ với chiếc đai nhỏ, đầm sơ mi với thân váy xòe nhẹ tạo nên vẻ đẹp duyên dáng và nữ tính. Song song với đó, phần tay chờm thoáng mát, che khéo khuyết điểm tay cũng như đảm bảo sự chỉn chu khi nàng mặc lên người.</p><p>Trong những ngày bận rộn và không có nhiều thời gian chuẩn bị, một chiếc đầm sơ mi tay chờm đai eo sẽ giúp nàng có vẻ ngoài thanh lịch và không quá rườm rà. Điều đặc biệt hơn cả, đây là item có thể phù hợp với nhiều hoàn cảnh khác nhau, từ những ngày làm việc đến những buổi hẹn hò, dạo phố.</p>','2024-05-04 16:14:41','2024-05-04 16:14:41'),(20,8,10,0,'Bộ quần áo đạp xe nam ngắn tay cao cấp chuyên nghiệp thoáng mát và mềm mại','THETHAOWORLD','active','',400000,900000,180,15,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714839460/wd6y3ad0ssbjxkkdicr0.webp','null','bộ-quần-áo-đạp-xe-nam-ngắn-tay-cao-cấp-chuyên-nghiệp-thoáng-mát-và-mềm-mại','<ul><li>Hàng cao cấp chính hãng XTiger</li><li>Bộ sản phẩm gồm 1 quần đệm mông và 1 áo ngắn tay</li><li>Thiết kế chuyên dụng cho đi xe đạp</li><li>Vải áo có khả năng chống tia UV tử ngoại cực tốt, với chỉ số UPF 40+ rất cao. Giúp chống lại tác hại của tia UV khi bạn đạp xe dưới trời nắng hoặc đi đường dài</li><li>Chất liệu vải Lycra 100% polyester cao cấp cực mềm, mát và thoáng, thấm hút mồ hôi cực tốt, độ đàn hồi cao, đảm bảo mặc rất thích</li></ul>','2024-05-04 16:17:40','2024-05-04 16:17:40'),(21,9,12,0,'Chân váy đen dài lượn sóng SANDRO','SANDRO','active','',100000,400000,200,5,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714839658/aids16ff3fgd3j1tlkwv.webp','null','chân-váy-đen-dài-lượn-sóng-sandro','<p><span style=\"color: rgb(77, 77, 77);\">Chân váy dài, hơi xòe với diềm xếp nếp và xếp nếp, được trang bị khóa kéo bên hông.</span></p><p><br></p><p>Chân váy dài nữ Sandro</p><p>Dáng loe</p><p>Khóa kéo</p><p><br></p><p>Người mẫu cao 1m76 và mặc size 36.</p>','2024-05-04 16:20:58','2024-05-04 16:22:17'),(22,7,6,0,'Áo sơ mi nam cotton cộc tay','OWEN','active','',80000,200000,90,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1714877476/robhgeccwnd2s8pg7if6.jpg','null','áo-sơ-mi-nam-cotton-cộc-tay','<p>...........</p>','2024-05-05 02:51:16','2024-05-05 16:53:56'),(25,9,11,0,'Chân Váy Nữ Ly Súp Trẻ Trung','YODY','active','',150000,350000,150,5,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1715493936/pe6qtycfvbbtpjp1d98b.jpg','null','chân-váy-nữ-ly-súp-trẻ-trung','<p>Thành phần:&nbsp;75.1% Polyester, 19.2% Viscose, 5.7% Spandex</p><p>Co giãn tốt: vô cùng linh hoạt cùng chất liệu “thông minh” co giãn theo cả hai chiều</p><p>Thấm hút tốt - Mềm mượt: thành phần Viscose tạo nên cảm giác mềm mại khi tiếp xúc với da</p><p>Hạn chế nhăn, tiết kiệm thời gian chăm sóc</p><p>Chân váy nữ ly súp thiết kế trẻ trung, năng động đầy cá tính</p><p>Kiểu dáng chữ A dễ mặc, dễ phối đồ</p><p>Sản xuất tại Việt Nam</p><p>YODY - Look good. Feel good.</p>','2024-05-12 06:05:35','2024-05-12 06:05:57'),(26,8,10,0,'Bộ Đồ Thu Đông Nữ Siêu Mềm Mịn','YODY','active','',120000,420000,100,5,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1715494188/domlqk38d3nuzd6uxiu7.webp','null','bộ-đồ-thu-đông-nữ-siêu-mềm-mịn','<p>Thành phần: 70% Cotton + 30% Spandex</p><p>Bộ thu đông kiểu dáng thoải mái, đơn giản với phần&nbsp;phối dây trẻ trung</p><p>Bộ đồ được dệt logo&nbsp;ở ngực nổi bật</p><p>Chất liệu nỉ siêu mềm mịn, giữ ấm và thấm hút tốt</p><p>Chiếc áo phù hợp để phái đẹp diện trong nhiều hoàn cảnh như:&nbsp;ở nhà, mặc đi chơi hay&nbsp;chơi thể thao,...</p><p>YODY - Look good. Feel good.</p>','2024-05-12 06:09:48','2024-05-19 03:55:50'),(27,7,7,0,'Áo Khoác Có Nón Vải Thun Giữ Ấm Trơn Dáng Rộng Đơn Giản No Style 59','YAME','active','',120000,520000,200,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1715494368/reyjhaivxnffkvadb2iy.jpg','null','áo-khoác-có-nón-vải-thun-giữ-ấm-trơn-dáng-rộng-đơn-giản-no-style-59','<p><span style=\"color: rgb(17, 17, 17);\">Chất liệu: French Terry</span></p><p><span style=\"color: rgb(17, 17, 17);\">Thành phần :100% Cotton</span></p><p><span style=\"color: rgb(17, 17, 17);\">- Thấm hút thoát ẩm</span></p><p><span style=\"color: rgb(17, 17, 17);\">- Mềm mại</span></p><p><span style=\"color: rgb(17, 17, 17);\">- Co giãn đàn hồi</span></p><p><span style=\"color: rgb(17, 17, 17);\">- Thân thiện môi trường</span></p><p><span style=\"color: rgb(17, 17, 17);\">+ Miệng túi may kansai đánh bông</span></p><p><span style=\"color: rgb(17, 17, 17);\">+ Nón và tay có pence</span></p><p><span style=\"color: rgb(17, 17, 17);\">+ Khóa kéo kim loại chắc chắn mượt mà</span></p>','2024-05-12 06:12:47','2024-05-19 05:27:24'),(29,6,3,0,'Quần Jean Nam Coolmax','YODY','active','',150000,450000,200,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1715494839/lul1zhosefmpzqw2quuw.webp','null','-image-image-image-image-quần-jean-nam-coolmax','<p>Vải chính: 76% Cotton, 22% Polyester, 2% Spandex</p><p>Vải lót: 80% Polyester, 20%Cotton</p><p>Quần jeans nam chất liệu cotton USA là một trong những loại nguyên liệu cao cấp được cả thế giới tin dùng với những đặc tính sạch - dễ nhuộm màu</p><p>Quần có khả năng đàn hồi và co giãn rất tốt, có độ bền cao</p><p>Khả năng thoát hơi ẩm và mao dẫn thoát mồ hôi, độ thoáng khí tốt.</p><p>Sản xuất tại Việt Nam</p><p>YODY - Look good. Feel good.</p>','2024-05-12 06:20:39','2024-05-12 06:43:27'),(30,7,7,0,'Áo Khoác Lông Nữ Tay Rộng','YODY','active','',450000,1500000,150,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1715495010/yhsyvhzhwyvauoksteyz.webp','null','áo-khoác-lông-nữ-tay-rộng','<p class=\"ql-align-justify\">Áo khoác lông dành cho nữ chất liệu mềm mại, siêu thoải mái cho làn da nàng,&nbsp;</p><p class=\"ql-align-justify\">Phom dáng rộng rãi,&nbsp;tạo kiểu khỏe mạnh</p><p class=\"ql-align-justify\">Thiết kế màu trơn giúp nàng trông phong cách và nổi bật giữa đám đông</p><p class=\"ql-align-justify\">Chiếc áo thích hợp để mặc hàng ngày, hẹn hò, đi mua sắm, làm việc hay tiệc tùng</p><p class=\"ql-align-justify\">Có thể&nbsp;kết hợp mặc với quần jean, quần legging hoặc váy</p><p class=\"ql-align-justify\">YODY - Look good. Feel good.</p>','2024-05-12 06:23:29','2024-05-12 06:23:52'),(33,6,2,0,'Miracle Air Quần Dài Xếp Ly (Chống Nắng)','UNIQLO','active','',150000,350000,300,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716097013/kos8tr5rryz9mnqmfcgz.avif','null','miracle-air-quần-dài-xếp-ly-(chống-nắng)','<p><span style=\"color: rgb(27, 27, 27);\">- Chất liệu thun co giãn 2 chiều mang lại cảm giác cao cấp.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Chất liệu vải nhẹ và thoải mái đến kinh ngạc, được hợp tác phát triển với Toray.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Kiểu dáng ống ôm dần có nếp gấp.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thắt lưng thun ẩn.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Có vòng đai.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Dễ dàng mặc hoặc sơ vin.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- UPF50+.</span></p>','2024-05-19 05:36:53','2024-05-19 05:42:14'),(34,6,3,0,'Quần Jean Bầu Siêu Co Giãn','UNIQLO','active','',460000,950000,300,30,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716097200/qaiocwdvqkosksvbxtqx.avif','null','quần-jean-bầu-siêu-co-giãn','<p><span style=\"color: rgb(27, 27, 27);\">- Miếng đệm chống trượt giúp cố định những chiếc tất này.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Công nghệ BLUE CYCLE JEANS giúp giảm lượng nước* sử dụng trong quá trình sản xuất. Mức độ tiết kiệm nước sẽ có sự chênh lệch giữa các sản phẩm.</span></p><p><br></p><p><span style=\"color: rgb(27, 27, 27);\">*Lên đến 99%. Dữ liệu dựa trên sự so sánh giữa Quần Jeans Nam Regular Fit năm 2017 và năm 2018 với công nghệ do Trung Tâm Cải Tiến Quần Jeans của UNIQLO phát triển vào năm 2018.</span></p>','2024-05-19 05:40:00','2024-05-19 05:40:00'),(35,8,9,0,'Đầm Xếp Nếp Hở Lưng Ngắn Tay','UNIQLO','active','',250000,785000,150,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716097502/q3zws845qs1jcerysiqj.avif','null','đầm-xếp-nếp-hở-lưng-ngắn-tay','<p><span style=\"color: rgb(27, 27, 27);\">A modern wardrobe by renowned British designer Clare Waight Keller, known for leading fashion houses around the world to critical acclaim.</span></p><p><br></p><p><span style=\"color: rgb(27, 27, 27);\">- Smooth linen blend fabric.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Flared sleeves.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Square neck.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Open back design. *Color #01 comes with an underskirt. *The satin tape can be removed if you prefer.</span></p>','2024-05-19 05:45:02','2024-05-19 05:45:02'),(37,6,4,0,'Quần Short Baggy Vải Denim Cạp Cao','UNIQLO','active','',200000,600000,300,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716263724/yhm2rqmivtrxy5wvj1a5.avif','null','quần-short-baggy-vải-denim-cạp-cao','<p><span style=\"color: rgb(27, 27, 27);\">- Denim 100% cotton có trọng lượng vừa phải.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thiết kế 5 túi.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thiết kế cạp cao với đường cắt vừa vặn ở đùi và phía sau.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Đường cắt sành điệu với đường khâu dài hơn</span></p>','2024-05-21 03:55:22','2024-05-21 03:55:22'),(38,6,4,0,'Quần Short Xếp Nếp','UNIQLO','active','',100000,500000,300,5,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716263861/kttgkgtg3n0y39jjrfng.avif','null','quần-short-xếp-nếp','<p><span style=\"color: rgb(27, 27, 27);\">Chất thun co dãn 2 chiều.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thiết kế cạp cao không nhăn đẹp mắt, có dây thun co giãn.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Kiểu dáng rộng vừa phải.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Chiều dài ngắn đa năng.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thiết kế hai ngăn.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Với vòng đai.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Túi ở phía sau có nút buộc.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Dễ dàng thay đổi trang phục.</span></p>','2024-05-21 03:57:40','2024-05-21 03:57:40'),(39,6,4,0,'Quần Shorts Co Giãn Dáng Slim Fit','UNIQLO','active','',200000,600000,300,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716263980/z2sx3axha8njj7rdl0wc.avif','null','quần-shorts-co-giãn-dáng-slim-fit','<p><span style=\"color: rgb(27, 27, 27);\">- Chất liệu vải cotton twill co giãn với kết cấu mềm mại và vẻ ngoài thanh lịch.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Ôm vừa vặn với đường khâu mảnh.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Eo co giãn thoải mái.</span></p>','2024-05-21 03:59:39','2024-05-21 03:59:39'),(40,6,4,0,'Miracle Air Quần Short (AirSense Quần Short)','UNIQLO','active','',250000,650000,300,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716264086/z66rd3hrrysiklbqvi94.avif','null','miracle-air-quần-short-(airsense-quần-short)','<p><span style=\"color: rgb(27, 27, 27);\">- Chiếc quần hiệu suất cao này nhẹ, co giãn và nhanh khô nhờ chất liệu vải độc đáo do Toray và UNIQLO đồng phát triển.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Chống nhăn giúp bạn dễ dàng chăm sóc sau khi giặt. *Định hình sản phẩm trước khi phơi khô.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Vải thoáng khí bên trong túi và lót thắt lưng.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Một món đồ đa năng để mặc khi chơi thể thao và mặc hàng ngày.</span></p>','2024-05-21 04:01:24','2024-05-21 04:01:24'),(41,7,6,0,'Áo Thun In Họa Tiết Ngắn Tay','UNIQLO','active','',150000,500000,300,5,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716264227/mhbparowyrkgkaxo6ifs.avif','null','áo-thun-in-họa-tiết-ngắn-tay','<p><span style=\"color: rgb(27, 27, 27);\">- 100% cotton.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Versatile A-line cut pairs well with skirts and pants.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Combines Marimekko’s signature bold print with an easy-to-wear silhouette.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Statement print design.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Neck design is perfect for layering.</span></p>','2024-05-21 04:03:46','2024-05-21 04:03:46'),(42,7,6,0,'Áo Thun Cotton Lửng Dáng Rộng Ngắn Tay','UNIQLO','active','',100000,300000,400,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716264360/cv07hac2uxyb7nfxocgp.avif','null','áo-thun-cotton-lửng-dáng-rộng-ngắn-tay','<p><span style=\"color: rgb(27, 27, 27);\">Một tủ quần áo hiện đại dành riêng cho bạn đến từ nhà thiết kế nổi tiếng người Anh Clare Waight Keller, được biết đến là một nhà thết kế được các hãng thời trang hàng đầu trên thế giới, giới mộ điệu đánh giá cao.</span></p><p><br></p><p><span style=\"color: rgb(27, 27, 27);\">- Chất liệu 100% cotton dày vừa phải.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Chiều dài đã được rút ngắn.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Kiểu dáng thoải mái.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Cổ tròn kết hợp với lớp vải gân.</span></p>','2024-05-21 04:06:00','2024-05-21 04:06:00'),(43,7,6,0,'UT Find Your TREASURE Áo Thun Ngắn Tay','UNIQLO','active','',200000,400000,300,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716264447/xcn11oidw731kwg4jt3a.avif','null','ut-find-your-treasure-áo-thun-ngắn-tay','<p><span style=\"color: rgb(27, 27, 27);\">A design featuring the most memorable song on the album, “BONA BONA.” The front features a print of the word TREASURE, the lyrics “Born to love ya,” and a graphic with a CD motif. The back hem features a print of TREASURE’s key visual graphic.</span></p><p><br></p><p><span style=\"color: rgb(27, 27, 27);\">Find Your TREASURE</span></p><p><br></p><p><span style=\"color: rgb(27, 27, 27);\">A collaboration between the hugely popular K-pop idol group TREASURE and UT has been realized. This collection is like a “best of” album, with each design featuring a representative song from the group.</span></p>','2024-05-21 04:07:26','2024-05-21 04:07:26'),(44,9,12,0,'Chân Váy Dài Vải Denim','UNIQLO','active','',150000,650000,300,5,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716264614/nq3jmxf5be50symhxlfs.avif','null','chân-váy-dài-vải-denim','<p><span style=\"color: rgb(27, 27, 27);\">- Chất jean 100% cotton.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thiết kế 5 túi.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thiết kế đa năng cho mọi dịp.</span></p>','2024-05-21 04:10:13','2024-05-21 04:10:13'),(45,9,12,0,'Chân Váy Vải Cotton Nhăn Xếp Tầng','UNIQLO','active','',150000,750000,300,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716264762/iqtdj76advbtxsjwo6wc.avif','null','chân-váy-vải-cotton-nhăn-xếp-tầng','<p><span style=\"color: rgb(27, 27, 27);\">- The textured crepe fabric is cool and comfortable.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Lined.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Lace between the tiers for a lightweight design.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Tiered silhouette is sleek at the waist with a voluminous hem.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Flattering tiered design.</span></p>','2024-05-21 04:12:40','2024-05-21 04:12:40'),(46,9,12,0,'Chân Váy Vải Linen Cotton Xếp Nếp','UNIQLO','active','',150000,750000,200,0,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716264981/gggspb89msmqbovgag9o.avif','null','chân-váy-vải-linen-cotton-xếp-nếp','<p><span style=\"color: rgb(27, 27, 27);\">The final chapter of the collaboration with Ines de la Fressange, synonymous with the timeless appeal of French chic.</span></p><p><br></p><p><span style=\"color: rgb(27, 27, 27);\">- Natural linen-cotton fabric.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Pre-washed for a casual look.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- With underskirt.&nbsp;- Airy, gathered cut.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Elegant long length.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Elastic waist for easy outfit changes.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Internal waist drawstring for size adjustment.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Voluminous paneled design.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Front buttons covered in matching fabric.</span></p>','2024-05-21 04:16:20','2024-05-21 04:16:20'),(47,9,12,0,'Chân Váy Dungaree Xếp Nếp','UNIQLO','active','',120000,620000,200,15,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716265082/hns7sgdbzjbb031jmfq7.avif','null','chân-váy-dungaree-xếp-nếp','<p><span style=\"color: rgb(27, 27, 27);\">The final chapter of the collaboration with Ines de la Fressange, synonymous with the timeless appeal of French chic.</span></p><p><br></p><p><span style=\"color: rgb(27, 27, 27);\">- Dungaree fabric with a casual feel.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Airy, gathered cut.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Elegant long length.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Elastic waist for easy outfit changes.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Internal waist drawstring for size adjustment.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Voluminous paneled design.</span></p>','2024-05-21 04:18:01','2024-05-21 04:18:01'),(48,9,11,0,'Quần Váy Vải Linen Pha','UNIQLO','active','',120000,500000,200,5,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716265242/xnt5d0kcl2z5srctdx76.avif','null','quần-váy-vải-linen-pha','<p><span style=\"color: rgb(27, 27, 27);\">- Chất liệu vải pha linen thoáng mát.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thiết kế tà đắp chéo phía trước tạo nên kiểu dáng như một chiếc chân váy.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Hoàn hảo cho trang phục năng động.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thắt lưng co giãn phía sau.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Có khóa kéo bên hông giúp thay đổi trang phục dễ dàng</span></p>','2024-05-21 04:20:40','2024-05-21 04:20:40'),(49,9,12,0,'Chân Váy Túi Hộp (Cargo)','UNIQLO','active','',120000,620000,300,5,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716265382/j3iqs4pydvhlbt4kyyo1.avif','null','chân-váy-túi-hộp-(cargo)','<p><span style=\"color: rgb(27, 27, 27);\">- Cotton nylon with a soft texture.</span></p><p><span style=\"color: rgb(27, 27, 27);\">-&nbsp;Cargo pockets on both sides.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Casual stitching.</span></p><p><span style=\"color: rgb(27, 27, 27);\">-&nbsp;Slit at the back hem for ultimate comfort.</span></p><p><span style=\"color: rgb(27, 27, 27);\">-&nbsp;Size can be adjusted with a cord at the back of the waist.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Elastic waist for easy outfit changes. *#31 is slightly transparent. Wearing innerwear or pettipants is recommended.</span></p>','2024-05-21 04:23:00','2024-05-21 04:23:00'),(50,9,12,0,'Chân Váy Túi Hộp  (Đen)','UNIQLO','active','',250000,750000,300,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716265484/ccwzoctpci89koifhib1.avif','null','chân-váy-túi-hộp--(đen)','<p><span style=\"color: rgb(27, 27, 27);\">- Cotton nylon with a soft texture.</span></p><p><span style=\"color: rgb(27, 27, 27);\">-&nbsp;Cargo pockets on both sides.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Casual stitching.</span></p><p><span style=\"color: rgb(27, 27, 27);\">-&nbsp;Slit at the back hem for ultimate comfort.</span></p><p><span style=\"color: rgb(27, 27, 27);\">-&nbsp;Size can be adjusted with a cord at the back of the waist.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Elastic waist for easy outfit changes. *#31 is slightly transparent. Wearing innerwear or pettipants is recommended.</span></p>','2024-05-21 04:24:42','2024-05-21 04:24:42'),(51,6,2,0,'Quần Smart Pants Dài Đến Mắt Cá','UNIQLO','active','',120000,780000,300,20,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716265650/m6zv1gp9yciljegrndf9.avif','null','quần-smart-pants-dài-đến-mắt-cá','<p><span style=\"color: rgb(27, 27, 27);\">- Chất liệu sang trọng, cao cấp.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Chất thun co dãn 2 chiều.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thắt lưng thun ẩn.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Có vòng đai.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Kiểu dáng thon gọn nhẹ nhàng, có khoảng trống ở đầu gối.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Chiếc quần tôn dáng này không quá ôm sát vào đùi và bắp chân.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thiết kế đa năng, dễ dàng mặc.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Hoàn hảo khi kết hợp với áo phông hoặc áo sơ mi sơ vin bên trong.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Quần áo sử dụng vật liệu tái chế là một phần trong nỗ lực của chúng tôi nhằm hỗ trợ giảm thiểu chất thải và sử dụng vật liệu mới. Tỷ lệ vật liệu tái chế khác nhau tùy theo từng sản phẩm. Vui lòng kiểm tra “Vật liệu” trên tag giá hoặc nhãn chăm sóc để biết chi tiết.</span></p>','2024-05-21 04:27:28','2024-05-21 04:27:28'),(52,6,2,0,'Quần Chino Dáng Slim Fit','UNIQLO','active','',140000,840000,300,35,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716265804/xyznfn58equytzp7vlaw.avif','null','quần-chino-dáng-slim-fit','<p><span style=\"color: rgb(27, 27, 27);\">- Vải cotton Supima® mềm mại.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Kiểu dáng vừa vặn thoải mái dưới đầu gối để tạo ra những đường thẳng, tôn dáng từ hông đến gấu quần.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Co giãn mang lại cảm giác thoải mái vượt trội.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Được thiết kế tỉ mỉ đến từng chi tiết, từ vải thắt lưng sành điệu cho đến những chiếc nút nhựa cao cấp.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Túi sau có 2 viền.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Đường khâu kín ở vòng đai và đường may bên hông.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Một trang phục cần thiết trong tủ đồ của bạn.</span></p>','2024-05-21 04:30:02','2024-05-21 04:30:02'),(53,7,7,0,'Áo Gi-Lê Ultra Light Down Siêu Nhẹ','UNIQLO','active','',120000,620000,300,10,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716265972/divbc42jgawfa8eiz5pc.avif','null','áo-gi-lê-ultra-light-down-siêu-nhẹ','<p><span style=\"color: rgb(27, 27, 27);\">- Ấm áp với công suất lấp đầy 750*. *Được đo bằng phương pháp IDFB</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Được chế tạo đặc biệt mà không cần nhồi bông để có trọng lượng siêu nhẹ.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Kết cấu mờ mang lại ấn tượng, gọn gàng.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Lớp bề mặt chống thấm nước. * Vải được phủ một chất chống thấm nước nên hiệu quả kéo dài lâu hơn. Tuy nhiên lớp chống thấm không vĩnh viễn.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Lớp lót chống tĩnh điện.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Thiết kế bỏ túi tiện lợi.</span></p><p><span style=\"color: rgb(27, 27, 27);\">- Kiểu dáng boxy rất phù hợp với quần ống rộng.</span></p>','2024-05-21 04:32:50','2024-05-21 04:32:50'),(54,8,10,0,'Set đồ Thể Thao Pro Active','COOLMATE','active','',200000,900000,300,15,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716266162/aaabop7axe0wi8fxmfku.webp','null','set-đồ-thể-thao-pro-active','<p>Thành phần: 100% Polyester</p><p>Chất liệu áo và quần có khả năng giữ ấm</p><p>Hạn chế xù lông và chống nhăn</p><p>Form áo: Regular, ôm nhẹ</p><p>Tự hào sản xuất tại Việt Nam</p><p>Người mẫu: 1m77 - 69kg, mặc áo 2XL, quần XL</p>','2024-05-21 04:36:01','2024-05-21 04:36:01'),(55,7,6,0,'haninguyen123@gmail.com','nguyen van a','active','',22,333,33,22,0,0,0,'https://res.cloudinary.com/cockbook/image/upload/v1716323383/r9nyn8u7q7bhmdrtundl.png','null','haninguyen123@gmail.com','<p>fdsf ssfdsf dsfe rewasd sa</p>','2024-05-21 20:29:42','2024-05-21 20:30:01');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productsizes`
--

DROP TABLE IF EXISTS `productsizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productsizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `productId` int NOT NULL,
  `createdAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `updatedAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productsizes`
--

LOCK TABLES `productsizes` WRITE;
/*!40000 ALTER TABLE `productsizes` DISABLE KEYS */;
INSERT INTO `productsizes` VALUES (7,'m',1,1,'2024-03-10 12:31:20','2024-03-10 12:31:20'),(8,'m',1,5,'2024-03-10 12:40:37','2024-03-10 12:40:37'),(9,'m',10,2,'2024-03-10 12:54:37','2024-03-10 12:54:37'),(10,'l',10,2,'2024-03-10 12:54:37','2024-03-10 12:54:37'),(13,'m',10,3,'2024-03-10 12:55:21','2024-03-10 12:55:21'),(14,'l',10,3,'2024-03-10 12:55:21','2024-03-10 12:55:21'),(18,'S',100,6,'2024-05-04 12:33:56','2024-05-04 12:33:56'),(19,'M',100,6,'2024-05-04 12:33:56','2024-05-04 12:33:56'),(20,'L',50,6,'2024-05-04 12:33:56','2024-05-04 12:33:56'),(21,'29',50,9,'2024-05-04 14:44:11','2024-05-04 14:44:11'),(22,'30',50,9,'2024-05-04 14:44:11','2024-05-04 14:44:11'),(23,'31',50,9,'2024-05-04 14:44:11','2024-05-04 14:44:11'),(24,'32',50,9,'2024-05-04 14:44:11','2024-05-04 14:44:11'),(25,'29',0,10,'2024-05-04 14:45:17','2024-05-04 14:45:17'),(26,'30',-4,10,'2024-05-04 14:45:17','2024-05-27 13:25:12'),(27,'31',50,10,'2024-05-04 14:45:17','2024-05-04 14:45:17'),(28,'32',-1,10,'2024-05-04 14:45:17','2024-05-28 11:21:57'),(32,'S',50,12,'2024-05-04 15:34:01','2024-05-04 15:34:01'),(33,'M',50,12,'2024-05-04 15:34:01','2024-05-04 15:34:01'),(34,'L',50,12,'2024-05-04 15:34:01','2024-05-04 15:34:01'),(38,'S',50,14,'2024-05-04 15:43:40','2024-05-04 15:43:40'),(39,'M',50,14,'2024-05-04 15:43:40','2024-05-04 15:43:40'),(40,'L',50,14,'2024-05-04 15:43:40','2024-05-04 15:43:40'),(44,'s',-4,17,'2024-05-04 16:06:09','2024-05-29 19:44:50'),(45,'S',49,19,'2024-05-04 16:14:41','2024-05-30 07:15:58'),(46,'M',50,19,'2024-05-04 16:14:41','2024-05-04 16:14:41'),(47,'L',49,19,'2024-05-04 16:14:41','2024-05-28 07:02:40'),(48,'L',60,20,'2024-05-04 16:17:40','2024-05-04 16:17:40'),(49,'XL',60,20,'2024-05-04 16:17:40','2024-05-04 16:17:40'),(50,'XXL',60,20,'2024-05-04 16:17:40','2024-05-04 16:17:40'),(51,'34',50,21,'2024-05-04 16:22:17','2024-05-04 16:22:17'),(52,'35',50,21,'2024-05-04 16:22:17','2024-05-04 16:22:17'),(53,'36',50,21,'2024-05-04 16:22:17','2024-05-04 16:22:17'),(54,'37',50,21,'2024-05-04 16:22:17','2024-05-04 16:22:17'),(64,'S',30,15,'2024-05-05 03:19:55','2024-05-05 03:19:55'),(65,'S',30,22,'2024-05-05 16:53:56','2024-05-05 16:53:56'),(66,'L',30,22,'2024-05-05 16:53:56','2024-05-05 16:53:56'),(67,'XL',30,22,'2024-05-05 16:53:56','2024-05-05 16:53:56'),(68,'XXL',0,22,'2024-05-05 16:53:56','2024-05-05 16:53:56'),(69,'S',50,23,'2024-05-05 17:08:13','2024-05-05 17:08:13'),(70,'S',30,13,'2024-05-05 18:48:15','2024-05-05 18:48:15'),(71,'M',30,13,'2024-05-05 18:48:15','2024-05-05 18:48:15'),(72,'L',30,13,'2024-05-05 18:48:15','2024-05-05 18:48:15'),(73,'XL',0,13,'2024-05-05 18:48:15','2024-05-05 18:48:15'),(74,'S',0,11,'2024-05-12 06:02:09','2024-05-12 06:02:09'),(75,'M',0,11,'2024-05-12 06:02:09','2024-05-12 06:02:09'),(76,'L',0,11,'2024-05-12 06:02:09','2024-05-12 06:02:09'),(80,'S',50,25,'2024-05-12 06:05:57','2024-05-12 06:05:57'),(81,'M',50,25,'2024-05-12 06:05:57','2024-05-12 06:05:57'),(82,'L',49,25,'2024-05-12 06:05:57','2024-05-29 19:44:50'),(116,'S',50,30,'2024-05-12 06:23:52','2024-05-12 06:23:52'),(117,'M',50,30,'2024-05-12 06:23:52','2024-05-12 06:23:52'),(118,'L',0,30,'2024-05-12 06:23:52','2024-05-29 19:42:25'),(119,'29',50,29,'2024-05-12 06:43:27','2024-05-12 06:43:27'),(120,'30',50,29,'2024-05-12 06:43:27','2024-05-12 06:43:27'),(121,'31',50,29,'2024-05-12 06:43:27','2024-05-12 06:43:27'),(122,'32',50,29,'2024-05-12 06:43:27','2024-05-12 06:43:27'),(123,'S',50,26,'2024-05-19 03:55:50','2024-05-19 03:55:50'),(124,'M',50,26,'2024-05-19 03:55:50','2024-05-19 03:55:50'),(127,'S',50,32,'2024-05-19 03:59:58','2024-05-19 03:59:58'),(128,'M',50,32,'2024-05-19 03:59:58','2024-05-19 03:59:58'),(129,'S',100,27,'2024-05-19 05:27:24','2024-05-19 05:27:24'),(130,'M',100,27,'2024-05-19 05:27:24','2024-05-19 05:27:24'),(131,'S',50,18,'2024-05-19 05:27:53','2024-05-19 05:27:53'),(132,'S',50,8,'2024-05-19 05:28:32','2024-05-19 05:28:32'),(133,'M',50,8,'2024-05-19 05:28:32','2024-05-19 05:28:32'),(134,'L',49,8,'2024-05-19 05:28:32','2024-05-30 07:46:10'),(135,'S',50,7,'2024-05-19 05:28:47','2024-05-19 05:28:47'),(136,'M',49,7,'2024-05-19 05:28:47','2024-05-28 07:02:40'),(143,'S',100,34,'2024-05-19 05:40:00','2024-05-19 05:40:00'),(144,'M',99,34,'2024-05-19 05:40:00','2024-05-27 08:27:35'),(145,'L',99,34,'2024-05-19 05:40:00','2024-05-29 19:44:50'),(146,'S',100,33,'2024-05-19 05:42:14','2024-05-19 05:42:14'),(147,'M',100,33,'2024-05-19 05:42:14','2024-05-19 05:42:14'),(148,'L',0,33,'2024-05-19 05:42:14','2024-05-29 19:42:25'),(149,'S',50,35,'2024-05-19 05:45:02','2024-05-19 05:45:02'),(150,'M',50,35,'2024-05-19 05:45:02','2024-05-19 05:45:02'),(151,'L',0,35,'2024-05-19 05:45:02','2024-05-29 19:42:25'),(154,'S',100,36,'2024-05-20 16:21:14','2024-05-20 16:21:14'),(155,'M',100,36,'2024-05-20 16:21:14','2024-05-20 16:21:14'),(156,'L',50,36,'2024-05-20 16:21:14','2024-05-20 16:21:14'),(157,'M',100,37,'2024-05-21 03:55:22','2024-05-21 03:55:22'),(158,'L',100,37,'2024-05-21 03:55:22','2024-05-21 03:55:22'),(159,'S',100,37,'2024-05-21 03:55:22','2024-05-21 03:55:22'),(160,'S',100,38,'2024-05-21 03:57:40','2024-05-21 03:57:40'),(161,'M',100,38,'2024-05-21 03:57:40','2024-05-21 03:57:40'),(162,'L',100,38,'2024-05-21 03:57:40','2024-05-21 03:57:40'),(163,'S',100,39,'2024-05-21 03:59:39','2024-05-21 03:59:39'),(164,'M',100,39,'2024-05-21 03:59:39','2024-05-21 03:59:39'),(165,'L',100,39,'2024-05-21 03:59:39','2024-05-21 03:59:39'),(166,'S',100,40,'2024-05-21 04:01:24','2024-05-21 04:01:24'),(167,'M',100,40,'2024-05-21 04:01:24','2024-05-21 04:01:24'),(168,'L',100,40,'2024-05-21 04:01:24','2024-05-21 04:01:24'),(169,'S',100,41,'2024-05-21 04:03:46','2024-05-21 04:03:46'),(170,'M',100,41,'2024-05-21 04:03:46','2024-05-21 04:03:46'),(171,'L',99,41,'2024-05-21 04:03:46','2024-05-29 19:44:50'),(172,'S',100,42,'2024-05-21 04:06:00','2024-05-21 04:06:00'),(173,'M',100,42,'2024-05-21 04:06:00','2024-05-21 04:06:00'),(174,'L',100,42,'2024-05-21 04:06:00','2024-05-21 04:06:00'),(175,'XL',100,42,'2024-05-21 04:06:00','2024-05-21 04:06:00'),(176,'S',100,43,'2024-05-21 04:07:26','2024-05-21 04:07:26'),(177,'M',100,43,'2024-05-21 04:07:26','2024-05-21 04:07:26'),(178,'L',100,43,'2024-05-21 04:07:26','2024-05-21 04:07:26'),(179,'S',100,44,'2024-05-21 04:10:13','2024-05-21 04:10:13'),(180,'M',100,44,'2024-05-21 04:10:13','2024-05-21 04:10:13'),(181,'L',100,44,'2024-05-21 04:10:13','2024-05-21 04:10:13'),(182,'S',100,45,'2024-05-21 04:12:40','2024-05-21 04:12:40'),(183,'M',100,45,'2024-05-21 04:12:40','2024-05-21 04:12:40'),(184,'L',100,45,'2024-05-21 04:12:40','2024-05-21 04:12:40'),(185,'S',100,46,'2024-05-21 04:16:20','2024-05-21 04:16:20'),(186,'M',100,46,'2024-05-21 04:16:20','2024-05-21 04:16:20'),(187,'S',100,47,'2024-05-21 04:18:01','2024-05-21 04:18:01'),(188,'M',100,47,'2024-05-21 04:18:01','2024-05-21 04:18:01'),(189,'S',100,48,'2024-05-21 04:20:40','2024-05-21 04:20:40'),(190,'M',100,48,'2024-05-21 04:20:40','2024-05-21 04:20:40'),(191,'S',100,49,'2024-05-21 04:23:00','2024-05-21 04:23:00'),(192,'M',100,49,'2024-05-21 04:23:00','2024-05-21 04:23:00'),(193,'L',100,49,'2024-05-21 04:23:00','2024-05-21 04:23:00'),(194,'S',100,50,'2024-05-21 04:24:42','2024-05-21 04:24:42'),(195,'M',100,50,'2024-05-21 04:24:42','2024-05-21 04:24:42'),(196,'L',100,50,'2024-05-21 04:24:42','2024-05-21 04:24:42'),(197,'S',99,51,'2024-05-21 04:27:28','2024-05-21 19:49:31'),(198,'M',99,51,'2024-05-21 04:27:28','2024-05-21 19:49:31'),(199,'L',99,51,'2024-05-21 04:27:28','2024-05-21 19:49:31'),(200,'S',100,52,'2024-05-21 04:30:02','2024-05-21 04:30:02'),(201,'M',100,52,'2024-05-21 04:30:02','2024-05-21 04:30:02'),(202,'L',99,52,'2024-05-21 04:30:02','2024-05-28 07:04:31'),(203,'S',100,53,'2024-05-21 04:32:50','2024-05-21 04:32:50'),(204,'M',100,53,'2024-05-21 04:32:50','2024-05-21 04:32:50'),(205,'L',100,53,'2024-05-21 04:32:50','2024-05-21 04:32:50'),(206,'S',100,54,'2024-05-21 04:36:01','2024-05-21 04:36:01'),(207,'M',100,54,'2024-05-21 04:36:01','2024-05-21 04:36:01'),(208,'L',100,54,'2024-05-21 04:36:01','2024-05-21 04:36:01');
/*!40000 ALTER TABLE `productsizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20200613173828-create-user.js'),('20200621141549-create-category.js'),('20200622174557-add-column-user.js'),('20200708120626-create-product-offer.js'),('20200713195253-create-sub-category.js'),('20200717174011-create-sub-child-category.js'),('20200730084936-add-column-category.js'),('20200730184103-create-productphoto.js'),('20200804102505-create-location.js'),('20200804102730-create-area.js'),('20200809045756-create-product.js'),('20200903150938-create-address.js'),('20200903161901-create-cart.js'),('20200904052351-create-order.js'),('20200906050310-add-column-address.js'),('20200906064257-create-customer.js'),('20200908052854-add-column-order.js'),('20201225083703-create-payment.js'),('20210109223021-create-vendor.js'),('20210109223242-create-vendor-product.js'),('20210111184629-add-column-location.js'),('20210111184635-add-column-area.js'),('20210111200003-create-vendor-area.js'),('20240528101910-create-payment.js'),('20240528164107-create-userCart.js'),('20240528164217-create-user-cart.js'),('20240528165017-add-unitSize-to-userCart.js'),('20240528171712-add-unitSize-to-userCart.js'),('20240528172249-recreate-userCart-table.js'),('20240528172450-recreate-userCart-table.js'),('20240528172558-recreate-userCart-table.js'),('20240528173122-recreate-userCart-table.js'),('20240528180214-recreate_userCarts_table.js'),('20240528181214-recreate_userCarts_table.js'),('20240528183339-recreate_userCarts_table.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryId` int DEFAULT NULL,
  `sub_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (2,6,'Quần tây','2024-05-04 12:06:47','2024-05-04 12:06:47'),(3,6,'Quần jean','2024-05-04 12:08:31','2024-05-04 12:08:31'),(4,6,'Quần ngắn','2024-05-04 12:08:40','2024-05-04 12:08:40'),(5,7,'Áo sơ mi','2024-05-04 12:08:54','2024-05-04 12:08:54'),(6,7,'Áo thun','2024-05-04 12:09:07','2024-05-04 12:09:07'),(7,7,'Áo khoác','2024-05-04 12:09:12','2024-05-04 12:09:12'),(8,8,'Vest','2024-05-04 12:09:23','2024-05-04 12:09:23'),(9,8,'Áo đầm','2024-05-04 12:09:30','2024-05-04 12:09:30'),(10,8,'Đồ thể thao','2024-05-04 12:09:52','2024-05-04 12:09:52'),(11,9,'Váy ngắn','2024-05-04 12:10:06','2024-05-04 12:10:06'),(12,9,'Váy dài','2024-05-04 12:10:11','2024-05-04 12:10:11'),(15,11,'GIày thể thao','2024-05-04 12:12:09','2024-05-04 12:12:09'),(16,11,'GIày lười','2024-05-04 12:12:16','2024-05-04 12:12:16');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subchildcategories`
--

DROP TABLE IF EXISTS `subchildcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subchildcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `subcategoryId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subchildcategories`
--

LOCK TABLES `subchildcategories` WRITE;
/*!40000 ALTER TABLE `subchildcategories` DISABLE KEYS */;
INSERT INTO `subchildcategories` VALUES (1,'Short',1,1,'2023-05-28 17:09:55','2023-05-28 17:09:55');
/*!40000 ALTER TABLE `subchildcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercarts`
--

DROP TABLE IF EXISTS `usercarts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercarts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `productId` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `unitSize` varchar(255) DEFAULT NULL,
  `active` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userId` (`userId`),
  KEY `productId` (`productId`),
  CONSTRAINT `usercarts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usercarts_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercarts`
--

LOCK TABLES `usercarts` WRITE;
/*!40000 ALTER TABLE `usercarts` DISABLE KEYS */;
INSERT INTO `usercarts` VALUES (76,32,8,1,'L',0);
/*!40000 ALTER TABLE `usercarts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `verify` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pham','Giang','ha noi','datistpham@gmail.com',NULL,1,'25f9e794323b453885f5181f1b624d0b','2023-07-03 09:58:12','2023-07-03 09:58:12','admin'),(2,'Nguyen','A','Ha noi','datistphamx@gmail.com',NULL,1,'25f9e794323b453885f5181f1b624d0b','2023-07-09 11:15:49','2023-07-09 11:15:49','emp'),(3,'Cao','Minh','TP.HCM','caoaminh12an1nh2019@gmail.com','0971695810',1,'38fb12d53cad01359aac82a436d84730','2024-04-28 00:00:00','2024-05-03 14:16:17','admin'),(4,'Nguyen','An','TP.HCM','nguyenvanan@gmail.com','0123456789',1,'b9d53d8ab14d18b1e7147ef832fdd1bb','2024-04-28 00:00:00','2024-05-03 14:16:17','admin'),(5,'Le','Hieu','TP.HCM','leminhhieu@gmail.com','0123456789',1,'6ebe76c9fb411be97b3b0d48b791a7c9','2024-04-28 00:00:00','2024-05-03 14:16:17','admin'),(6,'Cao','Minh','TP.HCM','caominh@gmail.com','0123456789',1,'6ebe76c9fb411be97b3b0d48b791a7c9','2024-04-28 00:00:00','2024-05-03 14:16:17','admin'),(7,'Thành Trung','Nguyễn','Driect 9','trungpspy@hotmail.com',NULL,NULL,'205a5e1b36738602846a555cee9b6029','2024-05-21 06:40:11','2024-05-21 06:40:11',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_areas`
--

DROP TABLE IF EXISTS `vendor_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_areas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vendorId` int DEFAULT NULL,
  `areaId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_areas`
--

LOCK TABLES `vendor_areas` WRITE;
/*!40000 ALTER TABLE `vendor_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_products`
--

DROP TABLE IF EXISTS `vendor_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplierId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `unitSize` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_products`
--

LOCK TABLES `vendor_products` WRITE;
/*!40000 ALTER TABLE `vendor_products` DISABLE KEYS */;
INSERT INTO `vendor_products` VALUES (1,1,16,5000,'L','2023-07-18 18:14:54','2023-07-18 18:15:05');
/*!40000 ALTER TABLE `vendor_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storename` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_general_ci DEFAULT 'active',
  `shopaddress` text COLLATE utf8mb4_general_ci,
  `shopdesc` text COLLATE utf8mb4_general_ci,
  `ownername` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `owneraddress` text COLLATE utf8mb4_general_ci,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_general_ci,
  `areaId` int DEFAULT NULL,
  `accountNo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `accountHolderName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IFSC` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bankName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adharCardNo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `panCardNo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `GSTNo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'Pham Giang','active','Ha noi','aaaaaa','Pham Giang','Ha noi','giang10a1dz@gmail.com','12345678','0388015984',NULL,'aaaaaaaaa','aaaaaaaaaaaaa','a','aaaaaaaaaaaaa',NULL,'aaaaaaaaaaaaa','aaaaaaaaaaaaa','aaaaaaaaaaaaaaaa','2023-05-30 02:40:19','2023-05-30 02:40:19'),(2,'CAM Shop','active','  ','  ','Cao A Minh','TP.HCM City','caoaminh12an1nh2019@gmail.com','12345678','0971695810',NULL,'aaaaaaaaaaaaaa','aaaaaaaaaaaaaaa','aaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaa',NULL,'aaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaa','2023-05-30 02:42:36','2024-05-04 12:46:18');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchercustomers`
--

DROP TABLE IF EXISTS `vouchercustomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchercustomers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerId` int NOT NULL,
  `is_use` int NOT NULL,
  `voucherId` int NOT NULL,
  `createdAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `updatedAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchercustomers`
--

LOCK TABLES `vouchercustomers` WRITE;
/*!40000 ALTER TABLE `vouchercustomers` DISABLE KEYS */;
INSERT INTO `vouchercustomers` VALUES (1,1,0,26,'2023-07-16 09:24:42','2023-07-16 09:24:42'),(2,1,0,40,'2023-07-16 09:29:03','2023-07-16 09:29:03'),(3,16,1,56,'2023-07-16 09:36:27','2023-07-16 10:44:35'),(4,16,0,33,'2023-07-16 09:51:41','2023-07-16 09:51:41'),(5,16,0,21,'2023-07-16 09:52:39','2023-07-16 09:52:39'),(6,16,0,21,'2023-07-16 09:53:04','2023-07-16 09:53:04'),(7,16,0,59,'2023-07-16 09:57:13','2023-07-16 09:57:13'),(8,16,0,25,'2023-07-16 09:58:06','2023-07-16 09:58:06'),(9,16,0,29,'2023-07-16 09:58:44','2023-07-16 09:58:44'),(10,16,0,26,'2023-07-16 09:59:27','2023-07-16 09:59:27'),(11,16,0,26,'2023-07-16 09:59:28','2023-07-16 09:59:28'),(12,16,0,36,'2023-07-16 10:02:59','2023-07-16 10:02:59'),(13,16,0,64,'2023-07-16 10:03:02','2023-07-16 10:03:02');
/*!40000 ALTER TABLE `vouchercustomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `discount` int NOT NULL,
  `expire` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `updatedAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES (71,'9RJAU1GT',50000,'2024-06-30T22:03','2024-05-04 15:03:33','2024-05-04 15:03:33'),(72,'BJHB646S',20000,'2024-06-30T09:52','2024-05-05 02:52:27','2024-05-05 02:52:27');
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucherschedules`
--

DROP TABLE IF EXISTS `voucherschedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucherschedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_start` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_end` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `amount_voucher` int NOT NULL,
  `createdAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `updatedAt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucherschedules`
--

LOCK TABLES `voucherschedules` WRITE;
/*!40000 ALTER TABLE `voucherschedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucherschedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mhshop'
--

--
-- Dumping routines for database 'mhshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-30 15:16:51
