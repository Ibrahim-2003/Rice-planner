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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (7,12,'complete','2022-01-20 05:59:00','problemset','Vectors, dot products, and projections practice','Homework 1','https://openstax.org/details/books/calculus-volume-3',NULL,NULL),(8,12,'complete','2022-01-14 05:59:00','problemset','In-Class assignment to learn about vectors, projections, orthogonal projections, and dot products','Dot Product Worksheet','https://openstax.org/books/calculus-volume-3/pages/2-3-the-dot-product',1,1),(9,22,'complete','2022-01-18 18:00:00','essays','FWIS Students ONLY - Narrative essay on engineering','Pre-SM Essay','https://canvas.rice.edu/courses/45708/files/3329726/download?download_frd=1',NULL,NULL),(10,22,'complete','2022-01-17 05:59:00','problemset','Quiz','Engineering Design Process','https://canvas.rice.edu/courses/45708/quizzes/62304?module_item_id=435591',NULL,NULL),(11,22,'complete','2022-01-17 05:59:00','problemset','Quiz','Clarifying Team Assignment','https://canvas.rice.edu/courses/45708/quizzes/62295?module_item_id=435593',NULL,NULL),(12,22,'complete','2022-01-17 05:59:00','problemset','Edit the ePortfolio homepage','Edit Digication Homepage','https://rice.digication.com/ibrahim-al-akash/home-1',NULL,NULL),(13,21,'complete','2022-01-20 05:59:00','problemset','Hello Goodbye, If Else Statements, and Drivers','Quiz 0.2','https://canvas.rice.edu/courses/45735/assignments',10,10),(14,21,'complete','2022-01-15 05:59:00','problemset','Let\'s Start','Quiz 0.1','https://canvas.rice.edu/courses/45735/assignments',10,10),(15,19,'complete','2022-01-19 15:00:00','problemset','Pressure and Gas Properties','HW 01','https://openstax.org/books/chemistry-2e/pages/9-2-relating-pressure-volume-amount-and-temperature-the-ideal-gas-law',NULL,NULL),(16,21,'complete','2022-01-20 05:59:00','problemset','For loops practice','Quiz 0.3','https://canvas.rice.edu/courses/45735/assignments/237868',10,10),(17,21,'complete','2022-01-11 18:59:00','problemset','Beginning of Semester Survey','Quiz 0.0','https://canvas.rice.edu/courses/45735/assignments/237868',10,10),(18,12,'complete','2022-01-11 18:59:00','other','Attendance','Attendance','https://canvas.rice.edu/courses/45735/assignments/237868',5,5),(19,21,'complete','2022-01-15 05:59:00','other','Attendance','RLA Participation Week 1','https://canvas.rice.edu/courses/45735/assignments',10,10),(20,12,'complete','2022-01-14 05:59:00','problemset','Cross Product in-class group assignment','Cross Product Worksheet','https://openstax.org/details/books/calculus-volume-3',1,1),(21,23,'complete','2022-01-18 05:59:00','problemset','\"Electronic and Magnetic Anisotropies in FeSe Family of Iron-Based Superconductors\"','Homework 1','https://canvas.rice.edu/courses/47668/files/3357635?wrap=1',NULL,NULL),(22,12,'complete','2022-01-21 15:00:00','problemset','Cross product problem set','Cross Product WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/?key=KS0TRIp1jvRZGfjEsX331pKupuqyA0ZH&effectiveUser=isa1&user=isa1',5,5),(23,12,'complete','2022-01-21 15:00:00','problemset','Dot product problem set','Dot Product WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/?key=KS0TRIp1jvRZGfjEsX331pKupuqyA0ZH&effectiveUser=isa1&user=isa1',4,4),(24,12,'complete','2022-01-21 15:00:00','problemset','Vectors problem set','Vectors WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/?key=KS0TRIp1jvRZGfjEsX331pKupuqyA0ZH&effectiveUser=isa1&user=isa1',5,5),(25,12,'complete','2022-01-21 16:00:00','problemset','In-Class assignment','Planes Worksheet','https://openstax.org/books/calculus-volume-3/pages/2-5-equations-of-lines-and-planes-in-space',NULL,NULL),(26,12,'complete','2022-01-24 15:00:00','problemset','Planes problem set','Planes WebWork','https://openstax.org/books/calculus-volume-3/pages/2-5-equations-of-lines-and-planes-in-space',5,5),(27,12,'complete','2022-01-24 15:00:00','problemset','Lines problem set','Lines WebWork','https://openstax.org/books/calculus-volume-3/pages/2-5-equations-of-lines-and-planes-in-space',NULL,NULL),(28,12,'complete','2022-01-27 05:59:00','problemset','Lines and planes problem set','Homework 2','https://openstax.org/books/calculus-volume-3/pages/2-5-equations-of-lines-and-planes-in-space',NULL,NULL),(29,18,'complete','2022-01-29 05:59:00','problemset','Multiple Choice. One chance. Untimed.','Homework 1','https://canvas.rice.edu/courses/45504',NULL,NULL),(30,19,'complete','2022-01-24 15:00:00','problemset','Ideal Gas Law, Non-Ideal Gases, Kinetic Molecular Theory','HW 02','https://openstax.org/details/books/chemistry-2e',NULL,NULL),(31,21,'complete','2022-01-27 05:59:00','problemset','Plots','Quiz 0.4','https://canvas.rice.edu/courses/45735',NULL,NULL),(32,21,'complete','2022-01-27 05:59:00','problemset','Matrices','Quiz 0.5','https://canvas.rice.edu/courses/45735',NULL,NULL),(33,23,'complete','2022-01-25 05:59:00','problemset','Introduction','Homework 2','https://canvas.rice.edu/courses/47668/files/3357726?wrap=1',NULL,NULL),(34,19,'complete','2022-01-26 15:00:00','problemset','Practice problems in exam-like format','Unit 1 Power Set 1','https://canvas.rice.edu/courses/48300/files/3400841?module_item_id=462953',NULL,NULL),(35,22,'complete','2022-01-25 05:59:00','problemset','Quiz','Design Problem Statement','https://www.youtube.com/watch?v=Oj4T7d9AGOs&feature=youtu.be',NULL,NULL),(36,22,'complete','2022-01-25 05:59:00','problemset','Quiz','Understanding the Problem and Context','https://www.youtube.com/playlist?list=PLjrhWkcAmyYijTmxFqTTcY8fKomncuOZ6',NULL,NULL),(37,20,'complete','2022-01-27 00:00:00','other','Beer-Lambert Law Experiment','Prelab Notes','https://canvas.rice.edu/courses/46224/pages/lab-1-instructions-and-overview?module_item_id=429723',NULL,NULL),(38,24,'complete','2022-01-28 05:59:00','problemset','Finite Differences','Homework 1','https://canvas.rice.edu/courses/47868/assignments/243966',NULL,NULL),(39,21,'complete','2022-01-29 05:59:00','problemset','Group Assignment','Group Assignment 1','https://canvas.rice.edu/courses/45735/quizzes/63340',NULL,NULL),(40,21,'complete','2022-02-01 05:59:00','projects','Grow a Fern','Project 1','https://canvas.rice.edu/courses/45735/assignments/237919',NULL,NULL),(41,21,'complete','2022-01-29 05:59:00','problemset','Grow a Fern','Project 1 Quiz','https://canvas.rice.edu/courses/45735/quizzes/63365',20,20),(42,19,'complete','2022-01-31 15:00:00','problemset','Rate Laws and Reactions','HW 03','https://openstax.org/books/chemistry-2e/pages/12-1-chemical-reaction-rates',NULL,NULL),(43,12,'complete','2022-01-29 05:59:00','problemset','Parametric curves and vector-valued functions','Parametric Curves WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Parametric_Curves/?user=isa1&effectiveUser=isa1&key=NKgNrybOvaIpp9Tx0CKGrHDzRwY1wCxr',NULL,NULL),(44,21,'complete','2022-02-01 05:59:00','problemset','Matrix Operations','Quiz 0.6','https://canvas.rice.edu/courses/45735/quizzes/63349',NULL,NULL),(45,12,'complete','2022-02-01 05:59:00','problemset','Vector valued functions','Vector Valued Functions WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Vector_Valued_Functions/?effectiveUser=isa1&key=X0rUa6fI2XIVO8CZLIAnKI5AvP4SzfJK&user=isa1',NULL,NULL),(46,20,'complete','2022-02-03 00:30:00','problemset','Kinetic Experiments','Pre-Discussion Assignment 1','https://canvas.rice.edu/courses/46224/assignments/232579',NULL,NULL),(47,12,'complete','2022-02-02 19:59:00','problemset','Parametric curves, vector valued functions, tangent vectors, curves, contour plots, and traces','Homework 3','https://www.gradescope.com/courses/349159',NULL,NULL),(48,12,'complete','2022-02-01 05:59:00','problemset','Multivariable functions problem set','Multivariable Functions WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Multivariable_Functions/?user=isa1&effectiveUser=isa1&key=1Q5yd3gSelFqmAqOtjVr14gv22DkI4bV',NULL,NULL),(49,21,'complete','2022-02-02 23:00:00','problemset','Finding Roots for One Real Variable Function','Project 2 Quiz','https://canvas.rice.edu/courses/45735/quizzes/63358',NULL,NULL),(50,21,'complete','2022-02-05 05:59:00','problemset','Finding Roots for One Real Variable Function','Group Assignment 2','https://canvas.rice.edu/courses/45735/assignments/237920',NULL,NULL),(51,21,'incomplete','2022-02-07 05:59:00','projects','Finding Roots for One Real Variable Function','Project 2','https://canvas.rice.edu/courses/45735/assignments/237920',NULL,NULL),(52,19,'complete','2022-02-02 16:00:00','problemset','Kinetic Molecular Theory and Rate Laws','Power Set 2','https://openstax.org/books/chemistry-2e/pages/12-3-rate-laws',NULL,NULL),(53,22,'complete','2022-02-01 05:59:00','problemset','Quiz','Design Criteria','https://www.youtube.com/playlist?list=PLjrhWkcAmyYi3EqFv_D9eDOpGk1C9pNGX',NULL,NULL),(54,22,'complete','2022-02-01 05:59:00','problemset','Quiz','User Defined Scales','https://www.youtube.com/playlist?list=PLjrhWkcAmyYgQ0haif0hF06kKnDaPgfDR',NULL,NULL),(55,22,'complete','2022-02-03 05:59:00','problemset','Quiz','Pairwise Comparative Charts','https://www.youtube.com/playlist?list=PLjrhWkcAmyYgsXAGQNcqnyusaU8jBM7bt',NULL,NULL),(56,22,'complete','2022-02-03 05:59:00','problemset','Quiz','Teamwork','https://www.youtube.com/playlist?list=PLjrhWkcAmyYgixuf6Tx8NIUeraIp6hQov',NULL,NULL),(57,22,'complete','2022-02-05 18:00:00','essays','Self-reflection Memo 10 V1 Draft','SM 10 V1-D','https://canvas.rice.edu/courses/45708/assignments/234258?module_item_id=435623',NULL,NULL),(58,23,'complete','2022-02-01 05:59:00','problemset','Sections 2 and 3','Homework 3','https://canvas.rice.edu/courses/47668/files/3357635?wrap=1',NULL,NULL),(59,12,'complete','2022-02-05 05:59:00','problemset','Partial derivatives problem set','Partial Derivatives WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Partial_Derivatives/?user=isa1&effectiveUser=isa1&key=ESEQ7FJlBcLZpu5ENSrMFlp2lBbw6d3a',NULL,NULL),(60,18,'complete','2022-02-05 05:59:00','problemset','Chemistry of Biology','Homework 2','https://canvas.rice.edu/courses/45504/assignments/237514',NULL,NULL),(61,12,'incomplete','2022-02-08 05:59:00','problemset','Tangent planes problem set','Tangent Planes WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Tangent_Planes/?user=isa1&key=W4BI1gDSmFLOwG0tYkrPxxgeBEjrMiwr&effectiveUser=isa1',NULL,NULL),(62,23,'incomplete','2022-02-22 05:59:00','problemset','Colloquium/Seminar Notes','Homework 6','https://www.youtube.com/watch?v=9qGRo3WWzMc&t=2s&ab_channel=MagnetosphereSeminars',NULL,NULL),(63,23,'incomplete','2022-02-08 05:59:00','problemset','Lab Tour Questions','Homework 4','https://canvas.rice.edu/courses/47668/files/3357643?wrap=1',NULL,NULL),(64,12,'incomplete','2022-02-17 05:59:00','problemset','Planes and linear approximations','Homework 4','https://openstax.org/details/books/calculus-volume-3',NULL,NULL);
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
  `semester` varchar(255) DEFAULT NULL,
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
INSERT INTO `classes` VALUES (12,'Multivariable Calculus','MATH212_syllabus.pdf','Shawn Williams','S22'),(18,'Biology','BIOS201_syllabus.pdf','Dr. Collin Thomas','S22'),(19,'Chemistry','CHEM122_syllabus.pdf','Dr. Lesa Tran Lu','S22'),(20,'Chemistry Lab','CHEM124_syllabus.pdf','Dr. Humayun Kabir','S22'),(21,'Engineering Computation','CAAM210_syllabus.pdf','Dr. Anastasiya Protasov','S22'),(22,'Engineering Design','ENGI120_syllabus.pdf','Dr. Deirdre Hunter','S22'),(23,'Astronomy','PHYS116_syllabus.pdf','Eduardo Ibarra Garcia Padilla','S22'),(24,'Physics Computer','PHYS100_syllabus.pdf','Dr. Robert Beaird','S22');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_db`
--

DROP TABLE IF EXISTS `course_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_db` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hours` int DEFAULT NULL,
  `dept_code` varchar(45) DEFAULT NULL,
  `level_code` int DEFAULT NULL,
  `description` longtext,
  `distribution` int DEFAULT NULL,
  `is_core_req` tinyint DEFAULT NULL,
  `prereq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `idcourse_db_UNIQUE` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_db`
--

LOCK TABLES `course_db` WRITE;
/*!40000 ALTER TABLE `course_db` DISABLE KEYS */;
INSERT INTO `course_db` VALUES (1,'INTRODUCTION TO ENGINEERING DESIGN AND COMMUNICATION',3,'FWIS',188,'Students learn the engineering design process to solve real-world problems by evaluating design requirements and constructing innovative solutions in the OEDK. Several communication assignments will be completed by individuals rather than teams. Fall limited to ENGI and NSCI students; spring open for engineering and architecture students.',0,1,'0'),(2,'ENGINEERING DESIGN STUDIO',3,'ENGI',200,'Graduates of ENGI 120 and ENGI 220 will have the opportunity to gain a more in-depth knowledge of the engineering design process by furthering progress on specific engineering design projects. Students may extend their project work by completing advanced prototyping for their designs and conduct testing. Students will be held accountable through technical mentorship, weekly meetings, and prototype evaluations. Students will only work in design teams.',0,0,'FWIS 188'),(3,'PROTOTYPING AND FABRICATION',3,'ENGI',210,'Students in ENGI 210 will learn and practice advanced prototyping and fabrication skills useful in the construction of physical objects for engineering design projects. The course is structured as lecture and demonstration of basic and advanced prototyping techniques and out-of-class work practicing and honing the application of these techniques. Example techniques include low fidelity prototyping, 2D and 3D Computer Aided Design, electronics, foam cutting, laser cutting, plasma cutting, 3D printing, and molding/casting methods. Students will individually apply these techniques to create physical objects.',0,0,'FWIS 188'),(4,'NEEDS IDENTIFICATION AND DESIGN IMPLEMENTATION',3,'ENGI',350,'Students in this course will identify needs situated in two or more environments, and learn to ask questions that elucidate the problem, needed features and criteria for success. Students also develop implementation plans and conduct testing for refined design solutions that may include standards and safety compliance, patent applications, and manufacturing and user documents.',0,0,'FWIS 188');
/*!40000 ALTER TABLE `course_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursedb`
--

DROP TABLE IF EXISTS `coursedb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursedb` (
  `coursedb_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` longtext,
  `code` varchar(255) NOT NULL,
  `hours` int NOT NULL,
  `level` int NOT NULL,
  `distribution` int DEFAULT NULL,
  `requirement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`coursedb_id`),
  UNIQUE KEY `idnew_table_UNIQUE` (`coursedb_id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursedb`
--

LOCK TABLES `coursedb` WRITE;
/*!40000 ALTER TABLE `coursedb` DISABLE KEYS */;
/*!40000 ALTER TABLE `coursedb` ENABLE KEYS */;
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
  `semester` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gpa_id`),
  UNIQUE KEY `idgpa_UNIQUE` (`gpa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpa`
--

LOCK TABLES `gpa` WRITE;
/*!40000 ALTER TABLE `gpa` DISABLE KEYS */;
INSERT INTO `gpa` VALUES (-4,'Intro to Psych','A+',3,12,'F21'),(-2,'Mechanics','B+',4,13.3332,'F21'),(-1,'ODE + Linear Algebra','B+',3,9.9999,'F21'),(5,'Multivariable Calculus',NULL,3,NULL,'S22'),(6,'Chemistry II',NULL,3,NULL,'S22'),(7,'Chemistry II Lab',NULL,1,NULL,'S22'),(8,'Biology',NULL,3,NULL,'S22'),(9,'Engineering Computation',NULL,3,NULL,'S22'),(10,'Engineering Design',NULL,3,NULL,'S22'),(11,'Astronomy',NULL,1,NULL,'S22'),(12,'Physics Computer',NULL,1,NULL,'S22');
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
  `grade` float NOT NULL,
  `maximum` float DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `grading_id` varchar(255) DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `assignment_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`graded_id`),
  UNIQUE KEY `graded_id_UNIQUE` (`graded_id`),
  UNIQUE KEY `assignment_id_UNIQUE` (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graded_assignments`
--

LOCK TABLES `graded_assignments` WRITE;
/*!40000 ALTER TABLE `graded_assignments` DISABLE KEYS */;
INSERT INTO `graded_assignments` VALUES (3,18,5,5,'Attendance','1',12,'Attendance'),(4,17,10,10,'Quizzes','8',21,'Quiz 0.0'),(6,14,10,10,'Quizzes','8',21,'Quiz 0.1'),(7,19,10,10,'RLA Attendance','11',21,'RLA Participation Week 1'),(8,8,1,1,'Homework - Online','2',12,'Dot Product Worksheet'),(9,20,1,1,'Homework - Online','2',12,'Cross Product Worksheet'),(12,22,5,5,'Homework ',' Online',12,'Cross Product WebWork'),(13,23,4,4,'Homework ',' Online',12,'Dot Product WebWork'),(14,24,5,5,'Homework ',' Online',12,'Vectors WebWork'),(15,13,10,10,'Quizzes','8',21,'Quiz 0.2'),(16,16,10,10,'Quizzes','8',21,'Quiz 0.3'),(17,26,5,5,'Homework ',' Online',12,'Planes WebWork'),(18,41,20,20,'Quizzes','8',21,'Project 1 Quiz');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradingscheme`
--

LOCK TABLES `gradingscheme` WRITE;
/*!40000 ALTER TABLE `gradingscheme` DISABLE KEYS */;
INSERT INTO `gradingscheme` VALUES (1,12,'Attendance',0,5,NULL),(2,12,'Homework - Online',0,5,NULL),(3,12,'Homework - Written',0,20,NULL),(4,12,'Midterm 1',0,20,NULL),(5,12,'Midterm 2',0,20,NULL),(6,12,'Final',0,30,NULL),(7,21,'Unpledged Projects',0,50,NULL),(8,21,'Quizzes',0,15,NULL),(9,21,'Pledged Projects',0,20,NULL),(10,21,'Group Assignments',0,5,NULL),(11,21,'RLA Attendance',0,10,NULL),(12,21,'Optional Project',0,1,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readings`
--

LOCK TABLES `readings` WRITE;
/*!40000 ALTER TABLE `readings` DISABLE KEYS */;
INSERT INTO `readings` VALUES (5,12,'https://canvas.rice.edu/courses/46724/external_tools/3912','2022-01-14','Videos 3.1-3.2','Cross Product','complete'),(6,19,'https://openstax.org/books/chemistry-2e/pages/9-3-stoichiometry-of-gaseous-substances-mixtures-and-reactions','2022-01-14','Chapter 9.3','Stoichiometry of Gaseous Substances, Mixtures, and Reactions','complete'),(7,19,'https://cnx.org/contents/xq3piGJg@2.1:aPpvPV9J@2/The-Kinetic-Molecular-Theory','2022-01-19','CDN 15','The Kinetic Molecular Theory','complete'),(8,19,'https://openstax.org/books/chemistry-2e/pages/9-6-non-ideal-gas-behavior','2022-01-19','Chapter 9.6','Non-Ideal Gas Behavior','complete'),(9,18,'https://canvas.rice.edu/courses/45504/files/3352762/download?wrap=1','2022-01-19','Miller Paper','A Production of Amino Acids Under Primitive Earth Conditions','complete'),(10,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-01-19','Chapter 2','The Chemical Context of Life','complete'),(11,19,'https://cnx.org/contents/xq3piGJg@2.1:aPpvPV9J@2/The-Kinetic-Molecular-Theory','2022-01-21','CDN 15','Kinetic Molecular Theory','complete'),(12,19,'https://openstax.org/books/chemistry-2e/pages/9-4-effusion-and-diffusion-of-gases','2022-01-21','Chapter 9.4','Effusion and Diffusion of Gases','complete'),(13,19,'https://openstax.org/books/chemistry-2e/pages/9-5-the-kinetic-molecular-theory','2022-01-21','Chapter 9.5','The Kinetic Molecular Theory','complete'),(14,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-01-26','Chapter 3','Water','complete'),(15,19,'https://cnx.org/contents/xq3piGJg@2.1:QlJM_25S@4/Reaction-Rate-Laws','2022-01-26','CDN 19','Reaction Rate Laws','complete'),(16,19,'https://openstax.org/books/chemistry-2e/pages/12-1-chemical-reaction-rates','2022-01-26','Chapters 12.1-12.3','Kinetics','complete'),(17,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-02-02','Chapter 4','Carbon and the Molecular Diversity of Life','complete'),(18,19,'https://cnx.org/contents/xq3piGJg@2.1:ck0CUGFc@3/Reaction-Kinetics','2022-01-31','CDN 20','Reaction Kinetics','complete'),(19,19,'https://openstax.org/books/chemistry-2e/pages/12-7-catalysis','2022-02-04','Chapter 12.7','Catalysis','complete');
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

-- Dump completed on 2022-02-05  8:41:51
