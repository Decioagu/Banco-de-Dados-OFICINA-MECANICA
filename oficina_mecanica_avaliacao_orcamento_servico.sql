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
-- Table structure for table `avaliacao_orcamento_servico`
--

DROP TABLE IF EXISTS `avaliacao_orcamento_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao_orcamento_servico` (
  `id_avaliacao_orcamento_servico` int NOT NULL AUTO_INCREMENT,
  `responsavel_avaliacao_orcamento_servico` varchar(45) NOT NULL,
  `tipo_tarefa` enum('revisão periódica','manuteção') NOT NULL DEFAULT 'manuteção',
  `data_avaliacao` date NOT NULL,
  `valor_orcamento_servico` decimal(9,2) NOT NULL,
  `id_veiculo_fk` int NOT NULL,
  `descricao_orcamento_servico` text,
  PRIMARY KEY (`id_avaliacao_orcamento_servico`),
  KEY `id_veiculo_fk` (`id_veiculo_fk`),
  CONSTRAINT `avaliacao_orcamento_servico_ibfk_1` FOREIGN KEY (`id_veiculo_fk`) REFERENCES `veiculo` (`id_veiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao_orcamento_servico`
--

LOCK TABLES `avaliacao_orcamento_servico` WRITE;
/*!40000 ALTER TABLE `avaliacao_orcamento_servico` DISABLE KEYS */;
INSERT INTO `avaliacao_orcamento_servico` VALUES (1,'Fabio Aguiar','revisão periódica','2022-10-02',1200.83,1,'Manutenção kit-2'),(2,'Fabio Aguiar','revisão periódica','2022-10-04',890.00,8,'Manutenção kit-3'),(3,'Marcelo Silva','revisão periódica','2022-10-04',978.00,7,'Manutenção kit-2'),(4,'Marcelo Silva','manuteção','2022-10-11',2982.20,2,'Manutenção kit-1, lanternagem porta motorista, pintura geral'),(5,'Fabio Aguiar','manuteção','2022-10-11',120.00,3,'Troca de pneus'),(6,'Marcelo Silva','manuteção','2022-10-11',1450.00,4,'Troca para novo para-choque'),(7,'Fabio Aguiar','manuteção','2022-10-12',32.00,5,'Troca lâmpada farol de milha lado esquerdo');
/*!40000 ALTER TABLE `avaliacao_orcamento_servico` ENABLE KEYS */;
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
