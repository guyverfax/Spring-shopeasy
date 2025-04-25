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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `totp_enabled` tinyint(1) DEFAULT '0',
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'台北巿中正路1號','user1@demo.com','使用者1','u@123','0911111111','USER','G5IWANLIGY5AFIY2IGQOMZBANABEREM6',1,'user1'),(7,'台北巿內湖路10號','admin@demo.com','管理者','a@123','0900000000','ADMIN','U3RUMSUNJMVRDCQCCYKC2ZBCF55XMBM2',1,'admin'),(8,'台中巿台中路2號','user2@demo.com','使用者2','u@123','0922222222','USER','S7PDUT7YVF4Y2CKHQKS3ZV7NP444JYKW',1,'user2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
