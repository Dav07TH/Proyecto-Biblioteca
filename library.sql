CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `library`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library
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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` varchar(30) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `edit` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `pages` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ejemplares` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `available` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('970-627-240-1','Viaje al centro de la Tierra','1864','Julio Verne','Ciencia Ficcion, Fantasia, Aventura','Hetzel','Español','239','Trata de la expedición de un profesor de mineralogía el profesor Lidenbrock, su sobrino Axel y un guía llamado Hans, viajan al interior de la Tierra y se encuentran en su aventura con una gran sorpresa al llegar.','50',50,50),('978-0-7851-1721-6','Secret War','2005','Brian Michael, Gabriele Dellotto','Comic, Ciencia Ficcion, Accion','Marvel','Ingles','256','When Nick Fury finds a disturbing connection.','50',50,50),('978-607-07-2839-6','Hackers del fin del mundo','2015','Ruy Xoconostle','Ciencia Ficcion','Destino','Español','239','Narra la historia de un grupo de sicarios sobrehumanos contratados por el gobierno para eliminar a un poderoso telépata.','100',100,100),('978-607-14-1129-7','Las aventuras de Tom Sawyer','2019','Mark Twain','Novela','Editores Mexicanos Unidos','Español','154','Tom Sawyer vive con su tía Polly y su medio hermano, Sidney. En una pelea callejera, Tom se ensucia la ropa y le obligan a pintar la valla al día siguiente como castigo.','70',70,70),('978-84-441-4825-0','Destripador','2012','Stefan Petrucha','Novela, Terror, Suspenso','Everest','Español','501','Un asesino campa a sus anchas en la ciudad de Nueva York','100',100,99),('9786070727764','PAX El baston Maldito','2015','Asa Larsson, Henrik Jonsson, Ingela Korsell','Infantil,Fantasía y ciencia ficción','Planeta','Español','146','Cosas extrañas suceden en Mariefred. El pueblo esconde una enigmática biblioteca que las fuerzas del bien y el mal se disputan.','100',100,98);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lendings`
--

DROP TABLE IF EXISTS `lendings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lendings` (
  `user_id` varchar(255) DEFAULT NULL,
  `book_id` varchar(255) DEFAULT NULL,
  `date_out` varchar(255) NOT NULL,
  `date_return` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lendings`
--

LOCK TABLES `lendings` WRITE;
/*!40000 ALTER TABLE `lendings` DISABLE KEYS */;
INSERT INTO `lendings` VALUES ('215428899','9786070727764','19-11-2021','24-11-2021'),('220286229','9786070727764','19-11-2021','24-11-2021'),('215662093','978-84-441-4825-0','19-11-2021','24-11-2021');
/*!40000 ALTER TABLE `lendings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `NSS` int NOT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `domicilio` varchar(70) DEFAULT NULL,
  `fecha_nac` varchar(70) NOT NULL,
  `fecha_in` varchar(70) NOT NULL,
  `contra` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`NSS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'admin',1234567890,'Revolucion#4','12/10/1980','15/5/2009','1234');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `codigo` varchar(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `last_name_p` varchar(30) DEFAULT NULL,
  `last_name_m` varchar(30) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `carrera` varchar(50) DEFAULT NULL,
  `ocupacion` varchar(20) DEFAULT NULL,
  `limite` int NOT NULL,
  `sanctions` int DEFAULT NULL,
  `sanc_money` int DEFAULT NULL,
  `domicilio` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('138617','Luis Felipe','Mariscal','Lugo','2255886644','INCO','Maestro',0,NULL,NULL,NULL),('140476','Jose Ignacio','Vazquez','Herrera','7744112233','INCO','Maestro',0,NULL,NULL,NULL),('215428899','David','Torres','Hernandez','3317226154','INCO','Estudiante',1,NULL,NULL,NULL),('215662093','Carlos','Ruiz','Salcedo','9874563210','INCO','Estudiante',1,NULL,NULL,NULL),('220286229','Sunem','Sandoval','Gil','3329032305','INCO','Estudiante',1,NULL,NULL,NULL),('42650','Jairo Cain','Sanchez','Estrada','7799113355','INCO','Maestro',0,NULL,NULL,NULL),('42663','Carlos Dario','Arenas','Yerena','3366995511','INCO','Maestro',0,NULL,NULL,NULL),('78089','Gerardo','Garcia','Gil','1155996633','INCO','Maestro',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'library'
--

--
-- Dumping routines for database 'library'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26 11:38:14
