CREATE DATABASE  IF NOT EXISTS `shopeasy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopeasy`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: shopeasy
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `price` int NOT NULL,
  `productname` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `stock` int NOT NULL,
  `catalogid` int NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `FKpcebfs5kv7qpqitu4sw4h5dai` (`catalogid`),
  CONSTRAINT `FKpcebfs5kv7qpqitu4sw4h5dai` FOREIGN KEY (`catalogid`) REFERENCES `catalog` (`catalogid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'01.png',25900,'超薄液晶電視 55吋','上架',218,1),(2,'02.png',35900,'變頻冷氣機 (一對一)','上架',195,1),(3,'03.png',8990,'無線吸塵器','上架',196,1),(4,'04.png',3490,'無線藍牙耳機 Pro','上架',196,2),(5,'05.png',29900,'旗艦智慧手機','上架',198,2),(6,'06.png',12900,'平板電腦 10.5吋','上架',198,2),(7,'07.png',890,'不鏽鋼保溫瓶 500ml','上架',295,3),(8,'08.png',790,'記憶棉護頸枕','上架',249,3),(9,'09.png',1290,'LED檯燈 (三段調光)','上架',248,3),(10,'10.png',2390,'陶瓷不沾鍋組','上架',190,3);
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

-- Dump completed on 2025-04-25 15:46:28
