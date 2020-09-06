CREATE DATABASE  IF NOT EXISTS `agricolario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `agricolario`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: agricolario
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `applicazioneprodotto`
--

DROP TABLE IF EXISTS `applicazioneprodotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicazioneprodotto` (
  `idapplicazioneprodotto` int NOT NULL,
  `idprodottofitosanitario` int NOT NULL,
  `coltura` varchar(45) NOT NULL,
  `dose` varchar(45) NOT NULL,
  PRIMARY KEY (`idapplicazioneprodotto`),
  KEY `idprodottofitosanitario_idx` (`idprodottofitosanitario`),
  CONSTRAINT `idprodfito` FOREIGN KEY (`idprodottofitosanitario`) REFERENCES `prodottofitosanitario` (`idprodottofitosanitario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='tabella che indica su quali prodotti (più di uno) è applicabile un singolo prodotto fitosanitario\n(è venuta fuori perché sull''etichetta di un prodotto c''è anche la lista di colture su cui è applicabile, quindi meglio aggiungere una tabella piuttosto che un campo "coltura" in prodottofitosanitario, perché in questo caso avremmo avuto più righe uguali con il solo campo coltura diverso per ciascuna di essi)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `azienda`
--

DROP TABLE IF EXISTS `azienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `azienda` (
  `idazienda` int NOT NULL,
  `nomeAzienda` varchar(45) NOT NULL,
  `indirizzo` varchar(45) NOT NULL,
  `città` varchar(45) NOT NULL,
  `DataFondazione` date NOT NULL,
  `cap` varchar(45) NOT NULL,
  `idutente` int NOT NULL,
  PRIMARY KEY (`idazienda`),
  UNIQUE KEY `nomeAzienda_UNIQUE` (`nomeAzienda`),
  KEY `idutente_idx` (`idutente`),
  CONSTRAINT `idutente` FOREIGN KEY (`idutente`) REFERENCES `utente` (`idutente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `compilazioneregistro`
--

DROP TABLE IF EXISTS `compilazioneregistro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compilazioneregistro` (
  `idcompilazioneregistro` int NOT NULL AUTO_INCREMENT,
  `idutente` int unsigned NOT NULL,
  `idregistrofitosanitario` int unsigned NOT NULL,
  PRIMARY KEY (`idcompilazioneregistro`),
  UNIQUE KEY `idregistrofitosanitario_UNIQUE` (`idregistrofitosanitario`),
  KEY `idutntecompilazione_idx` (`idutente`),
  KEY `idregistro_idx` (`idregistrofitosanitario`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `delega`
--

DROP TABLE IF EXISTS `delega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delega` (
  `idtitolare` int NOT NULL,
  `idutente` int NOT NULL,
  `idregistrofitosanitario` int NOT NULL,
  KEY `idtitolare_idx` (`idtitolare`),
  KEY `iddelegato_idx` (`idutente`),
  KEY `idregistrofitosanitario_idx` (`idregistrofitosanitario`),
  CONSTRAINT `iddelegato` FOREIGN KEY (`idutente`) REFERENCES `utente` (`idutente`),
  CONSTRAINT `idregistrofitosanitariodelega` FOREIGN KEY (`idregistrofitosanitario`) REFERENCES `registrofitosanitario` (`idregistrofitosanitario`),
  CONSTRAINT `idtitolare` FOREIGN KEY (`idtitolare`) REFERENCES `utente` (`idutente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magazzino`
--

DROP TABLE IF EXISTS `magazzino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazzino` (
  `idazienda` int NOT NULL,
  `idprodottofitosanitario` int NOT NULL,
  `quantitaDisp` double NOT NULL,
  KEY `idprodottofitosanitario_idx` (`idprodottofitosanitario`),
  KEY `idazienda_idx` (`idazienda`),
  CONSTRAINT `idazienda` FOREIGN KEY (`idazienda`) REFERENCES `azienda` (`idazienda`),
  CONSTRAINT `idprodottofitosanitario` FOREIGN KEY (`idprodottofitosanitario`) REFERENCES `prodottofitosanitario` (`idprodottofitosanitario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notifiche`
--

DROP TABLE IF EXISTS `notifiche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifiche` (
  `data` date NOT NULL,
  `idmittente` int DEFAULT NULL,
  `idricevente` int DEFAULT NULL,
  `letta` tinyint NOT NULL,
  `informazioni` varchar(250) NOT NULL,
  `idnotifica` int NOT NULL AUTO_INCREMENT,
  `notifichecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnotifica`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prodottofitosanitario`
--

DROP TABLE IF EXISTS `prodottofitosanitario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodottofitosanitario` (
  `idprodottofitosanitario` int NOT NULL,
  `etichetta` varchar(300) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `impresa` varchar(45) NOT NULL,
  `stato` enum('attivo','revocato','scaduto') NOT NULL,
  `scadenza` date NOT NULL,
  `quantita` varchar(45) NOT NULL,
  `funzione` enum('insetticida','fungicida','nematocida','acaricida','erbicida') NOT NULL,
  `forma` enum('polvere','liquido','concentrato') NOT NULL,
  `avversita` varchar(150) NOT NULL,
  `temporientro` int NOT NULL,
  `tempocarenza` int NOT NULL,
  `pericolo` varchar(45) NOT NULL,
  PRIMARY KEY (`idprodottofitosanitario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registrofitosanitario`
--

DROP TABLE IF EXISTS `registrofitosanitario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrofitosanitario` (
  `idregistrofitosanitario` int NOT NULL,
  `DataCreazione` date NOT NULL,
  PRIMARY KEY (`idregistrofitosanitario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trattamento`
--

DROP TABLE IF EXISTS `trattamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trattamento` (
  `idtrattamento` int NOT NULL AUTO_INCREMENT,
  `idprodotto` int NOT NULL,
  `idregistro` int NOT NULL,
  `coltura` varchar(45) NOT NULL,
  `dataInizio` date NOT NULL,
  `superficieInEttari` double NOT NULL,
  `nomeprodotto` varchar(45) NOT NULL,
  `quantitaProdotto` float(8,2) NOT NULL,
  `unitaDiMisuraProdotto` varchar(45) NOT NULL,
  `avversita` varchar(45) NOT NULL,
  `note` varchar(300) DEFAULT NULL,
  `approvazione` tinyint DEFAULT NULL,
  PRIMARY KEY (`idtrattamento`),
  KEY `idprodottofitosanitario_idx` (`idprodotto`),
  KEY `idregistro_idx` (`idregistro`),
  CONSTRAINT `idprodottofito` FOREIGN KEY (`idprodotto`) REFERENCES `prodottofitosanitario` (`idprodottofitosanitario`),
  CONSTRAINT `idregistro` FOREIGN KEY (`idregistro`) REFERENCES `registrofitosanitario` (`idregistrofitosanitario`)
) ENGINE=InnoDB AUTO_INCREMENT=1129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `idutente` int NOT NULL AUTO_INCREMENT,
  `ruolo` enum('titolare','delegato') NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `dataNascita` date NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idutente`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-20 16:53:10
