CREATE DATABASE  IF NOT EXISTS `oficina_mecanica` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `oficina_mecanica`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: oficina_mecanica
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(60) NOT NULL,
  `tipo_cadastro` enum('cpf','cnpj') NOT NULL DEFAULT 'cpf',
  `numero_cadastro` varchar(18) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `e_mail` varchar(60) NOT NULL,
  `id_endereco_fk` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `numero_cadastro` (`numero_cadastro`),
  UNIQUE KEY `telefone` (`telefone`),
  UNIQUE KEY `e_mail` (`e_mail`),
  KEY `id_endereco_fk` (`id_endereco_fk`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_endereco_fk`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Décio Santana','cpf','104.590.587-77','21 99525-7801','deciosa@gmail.com',1),(2,'Ana Rosa','cpf','098564897-90','(21) 98789-6940','anarosa@hotmail.com.br',3),(3,'Luana Nogueira','cpf','11122233344','(21) 2145-3345','luananog@gmail.com',2),(4,'Eletrônica Ita','cnpj','32.667.144/0001-02','(11) 3267-6666','eletronicaita@gmail.com',4),(5,'Casa Maite','cnpj','10.555.762/0001-02','(21) 99678-3240','casamaite@gmail.com',6),(6,'Zé Ruela Parafusos','cnpj','12.444.832/0001-02','21 3278-4233','zrp@gmail.com',5),(7,'Mathues Lasaro','cpf','897.643.090-45','(11) 99785-5643','matlasa@gmail.com',7);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01 23:02:01
