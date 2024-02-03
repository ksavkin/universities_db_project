-- Server version	8.2.0

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
-- Table structure for table `Cities`
--

DROP TABLE IF EXISTS `Cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cities` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `average_living_cost` int DEFAULT NULL,
  `state_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `States` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cities`
--

LOCK TABLES `Cities` WRITE;
/*!40000 ALTER TABLE `Cities` DISABLE KEYS */;
INSERT INTO `Cities` VALUES (1,'Los Angeles',3500,1),(2,'New York City',4000,2),(3,'London',2500,3),(4,'Toronto',3100,4),(5,'Brisbane',2600,5),(6,'Munich',2900,6),(7,'Paris',2800,7),(8,'Tokyo',2500,8),(9,'Seoul',1800,9),(10,'Amsterdam',2900,10),(11,'Singapore',3200,11),(12,'Chicago',1400,12);
/*!40000 ALTER TABLE `Cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Costs`
--

DROP TABLE IF EXISTS `Costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Costs` (
  `id` int NOT NULL,
  `year` int DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `university_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `universitie_id` (`university_id`),
  CONSTRAINT `costs_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `Universities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Costs`
--

LOCK TABLES `Costs` WRITE;
/*!40000 ALTER TABLE `Costs` DISABLE KEYS */;
INSERT INTO `Costs` VALUES (1,2022,32000,1),(2,2022,55000,2),(3,2022,28000,3),(4,2022,37000,4),(5,2022,30000,5),(6,2022,32000,6),(7,2022,30000,7),(8,2022,45000,8),(9,2022,26000,9),(10,2022,35000,10),(11,2022,32000,11),(12,2021,24000,1),(13,2021,27000,2),(14,2021,19000,3),(15,2021,25000,4),(16,2021,28000,5),(17,2021,30000,6),(18,2021,22000,7),(19,2021,26000,8),(20,2021,20000,9),(21,2021,28000,10),(23,2023,26000,1),(24,2023,29000,2),(25,2023,21000,3),(26,2023,27000,4),(27,2023,30000,5),(28,2023,32000,6),(29,2023,24000,7),(30,2023,28000,8),(31,2023,22000,9),(32,2023,29000,10),(33,2023,28950,11),(34,2023,30000,12),(35,2023,10000,13),(36,2023,30000,24);
/*!40000 ALTER TABLE `Costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Countries`
--

DROP TABLE IF EXISTS `Countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Countries` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Countries`
--

LOCK TABLES `Countries` WRITE;
/*!40000 ALTER TABLE `Countries` DISABLE KEYS */;
INSERT INTO `Countries` VALUES (1,'United States'),(2,'United Kingdom'),(3,'Canada'),(4,'Australia'),(5,'Germany'),(6,'France'),(7,'Japan'),(8,'South Korea'),(9,'Netherlands'),(10,'Singapore');
/*!40000 ALTER TABLE `Countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QS_raiting`
--

DROP TABLE IF EXISTS `QS_raiting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QS_raiting` (
  `id` int NOT NULL,
  `year` int DEFAULT NULL,
  `qs_raiting` int DEFAULT NULL,
  `university_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `universitie_id` (`university_id`),
  CONSTRAINT `qs_raiting_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `Universities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QS_raiting`
--

LOCK TABLES `QS_raiting` WRITE;
/*!40000 ALTER TABLE `QS_raiting` DISABLE KEYS */;
INSERT INTO `QS_raiting` VALUES (1,2022,92,1),(2,2022,96,2),(3,2022,89,3),(4,2022,93,4),(5,2022,91,5),(6,2022,94,6),(7,2022,91,7),(8,2022,95,8),(9,2022,88,9),(10,2022,92,10),(11,2022,93,11),(12,2021,87,1),(13,2021,95,2),(14,2021,80,3),(15,2021,89,4),(16,2021,92,5),(17,2021,94,6),(18,2021,88,7),(19,2021,93,8),(20,2021,85,9),(21,2021,91,10),(22,2021,96,11),(23,2023,90,1),(24,2023,97,2),(25,2023,82,3),(26,2023,88,4),(27,2023,95,5),(28,2023,98,6),(29,2023,89,7),(30,2023,94,8),(31,2023,87,9),(32,2023,96,10),(33,2023,99,11),(34,2023,444,23),(35,2023,145,24);
/*!40000 ALTER TABLE `QS_raiting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Requirements`
--

DROP TABLE IF EXISTS `Requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Requirements` (
  `id` int NOT NULL,
  `IELTS` float DEFAULT NULL,
  `TOEFL` int DEFAULT NULL,
  `SAT` int DEFAULT NULL,
  `Duolingo` int DEFAULT NULL,
  `GPA` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `requirements_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Universities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Requirements`
--

LOCK TABLES `Requirements` WRITE;
/*!40000 ALTER TABLE `Requirements` DISABLE KEYS */;
INSERT INTO `Requirements` VALUES (1,7.5,105,1450,120,3.8),(2,7,100,1400,115,3.9),(3,7.5,110,1500,115,3.7),(4,7,95,1350,110,3.8),(5,7,100,1400,115,3.9),(6,7.5,105,1450,120,3.8),(7,7,100,1400,115,3.9),(8,7.5,110,1500,115,3.7),(9,7,95,1350,110,3.8),(10,7.5,105,1450,120,3.8),(11,7,100,1400,115,3.9),(12,7.5,100,1350,120,3.8),(13,6.5,90,1250,105,3.6),(14,7,95,1300,110,3.7),(15,7.5,100,1350,120,3.8),(16,6,80,1200,95,3.5),(17,7,95,1300,110,3.7),(18,8,110,1450,130,4.0),(19,6.5,90,1250,105,3.6),(20,7.5,100,1350,120,3.8),(21,6,80,1200,95,3.5),(22,NULL,110,1450,130,4.0),(23,6,90,1200,109,4.0),(24,5.5,80,1200,105,4.2);
/*!40000 ALTER TABLE `Requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reviews`
--

DROP TABLE IF EXISTS `Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reviews` (
  `id` int NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `stars` int DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `university_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `universitie_id` (`university_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `Universities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
INSERT INTO `Reviews` VALUES (1,'Exceptional faculty and diverse programs.',5,'MeganTaylor','2023-01-15',1),(2,'Challenging but rewarding academic environment.',4,'Ryan Davis','2023-01-18',2),(3,'Cutting-edge research opportunities.',5,'Ethan Clark','2023-02-01',3),(4,'Great campus, but some courses need improvement.',3,'Lee Ak','2023-02-10',4),(5,'Vibrant campus life and supportive community.',5,'Abdulla','2023-02-25',2),(6,'Highly recommended for international students.',4,'Global Explorer','2023-03-05',5),(7,'Incredible cultural experience in the heart of Paris.',5,'Teckaz','2023-03-15',7),(8,'Cutting-edge research facilities and vibrant city life.',4,'Rella Wr','2023-03-18',8),(9,'Strong emphasis on academic excellence and global perspectives.',5,'Noah_thinker','2023-03-22',9),(10,'Beautiful campus and diverse student community.',4,'NatureLover','2023-04-01',10),(11,'Top-notch education and opportunities in a global city.',5,'Reader_2','2023-04-10',11),(12,'A good place for learning and personal growth. The campus community is supportive.',4,'PersonalGrowth','2023-10-14',9),(13,'Impressive facilities and innovative teaching methods. Proud to be an alumnus.',5,'ProudAlumnus','2023-11-30',10),(14,'The university provided a solid foundation for my career. Grateful for the experience.',5,'GratefulGraduate','2023-12-22',11),(15,'Enjoyed my time at this university. Great campus and friendly community.',4,'HappyExplorer','2024-01-15',1),(16,'Challenging courses and supportive faculty. Learned a lot during my studies.',5,'DiligentLearner','2024-02-10',2),(17,'The university offers a diverse range of programs. Met interesting people.',4,'DiverseExplorer','2024-03-05',3),(18,'Engaging extracurricular activities and helpful staff. Had a positive experience.',5,'PositiveExperience','2024-04-20',4),(19,'Top-notch research opportunities. Collaborated with brilliant minds on projects.',5,'ResearchCollaborator','2024-05-12',5),(20,'The university fosters a supportive and inclusive environment. Recommend it!',5,'InclusiveEnvironment','2024-06-08',6),(21,'Enjoyed participating in various clubs and events. A vibrant campus community.',4,'VibrantCommunity','2024-07-25',7),(22,'Knowledgeable professors and well-structured courses. Prepared me for my career.',5,'CareerPrepared','2024-08-18',8),(23,'Personalized learning experience. Received valuable mentorship from professors.',4,'MentorshipRecipient','2024-09-14',9),(24,'Innovative teaching methods and modern facilities. A forward-thinking institution.',5,'ForwardThinker','2024-10-30',10),(25,'Great networking opportunities. The university has a strong alumni network.',5,'NetworkingPro','2024-11-22',11);
/*!40000 ALTER TABLE `Reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `States`
--

DROP TABLE IF EXISTS `States`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `States` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `Countries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `States`
--

LOCK TABLES `States` WRITE;
/*!40000 ALTER TABLE `States` DISABLE KEYS */;
INSERT INTO `States` VALUES (1,'California',1),(2,'New York',1),(3,'London',2),(4,'Ontario',3),(5,'Queensland',4),(6,'Bavaria',5),(7,'Île-de-France',6),(8,'Tokyo',7),(9,'Seoul',8),(10,'North Holland',9),(11,'Central Region',10),(12,'Illinois',1);
/*!40000 ALTER TABLE `States` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Universities`
--

DROP TABLE IF EXISTS `Universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Universities` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `year_foundation` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `count_of_students` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `universities_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `Cities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universities`
--

LOCK TABLES `Universities` WRITE;
/*!40000 ALTER TABLE `Universities` DISABLE KEYS */;
INSERT INTO `Universities` VALUES (1,'University of California, Los Angeles',1,1919,'Public research university located in Los Angeles, California.',45000),(2,'Columbia University',2,1754,'Private Ivy League university in the heart of New York City.',36000),(3,'Imperial College London',3,1907,'Public research university known for science, engineering, medicine, and business.',20000),(4,'University of Toronto',4,1827,'Public research university located in Toronto, Ontario, Canada.',21000),(5,'University of Queensland',5,1909,'Australia’s leading university with a global reputation for excellence.',55000),(6,'Technical University of Munich',6,1868,'One of Europe’s leading research universities.',50000),(7,'Sorbonne University',7,1150,'One of the oldest universities in the world, located in Paris, France.',52000),(8,'University of Tokyo',8,1877,'Japan\'s most prestigious university with a focus on research and innovation.',27000),(9,'Seoul National University',9,1946,'Leading university in South Korea known for academic excellence.',27800),(10,'University of Amsterdam',10,1632,'Netherlands\' premier research university with a rich history.',42300),(11,'National University of Singapore',11,1905,'Top-ranked global university located in Singapore.',38500),(12,'University of Science and Technology',3,1975,'Leading in scientific research and technological innovation.',19700),(13,'Global Business School',2,1990,'Providing world-class education in business and economics.',21000),(14,'Liberal Arts College',4,1988,'Fostering creativity and critical thinking through a liberal arts curriculum.',5000),(15,'Medical University',1,1960,'Training future healthcare professionals with state-of-the-art facilities.',30000),(16,'Environmental Science Institute',5,1985,'Dedicated to research and education in environmental sciences.',1700),(17,'International Relations Academy',2,1995,'Preparing students for careers in international affairs and diplomacy.',7900),(18,'Institute of Technology and Engineering',1,1982,'Leading in cutting-edge technology and engineering education.',11500),(19,'Performing Arts Conservatory',4,1978,'Nurturing talent in the performing arts through specialized programs.',10000),(20,'Social Sciences Institute',3,1992,'Advancing knowledge in social sciences and promoting societal well-being.',13000),(21,'Business and Technology College',5,2000,'Integrating business principles with technological advancements.',1300),(22,'Research University of Innovation',2,1987,'A hub for groundbreaking research and innovation in various fields.',20000),(23,'Illinois Institute of Technology',12,1940,'a top-tier, nationally ranked, private research university with programs in engineering, computer science, architecture, design, science, business, human sciences, and law.',40000),(24,'Queen Mary University of London',3,1885,'a global university that remains true to the vision of its founders, committed to improving lives locally, nationally and internationally. ',33000);
/*!40000 ALTER TABLE `Universities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Uni'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24 18:23:45
