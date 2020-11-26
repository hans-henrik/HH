CREATE DATABASE  IF NOT EXISTS `pizzabar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pizzabar`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzabar
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `bestilling`
--

DROP TABLE IF EXISTS `bestilling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bestilling` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `BestillingsTid` timestamp(5) NULL DEFAULT NULL,
  `AfhentningsTid` timestamp(5) NULL DEFAULT NULL,
  `Kundenavn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestilling`
--

LOCK TABLES `bestilling` WRITE;
/*!40000 ALTER TABLE `bestilling` DISABLE KEYS */;
INSERT INTO `bestilling` VALUES (1,'2020-11-26 14:16:10.00000','2020-11-26 14:31:10.00000','John'),(2,'2020-11-26 14:16:21.00000','2020-11-26 14:31:21.00000','John'),(3,'2020-11-26 14:16:59.00000','2020-11-26 14:31:59.00000','John'),(4,'2020-11-26 14:19:27.00000','2020-11-26 14:34:27.00000','John'),(5,'2020-11-26 14:20:08.00000','2020-11-26 14:35:08.00000','John'),(6,'2020-11-26 14:40:00.00000','2020-11-26 14:55:00.00000','John'),(7,'2020-11-26 14:41:17.00000','2020-11-26 14:56:17.00000','John'),(8,'2020-11-26 14:55:06.00000','2020-11-26 15:10:06.00000','John'),(9,'2020-11-26 14:55:11.00000','2020-11-26 15:10:11.00000','John'),(10,'2020-11-26 14:55:17.00000','2020-11-26 15:10:17.00000','John'),(11,'2020-11-26 14:55:19.00000','2020-11-26 15:10:19.00000','John');
/*!40000 ALTER TABLE `bestilling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bestillingsdetails`
--

DROP TABLE IF EXISTS `bestillingsdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bestillingsdetails` (
  `bestillingsId` int NOT NULL,
  `pizzaId` int NOT NULL,
  KEY `bestillingsId_idx` (`bestillingsId`),
  KEY `pizzaId_idx` (`pizzaId`),
  CONSTRAINT `bestillingsId` FOREIGN KEY (`bestillingsId`) REFERENCES `bestilling` (`Id`),
  CONSTRAINT `pizzaId` FOREIGN KEY (`pizzaId`) REFERENCES `menukort` (`pizzaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestillingsdetails`
--

LOCK TABLES `bestillingsdetails` WRITE;
/*!40000 ALTER TABLE `bestillingsdetails` DISABLE KEYS */;
INSERT INTO `bestillingsdetails` VALUES (7,6),(7,5),(7,4),(8,4),(8,5),(8,6),(9,3),(9,3),(9,3),(10,1),(11,5);
/*!40000 ALTER TABLE `bestillingsdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menukort`
--

DROP TABLE IF EXISTS `menukort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menukort` (
  `pizzaId` int NOT NULL,
  `topping` varchar(100) DEFAULT NULL,
  `pizzaName` varchar(45) DEFAULT NULL,
  `pizzaPrice` int DEFAULT NULL,
  PRIMARY KEY (`pizzaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menukort`
--

LOCK TABLES `menukort` WRITE;
/*!40000 ALTER TABLE `menukort` DISABLE KEYS */;
INSERT INTO `menukort` VALUES (1,'Tomatsauce, ost, skinke og oregano','Vesuvio',57),(2,'Tomatsauce, ost, oksefars og oregano','Amerikaner',53),(3,'Tomatsauce, ost, pepperoni og oregano','Caccaciatore',57),(4,'Tomatsauce, ost, kødsauce, spaghetti, cocktailpølser og oregano','Carbona',63),(5,'Tomatsauce, ost, skinke, pepperoni, cocktailpølser og oregano','Dennis',65),(6,'Tomatsauce, ost, bacon og oregano','Bertil',57),(7,'Tomatsauce, ost, pepperoni, rød peber, løg, oliven og oregano','Silvia',61),(8,'Tomatsauce, ost, skinke, ananas, løg, champignon og oregano','Victoria',61),(9,'Tomatsauce, ost, skinke, bacon, kebab, chili og oregano','Toronfo',61),(10,'Tomatsauce, ost, skinke, champignon og oregano','Capricciosa',61),(11,'Tomatsauce, ost, skinke, ananas og oregano','Hawai',61),(12,'Tomatsauce, ost, skinke, rejer og oregano','Le Blissola',61),(13,'Tomatsauce, ost, skinke, bacon og oregano','Venezia',61),(14,'Tomatsauce, ost, pepperoni, bacon, løg og oregano','Mafia',61);
/*!40000 ALTER TABLE `menukort` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-26 16:04:43
