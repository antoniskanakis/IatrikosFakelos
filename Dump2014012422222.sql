CREATE DATABASE  IF NOT EXISTS `iatrikosfakelos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `iatrikosfakelos`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: iatrikosfakelos
-- ------------------------------------------------------
-- Server version	5.6.15-log

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
-- Table structure for table `astheneis`
--

DROP TABLE IF EXISTS `astheneis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `astheneis` (
  `amka` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `mname` varchar(45) NOT NULL,
  `birth` varchar(45) NOT NULL,
  `artayt` varchar(45) NOT NULL,
  `asf` varchar(45) NOT NULL,
  `afm` varchar(45) NOT NULL,
  `nomos` varchar(45) NOT NULL,
  `town` varchar(45) NOT NULL,
  `tk` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `addnum` varchar(45) NOT NULL,
  `sphone` varchar(45) NOT NULL,
  `mphone` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY (`amka`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `astheneis`
--

LOCK TABLES `astheneis` WRITE;
/*!40000 ALTER TABLE `astheneis` DISABLE KEYS */;
INSERT INTO `astheneis` VALUES ('123','qwe','qwe','qwe','qwe','123','123','qwe','123','qwe','qwe','123','qwe','123','123','123','Άνδρας'),('23452345','adfasdf','asdfasdfa','adsfasdf','asdfasdf','4523452345','424352','245343','2452345234','afdssfdas','wetrerrw','234532','asdfsdfa','253435','52345','4253452','Άνδρας'),('345','asd','asdwerqwerqwerqw','asd','asd','345','345','asd','345','asd','asd','345','asd','345','345','345','Γυναίκα');
/*!40000 ALTER TABLE `astheneis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ergazomenoi`
--

DROP TABLE IF EXISTS `ergazomenoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ergazomenoi` (
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `mname` varchar(45) NOT NULL,
  `birth` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `specialty` varchar(45) NOT NULL,
  `town` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `afm` varchar(45) NOT NULL,
  `addnum` varchar(45) NOT NULL,
  `tk` varchar(45) NOT NULL,
  `sphone` varchar(45) NOT NULL,
  `mphone` varchar(45) NOT NULL,
  PRIMARY KEY (`afm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ergazomenoi`
--

LOCK TABLES `ergazomenoi` WRITE;
/*!40000 ALTER TABLE `ergazomenoi` DISABLE KEYS */;
INSERT INTO `ergazomenoi` VALUES ('a','a','a','a','1','Άνδρας','Γραμματεία','a','a','a','a','1','1','1','1','1'),('qwe','qwe','qwe','qweq','123','Γυναίκα','Γραμματεία','qwe','qwe','qwe','qwe','123','123','123','123','123'),('antonis','kanakis','giorgos','stavroula','6/12/1990','Άνδρας','Ιατρός','athina','arapaki','antonis','antonis','123456789','125','12345','1234567890','123567890'),('b','b','b','b','2','Γυναίκα','Ιατρός','b','b','b','b','2','2','2','2','2'),('c','c','c','c','3','Άνδρας','Νοσοκόμος','c','c','c','c','3','3','3','3','3'),('zxcv','zxcv','zxcv','zxcv','7890','Άνδρας','Νοσοκόμος','zcxv','zxcv','zxcv','zxcv','7890','7890','7980','7890','7890');
/*!40000 ALTER TABLE `ergazomenoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `istoriko`
--

DROP TABLE IF EXISTS `istoriko`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `istoriko` (
  `amka` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `symban` varchar(60) NOT NULL,
  `diagnwsh` longtext NOT NULL,
  `farmak` longtext,
  `eksetas` longtext,
  `sxolia` longtext,
  KEY `fk_idx` (`amka`),
  CONSTRAINT `fk` FOREIGN KEY (`amka`) REFERENCES `astheneis` (`amka`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `istoriko`
--

LOCK TABLES `istoriko` WRITE;
/*!40000 ALTER TABLE `istoriko` DISABLE KEYS */;
INSERT INTO `istoriko` VALUES ('123','12345','qwerty','qwertyuiop','asdfghjkl','zxcvbnm','qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm'),('123','12345','qwerty','qwertyuiop','asdfghjkl','zxcvbnm','qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm'),('123','12345','qwerty','qwertyuiop','asdfghjkl','zxcvbnm','qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm'),('123','12345','qwerty','qwertyuiop','asdfghjkl','zxcvbnm','qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm'),('123','12345','qwerty','qwertyuiop','asdfghjkl','zxcvbnm','qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm'),('123','1234567890','qwerty','qwertyuiop','asdfghjkl','zxcvbnm','qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm'),('345','1342','qewrqwerqwe','eqwrqwerqwerqwe','null','null','null'),('345','1342','qewrqwerqwe','eqwrqwerqwerqwe','qwerqwerwe','null','null'),('345','47657','45674567456','4567546745674','qwerqwerwe4567456745','null','null'),('345','47657','45674567456','4567546745674','qwerqwerwe4567456745','45674567456','null'),('345','87890','7890','','null','null','null'),('345','345','null','null','null','null','null'),('123','qwe','qwe','qwe','-','-','-'),('123','1234567890','1234567890','1234567890','-','-','-'),('123','-3234','-dfsadsf','-adsfsdfa','-','-','-');
/*!40000 ALTER TABLE `istoriko` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-24 23:31:31
