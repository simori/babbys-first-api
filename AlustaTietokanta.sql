CREATE DATABASE  IF NOT EXISTS `resepti_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `resepti_db`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: resepti_db
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ainesosa`
--

DROP TABLE IF EXISTS `ainesosa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ainesosa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nimi` varchar(45) DEFAULT NULL,
  `maara` varchar(45) DEFAULT NULL,
  `kuvaus` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ainesosa`
--

LOCK TABLES `ainesosa` WRITE;
/*!40000 ALTER TABLE `ainesosa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ainesosa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resepti`
--

DROP TABLE IF EXISTS `resepti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resepti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nimi` varchar(45) DEFAULT NULL,
  `kuvaus` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='sisältää ainesosia ja kuvauksen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resepti`
--

LOCK TABLES `resepti` WRITE;
/*!40000 ALTER TABLE `resepti` DISABLE KEYS */;
INSERT INTO `resepti` VALUES (1,NULL,'test'),(2,'testi','dessu'),(3,'Pizza','1) Tee pizzataikina. 2) Kauli taikina litteäksi pellin päällä. 3) Laita haluamasi täytteet taikinan päälle. 4) Laita pizza uuniin 225 asteeseen n. 15 minuutiksi.'),(4,'sadsad','kuvaus tähän'),(5,'kreikkalainen pastasalaatti','250 g fusillipastaa\r\n250 g kirsikkatomaatteja\r\n½  kurkku\r\n1  keltainen paprika\r\n1 dl vihreitä oliiveja\r\n1 dl marinoituja salaattijuustokuutioita\r\n2-3 rkl  hienonnettua minttua ja basilikaa\r\n2 rkl salaattijuuston mausteöljyä\r\n\r\nVALMISTUSOHJE\r\n1. Keitä pasta suolalla maustetussa vedessä pakkauksen ohjeen mukaan napakan kypsäksi. Huuhtele kylmällä vedellä ja valuta huolella.\r\n2. Huuhtele ja halkaise kirsikkatomaatit. Pilko kurkku ja paprika. Valuta oliivit.\r\n3. Nosta kaikki salaatin ainekset kulhoon ja valuta joukkoon mausteöljy. Sekoita kreikkalainen pastasalaatti kevyesti nostelemalla ja anna maustua viileässä hetki ennen tarjoilua.'),(6,'Tulinen nakki-linssikeitto','Ainekset\r\n4 annosta\r\n2 rkl	oliiviöljyä\r\n1	sipuli\r\n2	valkosipulin kynttä\r\n300 g	nakkeja\r\n2 dl	punaisia linssejä\r\n1 prk	tomaattimurskaa\r\n1 prk	chilillä maustettua tomaattimurskaa\r\n1 l	vettä\r\n2	kanaliemikuutiota\r\n0,5 tl	rouhittua viherpippuria\r\n \r\nRAVINTOAINEET\r\nRESEPTITIEDOT\r\nTestattu toimivaksi\r\nOhjeet\r\nKuumenna öljy kattilassa. Kuori ja hienonna sipuli ja valkosipulinkynnet. Kuutioi nakit. Paista sipuleita ja nakkikuutioita öljyssä noin 8 minuuttia. Lisää linssit, tomaattimurskat, vesi ja liemikuutiot ja pippuri ja jatka keittämistä 15–20 minuuttia, kunnes linssit ovat kypsiä.'),(7,'AURA pekoni coleslaw','400 g	punakaalia\r\n200 g	porkkanaa\r\n1 iso	punasipuli\r\n½ tl	suolaa\r\nyhden	limetin mehu\r\n1 pkt (170 g)	Valio AURA® juustoa\r\n1 pkt (170 g)	pekonia\r\n\r\nPIKAMAJONEESI\r\n1	kananmuna\r\n1 ½ dl	rypsiöljyä\r\n2 tl	Dijon-sinappia\r\n2 tl	valkoviinietikkaa\r\nripaus	suolaa\r\nmustapippuria myllystä\r\n\r\n\r\nOHJE\r\nSuikaloi kaali, raasta porkkanat ja viipaloi sipuli. Laita isoon kulhoon. Lisää suola ja limen mehu. Sekoita.\r\nValmista majoneesi: mittaa kaikki ainekset mittakannuun tai muuhun kapeaan, korkeareunaiseen astiaan. Laita sauvasekoitin astian pohjalle ja nosta soseuttaen rauhallisesti ylös, jolloin majoneesi emulgoituu.\r\nSekoita majoneesi ja murennettu AURA juusto salaatin joukkoon. Anna maustua jääkaapissa väh. 1 h.\r\nPaahda pekoni rapeaksi kuivalla pannulla. Nosta talouspaperin päälle, jotta ylimääräinen rasva imeytyy paperiin. Leikkaa pekoni veitsellä pieneksi rouheeksi. Ripottele coleslawn pinnalle.\r\nTarjoa liha- ja broileriruokien lisäkkeenä.'),(8,'Slaavilainen kanapata','AINEKSET\r\n\r\n6 annosta\r\n\r\n600 g	\r\nhunajamarinoitua broilerin rintafileetä\r\n2 rkl	\r\nValio Oivariini® juoksevaa\r\n1 ½ dl	\r\nvettä\r\n1 prk (120 g)	\r\nValio Eila® smetanaa\r\n1 tlk (70 g)	\r\ntomaattipyreetä\r\n1 - 2	\r\nvalkosipulin kynttä\r\n1 iso	\r\npunainen paprika\r\n1 iso	\r\nkeltainen paprika\r\npala (150 g )	\r\npurjoa\r\n1 pussi (150 g)	\r\nValio AURA® murua\r\nmustapippuria myllystä\r\n\r\nOHJE\r\nPaloittele broilerifileet kuuteen osaan. Ruskista ne padassa tai paksupohjaisessa kattilassa Oivariini rasvassa.\r\nLisää vesi ja smetana. Anna kiehua hiljalleen kannen alla n.10 min.\r\nLisää tomaattisose, puristetut valkosipulin kynnet, suikaloidut paprikat ja hienonnettu purjo. Anna hautua vielä 5 min. Lisää AURA sekä mustapippuria myllystä.\r\nTarjoa keitetyn riisin kanssa');
/*!40000 ALTER TABLE `resepti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-29 22:34:39
