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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Espresso','Um shot de espresso forte e encorpado.',2.50,'Café'),(2,'Cappuccino','Espresso, leite vaporizado e espuma de leite.',3.50,'Café'),(3,'Latte Macchiato','Leite vaporizado, espresso e espuma de leite.',4.00,'Café'),(4,'Mocha','Espresso, leite vaporizado, chocolate e chantilly.',4.50,'Café'),(5,'Café da Casa','Café da casa especial com sabor suave.',2.00,'Café'),(6,'Chá de Camomila','Chá de camomila com mel e limão.',2.00,'Chá'),(7,'Omelete de Queijo','Omelete recheada com queijo e ervas.',7.50,'Almoço'),(8,'Quiche de Espinafre','Quiche de espinafre e queijo de cabra.',8.00,'Almoço'),(9,'Frango ao Curry','Frango ao curry com arroz basmati.',9.00,'Jantar'),(10,'Tiramisu','Sobremesa italiana com café e mascarpone.',5.00,'Sobremesa'),(11,'Croissant de Chocolate','Croissant recheado com chocolate belga.',3.50,'Sobremesa'),(12,'Cappuccino Gelado','Cappuccino gelado com chantilly e canela.',4.50,'Café'),(13,'Salada de Quinoa','Salada de quinoa com vegetais frescos.',7.00,'Almoço'),(14,'Sanduíche de Peru','Sanduíche de peru com queijo e mostarda.',6.00,'Almoço'),(15,'Salmão Grelhado','Salmão grelhado com legumes da estação.',11.00,'Jantar'),(16,'Cheesecake de Framboesa','Cheesecake de framboesa com calda.',5.50,'Sobremesa'),(17,'Smoothie de Frutas','Smoothie refrescante de frutas da estação.',4.00,'Bebidas'),(18,'Chá Verde','Chá verde com gengibre e limão.',2.50,'Chá'),(19,'Baguete de Presunto','Baguete fresca recheada com presunto e queijo.',10.00,'Almoço'),(20,'Salada de Frutas','Salada de frutas frescas com iogurte.',4.00,'Sobremesa'),(21,'Caprese Wrap','Wrap recheado com tomate, mozzarella e manjericão.',6.50,'Almoço'),(22,'Muffin de Mirtilo','Muffin de mirtilo recém-assado.',3.00,'Café'),(23,'Smoothie de Manga','Smoothie refrescante de manga e banana.',4.50,'Bebidas'),(24,'Misto Quente','Sanduíche misto quente de presunto e queijo.',5.50,'Almoço'),(25,'Tarte Tatin de Maçã','Tarte de maçã caramelizada.',5.00,'Sobremesa'),(26,'Sanduíche de Frango','Sanduíche de frango grelhado e abacate.',7.00,'Almoço'),(27,'Batido de Morango','Batido cremoso de morango com chantilly.',4.50,'Bebidas'),(28,'Croissant de Amêndoa','Croissant recheado com chocolate belga.',3.50,'Sobremesa'),(29,'Tofu Scramble','Scramble de tofu com vegetais e espinafre.',6.50,'Sobremesa'),(30,'Salada de Atum','Salada de atum com feijão e pimentão.',8.00,'Almoço'),(31,'Lasanha à Bolonhesa','Deliciosa lasanha caseira com molho bolonhesa',12.50,'Almoço'),(32,'Arroz Carreteiro','Arroz Carreteiro da casa',10.00,'Almoço');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
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
