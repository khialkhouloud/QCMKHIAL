-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: projet
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `idquestion` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idquestion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Quelles proprietes doit avoir un mot de passe sur '),(2,'Qu\'est-ce que le hameçonnage (phishing) '),(3,'Parmi les termes suivants, lesquels désignent des logiciels malveillants'),(4,'C\'est quoi un virus'),(5,'C\'est quoi menace via reseau'),(6,'Que désigne-t-on par cheval de Troi'),(7,'Quel est le type de chiffrement RSA'),(8,'Quel est l\'algorithme le plus efficace'),(9,'Pour se protéger d\'éventuelles intrusions d\'un pirate sur son ordinateur, que doit-on installer '),(10,'Qu\'assure la confidentialité des données'),(11,'Qu\'est-ce que le protocole HTTPS ');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reponse`
--

DROP TABLE IF EXISTS `reponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reponse` (
  `idreponse` int(11) NOT NULL AUTO_INCREMENT,
  `reponse` varchar(200) DEFAULT NULL,
  `idquestion` int(11) DEFAULT NULL,
  `resultat` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idreponse`),
  KEY `idquestion_idx` (`idquestion`),
  CONSTRAINT `idquestion` FOREIGN KEY (`idquestion`) REFERENCES `question` (`idquestion`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reponse`
--

LOCK TABLES `reponse` WRITE;
/*!40000 ALTER TABLE `reponse` DISABLE KEYS */;
INSERT INTO `reponse` VALUES (1,'Etre compose de plus de 7 caracteres',1,1),(2,' Etre constitué de lettres et de chiffres sans aucune signification',1,0),(3,'Être répertorié dans un dictionnaire de la langue usuelle',1,0),(4,'Être diffusé à son entourage',1,0),(5,'Un procédé frauduleux permettant de collecter des informations personnelles',2,0),(6,'Une technique d\'analyse du trafic réseau',2,1),(7,' Une méthode de recherche d\'informations sur Internet',2,0),(8,'Un système d\'envoi massif de courriers électroniques',2,0),(9,' Un cheval de Troie',3,0),(10,'Un virus',3,1),(11,'Un logiciel espion',3,0),(12,' Un canular électronique',4,0),(13,'Un bug',4,0),(14,'Programme',4,1),(15,'Un cheval de Troie',5,1),(16,'Un canular électronique',5,0),(17,'Un logiciel espion',5,0),(18,'Un bug',5,0),(19,'Un logiciel malveillant qui se propage par courrier électronique en exploitant les failles des logiciels de messagerie',6,0),(20,'Un logiciel malveillant ayant l\'apparence d\'un logiciel inoffensif mais qui comporte des instructions nuisibles',6,1),(21,'Un courrier électronique malveillant qui s\'envoie lui-même aux adresses contenues dans tout le carnet d\'adresses du PC',6,0),(22,'Chiffrement symétrique',7,0),(23,'Chiffrement asymétrique',7,1),(24,'RSA',8,1),(25,'DES',8,0),(26,'AEI',8,0),(27,'virus',8,0),(28,'Un antivirus',9,0),(29,'Un logiciel de contrôle parental',9,0),(30,'Un plan vigipirate',9,0),(31,'Pare-Feu',9,1),(32,' Qu\'aucune copie illicite des données ne puisse être faite',10,1),(33,'Que les données ne contiennent pas d\'informations erronées',10,0),(34,' La version sécurisée du protocole HTTP',11,1),(35,'Une ancienne version du protocole HTTP',11,0),(36,'Un protocole d\'accès aux vidéos numériques',11,0),(37,'Un langage de description de page',11,0);
/*!40000 ALTER TABLE `reponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `utilisateur` (
  `idutilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idutilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'khial','khial123'),(2,'root','root');
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-24 22:31:59
