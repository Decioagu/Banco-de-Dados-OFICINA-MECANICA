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
-- Table structure for table `equipe_avaliacao`
--

DROP TABLE IF EXISTS `equipe_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipe_avaliacao` (
  `id_equipe_avaliacao` int NOT NULL AUTO_INCREMENT,
  `id_avaliacao_orcamento_servico_fk` int NOT NULL,
  `id_colaborador_fk` int NOT NULL,
  PRIMARY KEY (`id_equipe_avaliacao`),
  KEY `id_avaliacao_orcamento_servico_fk` (`id_avaliacao_orcamento_servico_fk`),
  KEY `id_colaborador_fk` (`id_colaborador_fk`),
  CONSTRAINT `equipe_avaliacao_ibfk_1` FOREIGN KEY (`id_avaliacao_orcamento_servico_fk`) REFERENCES `avaliacao_orcamento_servico` (`id_avaliacao_orcamento_servico`),
  CONSTRAINT `equipe_avaliacao_ibfk_2` FOREIGN KEY (`id_colaborador_fk`) REFERENCES `colaborador` (`id_colaborador`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipe_avaliacao`
--

LOCK TABLES `equipe_avaliacao` WRITE;
/*!40000 ALTER TABLE `equipe_avaliacao` DISABLE KEYS */;
INSERT INTO `equipe_avaliacao` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,4,5),(6,4,7),(7,5,1),(8,6,8),(9,7,7);
/*!40000 ALTER TABLE `equipe_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01 23:02:04
