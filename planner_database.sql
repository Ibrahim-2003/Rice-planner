CREATE DATABASE  IF NOT EXISTS `riceplanner_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `riceplanner_db`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: riceplanner_db
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `due_date` datetime DEFAULT NULL,
  `assignment_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `maximum` float DEFAULT NULL,
  `grade` float DEFAULT NULL,
  PRIMARY KEY (`assignment_id`),
  UNIQUE KEY `idassignments_UNIQUE` (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (7,12,'incomplete','2022-01-20 05:59:00','problemset','Vectors, dot products, and projections practice','Homework 1','https://openstax.org/details/books/calculus-volume-3',NULL,NULL),(8,12,'complete','2022-01-14 05:59:00','problemset','In-Class assignment to learn about vectors, projections, orthogonal projections, and dot products','Dot Product Worksheet','https://openstax.org/books/calculus-volume-3/pages/2-3-the-dot-product',NULL,NULL),(9,22,'incomplete','2022-01-18 18:00:00','essays','FWIS Students ONLY - Narrative essay on engineering','Pre-SM Essay','https://canvas.rice.edu/courses/45708/files/3329726/download?download_frd=1',NULL,NULL),(10,22,'incomplete','2022-01-17 05:59:00','problemset','Quiz','Engineering Design Process','https://canvas.rice.edu/courses/45708/quizzes/62304?module_item_id=435591',NULL,NULL),(11,22,'incomplete','2022-01-17 05:59:00','problemset','Quiz','Clarifying Team Assignment','https://canvas.rice.edu/courses/45708/quizzes/62295?module_item_id=435593',NULL,NULL),(12,22,'incomplete','2022-01-17 05:59:00','problemset','Edit the ePortfolio homepage','Edit Digication Homepage','https://rice.digication.com/ibrahim-al-akash/home-1',NULL,NULL),(13,21,'incomplete','2022-01-20 05:59:00','problemset','Hello Goodbye, If Else Statements, and Drivers','Quiz 0.2','https://canvas.rice.edu/courses/45735/assignments',NULL,NULL),(14,21,'complete','2022-01-15 05:59:00','problemset','Let\'s Start','Quiz 0.1','https://canvas.rice.edu/courses/45735/assignments',NULL,NULL);
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `syllabus` varchar(255) DEFAULT NULL,
  `professor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `idnew_table_UNIQUE` (`class_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (12,'Multivariable Calculus','MATH212_syllabus.pdf','Shawn Williams'),(18,'Biology','BIOS201_syllabus.pdf','Dr. Collin Thomas'),(19,'Chemistry','CHEM122_syllabus.pdf','Dr. Lesa Tran Lu'),(20,'Chemistry Lab','CHEM124_syllabus.pdf','Dr. Humayun Kabir'),(21,'Engineering Computation','CAAM210_syllabus.pdf','Dr. Anastasiya Protasov'),(22,'Engineering Design','ENGI120_syllabus.pdf','Dr. Deirdre Hunter'),(23,'Astronomy','PHYS116_syllabus.pdf','Eduardo Ibarra Garcia Padilla'),(24,'Physics Computer','PHYS100_syllabus.pdf','Dr. Robert Beaird');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gpa`
--

DROP TABLE IF EXISTS `gpa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpa` (
  `gpa_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `letter` varchar(10) DEFAULT NULL,
  `hours` int DEFAULT NULL,
  `quality_points` float DEFAULT NULL,
  PRIMARY KEY (`gpa_id`),
  UNIQUE KEY `idgpa_UNIQUE` (`gpa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpa`
--

LOCK TABLES `gpa` WRITE;
/*!40000 ALTER TABLE `gpa` DISABLE KEYS */;
INSERT INTO `gpa` VALUES (5,'Multivariable Calculus',NULL,3,NULL),(6,'Chemistry',NULL,3,NULL),(7,'Chemistry Lab',NULL,1,NULL),(8,'Biology',NULL,3,NULL),(9,'Engineering Computation',NULL,3,NULL),(10,'Engineering Design',NULL,3,NULL),(11,'Astronomy',NULL,1,NULL),(12,'Physics Computer',NULL,1,NULL),(13,'hk',NULL,NULL,NULL);
/*!40000 ALTER TABLE `gpa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graded_assignments`
--

DROP TABLE IF EXISTS `graded_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graded_assignments` (
  `graded_id` int NOT NULL AUTO_INCREMENT,
  `assignment_id` int NOT NULL,
  `grading_id` int NOT NULL,
  `grade` float NOT NULL,
  `maximum` float DEFAULT NULL,
  PRIMARY KEY (`graded_id`),
  UNIQUE KEY `graded_id_UNIQUE` (`graded_id`),
  UNIQUE KEY `assignment_id_UNIQUE` (`assignment_id`),
  UNIQUE KEY `grading_id_UNIQUE` (`grading_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graded_assignments`
--

LOCK TABLES `graded_assignments` WRITE;
/*!40000 ALTER TABLE `graded_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `graded_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradingscheme`
--

DROP TABLE IF EXISTS `gradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gradingscheme` (
  `grading_id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `grading_item` varchar(255) DEFAULT NULL,
  `weight_points` float DEFAULT NULL,
  `weight_percentage` float DEFAULT NULL,
  `item_count` int DEFAULT NULL,
  PRIMARY KEY (`grading_id`),
  UNIQUE KEY `idgradingscheme_UNIQUE` (`grading_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradingscheme`
--

LOCK TABLES `gradingscheme` WRITE;
/*!40000 ALTER TABLE `gradingscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `gradingscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readings`
--

DROP TABLE IF EXISTS `readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `readings` (
  `readings_id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `assigned_reading` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`readings_id`),
  UNIQUE KEY `idreadings_UNIQUE` (`readings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readings`
--

LOCK TABLES `readings` WRITE;
/*!40000 ALTER TABLE `readings` DISABLE KEYS */;
INSERT INTO `readings` VALUES (5,12,'https://canvas.rice.edu/courses/46724/external_tools/3912','2022-01-14','Videos 3.1-3.2','Cross Product','complete'),(6,19,'https://openstax.org/books/chemistry-2e/pages/9-3-stoichiometry-of-gaseous-substances-mixtures-and-reactions','2022-01-14','Chapter 9.3','Stoichiometry of Gaseous Substances, Mixtures, and Reactions',NULL);
/*!40000 ALTER TABLE `readings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-14 10:07:07
