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
-- Table structure for table `solicitacao_peca`
--

DROP TABLE IF EXISTS `solicitacao_peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitacao_peca` (
  `id_solicitacao_peca` int NOT NULL AUTO_INCREMENT,
  `quantidade_peca` int unsigned NOT NULL,
  `valor_unitario_peca` decimal(8,2) NOT NULL,
  `id_avaliacao_orcamento_servico_fk` int DEFAULT NULL,
  `id_os_fk` int DEFAULT NULL,
  `id_peca_fk` int NOT NULL,
  PRIMARY KEY (`id_solicitacao_peca`),
  KEY `id_avaliacao_orcamento_servico_fk` (`id_avaliacao_orcamento_servico_fk`),
  KEY `id_os_fk` (`id_os_fk`),
  KEY `id_peca_fk` (`id_peca_fk`),
  CONSTRAINT `solicitacao_peca_ibfk_1` FOREIGN KEY (`id_avaliacao_orcamento_servico_fk`) REFERENCES `avaliacao_orcamento_servico` (`id_avaliacao_orcamento_servico`),
  CONSTRAINT `solicitacao_peca_ibfk_2` FOREIGN KEY (`id_os_fk`) REFERENCES `os` (`id_os`),
  CONSTRAINT `solicitacao_peca_ibfk_3` FOREIGN KEY (`id_peca_fk`) REFERENCES `peca` (`id_peca`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacao_peca`
--

LOCK TABLES `solicitacao_peca` WRITE;
/*!40000 ALTER TABLE `solicitacao_peca` DISABLE KEYS */;
INSERT INTO `solicitacao_peca` VALUES (1,1,52.80,1,NULL,1),(2,1,66.20,1,NULL,2),(3,4,32.40,1,NULL,3),(4,1,66.20,2,NULL,2),(5,4,32.40,2,NULL,3),(6,1,52.80,3,NULL,1),(7,1,66.20,3,NULL,2),(8,4,32.40,3,NULL,3),(9,1,52.80,4,NULL,1),(10,1,66.20,4,NULL,2),(11,4,32.40,4,NULL,3),(12,1,26.00,4,NULL,4),(13,1,96.00,4,NULL,5),(14,1,876.78,6,NULL,6),(15,1,16.00,7,NULL,8),(16,1,78.60,NULL,5,7);
/*!40000 ALTER TABLE `solicitacao_peca` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01 23:02:02
