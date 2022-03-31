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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (7,12,'complete','2022-01-20 05:59:00','problemset','Vectors, dot products, and projections practice','Homework 1','https://openstax.org/details/books/calculus-volume-3',25,25),(8,12,'complete','2022-01-14 05:59:00','problemset','In-Class assignment to learn about vectors, projections, orthogonal projections, and dot products','Dot Product Worksheet','https://openstax.org/books/calculus-volume-3/pages/2-3-the-dot-product',1,1),(9,22,'complete','2022-01-18 18:00:00','essays','FWIS Students ONLY - Narrative essay on engineering','PreSM Essay','https://canvas.rice.edu/courses/45708/files/3329726/download?download_frd=1',NULL,NULL),(10,22,'complete','2022-01-17 05:59:00','problemset','Quiz','Engineering Design Process','https://canvas.rice.edu/courses/45708/quizzes/62304?module_item_id=435591',5,5),(11,22,'complete','2022-01-17 05:59:00','problemset','Quiz','Clarifying Team Assignment','https://canvas.rice.edu/courses/45708/quizzes/62295?module_item_id=435593',NULL,NULL),(12,22,'complete','2022-01-17 05:59:00','problemset','Edit the ePortfolio homepage','Edit Digication Homepage','https://rice.digication.com/ibrahim-al-akash/home-1',NULL,NULL),(13,21,'complete','2022-01-20 05:59:00','problemset','Hello Goodbye, If Else Statements, and Drivers','Quiz 0.2','https://canvas.rice.edu/courses/45735/assignments',10,10),(14,21,'complete','2022-01-15 05:59:00','problemset','Let\'s Start','Quiz 0.1','https://canvas.rice.edu/courses/45735/assignments',10,10),(15,19,'complete','2022-01-19 15:00:00','problemset','Pressure and Gas Properties','HW 01','https://openstax.org/books/chemistry-2e/pages/9-2-relating-pressure-volume-amount-and-temperature-the-ideal-gas-law',21,21),(16,21,'complete','2022-01-20 05:59:00','problemset','For loops practice','Quiz 0.3','https://canvas.rice.edu/courses/45735/assignments/237868',10,10),(17,21,'complete','2022-01-11 18:59:00','problemset','Beginning of Semester Survey','Quiz 0.0','https://canvas.rice.edu/courses/45735/assignments/237868',10,10),(18,12,'complete','2022-01-11 18:59:00','other','Attendance','Attendance','https://canvas.rice.edu/courses/45735/assignments/237868',5,5),(19,21,'complete','2022-01-15 05:59:00','other','Attendance','RLA Participation Week 1','https://canvas.rice.edu/courses/45735/assignments',10,10),(20,12,'complete','2022-01-14 05:59:00','problemset','Cross Product in-class group assignment','Cross Product Worksheet','https://openstax.org/details/books/calculus-volume-3',1,1),(21,23,'complete','2022-01-18 05:59:00','problemset','\"Electronic and Magnetic Anisotropies in FeSe Family of Iron-Based Superconductors\"','Homework 1','https://canvas.rice.edu/courses/47668/files/3357635?wrap=1',10,9),(22,12,'complete','2022-01-21 15:00:00','problemset','Cross product problem set','Cross Product WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/?key=KS0TRIp1jvRZGfjEsX331pKupuqyA0ZH&effectiveUser=isa1&user=isa1',5,5),(23,12,'complete','2022-01-21 15:00:00','problemset','Dot product problem set','Dot Product WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/?key=KS0TRIp1jvRZGfjEsX331pKupuqyA0ZH&effectiveUser=isa1&user=isa1',4,4),(24,12,'complete','2022-01-21 15:00:00','problemset','Vectors problem set','Vectors WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/?key=KS0TRIp1jvRZGfjEsX331pKupuqyA0ZH&effectiveUser=isa1&user=isa1',5,5),(25,12,'complete','2022-01-21 16:00:00','problemset','In-Class assignment','Planes Worksheet','https://openstax.org/books/calculus-volume-3/pages/2-5-equations-of-lines-and-planes-in-space',NULL,NULL),(26,12,'complete','2022-01-24 15:00:00','problemset','Planes problem set','Planes WebWork','https://openstax.org/books/calculus-volume-3/pages/2-5-equations-of-lines-and-planes-in-space',5,5),(27,12,'complete','2022-01-24 15:00:00','problemset','Lines problem set','Lines WebWork','https://openstax.org/books/calculus-volume-3/pages/2-5-equations-of-lines-and-planes-in-space',7,7),(28,12,'complete','2022-01-27 05:59:00','problemset','Lines and planes problem set','Homework 2','https://openstax.org/books/calculus-volume-3/pages/2-5-equations-of-lines-and-planes-in-space',40,34),(29,18,'complete','2022-01-29 05:59:00','problemset','Multiple Choice. One chance. Untimed.','Homework 1','https://canvas.rice.edu/courses/45504',100,90),(30,19,'complete','2022-01-24 15:00:00','problemset','Ideal Gas Law, Non-Ideal Gases, Kinetic Molecular Theory','HW 02','https://openstax.org/details/books/chemistry-2e',15,15),(31,21,'complete','2022-01-27 05:59:00','problemset','Plots','Quiz 0.4','https://canvas.rice.edu/courses/45735',10,9.7),(32,21,'complete','2022-01-27 05:59:00','problemset','Matrices','Quiz 0.5','https://canvas.rice.edu/courses/45735',10,9.5),(33,23,'complete','2022-01-25 05:59:00','problemset','Introduction','Homework 2','https://canvas.rice.edu/courses/47668/files/3357726?wrap=1',10,9.5),(34,19,'complete','2022-01-26 15:00:00','problemset','Practice problems in exam-like format','Unit 1 Power Set 1','https://canvas.rice.edu/courses/48300/files/3400841?module_item_id=462953',NULL,NULL),(35,22,'complete','2022-01-25 05:59:00','problemset','Quiz','Design Problem Statement','https://www.youtube.com/watch?v=Oj4T7d9AGOs&feature=youtu.be',NULL,NULL),(36,22,'complete','2022-01-25 05:59:00','problemset','Quiz','Understanding the Problem and Context','https://www.youtube.com/playlist?list=PLjrhWkcAmyYijTmxFqTTcY8fKomncuOZ6',NULL,NULL),(37,20,'complete','2022-01-27 00:00:00','other','Beer-Lambert Law Experiment','Prelab Notes','https://canvas.rice.edu/courses/46224/pages/lab-1-instructions-and-overview?module_item_id=429723',15,15),(38,24,'complete','2022-01-28 05:59:00','problemset','Finite Differences','Homework 1','https://canvas.rice.edu/courses/47868/assignments/243966',NULL,NULL),(39,21,'complete','2022-01-29 05:59:00','problemset','Group Assignment','Group Assignment 1','https://canvas.rice.edu/courses/45735/quizzes/63340',10,10),(40,21,'complete','2022-02-01 05:59:00','projects','Grow a Fern','Project 1','https://canvas.rice.edu/courses/45735/assignments/237919',100,100),(41,21,'complete','2022-01-29 05:59:00','problemset','Grow a Fern','Project 1 Quiz','https://canvas.rice.edu/courses/45735/quizzes/63365',20,20),(42,19,'complete','2022-01-31 15:00:00','problemset','Rate Laws and Reactions','HW 03','https://openstax.org/books/chemistry-2e/pages/12-1-chemical-reaction-rates',19,19),(43,12,'complete','2022-01-29 05:59:00','problemset','Parametric curves and vector-valued functions','Parametric Curves WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Parametric_Curves/?user=isa1&effectiveUser=isa1&key=NKgNrybOvaIpp9Tx0CKGrHDzRwY1wCxr',5,5),(44,21,'complete','2022-02-01 05:59:00','problemset','Matrix Operations','Quiz 0.6','https://canvas.rice.edu/courses/45735/quizzes/63349',10,10),(45,12,'complete','2022-02-01 05:59:00','problemset','Vector valued functions','Vector Valued Functions WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Vector_Valued_Functions/?effectiveUser=isa1&key=X0rUa6fI2XIVO8CZLIAnKI5AvP4SzfJK&user=isa1',3,3),(46,20,'complete','2022-02-03 00:30:00','problemset','Kinetic Experiments','Pre Discussion Assignment 1','https://canvas.rice.edu/courses/46224/assignments/232579',10,10),(47,12,'complete','2022-02-02 19:59:00','problemset','Parametric curves, vector valued functions, tangent vectors, curves, contour plots, and traces','Homework 3','https://www.gradescope.com/courses/349159',NULL,NULL),(48,12,'complete','2022-02-01 05:59:00','problemset','Multivariable functions problem set','Multivariable Functions WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Multivariable_Functions/?user=isa1&effectiveUser=isa1&key=1Q5yd3gSelFqmAqOtjVr14gv22DkI4bV',5,5),(49,21,'complete','2022-02-02 23:00:00','problemset','Finding Roots for One Real Variable Function','Project 2 Quiz','https://canvas.rice.edu/courses/45735/quizzes/63358',20,20),(50,21,'complete','2022-02-05 05:59:00','problemset','Finding Roots for One Real Variable Function','Group Assignment 2','https://canvas.rice.edu/courses/45735/assignments/237920',10,10),(51,21,'complete','2022-02-07 05:59:00','projects','Finding Roots for One Real Variable Function','Project 2','https://canvas.rice.edu/courses/45735/assignments/237920',100,100),(52,19,'complete','2022-02-02 16:00:00','problemset','Kinetic Molecular Theory and Rate Laws','Power Set 2','https://openstax.org/books/chemistry-2e/pages/12-3-rate-laws',NULL,NULL),(53,22,'complete','2022-02-01 05:59:00','problemset','Quiz','Design Criteria','https://www.youtube.com/playlist?list=PLjrhWkcAmyYi3EqFv_D9eDOpGk1C9pNGX',NULL,NULL),(54,22,'complete','2022-02-01 05:59:00','problemset','Quiz','User Defined Scales','https://www.youtube.com/playlist?list=PLjrhWkcAmyYgQ0haif0hF06kKnDaPgfDR',NULL,NULL),(55,22,'complete','2022-02-03 05:59:00','problemset','Quiz','Pairwise Comparative Charts','https://www.youtube.com/playlist?list=PLjrhWkcAmyYgsXAGQNcqnyusaU8jBM7bt',NULL,NULL),(56,22,'complete','2022-02-03 05:59:00','problemset','Quiz','Teamwork','https://www.youtube.com/playlist?list=PLjrhWkcAmyYgixuf6Tx8NIUeraIp6hQov',NULL,NULL),(57,22,'complete','2022-02-05 18:00:00','essays','Self-reflection Memo 10 V1 Draft','SM 10 V1-D','https://canvas.rice.edu/courses/45708/assignments/234258?module_item_id=435623',NULL,NULL),(58,23,'complete','2022-02-01 05:59:00','problemset','Sections 2 and 3','Homework 3','https://canvas.rice.edu/courses/47668/files/3357635?wrap=1',10,9.8),(59,12,'complete','2022-02-05 05:59:00','problemset','Partial derivatives problem set','Partial Derivatives WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Partial_Derivatives/?user=isa1&effectiveUser=isa1&key=ESEQ7FJlBcLZpu5ENSrMFlp2lBbw6d3a',5,5),(60,18,'complete','2022-02-05 05:59:00','problemset','Chemistry of Biology','Homework 2','https://canvas.rice.edu/courses/45504/assignments/237514',100,100),(61,12,'complete','2022-02-08 05:59:00','problemset','Tangent planes problem set','Tangent Planes WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Tangent_Planes/?user=isa1&key=W4BI1gDSmFLOwG0tYkrPxxgeBEjrMiwr&effectiveUser=isa1',5,5),(62,23,'complete','2022-02-22 05:59:00','problemset','Colloquium/Seminar Notes','Homework 6','https://www.youtube.com/watch?v=9qGRo3WWzMc&t=2s&ab_channel=MagnetosphereSeminars',10,10),(63,23,'complete','2022-02-08 05:59:00','problemset','Lab Tour Questions','Homework 4','https://canvas.rice.edu/courses/47668/files/3357643?wrap=1',10,10),(64,12,'complete','2022-02-17 05:59:00','problemset','Planes and linear approximations','Homework 4','https://openstax.org/details/books/calculus-volume-3',NULL,NULL),(65,12,'complete','2022-02-10 05:59:00','problemset','Directional derivatives problem set','Directional Derivatives WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Directional_Derivatives/?user=isa1&effectiveUser=isa1&key=6OTWkIOh5to92LLtWBPWMq0LH5kaZTms',5,5),(66,22,'complete','2022-02-08 05:59:00','problemset','Quiz','Brainstorming','https://www.youtube.com/playlist?list=PLjrhWkcAmyYj5fylkbTYTTwKZ_CqVJ8Z6',NULL,NULL),(67,22,'complete','2022-02-08 05:59:00','problemset','Quiz','Decomposition','https://www.youtube.com/playlist?list=PLjrhWkcAmyYgDZbOqpZ9za-QnlYuXN4pJ',NULL,NULL),(68,22,'complete','2022-02-12 18:00:00','essays','Brainstorming','Tech Memo 4','https://canvas.rice.edu/courses/45708/assignments/234280?module_item_id=435626',NULL,NULL),(69,22,'complete','2022-02-09 05:59:00','problemset','Design Mentor/Writing Mentor Survey','DM/WM Survey #1','https://canvas.rice.edu/courses/45708/assignments/234239?module_item_id=435625',NULL,NULL),(70,20,'complete','2022-02-17 00:00:00','problemset','Equilibrium Lab','Prelab Quiz 2','https://canvas.rice.edu/courses/46224/quizzes/61666?module_item_id=429552',10,10),(71,20,'complete','2022-02-17 00:00:00','other','Equilibrium Lab','Prelab Notes 2','https://canvas.rice.edu/courses/46224/modules/items/429553',15,15),(72,21,'complete','2022-02-09 23:05:00','problemset','Modelling infectious diseases','Project 3 Quiz','https://canvas.rice.edu/courses/45735/quizzes/63346',20,20),(73,21,'complete','2022-02-17 05:59:00','projects','Modelling infectious diseases','Project 3','https://canvas.rice.edu/courses/45735/assignments/237928',100,100),(74,19,'complete','2022-04-23 04:59:00','other','Lab Grade','Lab','https://canvas.rice.edu/courses/46224',550,144.75),(75,20,'complete','2022-01-15 05:59:00','problemset','Beer\'s Law','Week 1 Beer\'s Law Worksheet','https://canvas.rice.edu/courses/46224/modules/items/446394',30,28),(76,20,'complete','2022-01-20 05:59:00','problemset','Safety quiz','Lab Safety Quiz','https://canvas.rice.edu/courses/46224/modules/items/446413',20,20),(77,20,'complete','2022-01-27 05:59:00','other','Kinetics and Rate Law Experiment','Lab Conduct 1','https://canvas.rice.edu/courses/46224/modules/items/429524',5,5),(78,20,'complete','2022-01-27 05:59:00','other','Kinetics and Rate Law Experiment','InLab Notes 1','https://canvas.rice.edu/courses/46224/modules/items/429536',20,19.75),(79,20,'complete','2022-02-05 05:59:00','problemset','Rate Laws and Reactions','Discussion Assignment 1','https://www.gradescope.com/courses/335540',40,37),(80,20,'complete','2022-01-27 05:59:00','problemset','Kinetic Experiments','Prelab Quiz 1','https://canvas.rice.edu/courses/46224/assignments/232570/submissions/55710',10,10),(81,23,'complete','2022-04-23 04:59:00','other','In-class discussion','Participation','https://canvas.rice.edu/courses/47668/assignments',3,3),(82,24,'complete','2022-02-18 05:59:00','problemset','Energy and Linear Drag','Homework 2','https://canvas.rice.edu/courses/47868/assignments/243970',NULL,NULL),(83,24,'complete','2022-04-23 04:59:00','other','In-class discussion','Participation','https://canvas.rice.edu/courses/47868',100,100),(84,12,'complete','2022-02-15 05:59:00','problemset','Chain Rule problem set','Chain Rule WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Chain_Rule/?effectiveUser=isa1&key=ubeNxLuCnUMzcoaUktR8csLQlqAI8yje&user=isa1',5,5),(85,18,'complete','2022-02-19 05:59:00','problemset','Organic chemistry and biological molecules','Homework 3','https://quizlet.com/395580152/bioc-201-final-review-flash-cards/',100,100),(86,23,'complete','2022-02-15 05:59:00','problemset','Spiral density waves in a young protoplanetary disk','Homework 5','https://canvas.rice.edu/courses/47668/files/folder/Main%20Readings?preview=3357634',10,9.8),(87,21,'complete','2022-02-16 23:00:00','problemset','Primal Dual Sensitivity Analysis','Project 4 Quiz','https://canvas.rice.edu/courses/45735/quizzes/65705',20,20),(88,22,'complete','2022-02-15 05:59:00','problemset','Quiz','Pugh Screening','https://www.youtube.com/playlist?list=PLjrhWkcAmyYgIMX_6oBwfmzYYvbSY6cL7',NULL,NULL),(89,22,'complete','2022-02-15 05:59:00','problemset','Quiz','Morph Charts','https://www.youtube.com/playlist?list=PLjrhWkcAmyYi2i_ZKZQ1dqLefh1kOFHMs',NULL,NULL),(90,22,'complete','2022-02-15 05:59:00','problemset','Quiz','Pugh Scoring','https://www.youtube.com/playlist?list=PLjrhWkcAmyYiM1wwG9Bp0LnUR_5zykfc4',NULL,NULL),(91,21,'complete','2022-02-22 05:59:00','projects','Primal Dual Sensitivity Analysis','Project 4','https://canvas.rice.edu/courses/45735/assignments/246851',100,105),(92,18,'complete','2022-02-19 05:59:00','problemset','Proteins','Homework 4','https://canvas.rice.edu/courses/45504/quizzes/63264',100,100),(93,19,'complete','2022-02-22 05:59:00','other','Earn up to 10/150 extra points on Midterm 1','Midterm 1 Exam Reflection','https://canvas.rice.edu/courses/48300/assignments/249439?module_item_id=470746',NULL,NULL),(94,19,'complete','2022-02-09 05:59:00','other','Exam','Midterm 1','https://canvas.rice.edu/courses/48300',150,139),(95,19,'complete','2022-02-21 20:00:00','other','Regrade','Midterm 1 Regrade Request','https://canvas.rice.edu/courses/48300/files/3492457?module_item_id=470506',NULL,NULL),(96,23,'complete','2022-03-02 05:59:00','problemset','End of Course Survey','Homework 7','https://canvas.rice.edu/courses/47668/assignments/238462',10,10),(97,22,'complete','2022-02-19 18:00:00','problemset','Version 2 of Brainstorming Technical Memo','Tech Memo 4 V2','https://canvas.rice.edu/courses/45708/assignments/234282?module_item_id=435639',NULL,NULL),(98,22,'complete','2022-02-22 05:59:00','problemset','Quiz','Technical Presentations','https://www.youtube.com/playlist?list=PLjrhWkcAmyYh7Kmz1ZG1PRue0S1wQXAZq',NULL,NULL),(99,20,'complete','2022-02-17 05:59:00','other','Equilibrium Lab','Lab Conduct 2','https://canvas.rice.edu/courses/46224',5,5),(100,20,'complete','2022-02-18 19:00:00','other','Equilibrium Lab','InLab Notes 2','https://canvas.rice.edu/courses/46224',20,19.25),(101,19,'complete','2022-02-21 15:00:00','problemset','Equilibrium problem set','HW 05','https://canvas.rice.edu/courses/48300/quizzes/62833?module_item_id=440791',15,15),(102,19,'complete','2022-02-23 15:00:00','problemset','Equilibrium','Unit 2 Power Set 1','https://canvas.rice.edu/courses/48300/files/3488490?module_item_id=470263',NULL,NULL),(103,20,'complete','2022-02-24 00:00:00','problemset','Equilibrium','Pre Discussion Assignment 2','https://canvas.rice.edu/courses/46224/assignments/232581?module_item_id=429538',10,10),(104,20,'complete','2022-02-24 00:00:00','problemset','Equilibrium Lab','Discussion Assignment 2','https://canvas.rice.edu/courses/46224/assignments/232582?module_item_id=429540',40,39),(105,21,'complete','2022-03-01 05:59:00','projects','Newton\'s Method with One Complex Variable','Project 5','https://canvas.rice.edu/courses/45735/assignments/237924',NULL,NULL),(106,12,'complete','2022-02-18 05:59:00','other','Exam','Midterm 1','https://openstax.org/details/books/calculus-volume-3',104,101),(107,21,'complete','2022-02-23 23:00:00','problemset','Newton\'s Method for Complex Variables','Project 5 Quiz','https://canvas.rice.edu/courses/45735/quizzes/63344',20,20),(108,12,'complete','2022-02-24 05:59:00','problemset','Local extrema problem set','Local Extrema WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Local_Extrema/?user=isa1&effectiveUser=isa1&key=dijhzFXKPsGssODc5Lqo1SGZKzu88Fxe',NULL,NULL),(109,12,'complete','2022-03-01 05:59:00','problemset','Extrema problem set','Homework 5','https://canvas.rice.edu/courses/46724/assignments/249675',NULL,NULL),(110,18,'complete','2022-02-24 05:59:00','other','Exam','Midterm 1','https://canvas.rice.edu/courses/45504/files/folder/EXAMS%20and%20REVIEWS/2022?preview=3508846',100,97),(111,19,'complete','2022-02-28 15:00:00','problemset','Phase equilibria','HW 06','https://canvas.rice.edu/courses/48300/quizzes/62835?module_item_id=440793',NULL,NULL),(112,18,'complete','2022-02-26 05:59:00','problemset','Macromolecules','Homework 5','https://canvas.rice.edu/courses/45504/quizzes/63270/take',100,100),(113,22,'complete','2022-02-26 06:00:00','projects','Presentation','Technical Presentation','https://docs.google.com/presentation/d/1hNnKwLiknbcUduTWHJGxKf6wt4o4rVrMtdkXmlNUSU0/edit#slide=id.g35ed75ccf_028',100,88),(114,20,'complete','2022-03-03 00:00:00','other','Gas Laws Lab','Prelab Notes 3','https://canvas.rice.edu/courses/46224/pages/lab-3-instructions-and-overview?module_item_id=429664',NULL,NULL),(115,12,'complete','2022-03-03 05:59:00','problemset','Absolute extrema problem set','Absolute Extrema WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Absolute_Extrema/?user=isa1&effectiveUser=isa1&key=ZcxFfmZ9ea7z3ZDpMwhS6UcGHJ1Qv48V',NULL,NULL),(116,19,'complete','2022-03-02 15:00:00','problemset','Phase equilibria','Unit 2 Power Set 2','https://canvas.rice.edu/courses/48300/assignments/250030?module_item_id=472309',NULL,NULL),(117,18,'complete','2022-03-05 05:59:00','problemset','Cell','Homework 6','https://canvas.rice.edu/courses/45504/quizzes/63269',NULL,NULL),(118,20,'complete','2022-03-03 00:00:00','problemset','Gas Laws Lab','Prelab Quiz 3','https://canvas.rice.edu/courses/46224/quizzes/61662',10,10),(119,22,'complete','2022-03-05 18:00:00','essays','Design Plan','Tech Memo 6','https://canvas.rice.edu/courses/45708/assignments/234288?module_item_id=435652',NULL,NULL),(120,21,'complete','2022-03-02 23:00:00','problemset','Population Model','Project 6 Quiz','https://canvas.rice.edu/courses/45735/quizzes/63355',20,20),(121,12,'complete','2022-03-04 05:59:00','problemset','Iterated integral problem set','Iterated Integrals WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Iterated_Integrals/?user=isa1&effectiveUser=isa1&key=VUegcLFog30hVFP4SYylums5d80pumNe',NULL,NULL),(122,12,'complete','2022-03-15 04:59:00','problemset','Double integral problem set','Double Integrals WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Double_Integrals/?key=VUegcLFog30hVFP4SYylums5d80pumNe&user=isa1&effectiveUser=isa1',NULL,NULL),(123,21,'complete','2022-03-08 05:59:00','projects','Population Model','Project 6','https://canvas.rice.edu/courses/45735/assignments/237925',NULL,NULL),(124,12,'complete','2022-03-11 05:59:00','problemset','Lagrange Multiplier and Double Integrals','Homework 6','https://canvas.rice.edu/courses/46724/assignments/250845',NULL,NULL),(125,18,'complete','2022-03-12 05:59:00','problemset','Phospholipid bilayer','Homework 7','https://quizlet.com/395580152/bioc-201-final-review-flash-cards/',NULL,NULL),(126,12,'complete','2022-03-10 05:59:00','problemset','Polar integration problem set','Polar Integration WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Polar_Integration/?user=isa1&effectiveUser=isa1&key=WjJp43rQbIGDTS6CcHMirntq5tWygyUe',NULL,NULL),(127,20,'complete','2022-03-10 00:00:00','problemset','Gas Laws Lab','Pre Discussion Assignment 3','https://canvas.rice.edu/courses/46224/modules/items/429527',NULL,NULL),(128,20,'complete','2022-03-10 00:00:00','problemset','Gas Laws Lab','Discussion Assignment 3','https://canvas.rice.edu/courses/46224/modules/items/429529',NULL,NULL),(129,21,'complete','2022-03-09 23:00:00','problemset','Modelling a Bridge','Project 7 Quiz','https://canvas.rice.edu/courses/45735/quizzes/63331',NULL,NULL),(130,21,'complete','2022-03-22 04:59:00','projects','Bridge in MATLAB','Project 7','https://canvas.rice.edu/courses/45735/assignments/237926',NULL,NULL),(131,24,'complete','2022-03-25 04:59:00','problemset','Relaxation','Homework 3','https://canvas.rice.edu/courses/47868/files/3544644?module_item_id=474290',NULL,NULL),(132,12,'complete','2022-03-15 04:59:00','problemset','Triple integrals problem set','Triple Integrals WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Triple_Integrals/?user=isa1&effectiveUser=isa1&key=PcvqhVWVWPImy5EnR3aYoHppxlVtowsp',NULL,NULL),(133,12,'complete','2022-03-26 04:59:00','problemset','Cylindrical and spherical coordinates problem set','Cylindrical and Spherical Coordinates','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Cylindrical_and_Spherical/?user=isa1&effectiveUser=isa1&key=CKKnduDg4XVdW4wWoA55DiNOpjG43iCx',NULL,NULL),(135,19,'complete','2022-03-10 22:36:00','other','Exam','Midterm 2','https://www.youtube.com/watch?v=nOLJ4yQpCd4',150,130),(136,21,'incomplete','2022-04-02 04:59:00','projects','Shape Analysis','Project 8','https://canvas.rice.edu/courses/45735/assignments/237929',NULL,NULL),(137,18,'complete','2022-03-26 04:59:00','problemset','Cell Structure','Homework 8','https://canvas.rice.edu/courses/45504/quizzes/63265',NULL,NULL),(138,20,'complete','2022-03-23 23:30:00','problemset','Acid-Base Reactions','Discussion Assignment 4','https://canvas.rice.edu/courses/46224/assignments/232596?module_item_id=429560',NULL,NULL),(139,12,'complete','2022-03-31 04:59:00','problemset','Multiple integrals problem set','Homework 7','https://canvas.rice.edu/courses/46724/assignments/251774',NULL,NULL),(140,12,'complete','2022-04-05 04:59:00','problemset','Change of coordinates problem set','Change of Coordinates WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Change_of_Coordinates/?user=isa1&effectiveUser=isa1&key=Y4obLtHVslIAjQpM3YMTdNitEsflkTF8',NULL,NULL),(141,24,'incomplete','2022-04-21 21:51:00','projects','Final presentation','Final Presentation','https://canvas.rice.edu/courses/47868',NULL,NULL),(142,19,'complete','2022-03-28 14:00:00','problemset','Acid-Base Reactions','HW 08','https://canvas.rice.edu/courses/48300/quizzes/62837?module_item_id=440795',NULL,NULL),(143,12,'complete','2022-03-29 04:59:00','problemset','Vector field problem set','Vector Fields WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Vector_Fields/?user=isa1&effectiveUser=isa1&key=X4PNY2bDNRfReUJ3JC9XrseOva2RL89E',NULL,NULL),(144,12,'complete','2022-04-01 04:59:00','problemset','Scalar Line Integrals WebWork','Scalar Line Integrals WebWork','https://webwork.math.rice.edu/webwork2/Math212Spring22Williams/Scalar_Line_Integrals/?user=isa1&effectiveUser=isa1&key=DxpxV0VXNzkKRmc8ptXKm8SlH9DQh7Na',NULL,NULL),(145,18,'incomplete','2022-04-05 04:59:00','other','Exam','Midterm 2','https://quizlet.com/588545964/bios-201-exam-review-flash-cards/',NULL,NULL),(146,21,'incomplete','2022-04-05 04:59:00','projects','Introduction to Python','Project 9','https://canvas.rice.edu/courses/45735/assignments/237930',NULL,NULL),(147,19,'incomplete','2022-04-04 14:00:00','problemset','Titrations','HW 09','https://canvas.rice.edu/courses/48300/quizzes/62838?module_item_id=440796',NULL,NULL),(148,20,'incomplete','2022-04-06 23:00:00','problemset','Titration Lab','Pre Discussion Assignment 5','https://canvas.rice.edu/courses/46224/assignments/232583?module_item_id=429542',NULL,NULL),(149,20,'incomplete','2022-04-06 23:00:00','problemset','Titration Lab','Discussion Assignment 5','https://canvas.rice.edu/courses/46224/assignments/232584',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpa`
--

LOCK TABLES `gpa` WRITE;
/*!40000 ALTER TABLE `gpa` DISABLE KEYS */;
INSERT INTO `gpa` VALUES (-4,'Intro to Psych','A+',3,12,'F21'),(-2,'Mechanics','B+',4,13.3332,'F21'),(-1,'ODE + Linear Algebra','B+',3,9.9999,'F21'),(5,'Multivariable Calculus',NULL,3,NULL,'S22'),(6,'Chemistry II',NULL,3,NULL,'S22'),(7,'Chemistry II Lab',NULL,1,NULL,'S22'),(8,'Biology',NULL,3,NULL,'S22'),(9,'Engineering Computation',NULL,3,NULL,'S22'),(10,'Engineering Design',NULL,3,NULL,'S22'),(11,'Astronomy','A+',1,4,'S22'),(12,'Physics Computer',NULL,1,NULL,'S22');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graded_assignments`
--

LOCK TABLES `graded_assignments` WRITE;
/*!40000 ALTER TABLE `graded_assignments` DISABLE KEYS */;
INSERT INTO `graded_assignments` VALUES (3,18,5,5,'Attendance','1',12,'Attendance'),(4,17,10,10,'Quizzes','8',21,'Quiz 0.0'),(6,14,10,10,'Quizzes','8',21,'Quiz 0.1'),(7,19,10,10,'RLA Attendance','11',21,'RLA Participation Week 1'),(8,8,1,1,'Homework Online','2',12,'Dot Product Worksheet'),(9,20,1,1,'Homework Online','2',12,'Cross Product Worksheet'),(12,22,5,5,'Homework Online',' Online',12,'Cross Product WebWork'),(13,23,4,4,'Homework Online',' Online',12,'Dot Product WebWork'),(14,24,5,5,'Homework Online',' Online',12,'Vectors WebWork'),(15,13,10,10,'Quizzes','8',21,'Quiz 0.2'),(16,16,10,10,'Quizzes','8',21,'Quiz 0.3'),(17,26,5,5,'Homework Online',' Online',12,'Planes WebWork'),(18,41,20,20,'Quizzes','8',21,'Project 1 Quiz'),(19,40,100,100,'Unpledged Projects','7',21,'Project 1'),(20,29,90,100,'Homework','16',18,'Homework 1'),(21,60,100,100,'Homework','16',18,'Homework 2'),(22,15,21,21,'Homework','21',19,'HW 01'),(23,30,15,15,'Homework','21',19,'HW 02'),(24,42,19,19,'Homework','21',19,'HW 03'),(25,75,28,30,'Assignments','23',20,'Week 1 Beer\'s Law Worksheet'),(26,76,20,20,'Assignments','23',20,'Lab Safety Quiz'),(27,37,15,15,'Assignments','23',20,'Prelab Notes'),(28,80,10,10,'Assignments','23',20,'Prelab Quiz 1'),(29,78,19.75,20,'Assignments','23',20,'InLab Notes 1'),(30,77,5,5,'Assignments','23',20,'Lab Conduct 1'),(31,74,144.75,550,'Lab','22',19,'Lab'),(32,31,9.7,10,'Quizzes','8',21,'Quiz 0.4'),(33,32,9.5,10,'Quizzes','8',21,'Quiz 0.5'),(34,44,10,10,'Quizzes','8',21,'Quiz 0.6'),(35,49,20,20,'Quizzes','8',21,'Project 2 Quiz'),(36,72,20,20,'Quizzes','8',21,'Project 3 Quiz'),(37,21,9,10,'Homework','33',23,'Homework 1'),(38,33,9.5,10,'Homework','33',23,'Homework 2'),(39,58,9.8,10,'Homework','33',23,'Homework 3'),(40,81,3,3,'Participation','34',23,'Participation'),(41,83,100,100,'Participation','35',24,'Participation'),(42,27,7,7,'Homework Online',' Online',12,'Lines WebWork'),(43,43,5,5,'Homework Online',' Online',12,'Parametric Curves WebWork'),(44,45,3,3,'Homework Online',' Online',12,'Vector Valued Functions WebWork'),(45,48,5,5,'Homework Online',' Online',12,'Multivariable Functions WebWork'),(46,59,5,5,'Homework Online',' Online',12,'Partial Derivatives WebWork'),(47,61,5,5,'Homework Online',' Online',12,'Tangent Planes WebWork'),(48,65,5,5,'Homework Online',' Online',12,'Directional Derivatives WebWork'),(49,84,5,5,'Homework Online',' Online',12,'Chain Rule WebWork'),(50,46,10,10,'Assignments','23',20,'Pre Discussion Assignment 1'),(51,85,100,100,'Homework','16',18,'Homework 3'),(52,39,10,10,'Group Assignments','10',21,'Group Assignment 1'),(53,50,10,10,'Group Assignments','10',21,'Group Assignment 2'),(54,63,10,10,'Homework','33',23,'Homework 4'),(55,87,20,20,'Quizzes','8',21,'Project 4 Quiz'),(56,51,100,100,'Unpledged Projects','7',21,'Project 2'),(57,94,139,150,'Unit 1 Exam','17',19,'Midterm 1'),(58,92,100,100,'Homework','16',18,'Homework 4'),(59,73,100,100,'Pledged Projects','9',21,'Project 3'),(60,107,20,20,'Quizzes','8',21,'Project 5 Quiz'),(61,79,37,40,'Assignments','23',20,'Discussion Assignment 1'),(62,101,15,15,'Homework','21',19,'HW 05'),(63,7,25,25,'Homework Written','3',12,'Homework 1'),(64,106,101,104,'Midterm 1','4',12,'Midterm 1'),(65,28,34,40,'Homework Written','3',12,'Homework 2'),(66,112,100,100,'Homework','16',18,'Homework 5'),(67,99,5,5,'Assignments','23',20,'Lab Conduct 2'),(68,70,10,10,'Assignments','23',20,'Prelab Quiz 2'),(69,71,15,15,'Assignments','23',20,'Prelab Notes 2'),(70,100,19.25,20,'Assignments','23',20,'InLab Notes 2'),(71,91,105,100,'Unpledged Projects','7',21,'Project 4'),(72,120,20,20,'Quizzes','8',21,'Project 6 Quiz'),(73,86,9.8,10,'Homework','33',23,'Homework 5'),(74,62,10,10,'Homework','33',23,'Homework 6'),(75,96,10,10,'Homework','33',23,'Homework 7'),(76,103,10,10,'Assignments','23',20,'Pre Discussion Assignment 2'),(77,104,39,40,'Assignments','23',20,'Discussion Assignment 2'),(78,118,10,10,'Assignments','23',20,'Prelab Quiz 3'),(79,113,88,100,'Design Proposal','26',22,'Technical Presentation'),(80,10,5,5,'Quiz Completion','30',22,'Engineering Design Process'),(81,110,97,100,'Exam 1','13',18,'Midterm 1'),(82,135,128,150,'Unit 2 Exam','18',19,'Midterm 2');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradingscheme`
--

LOCK TABLES `gradingscheme` WRITE;
/*!40000 ALTER TABLE `gradingscheme` DISABLE KEYS */;
INSERT INTO `gradingscheme` VALUES (1,12,'Attendance',0,5,NULL),(2,12,'Homework Online',0,5,NULL),(3,12,'Homework Written',0,20,NULL),(4,12,'Midterm 1',0,20,NULL),(5,12,'Midterm 2',0,20,NULL),(6,12,'Final',0,30,NULL),(7,21,'Unpledged Projects',0,50,NULL),(8,21,'Quizzes',0,15,NULL),(9,21,'Pledged Projects',0,20,NULL),(10,21,'Group Assignments',0,5,NULL),(11,21,'RLA Attendance',0,10,NULL),(12,21,'Optional Project',0,1,NULL),(13,18,'Exam 1',0,25,NULL),(14,18,'Exam 2',0,25,NULL),(15,18,'Exam 3',0,25,NULL),(16,18,'Homework',0,25,NULL),(17,19,'Unit 1 Exam',0,15,NULL),(18,19,'Unit 2 Exam',0,15,NULL),(19,19,'Unit 3 Exam',0,15,NULL),(20,19,'Final Exam',0,25,NULL),(21,19,'Homework',0,5,NULL),(22,19,'Lab',0,25,NULL),(23,20,'Assignments',550,0,NULL),(24,22,'Technical Memos',0,15,NULL),(25,22,'Self Reflection Memos',0,10,NULL),(26,22,'Design Proposal',0,15,NULL),(27,22,'Final Design and Prototype Demo',0,15,NULL),(28,22,'Prototype Evalutation',0,15,NULL),(29,22,'Team Participation',0,10,NULL),(30,22,'Quiz Completion',0,5,NULL),(31,22,'Mentor Participation',0,5,NULL),(32,22,'Exam',0,10,NULL),(33,23,'Homework',0,50,NULL),(34,23,'Participation',0,50,NULL),(35,24,'Participation',0,30,NULL),(36,24,'Assignments',0,50,NULL),(37,24,'Final Project',0,20,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readings`
--

LOCK TABLES `readings` WRITE;
/*!40000 ALTER TABLE `readings` DISABLE KEYS */;
INSERT INTO `readings` VALUES (5,12,'https://canvas.rice.edu/courses/46724/external_tools/3912','2022-01-14','Videos 3.1-3.2','Cross Product','complete'),(6,19,'https://openstax.org/books/chemistry-2e/pages/9-3-stoichiometry-of-gaseous-substances-mixtures-and-reactions','2022-01-14','Chapter 9.3','Stoichiometry of Gaseous Substances, Mixtures, and Reactions','complete'),(7,19,'https://cnx.org/contents/xq3piGJg@2.1:aPpvPV9J@2/The-Kinetic-Molecular-Theory','2022-01-19','CDN 15','The Kinetic Molecular Theory','complete'),(8,19,'https://openstax.org/books/chemistry-2e/pages/9-6-non-ideal-gas-behavior','2022-01-19','Chapter 9.6','Non-Ideal Gas Behavior','complete'),(9,18,'https://canvas.rice.edu/courses/45504/files/3352762/download?wrap=1','2022-01-19','Miller Paper','A Production of Amino Acids Under Primitive Earth Conditions','complete'),(10,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-01-19','Chapter 2','The Chemical Context of Life','complete'),(11,19,'https://cnx.org/contents/xq3piGJg@2.1:aPpvPV9J@2/The-Kinetic-Molecular-Theory','2022-01-21','CDN 15','Kinetic Molecular Theory','complete'),(12,19,'https://openstax.org/books/chemistry-2e/pages/9-4-effusion-and-diffusion-of-gases','2022-01-21','Chapter 9.4','Effusion and Diffusion of Gases','complete'),(13,19,'https://openstax.org/books/chemistry-2e/pages/9-5-the-kinetic-molecular-theory','2022-01-21','Chapter 9.5','The Kinetic Molecular Theory','complete'),(14,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-01-26','Chapter 3','Water','complete'),(15,19,'https://cnx.org/contents/xq3piGJg@2.1:QlJM_25S@4/Reaction-Rate-Laws','2022-01-26','CDN 19','Reaction Rate Laws','complete'),(16,19,'https://openstax.org/books/chemistry-2e/pages/12-1-chemical-reaction-rates','2022-01-26','Chapters 12.1-12.3','Kinetics','complete'),(17,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-02-02','Chapter 4','Carbon and the Molecular Diversity of Life','complete'),(18,19,'https://cnx.org/contents/xq3piGJg@2.1:ck0CUGFc@3/Reaction-Kinetics','2022-01-31','CDN 20','Reaction Kinetics','complete'),(19,19,'https://openstax.org/books/chemistry-2e/pages/12-7-catalysis','2022-02-04','Chapter 12.7','Catalysis','complete'),(20,19,'https://cnx.org/contents/xq3piGJg@2.1:aguuIwpv@3/Reaction-Equilibrium-in-the-Gas-Phase','2022-02-14','CDN 21','Reaction Equilibrium in the Gas Phase','complete'),(21,19,'https://openstax.org/books/chemistry-2e/pages/13-1-chemical-equilibria','2022-02-14','Chapters 13.1-13.2','Fundamental Equilibrium Concepts','complete'),(22,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-02-14','Chapter 5','Organic chemistry and biological molecules','complete'),(23,18,'https://canvas.rice.edu/courses/45504/files/3352815/download?wrap=1','2022-02-14','Anfinsen Paper','The Kinetics of Formation of Native Ribonuclease During Oxidation of the Reduced Polypeptide Chain','complete'),(24,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-02-14','On Societies as Organisms','Lives of A Cell','complete'),(25,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-02-14','A Fear of Pheromones','Lives of A Cell','complete'),(26,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-02-14','The Music of This Sphere','Lives of A Cell','complete'),(27,18,'https://canvas.rice.edu/courses/45504/assignments/syllabus','2022-02-25','Chapter 6','A Tour of the Cell','complete'),(28,19,'https://openstax.org/books/chemistry-2e/pages/16-1-spontaneity','2022-02-28','Chapters 16.1-16.3','Thermodynamics','complete'),(29,19,'https://cnx.org/contents/xq3piGJg@2.1:YrAqORSU@3/Entropy-and-the-Second-Law-of-Thermodynamics','2022-02-28','CDN 23','Entropy and the Second Law of Thermodynamics','complete');
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

-- Dump completed on 2022-03-31  8:28:12
