-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: automobile
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `VIN` varchar(20) NOT NULL,
  `model_id` varchar(8) DEFAULT NULL,
  `option_id` varchar(8) DEFAULT NULL,
  `plant_id` varchar(8) DEFAULT NULL,
  `dealer_id` varchar(8) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `stock_date` date DEFAULT NULL,
  PRIMARY KEY (`VIN`),
  KEY `model_id` (`model_id`),
  KEY `option_id` (`option_id`),
  KEY `plant_id` (`plant_id`),
  KEY `dealer_id` (`dealer_id`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`) ON DELETE CASCADE,
  CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `options` (`option_id`) ON DELETE CASCADE,
  CONSTRAINT `vehicle_ibfk_3` FOREIGN KEY (`plant_id`) REFERENCES `manufacturing_plant` (`plant_id`) ON DELETE CASCADE,
  CONSTRAINT `vehicle_ibfk_4` FOREIGN KEY (`dealer_id`) REFERENCES `dealer` (`dealer_id`) ON DELETE CASCADE,
  CONSTRAINT `vehicle_chk_1` CHECK ((`price` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('1B4GP25R51B138763','20019','30000','80004','22222',303020.00,'2018-12-18'),('1FAFP66L0WK258659','20027','30000','80003','10101',22020.00,'2020-07-11'),('1FVABPAL91HH92692','20029','30002','80005','10101',102020.00,'2012-11-11'),('1FVHCYDJ85HV14123','20023','30002','80007','22222',22020.00,'2020-12-11'),('1FVXA7AS24LM58815','20006','30005','80006','45565',30020.00,'2020-02-21'),('1G1ZT51806F128009','20020','30002','80000','10101',72020.00,'2019-07-11'),('1G4CU5312N1625421','20024','30002','80006','98345',32020.00,'2012-10-11'),('1G8AY12P84Z202013','20015','30002','80006','10101',12020.00,'2011-01-21'),('1G8MF35X68Y131819','20012','30002','80003','15151',28020.00,'2020-01-15'),('1G8ZG127XWZ157259','20022','30002','80002','10101',78020.00,'2011-11-11'),('1GCCS1956Y8235348','20007','30002','80007','45565',900020.00,'2020-04-01'),('1GCEK14K8RE106083','20019','30002','80002','76766',72020.00,'2020-06-11'),('1GNDT13S582215117','20017','30002','80003','45565',72020.00,'2011-01-21'),('1HD1GPM15CC339172','20018','30002','80001','10101',72020.00,'2020-05-11'),('1N4AB41D7VC757660','20018','30001','80005','33456',105020.00,'2019-01-10'),('1P3XP48K6LN273071','20001','30000','80001','12121',80020.00,'2019-02-11'),('2B3HD46R02H210893','20021','30002','80001','33456',71020.00,'2020-09-11'),('3FAFP13P41R199033','20024','30003','80002','98345',52020.00,'2020-04-11'),('3G4AG55M8RS622999','20021','30002','80002','98345',103020.00,'2016-08-11'),('5N3ZA0NE6AN906847','20004','30003','80004','32343',180020.00,'2020-01-11'),('JH4DA1850JS005062','20005','30004','80005','33456',28020.00,'2019-01-11'),('JH4DA3350GS005185','20008','30000','80008','45565',40020.00,'2020-05-05'),('JH4DA9481PS021682','20010','30002','80010','98345',60020.00,'2019-01-13'),('JH4DC2380SS000012','20016','30002','80004','22222',72020.00,'2013-01-01'),('JH4KA4531KC033525','20014','30002','80005','98345',12020.00,'2020-01-31'),('JH4KA4576KC031014','20011','30002','80002','98345',18020.00,'2018-01-14'),('JH4KA4630LC007479','20016','30002','80005','10101',72020.00,'2012-01-31'),('JH4KA4650JC000403','20028','30001','80004','10101',12020.00,'2018-08-11'),('JTDBE30K620061417','20009','30005','80009','76766',50020.00,'2020-01-12'),('LM4AC113061105688','20020','30001','80003','10101',203020.00,'2017-10-21'),('SAJWA0ES6DPS56028','20026','30005','80000','98345',32020.00,'2010-06-11'),('WAUDFAFL6DN014563','20011','30003','80002','10101',200020.00,'2019-12-10'),('WAUYGAFC6CN174200','20000','30000','80000','10101',80020.00,'2020-01-11'),('WBAAM3333XFP59732','20003','30001','80003','22222',80020.00,'2012-01-11'),('WBAFR9C59BC270614','20002','30000','80002','15151',80020.00,'2011-01-11'),('WP0AA29966S716557','20023','30003','80001','33456',103020.00,'2015-11-11'),('YS3AK35E4M5002999','20025','30004','80001','10101',62020.00,'2013-05-11'),('YS3ED48E5Y3070016','20013','30002','80004','15151',380020.00,'2020-01-21');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-27 19:37:40