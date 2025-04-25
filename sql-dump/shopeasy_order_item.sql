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
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `subtotal` int GENERATED ALWAYS AS ((`quantity` * `price`)) STORED NOT NULL,
  `orderid` int NOT NULL,
  `productid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6qdi17749hl3bd01qyvxkid49` (`orderid`),
  KEY `FK65riinaev2asy1q07c9nrgrxr` (`productid`),
  CONSTRAINT `FK65riinaev2asy1q07c9nrgrxr` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `FK6qdi17749hl3bd01qyvxkid49` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` (`id`, `price`, `quantity`, `orderid`, `productid`) VALUES (3,25900,4,21,1),(4,35900,3,21,2),(5,29900,1,22,5),(6,12900,2,22,6),(7,25900,1,23,1),(8,3490,2,23,4),(9,29900,1,23,5),(10,1290,1,24,9),(11,890,1,24,7),(12,8990,2,24,3),(13,35900,1,25,2),(14,890,2,25,7),(15,25900,1,25,1),(16,25900,1,26,1),(17,3490,1,26,4),(18,890,2,27,7),(19,790,1,27,8);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
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
