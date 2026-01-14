/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: GestionStock
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facture` (
  `id_facture` int(11) NOT NULL AUTO_INCREMENT,
  `date_facture` datetime DEFAULT current_timestamp(),
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_facture`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facture`
--

LOCK TABLES `facture` WRITE;
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `prix` decimal(10,2) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produit`),
  KEY `id_type` (`id_type`),
  CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `typeproduit` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES
(1,'Batterie Externe',50,25.99,1),
(2,'Chargeur USB-C',100,15.00,1),
(3,'Bloc Secteur 65W',30,45.00,1),
(4,'Multiprise Parafoudre',20,19.50,1),
(5,'Souris Sans Fil',45,29.90,2),
(6,'Clavier Azerty',12,59.00,2),
(7,'Casque Audio',8,89.00,2),
(8,'Tapis de souris',100,5.00,2),
(9,'Laptop Dell XPS',5,1200.00,3),
(10,'MacBook Air M2',3,1150.00,3),
(11,'Sacoche transport 15p',15,35.00,3),
(12,'Support ventilé',10,25.50,3),
(13,'Switch Cisco 24 ports',2,450.00,4),
(14,'Switch Netgear 8 ports',8,45.00,4),
(15,'Switch POE+ 16 ports',4,180.00,4),
(16,'Module SFP 1Gbps',25,12.00,4),
(17,'SSD NVMe 1To',20,95.00,5),
(18,'Disque Dur Externe 2To',12,65.00,5),
(19,'Clé USB 64Go',50,8.50,5),
(20,'NAS 2 Baies',3,210.00,5),
(21,'Batterie Externe',50,25.99,1),
(22,'Chargeur USB-C',100,15.00,1),
(23,'Bloc Secteur 65W',30,45.00,1),
(24,'Multiprise Parafoudre',20,19.50,1),
(25,'Souris Sans Fil',45,29.90,2),
(26,'Clavier Azerty',12,59.00,2),
(27,'Casque Audio',8,89.00,2),
(28,'Tapis de souris',100,5.00,2),
(29,'Laptop Dell XPS',5,1200.00,3),
(30,'MacBook Air M2',3,1150.00,3),
(31,'Sacoche transport 15p',15,35.00,3),
(32,'Support ventilé',10,25.50,3),
(33,'Switch Cisco 24 ports',2,450.00,4),
(34,'Switch Netgear 8 ports',8,45.00,4),
(35,'Switch POE+ 16 ports',4,180.00,4),
(36,'Module SFP 1Gbps',25,12.00,4),
(37,'SSD NVMe 1To',20,95.00,5),
(38,'Disque Dur Externe 2To',12,65.00,5),
(39,'Clé USB 64Go',50,8.50,5),
(40,'NAS 2 Baies',3,210.00,5);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeproduit`
--

DROP TABLE IF EXISTS `typeproduit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeproduit` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeproduit`
--

LOCK TABLES `typeproduit` WRITE;
/*!40000 ALTER TABLE `typeproduit` DISABLE KEYS */;
INSERT INTO `typeproduit` VALUES
(1,'Alimentation'),
(2,'Périphérique'),
(3,'Matériel portable'),
(4,'Switch'),
(5,'Stockage');
/*!40000 ALTER TABLE `typeproduit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(1,'tb_superadmin','T1touan_Secured!','admin'),
(2,'support_it_titouan','Helpdesk_TB_2026','user'),
(3,'manager_stock_01','Stock_Manage_X','user'),
(4,'service_automate_api','Auth_Token_9988','api'),
(5,'audit_externe','Consultation_Only','lecteur'),
(6,'root_titouan','Ultimate_Pass_77','admin'),
(7,'agent_logistique','Log_Pass_2026','user'),
(8,'invite_ponctuel','Welcome_RT_123','lecteur'),
(9,'gateway_backend','C0nnexion_API_V1','api'),
(10,'maintenance_user','Maint_Secure_TB','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-01-14 18:58:17
