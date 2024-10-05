-- MySQL dump 10.13  Distrib 5.7.17, for Win32 (AMD64)
--
-- Host: localhost    Database: dbsuj
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `custtbl`
--

DROP TABLE IF EXISTS `custtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custtbl` (
  `custNo` char(5) NOT NULL,
  `custName` varchar(20) DEFAULT NULL,
  `custAddr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`custNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custtbl`
--

LOCK TABLES `custtbl` WRITE;
/*!40000 ALTER TABLE `custtbl` DISABLE KEYS */;
INSERT INTO `custtbl` VALUES ('C1000','Teddy Danders','209 McCaffrey'),('C2000','Ammy Jenkins','1234 Rafter Rd'),('C3000','Betty Thomson','72 Hill st.'),('C4000','Harry Hayes','756 Pine st.'),('C5000','Colin White','1749 E.Ravenna');
/*!40000 ALTER TABLE `custtbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emptbl`
--

DROP TABLE IF EXISTS `emptbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emptbl` (
  `emp` char(5) NOT NULL,
  `empName` char(20) DEFAULT NULL,
  `empAddr` char(50) DEFAULT NULL,
  `empCommRate` double(2,2) DEFAULT NULL,
  PRIMARY KEY (`emp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emptbl`
--

LOCK TABLES `emptbl` WRITE;
/*!40000 ALTER TABLE `emptbl` DISABLE KEYS */;
INSERT INTO `emptbl` VALUES ('E0001','Linda Satons','3 Webber Ave.',0.03),('E0002','Nick Thomas','988 Crest Ave.',0.01),('E0003','Boston Tang','75 Main st.',0.03),('E0004','Venus Aulra','222 Lorraine Cir.',0.02),('E0005','Aurolla Switch','89 E.Ravenna',0.03);
/*!40000 ALTER TABLE `emptbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetail` (
  `orderNo` char(7) NOT NULL,
  `prodNo` char(6) NOT NULL,
  `orderQty` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderNo`,`prodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES ('0112200','P18000',2),('0112200','P21040',1),('0112200','P22500',1),('0123455','P15080',1),('0123455','P18000',1),('0123455','P21040',5),('0127219','P18000',1),('0127219','P22500',1),('0332200','P11001',3),('0332200','P22500',3),('0462200','P11001',2),('0462200','P18000',5),('0462200','P21040',1),('0553311','P15080',4),('0553311','P18000',2),('0553311','P22500',2),('0567891','P21040',1),('0892536','P18000',5),('0993321','P11001',4),('0993321','P18000',1),('0998811','P15080',1);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertbl`
--

DROP TABLE IF EXISTS `ordertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordertbl` (
  `orderNo` char(7) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `custNo` char(5) DEFAULT NULL,
  `empNo` char(5) DEFAULT NULL,
  PRIMARY KEY (`orderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertbl`
--

LOCK TABLES `ordertbl` WRITE;
/*!40000 ALTER TABLE `ordertbl` DISABLE KEYS */;
INSERT INTO `ordertbl` VALUES ('0112200','2016-01-29','C5000','E0001'),('0123455','2016-08-16','C1000',''),('0127219','2016-04-22','C4000','E0002'),('0332200','2016-10-01','C1000','E0005'),('0462200','2016-10-01','C2000',''),('0553311','2016-06-02','C3000','E0004'),('0567891','2016-04-12','C4000','E0003'),('0892536','2016-06-03','C5000',''),('0993321','2016-07-10','C3000','E0001'),('0998811','2016-09-09','C5000','E0002');
/*!40000 ALTER TABLE `ordertbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodtbl`
--

DROP TABLE IF EXISTS `prodtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodtbl` (
  `prodNo` char(6) NOT NULL,
  `prodName` varchar(30) DEFAULT NULL,
  `prodPrice` double(6,2) DEFAULT NULL,
  PRIMARY KEY (`prodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodtbl`
--

LOCK TABLES `prodtbl` WRITE;
/*!40000 ALTER TABLE `prodtbl` DISABLE KEYS */;
INSERT INTO `prodtbl` VALUES ('P11001','Color Black Jet Cartridge',3200.00),('P15080',' 48-Bit Color Scanner',3500.00),('P18000','ABC Ing Jet Color Printer',5900.00),('P21040','R500 Color Printer',1200.00),('P22500','Battery System',2490.00);
/*!40000 ALTER TABLE `prodtbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-20 21:35:02
