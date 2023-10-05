-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: FriendsOfMan
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AllAnimals`
--

DROP TABLE IF EXISTS `AllAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AllAnimals` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Command` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `AgeInMonths` int DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `PreviousCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AllAnimals`
--

LOCK TABLES `AllAnimals` WRITE;
/*!40000 ALTER TABLE `AllAnimals` DISABLE KEYS */;
INSERT INTO `AllAnimals` VALUES (1,'Barsik','Command1','2020-05-15',NULL,'Cats','Domestic'),(2,'Whiskers','Command2','2018-08-20',NULL,'Cats','Domestic'),(3,'Rex','Command3','2019-02-12',NULL,'Dogs','Domestic'),(4,'Fluffy','Command4','2017-06-30',NULL,'Dogs','Domestic'),(5,'Mittens','Command5','2020-01-05',NULL,'Hamsters','Domestic'),(6,'Shadow','Command6','2019-11-18',NULL,'Hamsters','Domestic'),(8,'Thunder','Command9','2018-03-25',NULL,'Horses','Pack'),(9,'Spirit','Command10','2019-08-15',NULL,'Horses','Pack'),(10,'Rocky','Command11','2017-12-08',NULL,'Donkeys','Pack'),(11,'Dusty','Command12','2020-02-22',NULL,'Donkeys','Pack'),(15,'Barsik','Command1','2020-05-15',40,'Cats','Young'),(16,'Mittens','Command5','2020-01-05',45,'Hamsters','Young'),(17,'Shadow','Command6','2019-11-18',46,'Hamsters','Young'),(18,'Dusty','Command12','2020-02-22',43,'Donkeys','Young'),(22,'Thunder','Command9','2018-03-25',NULL,'Horses','HorsesAndDonkeys'),(23,'Spirit','Command10','2019-08-15',NULL,'Horses','HorsesAndDonkeys'),(24,'Rocky','Command11','2017-12-08',NULL,'Donkeys','HorsesAndDonkeys'),(25,'Dusty','Command12','2020-02-22',NULL,'Donkeys','HorsesAndDonkeys');
/*!40000 ALTER TABLE `AllAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DomesticAnimals`
--

DROP TABLE IF EXISTS `DomesticAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DomesticAnimals` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Command` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DomesticAnimals`
--

LOCK TABLES `DomesticAnimals` WRITE;
/*!40000 ALTER TABLE `DomesticAnimals` DISABLE KEYS */;
INSERT INTO `DomesticAnimals` VALUES (1,'Barsik','Command1','2020-05-15','Cats'),(2,'Whiskers','Command2','2018-08-20','Cats'),(3,'Rex','Command3','2019-02-12','Dogs'),(4,'Fluffy','Command4','2017-06-30','Dogs'),(5,'Mittens','Command5','2020-01-05','Hamsters'),(6,'Shadow','Command6','2019-11-18','Hamsters');
/*!40000 ALTER TABLE `DomesticAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HorsesAndDonkeys`
--

DROP TABLE IF EXISTS `HorsesAndDonkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HorsesAndDonkeys` (
  `ID` int NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `Command` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HorsesAndDonkeys`
--

LOCK TABLES `HorsesAndDonkeys` WRITE;
/*!40000 ALTER TABLE `HorsesAndDonkeys` DISABLE KEYS */;
INSERT INTO `HorsesAndDonkeys` VALUES (3,'Thunder','Command9','2018-03-25','Horses'),(4,'Spirit','Command10','2019-08-15','Horses'),(5,'Rocky','Command11','2017-12-08','Donkeys'),(6,'Dusty','Command12','2020-02-22','Donkeys');
/*!40000 ALTER TABLE `HorsesAndDonkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PackAnimals`
--

DROP TABLE IF EXISTS `PackAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PackAnimals` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Command` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PackAnimals`
--

LOCK TABLES `PackAnimals` WRITE;
/*!40000 ALTER TABLE `PackAnimals` DISABLE KEYS */;
INSERT INTO `PackAnimals` VALUES (3,'Thunder','Command9','2018-03-25','Horses'),(4,'Spirit','Command10','2019-08-15','Horses'),(5,'Rocky','Command11','2017-12-08','Donkeys'),(6,'Dusty','Command12','2020-02-22','Donkeys');
/*!40000 ALTER TABLE `PackAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YoungAnimals`
--

DROP TABLE IF EXISTS `YoungAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YoungAnimals` (
  `ID` int NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `Command` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `AgeInMonths` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YoungAnimals`
--

LOCK TABLES `YoungAnimals` WRITE;
/*!40000 ALTER TABLE `YoungAnimals` DISABLE KEYS */;
INSERT INTO `YoungAnimals` VALUES (1,'Barsik','Command1','2020-05-15','Cats',40),(5,'Mittens','Command5','2020-01-05','Hamsters',45),(6,'Shadow','Command6','2019-11-18','Hamsters',46),(6,'Dusty','Command12','2020-02-22','Donkeys',43);
/*!40000 ALTER TABLE `YoungAnimals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-05 17:19:17