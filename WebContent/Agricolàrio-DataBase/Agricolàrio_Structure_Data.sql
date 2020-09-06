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
-- Dumping data for table `applicazioneprodotto`
--

LOCK TABLES `applicazioneprodotto` WRITE;
/*!40000 ALTER TABLE `applicazioneprodotto` DISABLE KEYS */;
INSERT INTO `applicazioneprodotto` VALUES (1,1,'Pomodoro','1.5 l/ha'),(2,1,'Barbabietola','1.5 l/ha'),(3,1,'Soia','1.25 l/ha'),(4,1,'Girasole','1.5 l/ha'),(5,1,'Patata','1.5 l/ha'),(6,1,'Riso','0.75 l/ha'),(7,1,'Carciofo','1.5 l/ha'),(8,1,'Carota','1.0 l/ha'),(9,1,'Cipolla','1.0 l/ha'),(10,1,'Vite','1.5 l/ha'),(11,2,'Vite','2 l/ha'),(12,2,'Melo','2.5 l/ha'),(13,2,'Pero','2.5 l/ha'),(14,2,'Agrumi','1.5 l/ha'),(15,2,'Olivo','2 l/ha'),(16,2,'Mandorlo','2 l/ha'),(17,2,'Fragola','1.25 l/ha'),(18,2,'Pomodoro','2 l/ha'),(19,2,'Carciofo','1.5 l/ha'),(20,2,'Melanzana','1.5 l/ha'),(21,3,'Frumento','1.5 l/ha'),(22,3,'Farro','1.5 l/ha'),(23,3,'Orzo','1.5 l/ha'),(24,3,'Segale','1.5 l/ha'),(25,3,'Avena','1.5 l/ha'),(26,4,'Agrumi','0.2 l/ha'),(27,4,'Pomodoro','0.2 l/ha'),(28,4,'Melo','0.36 l/ha'),(29,4,'Pero','0.36 l/ha'),(30,4,'Vite','0.32 l/ha'),(31,4,'Melanzana','0.2 l/ha'),(32,4,'Peperone','0.2 l/ha'),(33,4,'Soia','0.4 l/ha'),(34,4,'cetriolo','0.16 l/ha'),(35,5,'Vite','4 kg/ha'),(36,5,'Pomodoro','5 kg/ha'),(37,5,'Fragola','5 kg/ha'),(38,5,'Melanzana','7.5 kg/ha'),(39,5,'Peperone','7.5 kg/ha'),(40,5,'Patata','5 kg/ha'),(41,5,'Mandorlo','5 kg/ha'),(42,5,'Carciofo','7.5 kg/ha'),(43,5,'Finocchio','7.5 kg/ha'),(44,6,'Pomodoro','10 l/ha'),(45,6,'Peperone','10 l/ha'),(46,6,'Melanzana','10 l/ha'),(47,6,'Cetriolo','10 l/ha'),(48,7,'Pomodoro','55 kg/ha'),(49,7,'Peperone','55 kg/ha'),(50,7,'Carota','25 kg/ha'),(51,7,'Patata','55 kg/ha'),(52,7,'Melanzana','55 kg/ha'),(53,8,'Agrumi','0.8 kg/ha'),(54,8,'Pomodoro','1 kg/ha'),(55,8,'Olivo','0.8 kg/ha'),(56,8,'Vite','1 kg/ha'),(57,8,'Mais','1 kg/ha'),(58,8,'Patata','1 kg/ha'),(59,8,'Fragola','1 kg/ha'),(60,8,'Carciofo','1 kg/ha'),(61,8,'Riso','2 kg/ha'),(62,8,'Soia','1 kg/ha'),(63,8,'Girasole','1 kg/ha'),(64,8,'Finocchio','1.65 kg/ha'),(65,8,'Fagiolo','0.85 kg/ha'),(66,8,'Zucchino','1.65 kg/ha'),(67,8,'Barbabietola','1.65 kg/ha'),(68,8,'Peperone','1 kg/ha'),(69,8,'Lattuga','2 kg/ha'),(70,8,'Melanzana','1 kg/ha');
/*!40000 ALTER TABLE `applicazioneprodotto` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `azienda`
--

LOCK TABLES `azienda` WRITE;
/*!40000 ALTER TABLE `azienda` DISABLE KEYS */;
INSERT INTO `azienda` VALUES (1,'Verdurissima Srl','via Ripuaria 23','Pompei','1996-08-08','80045',2),(2,'F.lli Zircone Agricoltura','via Beato Vincenzo Romano 52','Volla','1980-10-19','80040',5),(3,'Azienda Agricola Pannone','via Lazio 19','Oriolo Romano','1960-12-22','01010',1),(4,'Agricoltura Bio Dr. Verdi','via della Marcigliana 136','Roma ','1978-04-07','00139',7),(11,'Alessandro Capodanno','via del campo','TUFINO','2020-07-01','80030',25),(10584096,'AgreenColtura','Via Caserta','Napoli','1986-08-19','80030',26),(26054231,'Zelig','via Appia','Roma','1989-12-31','RO',32),(31668250,'aaaaaaaaaaa','aaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaa','1111-01-10','1111111',30),(53771301,'Agri','via ottaviano','ottabiano','1990-12-30','0258',27);
/*!40000 ALTER TABLE `azienda` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `compilazioneregistro`
--

LOCK TABLES `compilazioneregistro` WRITE;
/*!40000 ALTER TABLE `compilazioneregistro` DISABLE KEYS */;
INSERT INTO `compilazioneregistro` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,5,5),(6,7,6),(7,2,7),(19,25,86858486),(20,26,112451407),(21,27,83663162);
/*!40000 ALTER TABLE `compilazioneregistro` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `delega`
--

LOCK TABLES `delega` WRITE;
/*!40000 ALTER TABLE `delega` DISABLE KEYS */;
INSERT INTO `delega` VALUES (7,6,6),(2,3,7),(1,7,4),(1,4,4),(1,6,4);
/*!40000 ALTER TABLE `delega` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `magazzino`
--

LOCK TABLES `magazzino` WRITE;
/*!40000 ALTER TABLE `magazzino` DISABLE KEYS */;
INSERT INTO `magazzino` VALUES (1,1,30),(1,3,20),(2,2,23),(2,7,50),(1,8,12),(4,8,12),(4,1,30),(4,7,25),(2,1,50),(1,5,42),(2,4,19),(4,5,40),(3,3,20),(3,2,25),(3,4,27),(3,6,13),(3,7,5),(3,8,36);
/*!40000 ALTER TABLE `magazzino` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `notifiche`
--

LOCK TABLES `notifiche` WRITE;
/*!40000 ALTER TABLE `notifiche` DISABLE KEYS */;
INSERT INTO `notifiche` VALUES ('2020-07-06',3,2,0,'Il delgato Flavio Perna ha inserito dei trattamenti nel registro! vai nella sezione registro e approva le modifiche!',71,NULL),('2020-07-06',1,4,1,'Sei stai  delgato da: Giuseppe Pannone',74,NULL),('2020-07-06',4,1,1,'Il delgato Simone Rocco ha inserito dei trattamenti nel registro! Vai nella sezione registro e approva le modifiche!',75,NULL),('2020-07-18',0,1,1,'Il seguente trattamento Heliocuivre eseguito in data 2020-03-15 sta per scadere tra -3 giorni!',142,NULL);
/*!40000 ALTER TABLE `notifiche` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `prodottofitosanitario`
--

LOCK TABLES `prodottofitosanitario` WRITE;
/*!40000 ALTER TABLE `prodottofitosanitario` DISABLE KEYS */;
INSERT INTO `prodottofitosanitario` VALUES (1,'https://www.winbdf.it/bdf-archivi/etichette1/16461.pdf','Centurion 240 Neo','Arysta LifeScience S.A.S.','attivo','2023-05-31','5l','erbicida','concentrato','Giavone; Sanguinella; Avena Selvatica; Fienarola; Setaria; Sorghetta; Falaride; Forasacco',7,100,'H304; H317; H336; H412'),(2,'https://www.biogard.it/images/PDF/italiano/label/HELIOCUIVRE_5L.pdf','Heliocuivre','Action Pin S.A.','attivo','2025-12-31','10l','fungicida','concentrato','Ticchiolatura; Cancro del Legno; Colpo di Fuoco; Lebbra; Fumaggine; Monilia; Batteriosi; Alternaria;  Peronospora',2,20,'H302; H315; H318; H400; H410'),(3,'https://www.agro.basf.it/Documents/ETICHETTE/PRIAXOR_17003_etichetta_DD-07.12.2017.pdf','Priaxor','Basf Italia S.P.A.','attivo','2022-12-31','5l','fungicida','concentrato','Septoria; Ruggine Bruna; Ruggine Gialla; Ruggine Nera; Oidio; Rincosporiosi; Maculatura; Ramularia',21,35,'H332; H302; H335; H351; H400; H410'),(4,'http://www.farmaexport.it/public/allegati_prod/Etichetta_2018-05-07_17-24-20.pdf','Matacar FL','Sipcam Italia S.P.A.','attivo','2024-05-31','1l','acaricida','concentrato','Ragnetto Rosso Comune; Ragnetto Rosso delle Piante da Frutto; Ragnetto Giallo della Vite; Ragnetto Rosso degli Agrumi; Acari',2,34,'H410'),(5,'https://shopping.agrimag.it/it/allegato/646/microthiol-disperss-etichetta.pdf?url=https%3A%2F%2Fres.cloudinary.com%2Fagrimag%2Fimage%2Fupload%2Fv1573480291%2Fproduct%2Fit%2F646%2Fadblw92vlqvvzsddtulb.pdf','Microthiol Disperss','UPL Europe LTD','attivo','2002-12-31','25kg','fungicida','polvere','Oidio',2,6,'EUH401'),(6,'http://www.fitosanitari.salute.gov.it/fitosanitariwsWeb_new/EtichettaServlet?id=25395','Afromyl','Industrias Afrasa S.A.','attivo','2021-01-31','10l','nematocida','liquido','Galligeni',20,21,'H300; H330; H411'),(7,'https://www.corteva.it/content/dam/dpagco/corteva/eu/it/it/products/files/DF_Vydate_10_G-label.pdf','Vydate 10G','Du Pont De Nemours Italiana S.R.L.','attivo','2021-01-31','20kg','nematocida','polvere','Galligeni; Cisticoli',1,1,'H301; H331; H410; EUH401'),(8,'https://shopping.agrimag.it/it/allegato/1527/xentari-wg-etichetta.pdf?url=https%3A%2F%2Fres.cloudinary.com%2Fagrimag%2Fimage%2Fupload%2Fv1575969271%2Fproduct%2Fit%2F1527%2Fetichetta.pdf','XenTari WG','Sumitomo Chemical Agro Europe S.A.S.','attivo','2021-04-30','5kg','insetticida','polvere','Falena; Tignola; Tignoletta; Piralide; Eula; Ifantria; Lepidotteri; Nottua; Nottuidi',1,14,'H319');
/*!40000 ALTER TABLE `prodottofitosanitario` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `registrofitosanitario`
--

LOCK TABLES `registrofitosanitario` WRITE;
/*!40000 ALTER TABLE `registrofitosanitario` DISABLE KEYS */;
INSERT INTO `registrofitosanitario` VALUES (2,'2018-01-03'),(3,'2019-01-04'),(4,'2020-01-02'),(6,'2020-01-03'),(7,'2020-01-03'),(26438321,'2020-07-08'),(83663162,'2020-07-18'),(86858486,'2020-07-08'),(92598136,'2020-07-08'),(112451407,'2020-07-18');
/*!40000 ALTER TABLE `registrofitosanitario` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `trattamento`
--

LOCK TABLES `trattamento` WRITE;
/*!40000 ALTER TABLE `trattamento` DISABLE KEYS */;
INSERT INTO `trattamento` VALUES (1,2,2,'Olivo','2018-09-10',0.1,'Heliocuivre',0.20,'l','Fumaggine','Lasciato in posa per 2 ore e poi risciacquato',NULL),(2,8,2,'Soia','2018-07-22',0.25,'XenTari WG',0.25,'kg','Ifantria','Terreno umidito prima dell\'applicazione',NULL),(3,3,2,'Orzo','2018-10-15',0.55,'Priaxor',0.82,'l','Oidio','Trattamento iniziato alle ore 6.30 del mattino',NULL),(4,3,2,'Frumento','2018-12-25',0.5,'Priaxor',0.75,'5l','Septoria','Applicato con nebulizzatore',NULL),(5,4,3,'Agrumi','2019-02-05',0.5,'Matacar FL',0.10,'1l','Ragno rosso comune','Il trattamento ha avuto effetto immediato',NULL),(6,1,3,'Pomodoro','2019-04-25',0.5,'Centurion 240 Neo',0.75,'5l','Sanguinella','Aggiunto alla coltura ogni due ore',NULL),(7,2,3,'Olivo','2019-07-10',0.1,'Heliocuivre',0.20,'l','Fumaggine','Lasciato in posa per 2 ore e poi risciacquato',NULL),(8,1,3,'Pomodoro','2019-08-25',0.5,'Centurion 240 Neo',0.75,'5l','Falaride','Aggiunto gradualmente alla piantaggione',NULL),(9,2,4,'Olivo','2020-03-15',0.1,'Heliocuivre',0.20,'l','Batteriosi','Aggiunto ogni 2 ore in dosi crescenti',NULL),(10,2,4,'Olivo','2020-04-10',0.1,'Heliocuivre',0.20,'l','Fumaggine','Lasciato in posa per 2 ore e poi risciacquato',NULL),(11,8,4,'Soia','2020-06-22',0.25,'XenTari WG',0.25,'kg','Ifantria','Terreno umidito prima dell\'applicazione',NULL),(12,3,4,'Orzo','2020-08-15',0.55,'Priaxor',0.82,'l','Oidio','Trattamento iniziato alle ore 6.30 del mattino',NULL),(13,3,4,'Frumento','2020-09-25',0.5,'Priaxor',0.75,'5l','Septoria','Applicato con nebulizzatore',NULL),(1127,1,112451407,'Vite','2020-07-17',10,'Centurion 240 Neo',15.00,'l',' Falaride','Trattamento eseguito a caldo',NULL);
/*!40000 ALTER TABLE `trattamento` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'titolare','Giuseppe','Pannone','motoGP','1970-11-11','pannonegiu@gmail.com'),(2,'titolare','Claudio','Romano','mntprcd11','1984-09-10','claudioromano@icloud.com'),(3,'delegato','Flavio','Perna','d1m3nt1c4t4','1980-01-23','f.perna@gmail.com'),(4,'delegato','Simone','Rocco','teddy45321','1989-07-12','sim.rocco@gmail.com'),(5,'titolare','Amerigo','De Sica','defre2314','1975-02-22','de.sica8@libero.it'),(6,'delegato','Davide','Verdi','rossaferrari89','1990-01-06','davideeverdi@icloud.com'),(7,'titolare','Antonio','Verdi','211259av','1959-12-21','toniov.erdi@gmail.com'),(25,'titolare','Alessandro','Capodanno','aa','2020-06-30','alessandro.capodanno95@gmail.com'),(26,'titolare','Alessia','Crispo','aa123','1996-01-30','a.cri@gmail.com'),(27,'titolare','Alessia','Due','aaa123','1996-01-30','a2@gmail.com'),(30,'titolare','ale','ssia','aaaa','2021-12-11','asia@gmail.com'),(31,'delegato','Sara','Pati','DjdyupqHv9E5v47','1996-06-01','sarapati@si.no'),(32,'titolare','Claudio','Bisio','3456789','1960-07-04','claudiobisus@mai.it'),(37,'delegato','nicki','minaj','anaconda','1990-01-10','youngmoney@niki.ki');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-20 16:52:27
