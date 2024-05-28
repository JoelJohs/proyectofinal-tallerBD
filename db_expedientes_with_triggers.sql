-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_expedientes
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `expedientes`
--

DROP TABLE IF EXISTS `expedientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expedientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ubicacion` int(11) DEFAULT NULL,
  `Expediente` varchar(10) DEFAULT NULL,
  `Apellido1` varchar(45) DEFAULT NULL,
  `Apellido2` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `FechaNac` date DEFAULT NULL,
  `Sexo` varchar(1) DEFAULT NULL,
  `Ingreso` int(11) DEFAULT NULL,
  `Egreso` int(11) DEFAULT NULL,
  `Grupo` varchar(2) DEFAULT NULL,
  `UltimoSemestre` varchar(2) DEFAULT NULL,
  `Titulado` tinyint(4) DEFAULT NULL,
  `Licenciatura` int(11) DEFAULT NULL,
  `FechaCaptura` datetime DEFAULT NULL,
  `UsCaptura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ubicacion` (`ubicacion`),
  KEY `fk_Expedientes_Licenciatura` (`Licenciatura`),
  CONSTRAINT `expedientes_ibfk_1` FOREIGN KEY (`ubicacion`) REFERENCES `ubicfisica` (`idUbicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Expedientes_Licenciatura` FOREIGN KEY (`Licenciatura`) REFERENCES `licenciatura` (`idLic`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expedientes`
--

LOCK TABLES `expedientes` WRITE;
/*!40000 ALTER TABLE `expedientes` DISABLE KEYS */;
INSERT INTO `expedientes` VALUES (1,1,'09700','MARTINEZ','MURGUIA','NORMA LILIA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(3,1,'09701','MEDINA','HERRERA','ABRAHAM','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(4,1,'09702','MIRANDA','MARTINEZ','CLAUDIA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(5,1,'09703','MORALES','CEJA','MARIA DE LOURDES','0000-00-00','M',1997,1997,'','1',0,1,'0000-00-00 00:00:00',1),(6,1,'09704','OSEGUERA','VIRRUETA','BRAULIO','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(7,1,'09705','RAMIREZ','SEGURA','ROCIO','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(8,1,'09706','RAMIREZ','VILLANUEVA','MARIA DEL RAYO','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(9,1,'09707','RIOS','LEDESMA','RUBICELIA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(10,1,'09708','RODRIGUEZ','MOLINA','ANA LUISA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(11,1,'09709','ROMERO','ESTRADA','IVAN SABAS','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(12,1,'09710','ROVIRA','MORELOS','NDAHITA ANGELICA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(13,1,'09711','SALGADO','GUDI?O','YARERI ALEJANDRA','0000-00-00','M',1997,2002,'','8',1,1,'0000-00-00 00:00:00',2),(14,1,'09712','SEGOVIANO','AVILES','ARACELI','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(15,1,'09713','SOTO','NU?EZ','IMURIS','0000-00-00','H',1997,1998,'','2',0,1,'0000-00-00 00:00:00',1),(16,1,'09714','VAZQUEZ','CORONA','JAVIER','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(17,1,'09715','VERONA','CORREA','MARCO POLO','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(18,1,'09716','AGUILAR','ROA','ARMANDO','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(19,1,'09717','BLANCO','CERVANTES','HAYDEE','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(20,1,'09718','CAMPOS','VILLAGOMEZ','ITZEL','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(21,1,'09719','CONTRERAS','MARIN','MARTIZA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(22,1,'09720','ESQUIVEL','MORALES','ANGELICA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(23,1,'09721','FLORES','QUIROZ','LETICIA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(24,1,'09722','GALLARDO','JARILLO','BRENDA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(25,1,'09723','GARCIA','HERNANDEZ','URIEL','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(26,1,'09724','GUTIERREZ','PEREZ','DIEGO','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(27,1,'09725','HERNANDEZ','GARCIA','MARIA DE JESUS','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(28,1,'09726','HERNANDEZ','PEREZ','KELVYN','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(29,1,'09727','HERREJON','GARCIA','MIGUEL ANGEL','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(30,1,'09728','LIERA','ESPINOSA','NINFA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(31,1,'09729','MARCELINO','GABRIEL','HAYDEE','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(32,1,'09730','MARIN','CHAVEZ','KAREN MARLENE','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(33,1,'09731','MORALES','ESPINOSA','GILBERTO','0000-00-00','H',1997,1997,'','1',0,1,'0000-00-00 00:00:00',2),(34,1,'09732','NEGRON','VILLAFAN','URANIA JANET','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(35,1,'09733','OCHOA','CORTES','MARCO ANTONIO','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(36,1,'09734','OLASCOAGA','BEDOLLA','MIGUEL ANGEL','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',2),(37,1,'09735','PARRA','ANGEL','MARIA SOLEDAD','0000-00-00','M',1997,1997,'','1',0,1,'0000-00-00 00:00:00',2),(38,1,'09736','PI?ON','GARNICA','MARICELA','0000-00-00','M',1997,1977,'','1',0,1,'0000-00-00 00:00:00',2),(39,1,'09737','PONCE','REYES','MINERVA MARIA SALUD','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(40,1,'09738','REYNEL','ORTIZ','DALIA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(41,1,'09739','RIVERA','GONZALEZ','FELIPE ISAAC','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(42,1,'09740','ROBLEDO','CASTA?EDA','MAYBE GISBY','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(43,1,'09741','SEGOVIANO','TINOCO','JULIO CESAR','0000-00-00','H',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(44,1,'09742','SOLIS','JAIMEZ','JOSEFINA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(45,1,'09743','VALDES','ESPINOZA','ALEJANDRA','0000-00-00','M',1997,2001,'','8',1,1,'0000-00-00 00:00:00',1),(46,1,'09744','VILLALPANDO','RODRIGUEZ','NORMA YADIRA','0000-00-00','M',1997,2000,'','6',0,1,'0000-00-00 00:00:00',1),(47,1,'09745','TORRES','CRISTIAN','ERIKA LLAZMIN','0000-00-00','M',1996,2000,'','8',1,1,'0000-00-00 00:00:00',1),(48,1,'09746','REYES','ESTRADA','JOSE MAXIMINO','0000-00-00','H',1997,1999,'','8',1,1,'0000-00-00 00:00:00',1),(49,1,'09747','BUCIO','CALDERON','MARIA MAGALY','0000-00-00','M',1998,2002,'','8',1,1,'0000-00-00 00:00:00',1),(50,1,'09748','CAZARES','CHAGOYA','JOANA IVETH','0000-00-00','M',1998,2002,'','8',1,1,'0000-00-00 00:00:00',1),(51,1,'09749','CORDOVA','BARAJAS','MIRIAM NOEMI','0000-00-00','M',1998,2002,'','8',1,1,'0000-00-00 00:00:00',1),(52,1,'09750','ESPINOZA','AVALOS','LUIS ANGEL','0000-00-00','H',1998,2002,'','8',1,1,'0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `expedientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenciatura`
--

DROP TABLE IF EXISTS `licenciatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licenciatura` (
  `idLic` int(11) NOT NULL AUTO_INCREMENT,
  `LicCorto` varchar(15) DEFAULT NULL,
  `LicNombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLic`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenciatura`
--

LOCK TABLES `licenciatura` WRITE;
/*!40000 ALTER TABLE `licenciatura` DISABLE KEYS */;
INSERT INTO `licenciatura` VALUES (1,'Primaria','Licenciatura en Educación Primaria'),(2,'Especial','Licenciatura en Educación Especial');
/*!40000 ALTER TABLE `licenciatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `accion` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_logs_usuario_id` (`usuario_id`),
  CONSTRAINT `fk_logs_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,2,'ELIMINAR','Se eliminó el expediente con ID: 56','2024-05-28 08:50:20'),(2,8,'CREAR','Se creó el usuario con ID: 8','2024-05-28 08:53:17'),(6,2,'CREAR','Se creó el expediente con ID: 57','2024-05-28 08:56:33'),(7,2,'ELIMINAR','Se eliminó el expediente con ID: 57','2024-05-28 08:56:44');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `Permiso` int(11) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,1,'Administrador'),(2,2,'Capturista');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicfisica`
--

DROP TABLE IF EXISTS `ubicfisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicfisica` (
  `idUbicacion` int(11) NOT NULL AUTO_INCREMENT,
  `Archivero` varchar(5) DEFAULT NULL,
  `Gaveta` varchar(5) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUbicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicfisica`
--

LOCK TABLES `ubicfisica` WRITE;
/*!40000 ALTER TABLE `ubicfisica` DISABLE KEYS */;
INSERT INTO `ubicfisica` VALUES (1,'15','01','A15/G01'),(2,'01','01','A01/G01');
/*!40000 ALTER TABLE `ubicfisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usNombre` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  `fechaAlta` datetime DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `rol` (`rol`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `roles` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'joel','4816dabf8db1bc6cac35b3a24cab2ff844b5b0c7','Joel','Hernandez','email@email.com',1,'2024-05-25 19:05:52'),(3,'dani','3f547476e0ce8e681ded188f0322a4d5e0d56ec4','Daniel','Garcia','dani@email.com',2,'2024-05-25 19:10:22'),(8,'Adri','83b621ca1ac1f7df26124821387af790d0f22e4f','Adrian','Villalpando','adri@email.com',2,'2024-05-28 08:53:17');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-28  9:14:10
