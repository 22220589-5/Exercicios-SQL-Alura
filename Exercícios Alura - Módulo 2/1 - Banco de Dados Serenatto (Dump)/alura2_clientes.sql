CREATE DATABASE  IF NOT EXISTS `alura2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alura2`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: alura2
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Sem email',
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Maria Silva','115551234','maria.silva@email.com','Rua das Flores, 123, Cidade A'),(2,'João Pereira','215555678','joao.pereira@email.com','Av. Principal, 456, Cidade B'),(3,'Ana Rodrigues','315557890','ana.rodrigues@email.com','Rua Central, 789, Cidade C'),(4,'Pedro Alves','415552345','pedro.alves@email.com','Travessa dos Sonhos, 56, Cidade D'),(5,'Sofia Santos','515558765','sofia.santos@email.com','Alameda das Artes, 321, Cidade E'),(6,'Jorge Lima','615553421','jorge.lima@email.com','Praça das Estrelas, 987, Cidade F'),(7,'Luisa Ferreira','715559876','luisa.ferreira@email.com','Rua das Palmeiras, 789, Cidade G'),(8,'Carlos Gomes','815552345','carlos.gomes@email.com','Avenida dos Ventos, 123, Cidade H'),(9,'Marta Ribeiro','915555432','marta.ribeiro@email.com','Travessa das Maravilhas, 56, Cidade I'),(10,'Ana Maria Silva','1515557890','ana.silva@email.com','Rua Central, 567, Cidade O'),(11,'André Almeida','1015556789','Sem email','Praça da Felicidade, 456, Cidade J'),(12,'João Carlos Rodrigues','1615552345','joao.rodrigues@email.com','Praça dos Poetas, 321, Cidade P'),(13,'Isabela Pereira','1115558765','Sem email','Rua das Araras, 789, Cidade K'),(14,'Isabel Gonçalves','1715558765','isabel.goncalves@email.com','Alameda das Gaivotas, 654, Cidade Q'),(15,'Ricardo Ferreira','1815554321','ricardo.ferreira@email.com','Avenida da Paz, 987, Cidade R'),(16,'Mariana Costa','1915551234','mariana.costa@email.com','Travessa das Mariposas, 234, Cidade S'),(17,'Luís Carlos Sousa','2015555678','luis.sousa@email.com','Rua dos Sonhos, 456, Cidade T'),(18,'Silvia Ribeiro','2115557890','silvia.ribeiro@email.com','Alameda dos Sorrisos, 765, Cidade U'),(19,'Artur Santos','2215552345','artur.santos@email.com','Praça das Alegrias, 987, Cidade V'),(20,'Arya Santos','2215552852','arya.santos@email.com','Rua Gloriosa, 96, Cidade V'),(21,'Carolina Lima','2315558765','carolina.lima@email.com','Avenida da Felicidade, 654, Cidade W'),(22,'Pedro Almeida','2415554321','pedro.almeida@email.com','Rua das Estrelas, 123, Cidade X'),(23,'Inês Gonçalves','2515551234','ines.goncalves@email.com','Travessa das Maravilhas, 234, Cidade Y'),(24,'Rui Santos','1215554321','Sem email','Alameda das Estrelas, 654, Cidade L'),(25,'Diogo Fernandes','2615555678','diogo.fernandes@email.com','Praça dos Desejos, 987, Cidade Z'),(26,'Helena Lima','1315551234','Sem email','Avenida dos Sonhos, 234, Cidade M'),(27,'Paulo Sousa','1415555678','Sem email','Travessa das Marés, 876, Cidade N'),(28,'João Santos','215555678','joao.santos@email.com','Avenida Principal, 456, Cidade B'),(29,'Carla Ferreira','315557890','carla.ferreira@email.com','Travessa das Ruas, 789, Cidade C');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-25 17:19:46
