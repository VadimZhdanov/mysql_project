-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clubs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stadium` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1,'laudantium','Robbie','East Fred'),(2,'quidem','Celestino','East Virginiehaven'),(3,'animi','Dax','Goldnershire'),(4,'cupiditate','Jaydon','Andreannehaven'),(5,'perferendis','Melvin','Towneburgh'),(6,'iste','Marcellus','West Muhammadfurt'),(7,'quo','Philip','Runolfssonborough'),(8,'molestiae','Porter','Port Jordaneshire'),(9,'hic','Reynold','Lake Godfreyburgh'),(10,'maxime','Darien','Lake Estevan'),(11,'iusto','Jarod','North Dominique'),(12,'ex','Tommie','Quitzonville'),(13,'aut','Don','Svenfort'),(14,'consequuntur','Garret','Leonfurt'),(15,'molestias','Marshall','Leonorburgh'),(16,'culpa','Chaz','Danielton'),(17,'repellat','Koby','Hillsview'),(18,'laudantium','Rafael','South Brett');
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_corners`
--

DROP TABLE IF EXISTS `match_corners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_corners` (
  `match_id` bigint(20) unsigned NOT NULL,
  `hometeam_corners` tinyint(4) DEFAULT NULL,
  `visitorteam_corners` tinyint(4) DEFAULT NULL,
  KEY `match_id` (`match_id`),
  CONSTRAINT `match_corners_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_corners`
--

LOCK TABLES `match_corners` WRITE;
/*!40000 ALTER TABLE `match_corners` DISABLE KEYS */;
INSERT INTO `match_corners` VALUES (1,4,7),(2,11,8),(3,15,7),(4,4,2),(5,10,0),(6,1,8),(7,9,14),(8,2,3),(9,2,3),(10,4,0),(11,9,13),(12,11,14),(13,5,0),(14,3,9),(15,13,13),(16,12,15),(17,6,10),(18,1,11),(19,6,11),(20,0,1),(21,14,1),(22,5,13),(23,9,10),(24,2,6),(25,1,3),(26,6,12),(27,1,13),(28,6,2),(29,9,12),(30,14,8),(31,13,15),(32,2,3),(33,10,4),(34,0,6);
/*!40000 ALTER TABLE `match_corners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_goals`
--

DROP TABLE IF EXISTS `match_goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_goals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` bigint(20) unsigned NOT NULL,
  `scorer_id` bigint(20) unsigned NOT NULL,
  `assist_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `match_id` (`match_id`),
  KEY `scorer_id` (`scorer_id`),
  KEY `assist_id` (`assist_id`),
  CONSTRAINT `match_goals_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`),
  CONSTRAINT `match_goals_ibfk_2` FOREIGN KEY (`scorer_id`) REFERENCES `players` (`id`),
  CONSTRAINT `match_goals_ibfk_3` FOREIGN KEY (`assist_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_goals`
--

LOCK TABLES `match_goals` WRITE;
/*!40000 ALTER TABLE `match_goals` DISABLE KEYS */;
INSERT INTO `match_goals` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10),(11,11,11,11),(12,12,12,12),(13,13,13,13),(14,14,14,14),(15,15,15,15),(16,16,16,16),(17,17,17,17),(18,18,18,18),(19,19,19,19),(20,20,20,20),(21,21,21,21),(22,22,22,22),(23,23,23,23),(24,24,24,24),(25,25,25,25),(26,26,26,26),(27,27,27,27),(28,28,28,28),(29,29,29,29),(30,30,30,30),(31,31,31,31),(32,32,32,32),(33,33,33,33),(34,34,34,34),(35,1,35,35),(36,2,36,36),(37,3,37,37),(38,4,38,38),(39,5,39,39),(40,6,40,40),(41,7,41,41),(42,8,42,42),(43,9,43,43),(44,10,44,44),(45,11,45,45),(46,12,46,46),(47,13,47,47),(48,14,48,48),(49,15,49,49),(50,16,50,50),(51,17,51,51),(52,18,52,52),(53,19,53,53),(54,20,54,54),(55,21,55,55),(56,22,56,56),(57,23,57,57),(58,24,58,58),(59,25,59,59),(60,26,60,60),(61,27,61,61),(62,28,62,62),(63,29,63,63),(64,30,64,64),(65,31,65,65),(66,32,66,66),(67,33,67,67),(68,34,68,68),(69,1,69,69),(70,2,70,70),(71,3,71,71),(72,4,72,72),(73,5,73,73),(74,6,74,74),(75,7,75,75),(76,8,76,76),(77,9,77,77),(78,10,78,78),(79,11,79,79),(80,12,80,80),(81,13,81,81),(82,14,82,82),(83,15,83,83),(84,16,84,84),(85,17,85,85),(86,18,86,86),(87,19,87,87),(88,20,88,88),(89,21,89,89),(90,22,90,90),(91,23,91,91),(92,24,92,92),(93,25,93,93),(94,26,94,94),(95,27,95,95),(96,28,96,96),(97,29,97,97),(98,30,98,98),(99,31,99,99),(100,32,100,100);
/*!40000 ALTER TABLE `match_goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_redcards`
--

DROP TABLE IF EXISTS `match_redcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_redcards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` bigint(20) unsigned NOT NULL,
  `hometeam_red_cards` tinyint(4) DEFAULT NULL,
  `visitorteam_red_cards` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `match_id` (`match_id`),
  CONSTRAINT `match_redcards_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_redcards`
--

LOCK TABLES `match_redcards` WRITE;
/*!40000 ALTER TABLE `match_redcards` DISABLE KEYS */;
INSERT INTO `match_redcards` VALUES (1,1,1,1),(2,2,0,0),(3,3,2,0),(4,4,2,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,2,1),(9,9,2,0),(10,10,1,0),(11,11,0,1),(12,12,0,0),(13,13,1,1),(14,14,0,0),(15,15,1,2),(16,16,1,0),(17,17,0,0),(18,18,2,0),(19,19,0,1),(20,20,2,2),(21,21,0,0),(22,22,2,0),(23,23,0,0),(24,24,1,0),(25,25,1,0),(26,26,0,0),(27,27,0,1),(28,28,2,2),(29,29,1,1),(30,30,0,2),(31,31,2,0),(32,32,0,2),(33,33,2,1),(34,34,0,2);
/*!40000 ALTER TABLE `match_redcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_shots`
--

DROP TABLE IF EXISTS `match_shots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_shots` (
  `match_id` bigint(20) unsigned NOT NULL,
  `hometeam_shots` tinyint(4) DEFAULT NULL,
  `visitorteam_shots` tinyint(4) DEFAULT NULL,
  KEY `match_id` (`match_id`),
  CONSTRAINT `match_shots_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_shots`
--

LOCK TABLES `match_shots` WRITE;
/*!40000 ALTER TABLE `match_shots` DISABLE KEYS */;
INSERT INTO `match_shots` VALUES (1,7,9),(2,2,16),(3,17,16),(4,14,9),(5,18,4),(6,0,1),(7,6,1),(8,14,20),(9,17,12),(10,13,5),(11,7,11),(12,15,15),(13,7,7),(14,20,5),(15,5,9),(16,12,18),(17,20,9),(18,2,14),(19,1,9),(20,4,12),(21,5,14),(22,3,1),(23,1,8),(24,4,11),(25,19,11),(26,15,9),(27,6,19),(28,14,3),(29,17,3),(30,4,17),(31,13,12),(32,15,10),(33,8,12),(34,20,19);
/*!40000 ALTER TABLE `match_shots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_ycards`
--

DROP TABLE IF EXISTS `match_ycards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_ycards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` bigint(20) unsigned NOT NULL,
  `hometeam_yellow_cards` tinyint(4) DEFAULT NULL,
  `visitorteam_yellow_cards` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `match_id` (`match_id`),
  CONSTRAINT `match_ycards_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_ycards`
--

LOCK TABLES `match_ycards` WRITE;
/*!40000 ALTER TABLE `match_ycards` DISABLE KEYS */;
INSERT INTO `match_ycards` VALUES (1,1,4,0),(2,2,2,2),(3,3,0,5),(4,4,3,5),(5,5,1,4),(6,6,1,3),(7,7,1,2),(8,8,0,0),(9,9,1,2),(10,10,1,3),(11,11,2,2),(12,12,5,0),(13,13,0,1),(14,14,0,4),(15,15,0,1),(16,16,4,0),(17,17,5,1),(18,18,4,1),(19,19,1,3),(20,20,0,5),(21,21,1,2),(22,22,4,2),(23,23,3,0),(24,24,0,0),(25,25,0,1),(26,26,5,2),(27,27,1,4),(28,28,5,2),(29,29,3,1),(30,30,3,3),(31,31,5,3),(32,32,0,1),(33,33,4,2),(34,34,1,0);
/*!40000 ALTER TABLE `match_ycards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hometeam_id` bigint(20) unsigned NOT NULL,
  `hometeam_points` tinyint(4) DEFAULT NULL,
  `visitorteam_points` tinyint(4) DEFAULT NULL,
  `visitorteam_id` bigint(20) unsigned NOT NULL,
  `matchday` date DEFAULT NULL,
  `tour` tinyint(4) DEFAULT NULL,
  `referee_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hometeam_id` (`hometeam_id`),
  KEY `visitorteam_id` (`visitorteam_id`),
  KEY `referee_id` (`referee_id`),
  CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`hometeam_id`) REFERENCES `clubs` (`id`),
  CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`visitorteam_id`) REFERENCES `clubs` (`id`),
  CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`referee_id`) REFERENCES `referees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,1,1,0,1,'2008-02-06',1,1),(2,2,3,1,2,'1989-05-21',2,2),(3,3,3,3,3,'2011-10-04',2,3),(4,4,3,1,4,'1996-12-04',2,4),(5,5,3,1,5,'2017-08-04',1,5),(6,6,1,1,6,'2011-05-07',1,6),(7,7,0,0,7,'1983-09-17',1,7),(8,8,0,3,8,'1970-08-17',2,8),(9,9,3,1,9,'1981-07-04',2,9),(10,10,1,1,10,'2016-10-11',1,10),(11,11,0,0,11,'1994-11-16',2,1),(12,12,3,3,12,'2001-08-14',2,2),(13,13,0,3,13,'1976-01-13',2,3),(14,14,1,0,14,'1994-06-01',2,4),(15,15,3,1,15,'1977-04-30',1,5),(16,16,1,0,16,'1975-07-09',1,6),(17,17,0,1,17,'1988-10-25',1,7),(18,18,0,3,18,'1990-01-24',2,8),(19,1,1,1,1,'2006-07-31',2,9),(20,2,1,0,2,'2011-11-04',1,10),(21,3,3,3,3,'1972-12-13',2,1),(22,4,0,0,4,'2015-03-31',2,2),(23,5,0,3,5,'1977-10-02',2,3),(24,6,0,1,6,'1977-10-21',1,4),(25,7,0,0,7,'1991-05-31',1,5),(26,8,1,0,8,'2003-08-13',2,6),(27,9,1,0,9,'2005-05-11',1,7),(28,10,3,1,10,'1973-02-01',1,8),(29,11,1,1,11,'2020-06-11',2,9),(30,12,3,3,12,'2015-02-17',1,10),(31,13,3,1,13,'1981-03-03',1,1),(32,14,1,0,14,'1985-08-03',2,2),(33,15,1,1,15,'2019-10-20',2,3),(34,16,0,1,16,'1980-05-04',2,4);
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_id` bigint(20) unsigned NOT NULL,
  `birthday` date DEFAULT NULL,
  `playing_position` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_number` int(11) DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Mason','Batz','Belgium',1,'2006-04-30',NULL,41,NULL),(2,'Elvis','Hyatt','Mexico',2,'1991-04-30',NULL,19,NULL),(3,'Brant','Howell','Korea',3,'1991-05-31',NULL,76,NULL),(4,'Lane','McGlynn','Bosnia and Herzegovina',4,'1998-11-06',NULL,28,NULL),(5,'Kamron','Rath','Tokelau',5,'1985-01-05',NULL,36,NULL),(6,'Jamaal','Block','Taiwan',6,'1982-12-07',NULL,36,NULL),(7,'Deonte','Cruickshank','Niger',7,'2006-08-04',NULL,23,NULL),(8,'Saul','Koch','Slovakia (Slovak Republic)',8,'1997-05-23',NULL,11,NULL),(9,'Lawrence','Senger','Tuvalu',9,'2008-07-16',NULL,74,NULL),(10,'Jan','Treutel','Namibia',10,'2000-07-21',NULL,80,NULL),(11,'Imani','Bins','Mexico',11,'1989-03-12',NULL,4,NULL),(12,'Joel','Franecki','Korea',12,'1975-08-24',NULL,52,NULL),(13,'Kayden','Leffler','Ghana',13,'2013-05-22',NULL,82,NULL),(14,'Archibald','Koepp','Lesotho',14,'1972-09-25',NULL,55,NULL),(15,'Oral','Balistreri','American Samoa',15,'2005-10-10',NULL,26,NULL),(16,'Green','Kuphal','Chile',16,'2019-08-31',NULL,41,NULL),(17,'Tracey','Quigley','Armenia',17,'2010-04-08',NULL,23,NULL),(18,'Kenny','Gorczany','Niger',18,'1975-01-01',NULL,29,NULL),(19,'Kay','Hamill','Seychelles',1,'1998-01-25',NULL,32,NULL),(20,'Gregory','Heathcote','United Arab Emirates',2,'2002-03-27',NULL,64,NULL),(21,'Wilber','Jaskolski','Luxembourg',3,'1979-10-28',NULL,3,NULL),(22,'Jasmin','Pouros','Kiribati',4,'1973-10-06',NULL,43,NULL),(23,'Raphael','Runte','Vanuatu',5,'1982-06-06',NULL,51,NULL),(24,'Osvaldo','Willms','American Samoa',6,'1988-04-16',NULL,81,NULL),(25,'Alexzander','King','Kyrgyz Republic',7,'2007-08-09',NULL,22,NULL),(26,'Benjamin','Ryan','Singapore',8,'2012-07-17',NULL,22,NULL),(27,'Juwan','Kunde','Saint Martin',9,'2001-06-21',NULL,30,NULL),(28,'Kurtis','Reinger','Czech Republic',10,'1978-06-11',NULL,26,NULL),(29,'Henry','Aufderhar','Gibraltar',11,'2015-10-07',NULL,78,NULL),(30,'Brook','Boehm','Syrian Arab Republic',12,'1992-09-12',NULL,42,NULL),(31,'Candelario','Jaskolski','Egypt',13,'1972-09-26',NULL,34,NULL),(32,'Derek','Botsford','Syrian Arab Republic',14,'1983-02-21',NULL,16,NULL),(33,'Benedict','Hintz','Belize',15,'2012-06-21',NULL,72,NULL),(34,'Kevon','Feest','Nepal',16,'1974-03-18',NULL,45,NULL),(35,'Deron','Towne','Cook Islands',17,'1995-02-11',NULL,92,NULL),(36,'Isai','Bogisich','Ukraine',18,'1992-06-05',NULL,23,NULL),(37,'Cesar','Ebert','Dominican Republic',1,'2017-06-05',NULL,50,NULL),(38,'Garry','Robel','French Southern Territories',2,'1989-12-31',NULL,26,NULL),(39,'Andre','Christiansen','Lesotho',3,'1976-02-26',NULL,34,NULL),(40,'Zachery','Brakus','Finland',4,'1975-06-11',NULL,87,NULL),(41,'Jordon','Zboncak','Germany',5,'2016-11-17',NULL,29,NULL),(42,'Gaston','Dickens','Belarus',6,'2008-09-20',NULL,3,NULL),(43,'Jessie','Grimes','Benin',7,'1988-04-29',NULL,47,NULL),(44,'Merlin','Runte','Ethiopia',8,'1991-11-17',NULL,41,NULL),(45,'Raul','Dietrich','Saint Barthelemy',9,'2011-08-20',NULL,40,NULL),(46,'Adrain','Klein','Chile',10,'2007-02-08',NULL,22,NULL),(47,'Devyn','Lebsack','Morocco',11,'2000-08-30',NULL,22,NULL),(48,'Braeden','Boehm','Fiji',12,'1995-12-26',NULL,52,NULL),(49,'Rusty','Kozey','Faroe Islands',13,'2005-06-02',NULL,84,NULL),(50,'Stefan','Kessler','Netherlands',14,'2004-08-29',NULL,16,NULL),(51,'Eric','Waters','Antarctica (the territory South of 60 deg S)',15,'1980-04-18',NULL,80,NULL),(52,'Mariano','Roberts','Romania',16,'2014-08-06',NULL,87,NULL),(53,'Akeem','Feest','San Marino',17,'2006-11-14',NULL,74,NULL),(54,'Angus','Lowe','Slovenia',18,'1991-09-02',NULL,74,NULL),(55,'Arnoldo','Altenwerth','Ethiopia',1,'2000-03-11',NULL,76,NULL),(56,'Jamel','Medhurst','Andorra',2,'2001-03-30',NULL,48,NULL),(57,'Ariel','Sanford','Luxembourg',3,'2001-10-19',NULL,85,NULL),(58,'Ariel','Beier','Gabon',4,'2017-01-30',NULL,11,NULL),(59,'Kaden','Pagac','Norfolk Island',5,'1980-08-08',NULL,43,NULL),(60,'Korbin','Kirlin','Brazil',6,'1999-02-15',NULL,33,NULL),(61,'Haley','Weber','Latvia',7,'2003-04-27',NULL,8,NULL),(62,'Mitchel','Olson','Cuba',8,'1971-09-10',NULL,39,NULL),(63,'Emiliano','Hayes','Mexico',9,'2014-04-10',NULL,95,NULL),(64,'Jettie','Kohler','Bahamas',10,'1972-06-19',NULL,69,NULL),(65,'Jayce','Considine','Tuvalu',11,'1990-05-11',NULL,76,NULL),(66,'Salvador','Schmeler','Gabon',12,'1985-08-27',NULL,8,NULL),(67,'Kay','Morar','United Arab Emirates',13,'1991-01-02',NULL,40,NULL),(68,'Tavares','Pfeffer','Taiwan',14,'1983-03-27',NULL,88,NULL),(69,'Alfred','Hagenes','Italy',15,'2014-02-18',NULL,75,NULL),(70,'Khalil','Ritchie','Saint Lucia',16,'1993-01-30',NULL,36,NULL),(71,'Edgar','Bode','Turkmenistan',17,'2007-02-13',NULL,88,NULL),(72,'Timmothy','Bergnaum','Spain',18,'1977-02-06',NULL,89,NULL),(73,'Nathanael','King','Tunisia',1,'1977-08-19',NULL,45,NULL),(74,'Bo','Watsica','Jersey',2,'1998-06-17',NULL,87,NULL),(75,'Joseph','Rodriguez','Bahamas',3,'1973-09-18',NULL,43,NULL),(76,'Otho','Douglas','Namibia',4,'2003-03-12',NULL,9,NULL),(77,'Eduardo','Zemlak','Afghanistan',5,'1994-01-31',NULL,95,NULL),(78,'Orlando','Morissette','Eritrea',6,'2002-05-24',NULL,48,NULL),(79,'Jakob','Eichmann','Albania',7,'2004-04-11',NULL,76,NULL),(80,'Geo','Wehner','Liberia',8,'1971-11-02',NULL,78,NULL),(81,'Milan','Hettinger','Niger',9,'1984-09-12',NULL,54,NULL),(82,'Gabe','Cremin','Luxembourg',10,'1983-03-27',NULL,65,NULL),(83,'Stevie','Simonis','Angola',11,'2001-10-12',NULL,22,NULL),(84,'Haskell','Schumm','Eritrea',12,'2020-04-19',NULL,22,NULL),(85,'Derick','Leuschke','Bhutan',13,'1997-08-30',NULL,6,NULL),(86,'Helmer','Emard','United States Virgin Islands',14,'1993-10-11',NULL,63,NULL),(87,'Torrance','Sanford','New Caledonia',15,'1979-12-09',NULL,84,NULL),(88,'Andy','Jerde','Chad',16,'1984-07-18',NULL,1,NULL),(89,'Reed','Harber','Panama',17,'1978-05-03',NULL,87,NULL),(90,'Lukas','Friesen','Dominican Republic',18,'1981-10-03',NULL,19,NULL),(91,'Erin','Cremin','Nauru',1,'2006-12-19',NULL,92,NULL),(92,'Bryon','Harber','Mexico',2,'2007-10-27',NULL,42,NULL),(93,'Bart','Pacocha','Cote d\'Ivoire',3,'2000-10-29',NULL,24,NULL),(94,'Isac','Wuckert','Belgium',4,'1988-12-03',NULL,59,NULL),(95,'Jean','Waelchi','Ethiopia',5,'2000-04-05',NULL,83,NULL),(96,'Samson','Mueller','Haiti',6,'1974-02-27',NULL,46,NULL),(97,'Hugh','Jakubowski','Tanzania',7,'2009-02-12',NULL,17,NULL),(98,'Bobby','McLaughlin','Puerto Rico',8,'1993-02-09',NULL,11,NULL),(99,'Edmond','Farrell','San Marino',9,'2015-08-08',NULL,99,NULL),(100,'Jaylen','Schinner','Comoros',10,'2004-12-22',NULL,17,NULL),(101,'Celestino','Mann','Saint Pierre and Miquelon',11,'1997-08-26',NULL,4,NULL),(102,'Clyde','Herzog','Fiji',12,'1990-09-24',NULL,69,NULL),(103,'Jaylen','Hyatt','Sao Tome and Principe',13,'1999-04-22',NULL,76,NULL),(104,'Rhiannon','Quigley','Oman',14,'2005-10-25',NULL,94,NULL),(105,'Keagan','Stokes','Paraguay',15,'1977-07-09',NULL,45,NULL),(106,'Fernando','Konopelski','Ghana',16,'1994-11-01',NULL,30,NULL),(107,'Gregg','Dietrich','Bouvet Island (Bouvetoya)',17,'2008-02-14',NULL,65,NULL),(108,'Noe','Eichmann','Sierra Leone',18,'1984-05-21',NULL,1,NULL),(109,'Zane','Torphy','Canada',1,'1975-07-12',NULL,42,NULL),(110,'Garrison','Simonis','Belgium',2,'2004-11-26',NULL,50,NULL),(111,'Jaiden','Dach','Singapore',3,'1979-09-08',NULL,82,NULL),(112,'Andrew','Gerlach','Uganda',4,'2007-02-15',NULL,96,NULL),(113,'Darrick','Stehr','Cyprus',5,'2020-05-09',NULL,94,NULL),(114,'Bo','Bruen','Philippines',6,'1990-04-25',NULL,40,NULL),(115,'Merritt','Ferry','Canada',7,'1970-12-22',NULL,19,NULL),(116,'Nathan','Kuhic','Saudi Arabia',8,'1971-06-15',NULL,51,NULL),(117,'Marques','Goodwin','Botswana',9,'2017-06-04',NULL,71,NULL),(118,'Dagmar','McClure','Mauritania',10,'1985-02-08',NULL,80,NULL),(119,'Michale','Kulas','Jersey',11,'1977-01-10',NULL,30,NULL),(120,'Dameon','Feeney','Sudan',12,'1991-11-22',NULL,37,NULL),(121,'Tremaine','Gislason','Algeria',13,'2006-05-03',NULL,20,NULL),(122,'Akeem','Klein','Cambodia',14,'1981-12-27',NULL,92,NULL),(123,'Melany','Bergnaum','Sri Lanka',15,'1987-09-20',NULL,55,NULL),(124,'Kim','Wehner','Cuba',16,'1991-07-08',NULL,62,NULL),(125,'Elvis','Weissnat','Swaziland',17,'2016-08-31',NULL,61,NULL),(126,'Anibal','Morar','Faroe Islands',18,'1989-03-10',NULL,55,NULL),(127,'Dereck','O\'Connell','Czech Republic',1,'1980-12-08',NULL,17,NULL),(128,'Buck','Swaniawski','Ethiopia',2,'1974-03-28',NULL,42,NULL),(129,'Matteo','Dickinson','Burkina Faso',3,'2012-01-25',NULL,7,NULL),(130,'Kay','Haley','French Polynesia',4,'2010-07-29',NULL,11,NULL),(131,'Willis','Rohan','Thailand',5,'2005-12-21',NULL,27,NULL),(132,'Rylan','Lynch','Anguilla',6,'1995-03-23',NULL,45,NULL),(133,'Bradley','Hirthe','Uruguay',7,'1972-12-28',NULL,31,NULL),(134,'Coby','Reichert','Dominica',8,'2006-05-23',NULL,75,NULL),(135,'Rylan','Jakubowski','Saudi Arabia',9,'2016-10-30',NULL,55,NULL),(136,'Carroll','Bailey','Guinea',10,'1984-06-19',NULL,94,NULL),(137,'Sedrick','VonRueden','Hong Kong',11,'2016-04-01',NULL,32,NULL),(138,'Cruz','Wintheiser','India',12,'1987-01-06',NULL,88,NULL),(139,'Evans','Rosenbaum','Mozambique',13,'1970-11-10',NULL,84,NULL),(140,'Korbin','Lesch','Guinea-Bissau',14,'2006-12-03',NULL,20,NULL),(141,'Jaylin','Boyer','Kuwait',15,'1995-06-02',NULL,29,NULL),(142,'Khalid','Kiehn','Greece',16,'2010-10-26',NULL,10,NULL),(143,'Milford','Carter','Malta',17,'1970-10-29',NULL,75,NULL),(144,'Declan','Johns','Netherlands',18,'1973-08-30',NULL,84,NULL),(145,'Gustave','Bruen','Kenya',1,'2012-02-26',NULL,63,NULL),(146,'Travis','Stracke','French Southern Territories',2,'1971-08-19',NULL,46,NULL),(147,'Morton','Schinner','Kuwait',3,'2011-01-10',NULL,63,NULL),(148,'Kip','Kassulke','Macedonia',4,'1992-10-25',NULL,14,NULL),(149,'Oren','Stokes','Ireland',5,'2010-05-23',NULL,62,NULL),(150,'Stone','Hand','French Polynesia',6,'2003-08-28',NULL,45,NULL),(151,'Leonard','Ziemann','Guam',7,'1975-10-12',NULL,68,NULL),(152,'Moshe','Beahan','Tonga',8,'2004-09-29',NULL,68,NULL),(153,'Wayne','Russel','Eritrea',9,'2020-10-13',NULL,20,NULL),(154,'Sebastian','Rau','Gabon',10,'1971-11-23',NULL,85,NULL),(155,'Tod','Auer','Belize',11,'2016-09-29',NULL,99,NULL),(156,'Brendon','Abernathy','Cameroon',12,'1997-06-08',NULL,13,NULL),(157,'Bryon','Huels','Timor-Leste',13,'1984-06-24',NULL,52,NULL),(158,'Lonny','Olson','Turks and Caicos Islands',14,'2011-05-17',NULL,44,NULL),(159,'Davonte','Ratke','Ethiopia',15,'1994-12-22',NULL,7,NULL),(160,'Olen','Parker','United Kingdom',16,'1986-10-13',NULL,3,NULL),(161,'Vinnie','Toy','Nauru',17,'1992-11-10',NULL,98,NULL),(162,'Francis','Mueller','Hungary',18,'1985-09-09',NULL,72,NULL),(163,'Royce','Beier','New Zealand',1,'1991-07-29',NULL,21,NULL),(164,'Obie','Langworth','Montenegro',2,'2014-06-25',NULL,46,NULL),(165,'Keanu','Jerde','Czech Republic',3,'1998-05-27',NULL,11,NULL),(166,'Skylar','Olson','Jamaica',4,'1990-08-23',NULL,17,NULL),(167,'Ferne','Johnston','Dominica',5,'2002-12-18',NULL,64,NULL),(168,'Maverick','Anderson','Venezuela',6,'1978-05-04',NULL,38,NULL),(169,'Braxton','Mosciski','Palestinian Territory',7,'1991-03-05',NULL,53,NULL),(170,'Candido','O\'Kon','Montenegro',8,'1988-03-01',NULL,95,NULL),(171,'Dock','Lind','Hong Kong',9,'1989-07-17',NULL,84,NULL),(172,'Anthony','Senger','American Samoa',10,'2001-03-17',NULL,50,NULL),(173,'Jerad','Rohan','Czech Republic',11,'2004-08-04',NULL,93,NULL),(174,'Antonio','Kihn','Czech Republic',12,'1992-08-26',NULL,5,NULL),(175,'Pierce','Orn','Iceland',13,'2013-07-15',NULL,87,NULL),(176,'Jess','Gottlieb','Congo',14,'2006-06-02',NULL,7,NULL),(177,'Gregorio','Murphy','New Zealand',15,'1976-06-13',NULL,2,NULL),(178,'Kelton','Bauch','Zimbabwe',16,'2005-12-27',NULL,71,NULL),(179,'Gaylord','Romaguera','Montserrat',17,'1977-03-31',NULL,59,NULL),(180,'Malachi','Gleichner','Mali',18,'1976-10-28',NULL,21,NULL),(181,'Trevion','Schuster','India',1,'1987-08-18',NULL,35,NULL),(182,'Daryl','Hodkiewicz','French Southern Territories',2,'1984-05-20',NULL,51,NULL),(183,'Rupert','Okuneva','Iceland',3,'2010-02-21',NULL,50,NULL),(184,'Gaylord','Kertzmann','El Salvador',4,'2014-08-09',NULL,20,NULL),(185,'Ahmad','Kunde','Puerto Rico',5,'1985-01-28',NULL,52,NULL),(186,'Osbaldo','Murazik','Slovakia (Slovak Republic)',6,'1978-12-10',NULL,93,NULL),(187,'Hayley','Kessler','Slovenia',7,'1989-10-06',NULL,88,NULL),(188,'Antone','Welch','Mayotte',8,'2002-12-22',NULL,49,NULL),(189,'Saul','Zulauf','Panama',9,'1986-07-25',NULL,1,NULL),(190,'Randi','Kshlerin','Djibouti',10,'2006-08-28',NULL,21,NULL),(191,'Winston','Ortiz','Iraq',11,'2015-03-13',NULL,63,NULL),(192,'Alejandrin','Littel','Papua New Guinea',12,'1990-04-10',NULL,85,NULL),(193,'Jordan','Douglas','Latvia',13,'1991-10-20',NULL,52,NULL),(194,'Efrain','Bauch','Tanzania',14,'1979-08-18',NULL,94,NULL),(195,'Peter','McLaughlin','Guernsey',15,'2008-06-10',NULL,79,NULL),(196,'Eleazar','Krajcik','Netherlands',16,'1987-11-05',NULL,53,NULL),(197,'Orville','Ward','Sudan',17,'1993-03-31',NULL,37,NULL),(198,'Bart','Rau','Chad',18,'1988-09-01',NULL,26,NULL),(199,'Leland','Schmitt','Senegal',1,'1991-04-30',NULL,84,NULL),(200,'Jaylen','Koepp','Faroe Islands',2,'2006-05-08',NULL,5,NULL),(201,'Adrian','Jakubowski','China',3,'1997-11-24',NULL,15,NULL),(202,'Ike','Konopelski','Ireland',4,'2020-07-26',NULL,48,NULL),(203,'Kadin','Bashirian','Italy',5,'1982-06-20',NULL,73,NULL),(204,'Johnpaul','Schamberger','Monaco',6,'2012-12-24',NULL,35,NULL),(205,'Jovan','Gutkowski','Trinidad and Tobago',7,'1995-03-15',NULL,56,NULL),(206,'Jamar','Cummerata','Croatia',8,'2002-05-23',NULL,35,NULL),(207,'Anastacio','Schroeder','South Georgia and the South Sandwich Islands',9,'2012-01-26',NULL,29,NULL),(208,'Jayce','Schneider','Benin',10,'2001-07-16',NULL,52,NULL),(209,'Oswald','Metz','Montserrat',11,'2000-07-13',NULL,19,NULL),(210,'Justus','Heidenreich','Bolivia',12,'2018-07-13',NULL,3,NULL),(211,'Bryon','Altenwerth','Jersey',13,'1971-01-02',NULL,90,NULL),(212,'Alex','Kling','Latvia',14,'2013-09-10',NULL,47,NULL),(213,'Kraig','Cummings','Belgium',15,'1978-08-10',NULL,74,NULL),(214,'Stephen','Bednar','Hong Kong',16,'2002-05-26',NULL,84,NULL),(215,'Cody','Renner','Korea',17,'2011-03-19',NULL,91,NULL),(216,'Milan','Durgan','New Zealand',18,'1995-02-08',NULL,47,NULL),(217,'Ian','Effertz','British Indian Ocean Territory (Chagos Archipelago)',1,'2005-01-26',NULL,29,NULL),(218,'Dewitt','Considine','Mali',2,'2018-06-15',NULL,32,NULL),(219,'Brain','Eichmann','French Guiana',3,'2011-02-20',NULL,5,NULL),(220,'Grover','Murray','Turkey',4,'1996-02-26',NULL,78,NULL),(221,'Alf','Heller','Niue',5,'1998-02-12',NULL,50,NULL),(222,'Jett','Ruecker','Iraq',6,'1984-07-20',NULL,6,NULL),(223,'Granville','Howell','Norway',7,'2005-06-13',NULL,69,NULL),(224,'Darryl','Lindgren','Palestinian Territory',8,'1998-11-23',NULL,63,NULL),(225,'Scottie','Howell','Uzbekistan',9,'1980-03-06',NULL,79,NULL),(226,'Harley','Balistreri','Vietnam',10,'1984-01-10',NULL,18,NULL),(227,'Albert','Pacocha','Christmas Island',11,'1999-08-05',NULL,47,NULL),(228,'Grayson','Stehr','Niger',12,'2000-05-31',NULL,56,NULL),(229,'Jermey','Howe','Peru',13,'1974-11-02',NULL,78,NULL),(230,'Zackery','Torphy','Pitcairn Islands',14,'2004-06-23',NULL,94,NULL),(231,'Diego','Howell','Heard Island and McDonald Islands',15,'2004-04-10',NULL,49,NULL),(232,'Jamar','Schroeder','United Arab Emirates',16,'2003-10-15',NULL,40,NULL),(233,'Alberto','Ritchie','Mali',17,'1979-02-28',NULL,95,NULL),(234,'Dallas','Smith','Syrian Arab Republic',18,'1978-02-10',NULL,43,NULL),(235,'Dominic','Eichmann','Iran',1,'2017-08-29',NULL,28,NULL),(236,'Darien','Boehm','Sudan',2,'2011-07-18',NULL,10,NULL),(237,'Kennedi','Harber','Puerto Rico',3,'1986-09-21',NULL,29,NULL),(238,'Olin','Koss','Moldova',4,'2004-03-30',NULL,95,NULL),(239,'Rashawn','Johnston','Marshall Islands',5,'2011-12-27',NULL,82,NULL),(240,'Miguel','Skiles','Ireland',6,'2016-03-18',NULL,94,NULL),(241,'Deshaun','Stiedemann','Montenegro',7,'1987-07-05',NULL,40,NULL),(242,'Trace','Jacobs','Denmark',8,'1971-03-17',NULL,5,NULL),(243,'Alfonso','Willms','Cayman Islands',9,'1999-06-29',NULL,27,NULL),(244,'Kris','Littel','Bulgaria',10,'2016-11-30',NULL,46,NULL),(245,'Keaton','Nitzsche','Svalbard & Jan Mayen Islands',11,'2019-09-14',NULL,9,NULL),(246,'Jett','Kautzer','Yemen',12,'2002-11-20',NULL,65,NULL),(247,'Garett','Farrell','Austria',13,'2020-08-13',NULL,38,NULL),(248,'Emiliano','Batz','Angola',14,'1973-11-11',NULL,53,NULL),(249,'Constantin','Murray','Ireland',15,'1986-10-12',NULL,9,NULL),(250,'Kyle','Champlin','Madagascar',16,'1991-01-03',NULL,71,NULL),(251,'Newell','Koss','Malawi',17,'1972-02-15',NULL,65,NULL),(252,'Jacey','Hamill','Vanuatu',18,'1984-04-15',NULL,37,NULL),(253,'Ethan','Waters','Paraguay',1,'2016-04-12',NULL,69,NULL),(254,'Buck','Lockman','Western Sahara',2,'2005-06-10',NULL,92,NULL),(255,'Monserrate','Lowe','Saint Pierre and Miquelon',3,'2011-10-20',NULL,8,NULL),(256,'Braulio','Ritchie','Ecuador',4,'2018-07-13',NULL,68,NULL),(257,'Erich','Hudson','Kuwait',5,'2005-03-21',NULL,86,NULL),(258,'Dudley','Gerlach','Mauritius',6,'2015-05-15',NULL,63,NULL),(259,'Johnny','Robel','Libyan Arab Jamahiriya',7,'1982-04-21',NULL,52,NULL),(260,'Allen','Rowe','Peru',8,'1975-12-29',NULL,18,NULL),(261,'Kenyon','Reichel','Austria',9,'1985-09-30',NULL,89,NULL),(262,'Sigmund','Macejkovic','Greenland',10,'2019-02-11',NULL,50,NULL),(263,'Emiliano','Morar','Hong Kong',11,'1980-02-12',NULL,56,NULL),(264,'Nelson','Crooks','Iran',12,'1981-02-26',NULL,71,NULL),(265,'Jamar','Tremblay','Seychelles',13,'1990-10-19',NULL,46,NULL),(266,'Coby','Padberg','British Indian Ocean Territory (Chagos Archipelago)',14,'2009-08-08',NULL,43,NULL),(267,'Austin','Trantow','Grenada',15,'2020-11-10',NULL,37,NULL),(268,'Cletus','Kris','United States Minor Outlying Islands',16,'1979-11-28',NULL,11,NULL),(269,'Michael','Beer','India',17,'2000-06-16',NULL,69,NULL),(270,'Delmer','Daugherty','Papua New Guinea',18,'2009-06-09',NULL,22,NULL),(271,'Hobart','Kihn','Jordan',1,'1998-09-10',NULL,20,NULL),(272,'Ken','Bayer','Sudan',2,'1990-11-25',NULL,96,NULL),(273,'Austin','Casper','Andorra',3,'1975-06-28',NULL,62,NULL),(274,'Trevion','Howe','Djibouti',4,'1984-07-21',NULL,10,NULL),(275,'Justus','Legros','Philippines',5,'1987-09-14',NULL,20,NULL),(276,'Ricardo','Barton','Paraguay',6,'1979-09-19',NULL,68,NULL),(277,'Jefferey','Nikolaus','Syrian Arab Republic',7,'2009-03-08',NULL,60,NULL),(278,'Gunnar','Bergnaum','Sweden',8,'2013-07-13',NULL,78,NULL),(279,'Roy','Romaguera','Namibia',9,'2017-01-17',NULL,30,NULL),(280,'Stone','Howe','Ghana',10,'2001-06-08',NULL,38,NULL),(281,'Daryl','Harris','South Africa',11,'2007-08-28',NULL,99,NULL),(282,'Tomas','Schmidt','Saudi Arabia',12,'1988-02-21',NULL,70,NULL),(283,'Isom','Kshlerin','Togo',13,'2016-05-08',NULL,94,NULL),(284,'Diamond','Rogahn','Mongolia',14,'1984-02-12',NULL,25,NULL),(285,'Kenton','Satterfield','Greece',15,'1991-05-05',NULL,76,NULL),(286,'Halle','Reilly','Spain',16,'1971-01-10',NULL,76,NULL),(287,'Mckenzie','Mitchell','Saint Vincent and the Grenadines',17,'1996-08-30',NULL,27,NULL),(288,'Albert','Towne','Svalbard & Jan Mayen Islands',18,'1972-05-17',NULL,77,NULL),(289,'Jaydon','Schmidt','Faroe Islands',1,'2016-02-19',NULL,98,NULL),(290,'Jeffry','Wisozk','Dominican Republic',2,'1977-09-14',NULL,5,NULL),(291,'Brando','Reichel','Sierra Leone',3,'1991-12-11',NULL,11,NULL),(292,'German','Heaney','Zambia',4,'2008-03-05',NULL,71,NULL),(293,'Amari','Gaylord','Nauru',5,'2009-08-14',NULL,43,NULL),(294,'Raymundo','Monahan','Syrian Arab Republic',6,'1974-02-04',NULL,54,NULL),(295,'Jerod','Stracke','Gibraltar',7,'1975-10-24',NULL,22,NULL),(296,'Brett','Dickinson','India',8,'2007-07-26',NULL,37,NULL),(297,'Jermain','Steuber','Qatar',9,'1981-08-13',NULL,25,NULL),(298,'Sigmund','Wuckert','Cook Islands',10,'2005-05-21',NULL,90,NULL),(299,'Horacio','Huels','Peru',11,'2008-08-10',NULL,38,NULL),(300,'Felton','Mann','Ireland',12,'2013-06-10',NULL,13,NULL),(301,'Rickey','Littel','Cameroon',13,'2008-07-07',NULL,68,NULL),(302,'Tod','Schoen','Greece',14,'1987-02-01',NULL,18,NULL),(303,'Horace','Padberg','Macao',15,'2003-12-23',NULL,17,NULL),(304,'Terrill','Walker','Angola',16,'1974-05-10',NULL,50,NULL),(305,'Henry','Howe','Myanmar',17,'2004-11-15',NULL,6,NULL),(306,'Luciano','Brekke','Qatar',18,'2015-06-22',NULL,36,NULL),(307,'Jace','Kulas','Macao',1,'2006-05-10',NULL,54,NULL),(308,'Abner','Gleichner','British Virgin Islands',2,'2014-11-19',NULL,33,NULL),(309,'Rhett','Daniel','Guyana',3,'2015-04-30',NULL,85,NULL),(310,'Emory','Lockman','Holy See (Vatican City State)',4,'1997-10-15',NULL,94,NULL),(311,'Shane','Lesch','Lithuania',5,'1977-12-26',NULL,92,NULL),(312,'Herbert','Zboncak','Hungary',6,'2018-01-26',NULL,90,NULL),(313,'Lon','Zboncak','Norfolk Island',7,'1993-03-11',NULL,16,NULL),(314,'Davon','Heathcote','Tokelau',8,'2017-10-10',NULL,13,NULL),(315,'Gene','Schuppe','Slovenia',9,'1975-03-15',NULL,43,NULL),(316,'Murphy','Legros','Hong Kong',10,'2001-02-05',NULL,99,NULL),(317,'Jackson','Fisher','San Marino',11,'2017-12-19',NULL,63,NULL),(318,'Hubert','Green','Kenya',12,'1971-01-20',NULL,91,NULL),(319,'Webster','Ledner','Turkey',13,'1993-12-13',NULL,32,NULL),(320,'Gianni','Buckridge','Solomon Islands',14,'2009-05-14',NULL,41,NULL),(321,'Claud','Schiller','Kenya',15,'1998-07-14',NULL,60,NULL),(322,'Marcelino','Runolfsson','Sao Tome and Principe',16,'1976-12-31',NULL,34,NULL),(323,'Zachariah','Rosenbaum','Niger',17,'2004-10-04',NULL,4,NULL),(324,'Jordyn','Beier','Grenada',18,'2003-03-29',NULL,31,NULL),(325,'Nicola','Walter','Tunisia',1,'1988-05-27',NULL,6,NULL),(326,'Deshawn','Jacobs','Pakistan',2,'2009-01-21',NULL,6,NULL),(327,'Stanford','Heathcote','Lebanon',3,'2020-01-05',NULL,68,NULL),(328,'Rex','Halvorson','Kuwait',4,'2003-01-30',NULL,78,NULL),(329,'Geovanny','Stanton','Guernsey',5,'1995-02-02',NULL,90,NULL),(330,'Benjamin','Weimann','Lithuania',6,'1989-05-01',NULL,29,NULL),(331,'Nat','Rogahn','Syrian Arab Republic',7,'1983-03-18',NULL,88,NULL),(332,'Harold','Greenholt','Germany',8,'1997-12-25',NULL,9,NULL),(333,'Xzavier','Kerluke','Cocos (Keeling) Islands',9,'1981-02-02',NULL,79,NULL),(334,'Julian','Bednar','Suriname',10,'1979-06-20',NULL,45,NULL),(335,'Jermain','Jast','Chad',11,'1998-05-25',NULL,48,NULL),(336,'Salvador','Flatley','Costa Rica',12,'2017-02-04',NULL,1,NULL),(337,'Jorge','Mertz','Guinea',13,'1985-07-10',NULL,69,NULL),(338,'Henri','Kassulke','Reunion',14,'2016-05-06',NULL,17,NULL),(339,'Ruben','Hane','Bermuda',15,'2007-11-14',NULL,96,NULL),(340,'Irving','Mosciski','El Salvador',16,'2017-05-21',NULL,95,NULL),(341,'Norris','Rohan','Mauritius',17,'1981-09-12',NULL,75,NULL),(342,'Axel','Barrows','Jersey',18,'2004-10-13',NULL,62,NULL),(343,'Mohammed','Klocko','Saint Martin',1,'2001-12-23',NULL,63,NULL),(344,'Alexzander','Feil','Indonesia',2,'1970-04-28',NULL,11,NULL),(345,'Rowan','Littel','Bolivia',3,'1983-12-04',NULL,5,NULL),(346,'Clement','Ferry','Namibia',4,'1973-09-28',NULL,32,NULL),(347,'Antwan','Mayert','Mauritius',5,'2010-12-01',NULL,14,NULL),(348,'Justyn','Gutmann','Israel',6,'1999-02-28',NULL,26,NULL),(349,'Destin','Hettinger','Armenia',7,'1976-11-07',NULL,37,NULL),(350,'Lamar','Schroeder','Saint Barthelemy',8,'2008-01-09',NULL,76,NULL),(351,'Triston','Brakus','Benin',9,'1983-09-21',NULL,88,NULL),(352,'Rodrigo','Considine','Qatar',10,'1999-09-27',NULL,79,NULL),(353,'Nathanael','Armstrong','Egypt',11,'1999-04-09',NULL,21,NULL),(354,'Loyal','Tromp','Turkmenistan',12,'1979-05-08',NULL,52,NULL),(355,'Consuelo','Hamill','Palau',13,'1992-07-05',NULL,61,NULL),(356,'Alexander','Kovacek','French Polynesia',14,'2007-08-15',NULL,3,NULL),(357,'Rickey','Wiegand','Central African Republic',15,'1973-05-20',NULL,79,NULL),(358,'Payton','Schaefer','Western Sahara',16,'2002-04-11',NULL,46,NULL),(359,'Micah','Hintz','Kyrgyz Republic',17,'2017-03-24',NULL,82,NULL),(360,'Ansley','Maggio','Serbia',18,'1990-04-07',NULL,13,NULL),(361,'Bertha','Emard','Samoa',1,'2000-08-10',NULL,37,NULL),(362,'Cristian','Rodriguez','Central African Republic',2,'2002-10-19',NULL,85,NULL),(363,'Chadrick','Oberbrunner','Guernsey',3,'2011-12-13',NULL,57,NULL),(364,'Jermey','Bergnaum','Iraq',4,'1971-08-14',NULL,46,NULL),(365,'Mauricio','Mraz','Turkey',5,'1996-01-19',NULL,81,NULL),(366,'Jacinto','Hermann','Georgia',6,'1986-11-19',NULL,83,NULL),(367,'Kale','Wyman','Palestinian Territory',7,'2004-11-30',NULL,44,NULL),(368,'Hiram','Kuvalis','Peru',8,'2011-01-19',NULL,81,NULL),(369,'Antwan','Schroeder','Georgia',9,'1994-12-14',NULL,41,NULL),(370,'Florencio','Hayes','Pakistan',10,'2003-07-22',NULL,6,NULL),(371,'Jermain','Homenick','Cape Verde',11,'1970-11-14',NULL,70,NULL),(372,'Orion','Hartmann','Namibia',12,'2012-06-20',NULL,46,NULL),(373,'Angelo','Lockman','Cameroon',13,'2001-07-26',NULL,42,NULL),(374,'Halle','Spencer','Germany',14,'1983-10-20',NULL,64,NULL),(375,'Abel','Hagenes','Kyrgyz Republic',15,'1991-11-29',NULL,9,NULL),(376,'Oswald','McKenzie','United Kingdom',16,'2012-04-27',NULL,93,NULL),(377,'Aurelio','Kuhn','Bulgaria',17,'1989-02-13',NULL,93,NULL),(378,'Mohammad','Kshlerin','Canada',18,'1989-01-29',NULL,99,NULL),(379,'Kayden','Senger','United States of America',1,'1972-11-11',NULL,68,NULL),(380,'Jonathan','Upton','Morocco',2,'2009-09-29',NULL,26,NULL),(381,'Duncan','Mertz','Martinique',3,'1983-09-07',NULL,2,NULL),(382,'Gennaro','Hoppe','Azerbaijan',4,'1998-10-17',NULL,54,NULL),(383,'Sigmund','Daniel','Nigeria',5,'2000-03-09',NULL,37,NULL),(384,'Pablo','Hermann','Christmas Island',6,'1994-01-24',NULL,20,NULL),(385,'Andre','Lowe','Tunisia',7,'2008-03-30',NULL,98,NULL),(386,'Graham','Towne','Pitcairn Islands',8,'2012-03-10',NULL,89,NULL),(387,'Olin','Mertz','Rwanda',9,'1976-05-10',NULL,69,NULL),(388,'Marlon','Kuhic','India',10,'2011-05-21',NULL,1,NULL),(389,'Andre','Armstrong','Grenada',11,'1972-03-14',NULL,71,NULL),(390,'Willis','Gottlieb','Luxembourg',12,'1985-04-08',NULL,30,NULL),(391,'Cesar','Shields','Singapore',13,'1997-11-07',NULL,34,NULL),(392,'Maxime','Deckow','Netherlands Antilles',14,'1977-09-26',NULL,23,NULL),(393,'General','Hansen','Taiwan',15,'1978-02-18',NULL,58,NULL),(394,'Nikko','Lynch','Kyrgyz Republic',16,'2014-05-08',NULL,59,NULL),(395,'Maxime','Krajcik','Morocco',17,'1981-12-19',NULL,96,NULL),(396,'Cristobal','Johnston','Trinidad and Tobago',18,'2003-11-28',NULL,87,NULL),(397,'Herminio','Bednar','San Marino',1,'2008-10-04',NULL,72,NULL),(398,'Herminio','Sporer','Afghanistan',2,'1987-03-22',NULL,88,NULL),(399,'Demarcus','Kirlin','France',3,'1972-06-09',NULL,90,NULL),(400,'Cleve','Ruecker','Brunei Darussalam',4,'1997-09-02',NULL,70,NULL);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players_redcards`
--

DROP TABLE IF EXISTS `players_redcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players_redcards` (
  `redcard_id` bigint(20) unsigned NOT NULL,
  `player_id` bigint(20) unsigned NOT NULL,
  KEY `redcard_id` (`redcard_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `players_redcards_ibfk_1` FOREIGN KEY (`redcard_id`) REFERENCES `match_redcards` (`id`),
  CONSTRAINT `players_redcards_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players_redcards`
--

LOCK TABLES `players_redcards` WRITE;
/*!40000 ALTER TABLE `players_redcards` DISABLE KEYS */;
INSERT INTO `players_redcards` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(1,35),(2,36),(3,37),(4,38),(5,39),(6,40),(7,41),(8,42),(9,43),(10,44),(11,45),(12,46),(13,47),(14,48),(15,49),(16,50),(17,51),(18,52),(19,53),(20,54),(21,55),(22,56),(23,57),(24,58),(25,59),(26,60),(27,61),(28,62),(29,63),(30,64),(31,65),(32,66),(33,67),(34,68),(1,69),(2,70),(3,71),(4,72),(5,73),(6,74),(7,75),(8,76),(9,77),(10,78),(11,79),(12,80),(13,81),(14,82),(15,83),(16,84),(17,85),(18,86),(19,87),(20,88),(21,89),(22,90),(23,91),(24,92),(25,93),(26,94),(27,95),(28,96),(29,97),(30,98),(31,99),(32,100);
/*!40000 ALTER TABLE `players_redcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players_ycards`
--

DROP TABLE IF EXISTS `players_ycards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players_ycards` (
  `ycard_id` bigint(20) unsigned NOT NULL,
  `player_id` bigint(20) unsigned NOT NULL,
  KEY `ycard_id` (`ycard_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `players_ycards_ibfk_1` FOREIGN KEY (`ycard_id`) REFERENCES `match_ycards` (`id`),
  CONSTRAINT `players_ycards_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players_ycards`
--

LOCK TABLES `players_ycards` WRITE;
/*!40000 ALTER TABLE `players_ycards` DISABLE KEYS */;
INSERT INTO `players_ycards` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(1,35),(2,36),(3,37),(4,38),(5,39),(6,40),(7,41),(8,42),(9,43),(10,44),(11,45),(12,46),(13,47),(14,48),(15,49),(16,50),(17,51),(18,52),(19,53),(20,54),(21,55),(22,56),(23,57),(24,58),(25,59),(26,60),(27,61),(28,62),(29,63),(30,64),(31,65),(32,66),(33,67),(34,68),(1,69),(2,70),(3,71),(4,72),(5,73),(6,74),(7,75),(8,76),(9,77),(10,78),(11,79),(12,80),(13,81),(14,82),(15,83),(16,84),(17,85),(18,86),(19,87),(20,88),(21,89),(22,90),(23,91),(24,92),(25,93),(26,94),(27,95),(28,96),(29,97),(30,98),(31,99),(32,100);
/*!40000 ALTER TABLE `players_ycards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referees`
--

DROP TABLE IF EXISTS `referees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referees`
--

LOCK TABLES `referees` WRITE;
/*!40000 ALTER TABLE `referees` DISABLE KEYS */;
INSERT INTO `referees` VALUES (1,'Nathanael','Oberbrunner'),(2,'Kamron','Mayert'),(3,'Deangelo','Koelpin'),(4,'Alexandrea','Kozey'),(5,'Betsy','Kuvalis'),(6,'Aiden','Vandervort'),(7,'Kiley','Wunsch'),(8,'Magali','Denesik'),(9,'Stephany','Pollich'),(10,'Myron','Koepp');
/*!40000 ALTER TABLE `referees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-01  5:24:44
