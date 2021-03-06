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
  PRIMARY KEY (`filmsid`,`planetsid`),
  KEY `films_planets_FK_1` (`planetsid`),
  CONSTRAINT `films_planets_FK` FOREIGN KEY (`filmsid`) REFERENCES `films` (`filmsid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `films_planets_FK_1` FOREIGN KEY (`planetsid`) REFERENCES `planets` (`planetsid`) ON DELETE CASCADE ON UPDATE CASCADE
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
  PRIMARY KEY (`filmsid`,`speciesid`),
  KEY `films_species_FK_1` (`speciesid`),
  CONSTRAINT `films_species_FK` FOREIGN KEY (`filmsid`) REFERENCES `films` (`filmsid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `films_species_FK_1` FOREIGN KEY (`speciesid`) REFERENCES `species` (`speciesid`) ON DELETE CASCADE ON UPDATE CASCADE
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
  PRIMARY KEY (`filmsid`,`starshipsid`),
  KEY `films_starships_FK_1` (`starshipsid`),
  CONSTRAINT `films_starships_FK` FOREIGN KEY (`filmsid`) REFERENCES `films` (`filmsid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `films_starships_FK_1` FOREIGN KEY (`starshipsid`) REFERENCES `starships` (`starshipsid`) ON DELETE CASCADE ON UPDATE CASCADE
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
  PRIMARY KEY (`filmsid`,`vehiclesid`),
  KEY `films_vehicles_FK_1` (`vehiclesid`),
  CONSTRAINT `films_vehicles_FK` FOREIGN KEY (`filmsid`) REFERENCES `films` (`filmsid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `films_vehicles_FK_1` FOREIGN KEY (`vehiclesid`) REFERENCES `vehicles` (`vehiclesid`) ON DELETE CASCADE ON UPDATE CASCADE
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
  PRIMARY KEY (`peopleid`,`filmsid`),
  KEY `people_films_FK_1` (`filmsid`),
  CONSTRAINT `people_films_FK` FOREIGN KEY (`peopleid`) REFERENCES `people` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_films_FK_1` FOREIGN KEY (`filmsid`) REFERENCES `films` (`filmsid`) ON DELETE CASCADE ON UPDATE CASCADE
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
  PRIMARY KEY (`peopleid`,`planetsid`),
  KEY `people_planets_FK_1` (`planetsid`),
  CONSTRAINT `people_planets_FK` FOREIGN KEY (`peopleid`) REFERENCES `people` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_planets_FK_1` FOREIGN KEY (`planetsid`) REFERENCES `planets` (`planetsid`) ON DELETE CASCADE ON UPDATE CASCADE
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
  PRIMARY KEY (`peopleid`,`speciesid`),
  KEY `people_species_FK_1` (`speciesid`),
  CONSTRAINT `people_species_FK` FOREIGN KEY (`peopleid`) REFERENCES `people` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_species_FK_1` FOREIGN KEY (`speciesid`) REFERENCES `species` (`speciesid`) ON DELETE CASCADE ON UPDATE CASCADE
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
  PRIMARY KEY (`peopleid`,`starshipsid`),
  KEY `people_starships_FK_1` (`starshipsid`),
  CONSTRAINT `people_starships_FK` FOREIGN KEY (`peopleid`) REFERENCES `people` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_starships_FK_1` FOREIGN KEY (`starshipsid`) REFERENCES `starships` (`starshipsid`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `vehiclesid` int unsigned NOT NULL,
  KEY `people_vehicles_FK` (`peopleid`),
  KEY `people_vehicles_FK_1` (`vehiclesid`),
  CONSTRAINT `people_vehicles_FK` FOREIGN KEY (`peopleid`) REFERENCES `people` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_vehicles_FK_1` FOREIGN KEY (`vehiclesid`) REFERENCES `vehicles` (`vehiclesid`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `planets`
--

DROP TABLE IF EXISTS `planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planets` (
  `planetsid` int unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `rotational_period` int unsigned DEFAULT NULL,
  `orbital_period` int unsigned DEFAULT NULL,
  `diameter` int unsigned DEFAULT NULL,
  `climate` varchar(100) DEFAULT NULL,
  `gravity` varchar(100) DEFAULT NULL,
  `terrain` varchar(100) DEFAULT NULL,
  `surface_water` int unsigned DEFAULT NULL,
  `population` bigint unsigned DEFAULT NULL,
  `created` varchar(100) DEFAULT NULL,
  `edited` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`planetsid`),
  KEY `planets_planetsid_IDX` (`planetsid`) USING BTREE,
  KEY `planets_name_IDX` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planets`
--

LOCK TABLES `planets` WRITE;
/*!40000 ALTER TABLE `planets` DISABLE KEYS */;
/*!40000 ALTER TABLE `planets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species` (
  `speciesid` int unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `average_height` int unsigned DEFAULT NULL,
  `skin_colors` varchar(100) DEFAULT NULL,
  `hair_colors` varchar(100) DEFAULT NULL,
  `eye_colors` varchar(100) DEFAULT NULL,
  `average_lifespan` int unsigned DEFAULT NULL,
  `homeworld` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `created` varchar(100) DEFAULT NULL,
  `edited` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`speciesid`),
  KEY `species_speciesid_IDX` (`speciesid`) USING BTREE,
  KEY `species_name_IDX` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `starships`
--

DROP TABLE IF EXISTS `starships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starships` (
  `starshipsid` int unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `cost_in_credits` bigint unsigned DEFAULT NULL,
  `length` int unsigned DEFAULT NULL,
  `max_atmosphering_speed` int unsigned DEFAULT NULL,
  `crew` varchar(100) DEFAULT NULL,
  `passengers` int unsigned DEFAULT NULL,
  `cargo_capacity` bigint unsigned DEFAULT NULL,
  `consumables` varchar(100) DEFAULT NULL,
  `hyperdrive_rating` float DEFAULT NULL,
  `MGLT` int unsigned DEFAULT NULL,
  `starship_class` varchar(100) DEFAULT NULL,
  `created` varchar(100) DEFAULT NULL,
  `edited` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`starshipsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starships`
--

LOCK TABLES `starships` WRITE;
/*!40000 ALTER TABLE `starships` DISABLE KEYS */;
/*!40000 ALTER TABLE `starships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehiclesid` int unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `cost_in_credits` bigint unsigned DEFAULT NULL,
  `length` float DEFAULT NULL,
  `max_atmosphering_speed` int unsigned DEFAULT NULL,
  `crew` int unsigned DEFAULT NULL,
  `passengers` int unsigned DEFAULT NULL,
  `cargo_capacity` bigint unsigned DEFAULT NULL,
  `consumables` varchar(100) DEFAULT NULL,
  `vehicle_class` varchar(100) DEFAULT NULL,
  `created` varchar(100) DEFAULT NULL,
  `edited` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`vehiclesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
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

-- Dump completed on 2021-06-09 21:33:50
