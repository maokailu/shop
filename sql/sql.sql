CREATE DATABASE  IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `store`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	5.6.29

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CatNo` varchar(16) NOT NULL,
  `CatName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CatNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CusNo` varchar(4) NOT NULL,
  `CusName` varchar(16) DEFAULT NULL,
  `Password` varchar(16) DEFAULT NULL,
  `Credit` int(11) DEFAULT NULL,
  `CusStatu` varchar(6) DEFAULT NULL,
  `CusTel` varchar(16) DEFAULT NULL,
  `CusAdr` text,
  `Comment` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`CusNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('0001','Kayla','123456',0,'online','18796283298','chongqing',NULL),('0002','Lulu','123456',0,'online','15178848858','jiangsu',NULL),('1','tiger','123',NULL,NULL,NULL,NULL,NULL),('2','tiger','123',NULL,NULL,NULL,NULL,NULL),('3',NULL,NULL,NULL,NULL,NULL,NULL,'3'),('4',NULL,NULL,NULL,NULL,NULL,NULL,'3ç??'),('5',NULL,NULL,NULL,NULL,NULL,NULL,'3333'),('6',NULL,NULL,NULL,NULL,NULL,NULL,'å¥½'),('7',NULL,NULL,NULL,NULL,NULL,NULL,''),('8',NULL,NULL,NULL,NULL,NULL,NULL,'3344');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `OrderNo` varchar(16) NOT NULL,
  `CusNo` varchar(45) DEFAULT NULL,
  `ProNo` varchar(16) DEFAULT NULL,
  `CusStatu` varchar(45) DEFAULT NULL,
  `OrderStatu` varchar(45) DEFAULT NULL,
  `CusAdr` text,
  `CusTel` varchar(16) DEFAULT NULL,
  `CreTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrderNo`),
  KEY `CusNo_idx` (`CusNo`),
  KEY `ProNo_idx` (`ProNo`),
  CONSTRAINT `CusNo` FOREIGN KEY (`CusNo`) REFERENCES `customer` (`CusNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ProNo` FOREIGN KEY (`ProNo`) REFERENCES `product` (`ProNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payform`
--

DROP TABLE IF EXISTS `payform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payform` (
  `PayNo` varchar(16) NOT NULL,
  `CusNo` varchar(45) DEFAULT NULL,
  `ProNo` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`PayNo`),
  KEY `ProNo_idx` (`PayNo`,`CusNo`),
  KEY `CusNo_idx` (`CusNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payform`
--

LOCK TABLES `payform` WRITE;
/*!40000 ALTER TABLE `payform` DISABLE KEYS */;
/*!40000 ALTER TABLE `payform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ProNo` varchar(16) NOT NULL,
  `ProName` varchar(45) DEFAULT NULL,
  `ImgUrl` varchar(45) DEFAULT NULL,
  `Comment` text,
  `Stock` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-23 16:54:35
