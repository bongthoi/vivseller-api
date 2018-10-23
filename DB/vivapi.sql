-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: vivapi
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(145) DEFAULT NULL,
  `CategoryDes` varchar(245) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `CreateUser` varchar(45) DEFAULT NULL,
  `UpdateUser` varchar(45) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `CategoryImg` varchar(245) DEFAULT NULL,
  `CategoryOrder` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_category`
--

LOCK TABLES `tb_category` WRITE;
/*!40000 ALTER TABLE `tb_category` DISABLE KEYS */;
INSERT INTO `tb_category` VALUES (1,'Electronic','Electronic ...','2018-10-16 10:44:11','2018-10-16 10:44:11','seller@vinhsang.com','seller@vinhsang.com',1,'1539661451081electronic.png',1),(2,'Sensor','Description  sensor','2018-10-16 10:45:13','2018-10-16 10:45:13','seller@vinhsang.com','seller@vinhsang.com',1,'1539661513694cam_bien.png',2);
/*!40000 ALTER TABLE `tb_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'barcode genarator',
  `name` varchar(245) DEFAULT NULL,
  `description` text,
  `image` varchar(245) DEFAULT NULL,
  `unit` varchar(245) DEFAULT NULL,
  `cost_price` float DEFAULT '0',
  `sell_price` float DEFAULT '0',
  `quantity` int(11) DEFAULT '1',
  `sellerID` varchar(245) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT '1',
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` VALUES (1,'IP Camera','A camera is an optical instrument for recording or capturing images, which may be stored locally, transmitted to another location, or both. The images may be individual still photographs or sequences of images constituting videos or movies. The camera is a remote sensing device as it senses subjects without any contact . The word camera comes from camera obscura, which means \"dark chamber\" and is the Latin name of the original device for projecting an image of external reality onto a flat surface. The modern photographic camera evolved from the camera obscura. The functioning of the camera is very similar to the functioning of the human eye. The first permanent photograph was made in 1826 by Joseph Nicéphore Niépce.','1539661720668cameraip.png','GLO',100,0,10,'seller@vinhsang.com',1,'2018-10-16 10:48:56',1,1),(2,'Infrared sensor','Sensors are used in everyday objects such as touch-sensitive elevator buttons (tactile sensor) and lamps which dim or brighten by touching the base, besides innumerable applications of which most people are never aware.','1539661886950cambien.png','GLO',100,0,10,'seller@vinhsang.com',2,'2018-10-16 10:51:26',2,1),(3,'AX-H-HT Sensor','Sensors are used in everyday objects such as touch-sensitive elevator buttons (tactile sensor) and lamps which dim or brighten by touching the base, besides innumerable applications of which most people are never aware','1539662023435doamsensor.png','GLO',10,0,11,'seller@vinhsang.com',2,'2018-10-16 10:53:56',3,1);
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `RegisterDate` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES ('seller@glorious.com','$2a$10$nQqoMVPpukNwXEkgO/i8KuUHLe6ykpI20d4Zb00T2hMNRNfvwcS6C','Glorious','CreationGroup','2018-10-10 09:52:18','736 Granville St. Suite 1100, Vancouver, BC V','778-889-4966',1,'2018-10-10 09:52:18'),('seller@vinhsang.com','$2a$10$ndQQln4jt6NVyqjh.glT5.Fe8TJQAHYOu2QqBerDQw5PGeSABFg8C','Vinh','Sang','2018-10-10 09:49:24','56A, Hòa Bình, Phường 5, Quận 11, TP. HCM','028.62866208',1,'2018-10-10 09:49:24');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vivapi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-23 14:59:10
