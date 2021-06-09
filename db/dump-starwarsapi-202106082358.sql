-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: starwarsapi
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `filmsid` int unsigned NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `episode_id` int unsigned DEFAULT NULL,
  `opening_crawl` varchar(1000) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `producer` varchar(100) DEFAULT NULL,
  `release_date` varchar(100) DEFAULT NULL,
  `created` varchar(100) DEFAULT NULL,
  `edited` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`filmsid`),
  KEY `films_filmsid_IDX` (`filmsid`) USING BTREE,
  KEY `films_title_IDX` (`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films_planets`
--

DROP TABLE IF EXISTS `films_planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films_planets` (
  `filmsid` int unsigned NOT NULL,
  `planetsid` int unsigned NOT NULL,
  PRIMARY KEY (`filmsid`,`planetsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films_planets`
--

LOCK TABLES `films_planets` WRITE;
/*!40000 ALTER TABLE `films_planets` DISABLE KEYS */;
/*!40000 ALTER TABLE `films_planets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films_species`
--

DROP TABLE IF EXISTS `films_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films_species` (
  `filmsid` int unsigned NOT NULL,
  `speciesid` int unsigned NOT NULL,
  PRIMARY KEY (`filmsid`,`speciesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films_species`
--

LOCK TABLES `films_species` WRITE;
/*!40000 ALTER TABLE `films_species` DISABLE KEYS */;
/*!40000 ALTER TABLE `films_species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films_starships`
--

DROP TABLE IF EXISTS `films_starships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films_starships` (
  `filmsid` int unsigned NOT NULL,
  `starshipsid` int unsigned NOT NULL,
  PRIMARY KEY (`filmsid`,`starshipsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films_starships`
--

LOCK TABLES `films_starships` WRITE;
/*!40000 ALTER TABLE `films_starships` DISABLE KEYS */;
/*!40000 ALTER TABLE `films_starships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films_vehicles`
--

DROP TABLE IF EXISTS `films_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films_vehicles` (
  `filmsid` int unsigned NOT NULL,
  `vehiclesid` int unsigned NOT NULL,
  PRIMARY KEY (`filmsid`,`vehiclesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films_vehicles`
--

LOCK TABLES `films_vehicles` WRITE;
/*!40000 ALTER TABLE `films_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `films_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `peopleid` int unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `height` int unsigned DEFAULT NULL,
  `mass` int unsigned DEFAULT NULL,
  `hair_color` varchar(100) DEFAULT NULL,
  `skin_color` varchar(100) DEFAULT NULL,
  `eye_color` varchar(100) DEFAULT NULL,
  `birth_year` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `homeworld` varchar(100) DEFAULT NULL,
  `created` varchar(100) DEFAULT NULL,
  `edited` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`peopleid`),
  UNIQUE KEY `people_id_IDX` (`peopleid`) USING BTREE,
  KEY `people_name_IDX` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people_films`
--

DROP TABLE IF EXISTS `people_films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people_films` (
  `peopleid` int unsigned NOT NULL,
  `filmsid` int unsigned NOT NULL,
  PRIMARY KEY (`peopleid`,`filmsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_films`
--

LOCK TABLES `people_films` WRITE;
/*!40000 ALTER TABLE `people_films` DISABLE KEYS */;
/*!40000 ALTER TABLE `people_films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people_planets`
--

DROP TABLE IF EXISTS `people_planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people_planets` (
  `peopleid` int unsigned NOT NULL,
  `planetsid` int unsigned NOT NULL,
  PRIMARY KEY (`peopleid`,`planetsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_planets`
--

LOCK TABLES `people_planets` WRITE;
/*!40000 ALTER TABLE `people_planets` DISABLE KEYS */;
/*!40000 ALTER TABLE `people_planets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people_species`
--

DROP TABLE IF EXISTS `people_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people_species` (
  `peopleid` int unsigned NOT NULL,
  `speciesid` int unsigned NOT NULL,
  PRIMARY KEY (`peopleid`,`speciesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_species`
--

LOCK TABLES `people_species` WRITE;
/*!40000 ALTER TABLE `people_species` DISABLE KEYS */;
/*!40000 ALTER TABLE `people_species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people_starships`
--

DROP TABLE IF EXISTS `people_starships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people_starships` (
  `peopleid` int unsigned NOT NULL,
  `starshipsid` int unsigned NOT NULL,
  PRIMARY KEY (`peopleid`,`starshipsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_starships`
--

LOCK TABLES `people_starships` WRITE;
/*!40000 ALTER TABLE `people_starships` DISABLE KEYS */;
/*!40000 ALTER TABLE `people_starships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people_vehicles`
--

DROP TABLE IF EXISTS `people_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people_vehicles` (
  `peopleid` int unsigned NOT NULL,
  `speciesid` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_vehicles`
--

LOCK TABLES `people_vehicles` WRITE;
/*!40000 ALTER TABLE `people_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `people_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'starwarsapi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-08 23:58:02
