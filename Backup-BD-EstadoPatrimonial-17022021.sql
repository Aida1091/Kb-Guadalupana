CREATE DATABASE  IF NOT EXISTS `bdkbguadalupana` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bdkbguadalupana`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bdkbguadalupana
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ep_administracionlote`
--

DROP TABLE IF EXISTS `ep_administracionlote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_administracionlote` (
  `codepadministracionlote` int(11) NOT NULL,
  `ep_administracionlotefechainicio` date DEFAULT NULL,
  `ep_administracionfechafin` date DEFAULT NULL,
  `ep_administracionloteestado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codepadministracionlote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_administracionlote`
--

LOCK TABLES `ep_administracionlote` WRITE;
/*!40000 ALTER TABLE `ep_administracionlote` DISABLE KEYS */;
INSERT INTO `ep_administracionlote` VALUES (1,'2018-01-01','2018-01-15',0),(2,'2021-01-01','2021-02-28',1),(3,'2019-01-01','2019-01-15',0),(4,'2017-01-01','2017-01-01',0);
/*!40000 ALTER TABLE `ep_administracionlote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_bactivos`
--

DROP TABLE IF EXISTS `ep_bactivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_bactivos` (
  `codepbactivos` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_bactivosinmuebles` tinyint(1) DEFAULT NULL,
  `ep_bactivosvehiculos` tinyint(1) DEFAULT NULL,
  `ep_bactivosequipo` tinyint(1) DEFAULT NULL,
  `ep_bactivoscaja` double DEFAULT NULL,
  PRIMARY KEY (`codepbactivos`),
  KEY `fk_ep_bactivos_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_bactivos_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_bactivos`
--

LOCK TABLES `ep_bactivos` WRITE;
/*!40000 ALTER TABLE `ep_bactivos` DISABLE KEYS */;
INSERT INTO `ep_bactivos` VALUES (1,1,1,1,1,5000),(2,2,1,1,1,5000),(3,3,1,1,1,12),(4,2,1,1,1,5000),(5,3,1,1,1,12),(6,2,1,1,1,5000),(7,3,1,1,1,12),(8,2,1,1,1,5000),(9,17,1,1,1,2500),(10,21,1,1,1,0),(11,22,1,1,1,0),(12,23,1,1,1,0),(13,24,1,1,1,0),(14,25,1,1,1,0),(15,26,1,1,1,0),(16,27,1,1,1,0),(17,28,1,1,1,0),(18,29,1,1,1,0),(19,30,1,1,1,0),(20,31,1,1,1,2500),(21,32,1,1,1,0),(22,33,1,1,1,0),(23,34,1,1,1,0);
/*!40000 ALTER TABLE `ep_bactivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_contratistaproveedor`
--

DROP TABLE IF EXISTS `ep_contratistaproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_contratistaproveedor` (
  `codepcontratistaproveedor` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_contratistaproveedor_si_no` int(1) DEFAULT NULL,
  PRIMARY KEY (`codepcontratistaproveedor`),
  KEY `fk_ep_contratistaproveedor_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_contratistaproveedor_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_contratistaproveedor`
--

LOCK TABLES `ep_contratistaproveedor` WRITE;
/*!40000 ALTER TABLE `ep_contratistaproveedor` DISABLE KEYS */;
INSERT INTO `ep_contratistaproveedor` VALUES (1,1,1);
/*!40000 ALTER TABLE `ep_contratistaproveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_control`
--

DROP TABLE IF EXISTS `ep_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_control` (
  `codepcontrol` int(11) NOT NULL AUTO_INCREMENT,
  `codgenusuario` int(11) DEFAULT NULL,
  `codepadministracionlote` int(11) DEFAULT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  PRIMARY KEY (`codepcontrol`),
  KEY `fk_ep_control_ep_administracionlote1_idx` (`codepadministracionlote`),
  KEY `fk_ep_control_gen_usuario1_idx` (`codgenusuario`),
  CONSTRAINT `fk_ep_control_ep_administracionlote1` FOREIGN KEY (`codepadministracionlote`) REFERENCES `ep_administracionlote` (`codepadministracionlote`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_control_gen_usuario1` FOREIGN KEY (`codgenusuario`) REFERENCES `gen_usuario` (`codgenusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_control`
--

LOCK TABLES `ep_control` WRITE;
/*!40000 ALTER TABLE `ep_control` DISABLE KEYS */;
INSERT INTO `ep_control` VALUES (1,1,2,1),(3,3,2,30),(7,4,2,20),(10,5,2,NULL),(11,6,2,NULL),(19,2,2,34);
/*!40000 ALTER TABLE `ep_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_controlingreso`
--

DROP TABLE IF EXISTS `ep_controlingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_controlingreso` (
  `codepcontrolingreso` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_controlingresoingreso` tinyint(1) DEFAULT NULL,
  `ep_controlingresnegocio` tinyint(1) DEFAULT NULL,
  `ep_controlingresoremesas` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codepcontrolingreso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_controlingreso`
--

LOCK TABLES `ep_controlingreso` WRITE;
/*!40000 ALTER TABLE `ep_controlingreso` DISABLE KEYS */;
INSERT INTO `ep_controlingreso` VALUES (1,1,1,1,127),(2,17,1,1,1),(3,21,1,1,1),(4,22,1,1,1),(5,23,1,1,1),(6,24,1,1,1),(7,25,1,1,1),(8,26,1,1,1),(9,27,1,1,1),(10,28,1,1,1),(11,29,1,1,1),(12,30,1,1,1),(13,31,1,1,1),(14,31,1,1,1),(15,31,1,1,1),(16,32,1,1,1),(17,33,1,1,1),(18,34,1,1,1);
/*!40000 ALTER TABLE `ep_controlingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_cuentas`
--

DROP TABLE IF EXISTS `ep_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_cuentas` (
  `codepcuentas` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `codeptipocuenta` int(11) DEFAULT NULL,
  `codeptipomoneda` int(11) DEFAULT NULL,
  `codeptipoestatuscuenta` int(11) DEFAULT NULL,
  `codepinstitucion` int(11) DEFAULT NULL,
  `codeptipocuentacooperativa` int(11) DEFAULT NULL,
  `ep_cuentasnombre` varchar(100) DEFAULT NULL,
  `ep_cuentasmonto` double DEFAULT NULL,
  `ep_cuentasorigen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codepcuentas`),
  KEY `fk_ep_cuentas_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  KEY `fk_ep_cuentas_ep_tipocuenta1_idx` (`codeptipocuenta`),
  KEY `fk_ep_cuentas_ep_tipomoneda1_idx` (`codeptipomoneda`),
  KEY `fk_ep_cuentas_ep_tipoestatuscuenta1_idx` (`codeptipoestatuscuenta`),
  KEY `fk_ep_cuentas_ep_institucion1_idx` (`codepinstitucion`),
  KEY `fk_ep_cuentas_ep_tipocuentacooperativa1_idx` (`codeptipocuentacooperativa`),
  CONSTRAINT `fk_ep_cuentas_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_cuentas_ep_institucion1` FOREIGN KEY (`codepinstitucion`) REFERENCES `ep_institucion` (`codepinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_cuentas_ep_tipocuenta1` FOREIGN KEY (`codeptipocuenta`) REFERENCES `ep_tipocuenta` (`codeptipocuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_cuentas_ep_tipoestatuscuenta1` FOREIGN KEY (`codeptipoestatuscuenta`) REFERENCES `ep_tipoestatuscuenta` (`codeptipoestatuscuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_cuentas_ep_tipomoneda1` FOREIGN KEY (`codeptipomoneda`) REFERENCES `ep_tipomoneda` (`codeptipomoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_cuentas_institucion` FOREIGN KEY (`codepinstitucion`) REFERENCES `ep_institucion` (`codepinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_cuentas_tipocuentacooperativa1` FOREIGN KEY (`codeptipocuentacooperativa`) REFERENCES `ep_tipocuentacooperativa` (`codeptipocuentacooperativa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_cuentas`
--

LOCK TABLES `ep_cuentas` WRITE;
/*!40000 ALTER TABLE `ep_cuentas` DISABLE KEYS */;
INSERT INTO `ep_cuentas` VALUES (1,1,4,1,1,NULL,NULL,'PedritoArrivillaga',22,'22'),(2,13,1,1,1,NULL,NULL,'BI',22,'22'),(3,14,1,1,2,NULL,NULL,'BI',66,'66'),(4,1,4,1,1,NULL,NULL,'Pedrulo',4500,'325'),(5,1,3,1,1,3,1,'nulo',22,'Herencia'),(6,1,3,1,1,3,2,'nulo',22,'Desembolso'),(7,1,1,1,1,1,NULL,'nulo',20000,'Heredacion'),(8,1,3,1,1,3,1,'nulo',2500,'Prestamitas'),(9,1,4,1,1,1,NULL,'Diego',5000,'Manutención del niño'),(10,1,4,1,1,1,NULL,'Pablo',5000,'Manutención del perro'),(11,30,2,1,2,1,NULL,'nulo',564565,'856465'),(12,30,1,1,1,1,NULL,'nulo',500,'Teo'),(13,30,3,1,1,3,1,'nulo',5656,'asdas'),(14,30,4,1,1,1,NULL,'asdas',6456,'asdas'),(15,21,1,1,1,1,NULL,'nulo',500,'Prueba'),(16,21,3,1,1,3,1,'nulo',500,'asdas'),(18,31,3,1,1,38,1,'nulo',150,'prueba'),(19,34,1,2,1,13,1,'nulo',2312,'sdadsadasd');
/*!40000 ALTER TABLE `ep_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_cuentasporpagar`
--

DROP TABLE IF EXISTS `ep_cuentasporpagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_cuentasporpagar` (
  `codepcuentasporpagar` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `codeptipocuentasporpagar` int(11) DEFAULT NULL,
  `ep_cuentasporpagardescripcion` varchar(100) DEFAULT NULL,
  `ep_cuentasporpagarmonto` double DEFAULT NULL,
  PRIMARY KEY (`codepcuentasporpagar`),
  KEY `fk_ep_cuentasporpagar_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  KEY `fk_ep_cuentasporpagar_ep_tipocuentasporpagar1_idx` (`codeptipocuentasporpagar`),
  CONSTRAINT `fk_ep_cuentasporpagar_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_cuentasporpagar_ep_tipocuentasporpagar1` FOREIGN KEY (`codeptipocuentasporpagar`) REFERENCES `ep_tipocuentaspopagar` (`codeptipocuentaspopagar`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_cuentasporpagar`
--

LOCK TABLES `ep_cuentasporpagar` WRITE;
/*!40000 ALTER TABLE `ep_cuentasporpagar` DISABLE KEYS */;
INSERT INTO `ep_cuentasporpagar` VALUES (1,1,1,'Por defecto de presencia',1500),(2,1,2,'Por efecto de manualidad',2500),(3,1,1,'Por efecto de prestamos',50000),(4,30,1,'sadsad',5646),(5,21,1,'Prueba',6564),(6,21,1,'PRUEBA',500);
/*!40000 ALTER TABLE `ep_cuentasporpagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_deudasvarias`
--

DROP TABLE IF EXISTS `ep_deudasvarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_deudasvarias` (
  `codepdeudasvarias` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_deudasvariasdescripcion` varchar(200) DEFAULT NULL,
  `ep_deudasvariasvalor` double DEFAULT NULL,
  PRIMARY KEY (`codepdeudasvarias`),
  KEY `fk_ep_deudasvarias_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_deudasvarias_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_deudasvarias`
--

LOCK TABLES `ep_deudasvarias` WRITE;
/*!40000 ALTER TABLE `ep_deudasvarias` DISABLE KEYS */;
INSERT INTO `ep_deudasvarias` VALUES (1,1,'CASA EN LA PLAYA',2000),(2,17,'Ella',4500000),(3,21,'',0),(4,22,'',0),(5,23,'',0),(6,24,'',0),(7,25,'',0),(8,26,'',0),(9,27,'',0),(10,28,'',0),(11,29,'',0),(12,30,'',0),(13,31,'Pureba',54564),(14,32,'',0),(15,33,'',0),(16,34,'',0);
/*!40000 ALTER TABLE `ep_deudasvarias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_egresos`
--

DROP TABLE IF EXISTS `ep_egresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_egresos` (
  `codepegresos` int(11) NOT NULL,
  `codinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_egresosalimentacion` double DEFAULT NULL,
  `ep_egresostransportes` double DEFAULT NULL,
  `ep_egresosestudios` double DEFAULT NULL,
  `ep_egresosprestamo` double DEFAULT NULL,
  `ep_egresostarjeta` double DEFAULT NULL,
  `ep_egresosropa` double DEFAULT NULL,
  `ep_egresosrecreacion` double DEFAULT NULL,
  `ep_egresosotros` double DEFAULT NULL,
  PRIMARY KEY (`codepegresos`),
  KEY `fk_ep_egresos_ep_informaciongeneral1_idx` (`codinformaciongeneralcif`),
  CONSTRAINT `fk_ep_egresos_ep_informaciongeneral1` FOREIGN KEY (`codinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_egresos`
--

LOCK TABLES `ep_egresos` WRITE;
/*!40000 ALTER TABLE `ep_egresos` DISABLE KEYS */;
INSERT INTO `ep_egresos` VALUES (1,1,100,100,100,100,100,100,100,100),(2,17,0,0,0,0,0,0,0,0),(3,21,0,0,0,0,0,0,0,0),(4,22,0,0,0,0,0,0,0,0),(5,23,0,0,0,0,0,0,0,0),(6,24,0,0,0,0,0,0,0,0),(7,25,0,0,0,0,0,0,0,0),(8,26,0,0,0,0,0,0,0,0),(9,27,0,0,0,0,0,0,0,0),(10,28,0,0,0,0,0,0,0,0),(11,29,0,0,0,0,0,0,0,0),(12,30,0,0,0,0,0,0,0,0),(13,31,564,54656,56456,564,456,45,564,564),(14,32,0,0,0,0,0,0,0,0),(15,33,0,0,0,0,0,0,0,0),(16,34,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `ep_egresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_estadocivil`
--

DROP TABLE IF EXISTS `ep_estadocivil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_estadocivil` (
  `codepestadocivil` int(11) NOT NULL,
  `ep_estadocivilnombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codepestadocivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_estadocivil`
--

LOCK TABLES `ep_estadocivil` WRITE;
/*!40000 ALTER TABLE `ep_estadocivil` DISABLE KEYS */;
INSERT INTO `ep_estadocivil` VALUES (1,'Soltero(A)'),(2,'Casado(A)'),(3,'Unido(A)'),(4,'Divorciado(A)'),(5,'Viudo(A)');
/*!40000 ALTER TABLE `ep_estadocivil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_estudio`
--

DROP TABLE IF EXISTS `ep_estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_estudio` (
  `codepestudio` int(11) NOT NULL AUTO_INCREMENT,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_estudionombre` varchar(100) DEFAULT NULL,
  `ep_estudioaño` int(4) DEFAULT NULL,
  `ep_estudioduracion` varchar(100) DEFAULT NULL,
  `ep_estudiolugar` varchar(100) DEFAULT NULL,
  `ep_estudioidioma` varchar(100) DEFAULT NULL,
  `ep_estudiotipo` varchar(45) DEFAULT NULL,
  `ep_estudiomodalidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codepestudio`),
  KEY `fk_ep_estudio_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_estudio_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_estudio`
--

LOCK TABLES `ep_estudio` WRITE;
/*!40000 ALTER TABLE `ep_estudio` DISABLE KEYS */;
INSERT INTO `ep_estudio` VALUES (1,1,'Ingenieria en sistemas',5,'5','Universidad Mariano Galvez De Guatemala','Español','0','Presencial'),(2,1,'informatica',2,'2','Guatemala','Ingles','1','Virtual'),(3,1,'Ingles',5,'5','Guatemala','Español','1','Presencial'),(4,3,'',0,'','','','1',''),(5,4,'',0,'','','','0','sindato'),(6,4,'',0,'','','','1',''),(7,5,'',0,'','','','0','sindato'),(8,5,'',0,'','','','1',''),(9,6,'',0,'','','','0','sindato'),(10,6,'',0,'','','','1',''),(11,7,'',0,'','','','0','sindato'),(12,7,'',0,'','','','1',''),(13,8,'',0,'','','','0','sindato'),(14,8,'',0,'','','','1',''),(15,9,'',0,'','','','0','sindato'),(16,9,'',0,'','','','1',''),(17,10,'',0,'','','','0','sindato'),(18,10,'',0,'','','','1',''),(19,11,'',0,'','','','0','sindato'),(20,11,'',0,'','','','1',''),(21,12,'',0,'','','','0','sindato'),(22,12,'',0,'','','','1',''),(23,13,'',0,'','','','0','sindato'),(24,13,'',0,'','','','1',''),(25,14,'',0,'','','','0','sindato'),(26,14,'',0,'','','','1',''),(27,15,'',0,'','','','0','sindato'),(28,15,'',0,'','','','1',''),(29,16,'Ingenieria en sistemas',5,'5','Guatemala','Español','0','Presencial'),(30,16,'informatica',2,'2','Guatemala','Ingles','1','Virtual'),(31,16,'Ingles',5,'5','Guatemala','Español','1','Presencial'),(32,17,'Tecnicas de estudios',5,'5','Universidad Mariano Galvez De Guatemala','Español','0',''),(33,1,'Posteria',5,'4','PasteriaS.A','Español','1','Virtual'),(34,21,'',0,'','','','0',''),(35,22,'',0,'','','','0',''),(36,23,'',0,'','','','0',''),(37,24,'',0,'','','','0',''),(38,25,'',0,'','','','0',''),(39,26,'',0,'','','','0',''),(40,27,'',0,'','','','0',''),(41,28,'',0,'','','','0',''),(42,29,'',0,'','','','0',''),(43,30,'',0,'','','','0',''),(44,30,'1asdas',3,'5','1sadas','fsfsd','1','1asdas'),(45,21,'Prueba',2020,'5','Pureba','Español','1','sadasd'),(46,21,'Ingenieria en Sistemas',2021,'10 semestre','Mariano Galvez','sinidioma','0','sinmodalidad'),(47,2,'Ingenieria en Sistemas',5,'10 semestre','Mariano Galvez','sinidioma','0','sinmodalidad'),(48,2,'Ingles',10,'1','Umg','Ingles','1','1'),(49,31,'Ingenieria en Sistemas',5,'10 semestre','Mariano Galvez','sinidioma','0','sinmodalidad'),(50,31,'Ingles',2020,'1','Umg','Ingles','1','Virtual'),(51,34,'Ingenieria en Sistemas',5,'10 semestre','Mariano Galvez','sinidioma','0','sinmodalidad'),(52,34,'Ingles',2020,'1','Umg','Ingles','1','Virtual');
/*!40000 ALTER TABLE `ep_estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_infofamiliar`
--

DROP TABLE IF EXISTS `ep_infofamiliar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_infofamiliar` (
  `codepinfofamiliar` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_infofamiliarnombreconyuge` varchar(100) DEFAULT NULL,
  `ep_infofamiliarnombrehijos` varchar(100) DEFAULT NULL,
  `ep_infofamiliarocupacionconyuge` varchar(50) DEFAULT NULL,
  `ep_infofamiliarocupacionhijos` varchar(50) DEFAULT NULL,
  `ep_infofamiliarapellidocascada` varchar(50) DEFAULT NULL,
  `ep_infofamiliarfechanacimientoconyuge` date DEFAULT NULL,
  `ep_infofamiliarfechanacimientohijo` date DEFAULT NULL,
  `ep_infofamiliarnombreemergencia` varchar(100) DEFAULT NULL,
  `ep_infofamiliarnumeroemergencia` int(8) DEFAULT NULL,
  `ep_infofamiliarparentesco` varchar(50) DEFAULT NULL,
  `ep_infofamiliarcomentario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codepinfofamiliar`),
  KEY `fk_ep_infofamiliar_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_infofamiliar_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_infofamiliar`
--

LOCK TABLES `ep_infofamiliar` WRITE;
/*!40000 ALTER TABLE `ep_infofamiliar` DISABLE KEYS */;
INSERT INTO `ep_infofamiliar` VALUES (1,1,'Maria','Pedro','Estudiante','Estudiante','Juarez','2020-04-24','2020-04-08','Pedro',24358599,'Tio','Es responsable'),(2,1,'Maria','Pepe','Estudiante','Futbolero','Juarez','2020-04-24','2020-04-10','Pedro',24358599,'Tio','El primer hijo'),(3,5,'','','','','','2020-04-24','2020-04-24','',0,'',''),(4,6,'','','','','','2020-04-24','2020-04-24','',0,'',''),(5,7,'','','','','','2020-04-24','2020-04-24','',0,'',''),(6,8,'','','','','','2020-04-24','2020-04-24','',0,'',''),(7,9,'','','','','','2020-04-24','2020-04-24','',0,'',''),(8,10,'','','','','','2020-04-24','2020-04-24','',0,'',''),(9,11,'','','','','','2020-04-24','2020-04-24','',0,'',''),(10,12,'','','','','','2020-04-24','2020-04-24','',0,'',''),(11,13,'','','','','','2020-04-24','2020-04-24','',0,'',''),(12,14,'','','','','','2020-04-24','2020-04-24','',0,'',''),(13,15,'','','','','','2020-04-24','2020-04-24','',0,'',''),(16,17,'','','','','','2020-04-24','0000-00-00','Alejandro',222,'Tio',''),(17,1,'Maria','','Estudiante','','Juarez','2020-04-24','2020-04-25','Pedro',24358599,'Tio',''),(18,1,'Maria','Luis','Estudiante','Futbol','Juarez','2020-04-24','2020-04-25','Pedro',24358599,'Tio','Hola'),(19,1,'Maria','sdaasd','Estudiante','sadas','Juarez','2020-04-24','2020-04-15','Pedro',24358599,'Tio','dasd'),(20,21,'','','','','','0001-01-01','0000-00-00','Prueba',123456,'Prueba',''),(21,20,'','Keys','','asdsa','','0000-00-00','2020-04-22','',0,'','sadas'),(22,22,'','','','','','0000-00-00','0000-00-00','',0,'',''),(23,23,'','','','','','0000-00-00','0000-00-00','',0,'',''),(24,24,'','','','','','0000-00-00','0000-00-00','',0,'',''),(25,25,'','','','','','0000-00-00','0000-00-00','',0,'',''),(26,26,'','','','','','0000-00-00','0000-00-00','',0,'',''),(27,27,'','','','','','0000-00-00','0000-00-00','',0,'',''),(28,28,'','','','','','0000-00-00','0000-00-00','',0,'',''),(29,29,'','','','','','0000-00-00','0000-00-00','',0,'',''),(30,30,'','','','','','0000-00-00','0000-00-00','',0,'',''),(31,30,'','Diego','','sadas','','0000-00-00','2020-04-22','',0,'','asdasdas'),(32,30,'','Diego','','sadas','','0000-00-00','2020-04-22','',0,'','asdasdas'),(33,30,'','Diego','','sadas','','0000-00-00','2020-04-22','',0,'','asdasdas'),(34,30,'','sadsa','','asdas','','0000-00-00','2020-04-25','',0,'','adasd'),(36,31,'Prueba','Prueba','Prueba','Estudiante','Prueba','2020-04-24','2020-04-25','Prueba',54564,'Prueba','saasda'),(37,31,'Prueba','asdsa','Prueba','asdsad','Prueba','2020-04-24','2020-04-23','Prueba',54564,'Prueba','asdasd'),(38,31,'Prueba','Keys','Prueba','sadas','Prueba','2020-04-24','2020-04-07','Prueba',54564,'Prueba','asdas'),(41,31,'Prueba','dadad','Prueba','asdasd','Prueba','2020-04-24','2020-04-01','Prueba',54564,'Prueba','asdasd'),(42,31,'Prueba','Prueba','Prueba','Estudiante','Prueba','2020-04-24','2020-04-01','Prueba',54564,'Prueba','Preuba'),(44,32,'','Prueba','','Prueba','','0000-00-00','2020-04-25','',0,'','Prueba'),(45,32,'','Prueba','','Prueba','','0000-00-00','2020-04-25','',0,'','Prueba'),(46,32,'','dasd','','asdas','','0000-00-00','2020-04-25','',0,'','asdsa'),(47,32,'','dsa','','ada','','0000-00-00','2020-04-25','',0,'','adas'),(48,33,'','','','','','0000-00-00','2020-04-08','',0,'',''),(49,33,'','dasd','','adas','','0000-00-00','2020-04-25','',0,'','adas'),(50,33,'','asdasd','','adasd','','0000-00-00','2020-04-25','',0,'','asdsa'),(51,34,'','','','','','2020-04-24','2020-04-08','Prueba',12312312,'Prueba',''),(52,34,'','Prueba','','Prueba','','2020-04-24','2020-04-25','Prueba',12312312,'Prueba','Preuba');
/*!40000 ALTER TABLE `ep_infofamiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_informaciongeneral`
--

DROP TABLE IF EXISTS `ep_informaciongeneral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_informaciongeneral` (
  `codepinformaciongeneralcif` int(11) NOT NULL AUTO_INCREMENT,
  `codgensucursal` int(11) DEFAULT NULL,
  `codepestadocivil` int(11) DEFAULT NULL,
  `codgentipoidentificacion` int(11) DEFAULT NULL,
  `codgendepartamento` int(11) DEFAULT NULL,
  `codgenmunicipio` int(11) DEFAULT NULL,
  `codgenzona` int(11) DEFAULT NULL,
  `codgenarea` int(11) DEFAULT NULL,
  `codeptipoestado` int(11) DEFAULT NULL,
  `ep_informaciongeneralprimernombre` varchar(15) DEFAULT NULL,
  `ep_informaciongeneralsegundonombre` varchar(15) DEFAULT NULL,
  `ep_informaciongeneralprimerapellido` varchar(15) DEFAULT NULL,
  `ep_informaciongeneralsegundoapellido` varchar(15) DEFAULT NULL,
  `ep_informaciongeneralnombreadicional` varchar(15) DEFAULT NULL,
  `ep_informaciongeneralfechanacimiento` date DEFAULT NULL,
  `ep_informaciongeneralnit` varchar(15) DEFAULT NULL,
  `ep_informaciongeneralnumeroidentificacion` int(20) DEFAULT NULL,
  `ep_informaciongeneralnacionalidad` varchar(25) DEFAULT NULL,
  `ep_informaciongeneraldireccion` varchar(100) DEFAULT NULL,
  `ep_informaciongeneralestatura` int(4) DEFAULT NULL,
  `ep_informaciongeneralpeso` int(3) DEFAULT NULL,
  `ep_informaciongeneralreligion` varchar(20) DEFAULT NULL,
  `ep_informaciongeneralcorreo` varchar(50) DEFAULT NULL,
  `codgenpuesto` int(11) DEFAULT NULL,
  `ep_informaciongeneralfechaboda` date DEFAULT NULL,
  `ep_informaciongeneralcif` int(11) DEFAULT NULL,
  PRIMARY KEY (`codepinformaciongeneralcif`),
  KEY `fk_ep_informaciongeneral_gen_tipoidentificacion1_idx` (`codgentipoidentificacion`),
  KEY `fk_ep_informaciongeneral_ep_tipoestado1_idx` (`codeptipoestado`),
  KEY `fk_ep_informaciongeneral_gen_sucursal1_idx` (`codgensucursal`),
  KEY `fk_ep_informaciongeneral_gen_departamento1_idx` (`codgendepartamento`),
  KEY `fk_ep_informaciongeneral_ep_estadocivil1_idx` (`codepestadocivil`),
  KEY `fk_ep_informaciongeneral_ep_municipio1_idx` (`codgenmunicipio`),
  KEY `fk_ep_informaciongeneral_ep_area1_idx` (`codgenarea`),
  KEY `fk_ep_informaciongeneral_ep_zona1_idx` (`codgenzona`),
  KEY `fk_ep_informaciongeneral_ep_tipoid_idx` (`codgentipoidentificacion`),
  CONSTRAINT `fk_ep_informaciongeneral_ep_estadocivil1` FOREIGN KEY (`codepestadocivil`) REFERENCES `ep_estadocivil` (`codepestadocivil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_informaciongeneral_ep_tipoestado1` FOREIGN KEY (`codeptipoestado`) REFERENCES `ep_tipoestado` (`codeptipoestado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_informaciongeneral_gen_area1` FOREIGN KEY (`codgenarea`) REFERENCES `gen_area` (`codgenarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_informaciongeneral_gen_departamento1` FOREIGN KEY (`codgendepartamento`) REFERENCES `gen_departamento` (`codgendepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_informaciongeneral_gen_municipio1` FOREIGN KEY (`codgenmunicipio`) REFERENCES `gen_municipio` (`codgenmunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_informaciongeneral_gen_sucursal1` FOREIGN KEY (`codgensucursal`) REFERENCES `gen_sucursal` (`codgensucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_informaciongeneral_gen_tipoidentificacion1` FOREIGN KEY (`codgentipoidentificacion`) REFERENCES `gen_tipoidentificacion` (`codgentipoidentificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_informaciongeneral_gen_zona1` FOREIGN KEY (`codgenzona`) REFERENCES `gen_zona` (`codgenzona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12348 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_informaciongeneral`
--

LOCK TABLES `ep_informaciongeneral` WRITE;
/*!40000 ALTER TABLE `ep_informaciongeneral` DISABLE KEYS */;
INSERT INTO `ep_informaciongeneral` VALUES (1,1,2,1,1,102,1,1,2,'Jose','Alejandro','Teo','Gonzalez','','1999-01-27','10104',2147483647,'Guatemala','Zona 7 Guatemala',12,25,'Catolico','jose.ale@guadalapuna.com.gt',1,'2020-04-24',123),(2,1,2,1,1,102,1,1,2,'','Alejandro','','','','2018-07-22','',0,'','',0,0,'','',1,'0000-00-00',1000),(3,2,2,1,1,102,2,2,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',455),(4,1,1,1,1,102,1,1,2,'Jose','Alejandro','Gonzalez','Teo','','2018-07-22','239955',2555,'Guatemalteca','Zona 7 bethania ',22,22,'2','22',NULL,'0000-00-00',13222),(5,1,1,1,1,102,1,1,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',12225),(6,1,1,1,1,102,1,2,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',1555),(7,1,1,1,1,102,1,2,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',1444),(8,1,1,1,1,102,1,2,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',55555),(9,1,1,1,1,102,1,1,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',5151),(10,1,3,1,1,102,2,2,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',333),(11,1,2,1,1,102,1,1,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',555),(12,1,3,1,2,102,1,1,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',333),(13,1,4,1,1,102,1,1,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',22),(14,1,2,1,2,102,1,1,1,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'0000-00-00',666),(15,1,3,1,2,102,2,1,2,'Esgar','Ruben','Cassola','Casasola2','Gustavo','2018-07-22','22525545',0,'Guatemalteca','zona 7',12,12,'12','12',NULL,'0000-00-00',55555),(16,1,1,1,1,102,1,1,2,'','','','','','0000-00-00','',0,'','',0,0,'','',NULL,'0000-00-00',1),(17,1,1,1,1,102,1,1,2,'Ruben','Edgar','Chuy','Ruiz','','2014-02-05','239955',85995959,'Guatemalteca','',22,22,'22','22',NULL,'2020-04-24',1234568),(18,1,1,1,1,102,1,1,2,'','','','','','0000-00-00','',0,'','',0,0,'','',NULL,'0000-00-00',1),(19,1,1,1,1,102,1,1,2,'','','Gonzalez','Teo','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',1),(20,1,1,1,1,102,1,1,2,'','','','','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',0),(21,1,1,1,1,102,1,1,2,'Diego','asdsadsad','Gomez','Giron','','2018-07-22','123456',45646556,'Guatemalñteco','zona 1',10,0,'','',NULL,'0001-01-01',2425232),(22,1,1,1,1,102,1,1,2,'','','','','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',0),(23,1,1,1,1,102,1,1,2,'','','','','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',0),(24,1,1,1,1,102,1,1,2,'','','','','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',0),(25,1,1,1,1,102,1,1,2,'','','','','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',0),(26,1,1,1,1,102,1,1,2,'','','','','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',0),(27,1,1,1,1,102,1,1,2,'','','','','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',0),(28,1,1,1,1,102,1,1,2,'','','','','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',0),(29,1,1,1,1,102,1,1,2,'','','','','','0001-01-01','',0,'','',0,0,'','',NULL,'0001-01-01',0),(30,1,1,1,1,102,1,1,2,'','','','','','2018-07-22','',0,'','',0,0,'','',NULL,'2020-04-24',0),(31,6,2,1,1,716,17,32,2,'Diego','Jose','Gomez','Giron','','2018-07-22','21867957',123456,'Guatemalteco','Guatemala',21,21,'Catolico','dj_2425_gomez@hotmail.com',278,'2020-04-24',1234),(32,1,1,1,1,102,1,1,2,'','','','','','2018-07-22','',0,'','',0,0,'','',0,'2020-04-24',0),(33,1,1,1,1,102,1,1,2,'','','','','','2018-07-22','',0,'','',0,0,'','',0,'2020-04-24',0),(34,1,1,1,2,101,17,33,2,'Diego','Jose','Gomez','Giron','','2018-07-22','45645',2131231,'Guatemalteco','Carretera Al Atlántico Km 8.5 Zona 17, Residenciales Villa Atlantis Casa A-5',2,150,'Catolico','keyshard@gmail.com',289,'2020-04-24',1017);
/*!40000 ALTER TABLE `ep_informaciongeneral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_ingreso`
--

DROP TABLE IF EXISTS `ep_ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_ingreso` (
  `codepingreso` int(11) NOT NULL,
  `codepcontrolingreso` int(11) DEFAULT NULL,
  `ep_ingresosueldo` double DEFAULT NULL,
  `ep_ingresobonificacion` double DEFAULT NULL,
  `ep_ingresocomisiones` double DEFAULT NULL,
  PRIMARY KEY (`codepingreso`),
  KEY `fk_ep_ingreso_ep_controlingreso1_idx` (`codepcontrolingreso`),
  CONSTRAINT `fk_ep_ingreso_ep_controlingreso1` FOREIGN KEY (`codepcontrolingreso`) REFERENCES `ep_controlingreso` (`codepcontrolingreso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_ingreso`
--

LOCK TABLES `ep_ingreso` WRITE;
/*!40000 ALTER TABLE `ep_ingreso` DISABLE KEYS */;
INSERT INTO `ep_ingreso` VALUES (1,1,5000,300,100),(2,2,50000,250,5220),(3,3,0,0,0),(4,4,0,0,0),(5,5,0,0,0),(6,6,0,0,0),(7,7,0,0,0),(8,8,0,0,0),(9,9,0,0,0),(10,10,0,0,0),(11,11,0,0,0),(12,12,0,0,0),(13,13,546,45564,6546),(14,14,0,0,0),(15,15,0,0,0),(16,16,0,0,0),(17,17,0,0,0),(18,18,0,0,0);
/*!40000 ALTER TABLE `ep_ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_inmueble`
--

DROP TABLE IF EXISTS `ep_inmueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_inmueble` (
  `codepinmueble` int(11) NOT NULL,
  `codeptipoinmueble` int(11) DEFAULT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_inmueblefolio` varchar(50) DEFAULT NULL,
  `ep_inmueblelibro` varchar(50) DEFAULT NULL,
  `ep_inmuebledireccion` varchar(50) DEFAULT NULL,
  `ep_inmueblevalor` double DEFAULT NULL,
  `ep_inmuebledescripcion` varchar(200) DEFAULT NULL,
  `ep_inmueblecomentario` varchar(100) DEFAULT NULL,
  `ep_inmueblefinca` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codepinmueble`),
  KEY `fk_ep_inmueble_ep_tipoinmueble1_idx` (`codeptipoinmueble`),
  KEY `fk_ep_inmueble_ep_informaciongeneralcif_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_inmueble_ep_informaciongeneralcif1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_inmueble_ep_tipoinmueble1` FOREIGN KEY (`codeptipoinmueble`) REFERENCES `ep_tipoinmueble` (`codeptipoinmueble`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_inmueble`
--

LOCK TABLES `ep_inmueble` WRITE;
/*!40000 ALTER TABLE `ep_inmueble` DISABLE KEYS */;
INSERT INTO `ep_inmueble` VALUES (1,1,1,'12','1','Guatemala Zona 7',2500,'ES MUY CARO','','Finquero'),(2,2,1,'1','1','Guatemala Zona 3',1500,'Completo',NULL,NULL),(3,1,16,'12','1','Guatemala Zona 7',2500,'ES MUY CARO',NULL,NULL),(4,2,16,'1','1','Guatemala Zona 3',1500,'Completo',NULL,NULL),(5,1,1,'25','15','Zona 4 la estación central del momo',20000,'Es un lugar que contiene bosque',NULL,NULL),(6,2,1,'3','3','3',3,'3',NULL,NULL),(7,1,30,'adsa','asd','asda',5465,'asda',NULL,NULL),(8,1,21,'Prueba','Prueba','Ciudad',500,'Prueba',NULL,NULL),(9,1,31,'as','ads','ciuda',546,'acsc','ada','asd');
/*!40000 ALTER TABLE `ep_inmueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_institucion`
--

DROP TABLE IF EXISTS `ep_institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_institucion` (
  `codepinstitucion` int(11) NOT NULL,
  `codeptipoinstitucion` int(11) DEFAULT NULL,
  `ep_institucionnombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`codepinstitucion`),
  KEY `fk_ep_institucion_ep_tipoinstitucion_idx` (`codeptipoinstitucion`),
  CONSTRAINT `fk_ep_institucion_ep_tipoinstitucion1` FOREIGN KEY (`codeptipoinstitucion`) REFERENCES `ep_tipoinstitucion` (`codeptipoinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_institucion`
--

LOCK TABLES `ep_institucion` WRITE;
/*!40000 ALTER TABLE `ep_institucion` DISABLE KEYS */;
INSERT INTO `ep_institucion` VALUES (1,1,'El Crédito Hipotecario Nacional de Guatemala'),(2,1,'Banco Inmobiliario, S. A.'),(3,1,'Banco de los Trabajadores'),(4,1,'Banco Industrial, S. A.'),(5,1,'Banco de Desarrollo Rural, S. A.'),(6,1,'Banco Internacional, S. A.'),(7,1,'Citibank, N.A., Sucursal Guatemala'),(8,1,'Vivibanco, S. A.'),(9,1,'Banco Ficohsa Guatemala, S. A'),(10,1,'Banco Promerica, S. A.'),(11,1,'Banco de Antigua, S. A.'),(12,1,'Banco de América Central, S. A.'),(13,1,'Banco Agromercantil de Guatemala, S. A.'),(14,1,'Banco G&T Continental, S. A.'),(15,1,'Banco Azteca de Guatemala, S. A.'),(16,1,'Banco INV, S. A.'),(17,1,'Banco Credicorp, S. A. (1)'),(18,2,'Corporación Financiera Nacional '),(19,2,'Financiera Industrial, S. A.'),(20,2,'Financiera Rural, S. A. '),(21,2,'Financiera de Capitales, S. A. '),(22,2,'Financiera Summa, S. A.'),(23,2,'Financiera Progreso, S. A.'),(24,2,'Financiera Agromercantil, S. A.'),(25,2,'Financiera MVA, S. A. '),(26,2,'Financiera Consolidada, S. A.'),(27,2,'Financiera de los Trabajadores, S. A.'),(28,2,'Financiera G & T Continental, S. A.'),(29,3,'FENACOAC'),(30,3,'COOP. GUAYACAN'),(31,3,'COOSADECO'),(32,3,'COOSAJO'),(33,3,'COOP. UNION POPULAR'),(34,3,'COOP. UPA'),(35,3,'COOP. GUALAN'),(36,3,'COOP. COBAN'),(37,3,'COOP. TECULUTAN'),(38,3,'PARROQUIAL GUADALUPANA'),(39,3,'COOP. TONANTEL'),(40,3,'COOP. HORIZONTES'),(41,3,'COOP. COMALAPA'),(42,3,'COOP. BIENESTAR'),(43,3,'COOP. MOYUTAN'),(44,3,'COOP. CHIQUIMULA'),(45,3,'COSAMI'),(46,3,'COOP. SALCAJA'),(47,3,'ACREDICOM'),(48,3,'COLUA'),(49,3,'COOSANJER'),(50,3,'COOPSAMA'),(51,3,'COOP. SOLOMA'),(52,3,'COOP. ENCARNACION'),(53,3,'ECOSABA'),(54,3,'COOP. YAMAN KUTZ'),(55,3,'COTONEB'),(56,4,'Microfinanciera');
/*!40000 ALTER TABLE `ep_institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_inventario`
--

DROP TABLE IF EXISTS `ep_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_inventario` (
  `codepinventario` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_inventarionombre` varchar(50) DEFAULT NULL,
  `ep_inventariodescripcion` varchar(200) DEFAULT NULL,
  `ep_inventariomonto` double DEFAULT NULL,
  PRIMARY KEY (`codepinventario`),
  KEY `fk_ep_inventario_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_inventario_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_inventario`
--

LOCK TABLES `ep_inventario` WRITE;
/*!40000 ALTER TABLE `ep_inventario` DISABLE KEYS */;
INSERT INTO `ep_inventario` VALUES (1,1,'Mercaderia de computadoras','MERCADERIA DE TELA',5000),(2,17,'50 Kilos de tela','',25000),(3,21,'','',0),(4,22,'','',0),(5,23,'','',0),(6,24,'','',0),(7,25,'','',0),(8,26,'','',0),(9,27,'','',0),(10,28,'','',0),(11,29,'','',0),(12,30,'','',0),(13,31,'Prueba','',500),(14,32,'','',0),(15,33,'','',0),(16,34,'','',0);
/*!40000 ALTER TABLE `ep_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_inversiones`
--

DROP TABLE IF EXISTS `ep_inversiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_inversiones` (
  `codepinversiones` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `codeptipoinstitucion` int(11) DEFAULT NULL,
  `codepinstitucion` int(11) DEFAULT NULL,
  `codeptipomoneda` int(11) DEFAULT NULL,
  `ep_inversionesnombre` varchar(100) DEFAULT NULL,
  `ep_inversionesplazo` varchar(100) DEFAULT NULL,
  `ep_inversionesmonto` double DEFAULT NULL,
  `ep_inversionesorigen` varchar(200) DEFAULT NULL,
  `ep_inversionesnumerocuenta` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`codepinversiones`),
  KEY `fk_ep_inversiones_ep_tipomoneda1_idx` (`codeptipomoneda`),
  KEY `fk_ep_inversiones_ep_tipoinstitucion1_idx` (`codeptipoinstitucion`),
  KEY `fk_ep_inversiones_ep_institucion1_idx` (`codepinstitucion`),
  KEY `fk_ep_inversiones_ep_informaciongeneral1` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_inversiones_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_inversiones_ep_institucion1` FOREIGN KEY (`codepinstitucion`) REFERENCES `ep_institucion` (`codepinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_inversiones_ep_tipoinstitucion1` FOREIGN KEY (`codeptipoinstitucion`) REFERENCES `ep_tipoinstitucion` (`codeptipoinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_inversiones_ep_tipomoneda1` FOREIGN KEY (`codeptipomoneda`) REFERENCES `ep_tipomoneda` (`codeptipomoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_inversiones`
--

LOCK TABLES `ep_inversiones` WRITE;
/*!40000 ALTER TABLE `ep_inversiones` DISABLE KEYS */;
INSERT INTO `ep_inversiones` VALUES (1,1,1,1,1,'sinnombre','5',2500,'Sueldo promediado','12345679'),(2,31,1,3,1,'sinnombre','5',500,'100','87654321'),(3,1,1,1,1,'sinnombre','9',2500,'mi ahorro','12345688');
/*!40000 ALTER TABLE `ep_inversiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_maquinaria`
--

DROP TABLE IF EXISTS `ep_maquinaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_maquinaria` (
  `codepmaquinaria` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_maquinarianombre` varchar(45) DEFAULT NULL,
  `ep_maquinariadescripcion` varchar(100) DEFAULT NULL,
  `ep_maquinariamonto` double DEFAULT NULL,
  PRIMARY KEY (`codepmaquinaria`),
  KEY `fk_ep_prestamo_ep_informaciongeneralcif_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_prestamo_ep_informaciongeneralcif1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_maquinaria`
--

LOCK TABLES `ep_maquinaria` WRITE;
/*!40000 ALTER TABLE `ep_maquinaria` DISABLE KEYS */;
INSERT INTO `ep_maquinaria` VALUES (1,1,'Excavadora','Maquina de construccion',500000),(2,17,'Excavadora2','Maquina de construccion',50000),(3,21,'','',0),(4,22,'','',0),(5,23,'','',0),(6,24,'','',0),(7,25,'','',0),(8,26,'','',0),(9,27,'','',0),(10,28,'','',0),(11,29,'','',0),(12,30,'','',0),(13,31,'sadsa','adsasdas',4556),(14,32,'','',0),(15,33,'','',0),(16,34,'','',0);
/*!40000 ALTER TABLE `ep_maquinaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_menajecasadetalle`
--

DROP TABLE IF EXISTS `ep_menajecasadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_menajecasadetalle` (
  `codepmenajecasadetalle` int(11) NOT NULL,
  `codmenajedecasaencabezado` int(11) DEFAULT NULL,
  `codeptipobien` int(11) DEFAULT NULL,
  `ep_menajecasadetallecantidad` int(20) DEFAULT NULL,
  `ep_menajecasadetallevalor` double DEFAULT NULL,
  PRIMARY KEY (`codepmenajecasadetalle`),
  KEY `fk_ep_menajecasadetalle_ep_menajedecasaencabezado1_idx` (`codmenajedecasaencabezado`),
  KEY `fk_ep_menajecasadetalle_ep_tipobien1_idx` (`codeptipobien`),
  CONSTRAINT `fk_ep_menajecasadetalle_ep_menajedecasaencabezado1` FOREIGN KEY (`codmenajedecasaencabezado`) REFERENCES `ep_menajedecasaencabezado` (`codepmenajedecasaencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_menajecasadetalle_ep_tipobien1` FOREIGN KEY (`codeptipobien`) REFERENCES `ep_tipobien` (`codeptipobien`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_menajecasadetalle`
--

LOCK TABLES `ep_menajecasadetalle` WRITE;
/*!40000 ALTER TABLE `ep_menajecasadetalle` DISABLE KEYS */;
INSERT INTO `ep_menajecasadetalle` VALUES (1,1,9,1,50),(2,2,9,0,0),(3,2,9,0,0),(4,2,9,0,0),(5,2,9,0,0),(6,2,9,0,0),(7,2,9,0,0),(8,2,9,0,0),(9,2,9,0,0),(10,2,9,0,0),(11,2,9,0,0),(12,3,1,0,100),(13,3,2,0,500),(14,3,3,0,100),(15,3,4,2,2500),(16,3,5,1,1500),(17,3,6,2,500),(18,3,7,1,500),(19,3,8,1,5000),(20,3,9,1,3500),(21,3,10,5,4500),(22,3,11,0,0),(23,4,1,0,0),(24,4,2,0,0),(25,4,3,0,0),(26,4,4,0,0),(27,4,5,0,0),(28,4,6,0,0),(29,4,7,0,0),(30,4,8,0,0),(31,4,9,0,0),(32,4,10,0,0),(33,4,11,0,0),(34,5,1,0,0),(35,5,2,0,0),(36,5,3,0,0),(37,5,4,0,0),(38,5,5,0,0),(39,5,6,0,0),(40,5,7,0,0),(41,5,8,0,0),(42,5,9,0,0),(43,5,10,0,0),(44,5,11,0,0),(45,6,1,0,0),(46,6,2,0,0),(47,6,3,0,0),(48,6,4,0,0),(49,6,5,0,0),(50,6,6,0,0),(51,6,7,0,0),(52,6,8,0,0),(53,6,9,0,0),(54,6,10,0,0),(55,6,11,0,0),(56,7,1,0,0),(57,7,2,0,0),(58,7,3,0,0),(59,7,4,0,0),(60,7,5,0,0),(61,7,6,0,0),(62,7,7,0,0),(63,7,8,0,0),(64,7,9,0,0),(65,7,10,0,0),(66,7,11,0,0),(67,8,1,0,0),(68,8,2,0,0),(69,8,3,0,0),(70,8,4,0,0),(71,8,5,0,0),(72,8,6,0,0),(73,8,7,0,0),(74,8,8,0,0),(75,8,9,0,0),(76,8,10,0,0),(77,8,11,0,0),(78,9,1,0,0),(79,9,2,0,0),(80,9,3,0,0),(81,9,4,0,0),(82,9,5,0,0),(83,9,6,0,0),(84,9,7,0,0),(85,9,8,0,0),(86,9,9,0,0),(87,9,10,0,0),(88,9,11,0,0),(89,10,1,0,0),(90,10,2,0,0),(91,10,3,0,0),(92,10,4,0,0),(93,10,5,0,0),(94,10,6,0,0),(95,10,7,0,0),(96,10,8,0,0),(97,10,9,0,0),(98,10,10,0,0),(99,10,11,0,0),(100,11,1,0,0),(101,11,2,0,0),(102,11,3,0,0),(103,11,4,0,0),(104,11,5,0,0),(105,11,6,0,0),(106,11,7,0,0),(107,11,8,0,0),(108,11,9,0,0),(109,11,10,0,0),(110,11,11,0,0),(111,12,1,0,0),(112,12,2,0,0),(113,12,3,0,0),(114,12,4,0,0),(115,12,5,0,0),(116,12,6,0,0),(117,12,7,0,0),(118,12,8,0,0),(119,12,9,0,0),(120,12,10,0,0),(121,12,11,0,0),(122,13,1,0,499),(123,13,2,0,500),(124,13,3,0,501),(125,13,4,5,51213),(126,13,5,2,555),(127,13,6,1,12),(128,13,7,1,561),(129,13,8,2,45),(130,13,9,1,5465),(131,13,10,1,5465),(132,13,11,0,4654),(133,14,1,0,0),(134,14,2,0,0),(135,14,3,0,0),(136,14,4,0,0),(137,14,5,0,0),(138,14,6,0,0),(139,14,7,0,0),(140,14,8,0,0),(141,14,9,0,0),(142,14,10,0,0),(143,14,11,0,0),(144,15,1,0,0),(145,15,2,0,0),(146,15,3,0,0),(147,15,4,0,0),(148,15,5,0,0),(149,15,6,0,0),(150,15,7,0,0),(151,15,8,0,0),(152,15,9,0,0),(153,15,10,0,0),(154,15,11,0,0),(155,16,1,0,0),(156,16,2,0,0),(157,16,3,0,0),(158,16,4,0,0),(159,16,5,0,0),(160,16,6,0,0),(161,16,7,0,0),(162,16,8,0,0),(163,16,9,0,0),(164,16,10,0,0),(165,16,11,0,0);
/*!40000 ALTER TABLE `ep_menajecasadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_menajedecasaencabezado`
--

DROP TABLE IF EXISTS `ep_menajedecasaencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_menajedecasaencabezado` (
  `codepmenajedecasaencabezado` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_menajedecabezatotal` double DEFAULT NULL,
  PRIMARY KEY (`codepmenajedecasaencabezado`),
  KEY `fk_ep_menajedecasaencabezado_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_menajedecasaencabezado_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_menajedecasaencabezado`
--

LOCK TABLES `ep_menajedecasaencabezado` WRITE;
/*!40000 ALTER TABLE `ep_menajedecasaencabezado` DISABLE KEYS */;
INSERT INTO `ep_menajedecasaencabezado` VALUES (1,1,2500),(2,17,0),(3,21,0),(4,22,0),(5,23,0),(6,24,0),(7,25,0),(8,26,0),(9,27,0),(10,28,0),(11,29,0),(12,30,0),(13,31,0),(14,32,0),(15,33,0),(16,34,0);
/*!40000 ALTER TABLE `ep_menajedecasaencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_negocio`
--

DROP TABLE IF EXISTS `ep_negocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_negocio` (
  `codepnegocio` int(11) NOT NULL,
  `codepcontrolingreso` int(11) DEFAULT NULL,
  `ep_negocionombre` varchar(50) DEFAULT NULL,
  `ep_negociopatente` varchar(20) DEFAULT NULL,
  `ep_negocioempleados` int(4) DEFAULT NULL,
  `ep_negociodireccion` varchar(50) DEFAULT NULL,
  `ep_negocioingresos` double DEFAULT NULL,
  `ep_negocioegresos` double DEFAULT NULL,
  `ep_negociotipo` varchar(50) DEFAULT NULL,
  `ep_negocioobjeto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codepnegocio`),
  KEY `fk_ep_negocio_ep_controlingreso1_idx` (`codepcontrolingreso`),
  CONSTRAINT `fk_ep_negocio_ep_controlingreso1` FOREIGN KEY (`codepcontrolingreso`) REFERENCES `ep_controlingreso` (`codepcontrolingreso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_negocio`
--

LOCK TABLES `ep_negocio` WRITE;
/*!40000 ALTER TABLE `ep_negocio` DISABLE KEYS */;
INSERT INTO `ep_negocio` VALUES (1,1,'33','33',33,'33 av zona 7',33,33,'2500','33'),(2,2,'','',0,'',0,0,'',''),(3,3,'','',0,'',0,0,'',''),(4,4,'','',0,'',0,0,'',''),(5,5,'','',0,'',0,0,'',''),(6,6,'','',0,'',0,0,'',''),(7,7,'','',0,'',0,0,'',''),(8,8,'','',0,'',0,0,'',''),(9,9,'','',0,'',0,0,'',''),(10,10,'','',0,'',0,0,'',''),(11,11,'','',0,'',0,0,'',''),(12,12,'','',0,'',0,0,'',''),(13,13,'','0',0,'',0,0,'','0'),(14,14,'','',0,'',0,0,'',''),(15,15,'','',0,'',0,0,'',''),(16,16,'','',0,'',0,0,'',''),(17,17,'','',0,'',0,0,'',''),(18,18,'','',0,'',0,0,'','');
/*!40000 ALTER TABLE `ep_negocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_pasivocontigente`
--

DROP TABLE IF EXISTS `ep_pasivocontigente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_pasivocontigente` (
  `codeppasivocontigente` int(11) NOT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_pasivocontigenombre` varchar(100) DEFAULT NULL,
  `ep_pasivocontigentedeudor` varchar(100) DEFAULT NULL,
  `ep_pasivocontigentefechadesembolso` date DEFAULT NULL,
  `ep_pasivocontigentefechafinalizacion` date DEFAULT NULL,
  `ep_pasivocontigentesaldo` double DEFAULT NULL,
  `ep_pasivocontigentecondeudor` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codeppasivocontigente`),
  KEY `fk_ep_pasivocontigente_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_pasivocontigente_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_pasivocontigente`
--

LOCK TABLES `ep_pasivocontigente` WRITE;
/*!40000 ALTER TABLE `ep_pasivocontigente` DISABLE KEYS */;
INSERT INTO `ep_pasivocontigente` VALUES (1,1,'Organismo Judicial','Pablo picasso','2020-04-26','2021-05-26',25500,'LE DEVO POR UN PAPELEO'),(2,17,'Casa de edgar','Edgar','2020-04-01','2020-04-30',25000,'Familiar'),(3,21,'','','2020-04-24','0001-01-01',0,''),(4,22,'','','0000-00-00','0000-00-00',0,''),(5,23,'','','0000-00-00','0000-00-00',0,''),(6,24,'','','0000-00-00','0000-00-00',0,''),(7,25,'','','0000-00-00','0000-00-00',0,''),(8,26,'','','0000-00-00','0000-00-00',0,''),(9,27,'','','0000-00-00','0000-00-00',0,''),(10,28,'','','0000-00-00','0000-00-00',0,''),(11,29,'','','0000-00-00','0000-00-00',0,''),(12,30,'','','0000-00-00','0000-00-00',0,''),(13,31,'Prueba','Prueba','2020-04-24','0001-01-01',131432,'asdsa'),(14,32,'','','0000-00-00','0000-00-00',0,''),(15,33,'','','0000-00-00','0000-00-00',0,''),(16,34,'','','0000-00-00','0000-00-00',0,'');
/*!40000 ALTER TABLE `ep_pasivocontigente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_personapep`
--

DROP TABLE IF EXISTS `ep_personapep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_personapep` (
  `codeppersonapep` int(11) NOT NULL,
  `codeptipopep` int(11) DEFAULT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `codeptiponacionalidad` int(11) DEFAULT NULL,
  `codeptipoparentesco` int(11) DEFAULT NULL,
  `ep_personapepnombre` varchar(100) DEFAULT NULL,
  `ep_personapepnombreinstitucion` varchar(100) DEFAULT NULL,
  `ep_personapeppuesto` varchar(100) DEFAULT NULL,
  `ep_personapeppais` varchar(100) DEFAULT NULL,
  `ep_personapepmotivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codeppersonapep`),
  KEY `fk_ep_personapep_ep_tipopep1_idx` (`codeptipopep`),
  KEY `fk_ep_personapep_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  KEY `fk_ep_personapep_ep_tiponacionalidad1_idx` (`codeptiponacionalidad`),
  KEY `fk_ep_personapep_ep_tipoparentesco_idx` (`codeptipoparentesco`),
  CONSTRAINT `fk_ep_personapep_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_personapep_ep_tiponacionalidad1` FOREIGN KEY (`codeptiponacionalidad`) REFERENCES `ep_tiponacionalidad` (`codeptiponacionalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_personapep_ep_tipoparentesco1` FOREIGN KEY (`codeptipoparentesco`) REFERENCES `ep_tipoparentesco` (`codeptipoparentesco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_personapep_ep_tipopep1` FOREIGN KEY (`codeptipopep`) REFERENCES `ep_tipopep` (`codeptipopep`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_personapep`
--

LOCK TABLES `ep_personapep` WRITE;
/*!40000 ALTER TABLE `ep_personapep` DISABLE KEYS */;
INSERT INTO `ep_personapep` VALUES (1,1,1,NULL,NULL,NULL,'','','',NULL),(2,2,1,1,4,'Rosaura Perez','Relationshi','Desarollador','Guatemala',NULL),(3,3,1,2,2,'Luisa Fernandez','Makoto','Decorador','Guatemala','una deuda por choque'),(4,1,17,1,1,'','','','',''),(5,2,17,1,1,'','','','',''),(6,3,17,1,1,'','','','',''),(7,1,21,1,1,'','','','',''),(8,2,21,1,1,'','','','',''),(9,3,21,1,1,'','','','',''),(10,1,22,1,1,'','','','',''),(11,2,22,1,1,'','','','',''),(12,3,22,1,1,'','','','',''),(13,1,23,1,1,'','','','',''),(14,2,23,1,1,'','','','',''),(15,3,23,1,1,'','','','',''),(16,1,24,1,1,'','','','',''),(17,2,24,1,1,'','','','',''),(18,3,24,1,1,'','','','',''),(19,1,25,1,1,'','','','',''),(20,2,25,1,1,'','','','',''),(21,3,25,1,1,'','','','',''),(22,1,26,1,1,'','','','',''),(23,2,26,1,1,'','','','',''),(24,3,26,1,1,'','','','',''),(25,1,27,1,1,'','','','',''),(26,2,27,1,1,'','','','',''),(27,3,27,1,1,'','','','',''),(28,1,28,1,1,'','','','',''),(29,2,28,1,1,'','','','',''),(30,3,28,1,1,'','','','',''),(31,1,29,1,1,'','','','',''),(32,2,29,1,1,'','','','',''),(33,3,29,1,1,'','','','',''),(34,1,30,1,1,'','','','',''),(35,2,30,1,1,'','','','',''),(36,3,30,1,1,'','','','',''),(37,1,31,1,1,'','','','',''),(38,2,31,1,1,'','','','',''),(39,3,31,1,1,'','','','',''),(40,1,32,1,1,'','','','',''),(41,2,32,1,1,'','','','',''),(42,3,32,1,1,'','','','',''),(43,1,33,1,1,'','','','',''),(44,2,33,1,1,'','','','',''),(45,3,33,1,1,'','','','',''),(46,1,34,1,1,'','','','',''),(47,2,34,1,1,'','','','',''),(48,3,34,1,1,'','','','','');
/*!40000 ALTER TABLE `ep_personapep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_prestamo`
--

DROP TABLE IF EXISTS `ep_prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_prestamo` (
  `codepprestamo` int(11) NOT NULL,
  `codeptipoprestamo` int(11) DEFAULT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `codepinstitucion` int(11) DEFAULT NULL,
  `codeptipoinstitucion` int(11) DEFAULT NULL,
  `ep_prestamomomentoinicial` double DEFAULT NULL,
  `ep_prestamosaldoactual` double DEFAULT NULL,
  `ep_prestamofechadesembolso` date DEFAULT NULL,
  `ep_prestamofechadefinalizacion` date DEFAULT NULL,
  `ep_prestamodestino` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codepprestamo`),
  KEY `fk_ep_prestamo_ep_tipoprestamo1_idx` (`codeptipoprestamo`),
  KEY `fk_ep_prestamo_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  KEY `fk_ep_prestamo_ep_institucion1_idx` (`codepinstitucion`),
  KEY `fk_ep_prestamo_ep_tipoinstitucion1_idx` (`codeptipoinstitucion`),
  CONSTRAINT `fk_ep_prestamo_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_prestamo_ep_institucion1` FOREIGN KEY (`codepinstitucion`) REFERENCES `ep_institucion` (`codepinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_prestamo_ep_tipoinstitucion1` FOREIGN KEY (`codepinstitucion`) REFERENCES `ep_tipoinstitucion` (`codeptipoinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_prestamo_ep_tipoprestamo1` FOREIGN KEY (`codeptipoprestamo`) REFERENCES `ep_tipoprestamo` (`codeptipoprestamo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_prestamo`
--

LOCK TABLES `ep_prestamo` WRITE;
/*!40000 ALTER TABLE `ep_prestamo` DISABLE KEYS */;
INSERT INTO `ep_prestamo` VALUES (1,1,1,2,2,2500,7000,'2020-05-12','2020-01-12','Cuenta Monetaria'),(2,1,1,1,1,7500,5222,'2020-05-14','2020-01-01','Cuenta Familiar'),(3,1,16,2,2,2500,7000,'0000-00-00','0000-00-00','Cuenta Monetaria'),(4,1,16,1,1,7500,5222,'0000-00-00','0000-00-00','Cuenta Familiar'),(5,2,1,1,1,5000,2000,'2018-08-01','2018-08-11','Cuenta de destino'),(6,1,30,1,1,4654,654,'2018-07-22','2018-07-22','asdasd'),(7,1,21,2,2,5465,5456,'2018-07-22','2018-07-22','Prueba'),(8,1,31,1,1,5000,2500,'2018-07-22','2018-07-22','asdasd');
/*!40000 ALTER TABLE `ep_prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_remesas`
--

DROP TABLE IF EXISTS `ep_remesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_remesas` (
  `codepremesas` int(11) NOT NULL,
  `codepcontrolingreso` int(11) DEFAULT NULL,
  `ep_remesasnombre` varchar(50) DEFAULT NULL,
  `ep_remesasrelacion` varchar(100) DEFAULT NULL,
  `ep_remesasmonto` double DEFAULT NULL,
  `ep_remesasperiodo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codepremesas`),
  KEY `fk_ep_remesas_ep_controlingreso1_idx` (`codepcontrolingreso`),
  CONSTRAINT `fk_ep_remesas_ep_controlingreso1` FOREIGN KEY (`codepcontrolingreso`) REFERENCES `ep_controlingreso` (`codepcontrolingreso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_remesas`
--

LOCK TABLES `ep_remesas` WRITE;
/*!40000 ALTER TABLE `ep_remesas` DISABLE KEYS */;
INSERT INTO `ep_remesas` VALUES (1,1,'REMESA MI COSECHA','Madre',2500,'1'),(2,2,'','',0,'1'),(3,3,'','',0,'1'),(4,4,'','',0,'1'),(5,5,'','',0,'1'),(6,6,'','',0,'1'),(7,7,'','',0,'1'),(8,8,'','',0,'1'),(9,9,'','',0,'1'),(10,10,'','',0,'1'),(11,11,'','',0,'1'),(12,12,'','',0,'1'),(13,13,'','',0,'1'),(14,14,'','',0,'1'),(15,15,'','',0,'1'),(16,16,'','',0,'1'),(17,17,'','',0,'1'),(18,18,'','',0,'1');
/*!40000 ALTER TABLE `ep_remesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tarjetadecredito`
--

DROP TABLE IF EXISTS `ep_tarjetadecredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tarjetadecredito` (
  `codeptrajetadecredito` int(11) NOT NULL,
  `codeptipoinstitucion` int(11) DEFAULT NULL,
  `codepinstitucion` int(11) DEFAULT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_tarjetadecreditomonedaqtz` double DEFAULT NULL,
  `ep_tarjetadecreditomonedausd` double DEFAULT NULL,
  `ep_tarjetadecreditosaldoactual` double DEFAULT NULL,
  PRIMARY KEY (`codeptrajetadecredito`),
  KEY `fk_ep_tarjetadecredito_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  KEY `fk_ep_tarjetadecredito_ep_tipoinstitucion1_idx` (`codeptipoinstitucion`),
  KEY `fk_ep_tarjetadecredito_ep_institucion1_idx` (`codepinstitucion`),
  CONSTRAINT `fk_ep_tarjetadecredito_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_tarjetadecredito_ep_institucion1` FOREIGN KEY (`codepinstitucion`) REFERENCES `ep_institucion` (`codepinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_tarjetadecredito_ep_tipoinstitucion1` FOREIGN KEY (`codeptipoinstitucion`) REFERENCES `ep_tipoinstitucion` (`codeptipoinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tarjetadecredito`
--

LOCK TABLES `ep_tarjetadecredito` WRITE;
/*!40000 ALTER TABLE `ep_tarjetadecredito` DISABLE KEYS */;
INSERT INTO `ep_tarjetadecredito` VALUES (1,1,1,1,8000,1000,500000),(2,2,2,1,7500,950,1000),(3,1,1,16,1,8000,1000),(4,2,2,16,1,7500,950),(5,1,1,1,2500,1000,250),(6,1,1,30,464,56465,65465),(7,1,1,21,56465,56465,5564),(8,1,1,31,5000,2000,3500);
/*!40000 ALTER TABLE `ep_tarjetadecredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_telefono`
--

DROP TABLE IF EXISTS `ep_telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_telefono` (
  `codeptelefono` int(11) NOT NULL AUTO_INCREMENT,
  `codeptipotelefono` int(11) DEFAULT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_telefononumero` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`codeptelefono`),
  KEY `fk_ep_telefonol_ep_tipotelefono1_idx` (`codeptipotelefono`),
  KEY `fk_ep_telefonol_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_telefono_ep_infromaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_telefono_ep_tipotelefono1` FOREIGN KEY (`codeptipotelefono`) REFERENCES `ep_tipotelefono` (`codeptipotelefono`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_telefono`
--

LOCK TABLES `ep_telefono` WRITE;
/*!40000 ALTER TABLE `ep_telefono` DISABLE KEYS */;
INSERT INTO `ep_telefono` VALUES (1,1,1,'31417025'),(2,1,1,'40113755'),(3,2,1,'24358844'),(5,1,16,'31417025'),(6,1,16,'40113755'),(7,2,16,'24358844'),(8,1,16,'31417025'),(9,1,19,'24352567'),(10,1,1,'564654'),(11,2,20,'12345678'),(12,1,22,'4564654'),(13,2,29,'54267957'),(14,1,30,'123456'),(15,2,21,'12345'),(16,2,21,'54267957'),(17,2,2,'54267957'),(18,2,31,'5426757'),(19,1,31,'123456'),(20,1,32,'4645'),(21,2,34,'54267957');
/*!40000 ALTER TABLE `ep_telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipobien`
--

DROP TABLE IF EXISTS `ep_tipobien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipobien` (
  `codeptipobien` int(11) NOT NULL,
  `ep_tipobiennombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codeptipobien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipobien`
--

LOCK TABLES `ep_tipobien` WRITE;
/*!40000 ALTER TABLE `ep_tipobien` DISABLE KEYS */;
INSERT INTO `ep_tipobien` VALUES (1,'Equipo de computo'),(2,'Amueblado de sala'),(3,'Amueblado de comedor'),(4,'Televisor'),(5,'Equipo de sonido'),(6,'Lavadora'),(7,'Secadora'),(8,'Estufa'),(9,'Refrigeradora'),(10,'Telefono Movil'),(11,'Otros');
/*!40000 ALTER TABLE `ep_tipobien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipocuenta`
--

DROP TABLE IF EXISTS `ep_tipocuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipocuenta` (
  `codeptipocuenta` int(11) NOT NULL,
  `ep_tipocuentanombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codeptipocuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipocuenta`
--

LOCK TABLES `ep_tipocuenta` WRITE;
/*!40000 ALTER TABLE `ep_tipocuenta` DISABLE KEYS */;
INSERT INTO `ep_tipocuenta` VALUES (1,'Cuentas monetarias'),(2,'Cuentas de ahorro'),(3,'Cuentas en cooperativas'),(4,'Cuentas por cobrar');
/*!40000 ALTER TABLE `ep_tipocuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipocuentacooperativa`
--

DROP TABLE IF EXISTS `ep_tipocuentacooperativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipocuentacooperativa` (
  `codeptipocuentacooperativa` int(11) NOT NULL,
  `ep_tipocuentacooperativanombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codeptipocuentacooperativa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipocuentacooperativa`
--

LOCK TABLES `ep_tipocuentacooperativa` WRITE;
/*!40000 ALTER TABLE `ep_tipocuentacooperativa` DISABLE KEYS */;
INSERT INTO `ep_tipocuentacooperativa` VALUES (1,'Aportación'),(2,'Ahorro');
/*!40000 ALTER TABLE `ep_tipocuentacooperativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipocuentaspopagar`
--

DROP TABLE IF EXISTS `ep_tipocuentaspopagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipocuentaspopagar` (
  `codeptipocuentaspopagar` int(11) NOT NULL,
  `ep_tipocuentaspopagarnombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codeptipocuentaspopagar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipocuentaspopagar`
--

LOCK TABLES `ep_tipocuentaspopagar` WRITE;
/*!40000 ALTER TABLE `ep_tipocuentaspopagar` DISABLE KEYS */;
INSERT INTO `ep_tipocuentaspopagar` VALUES (1,'Largo Plazo'),(2,'Corto Plazo');
/*!40000 ALTER TABLE `ep_tipocuentaspopagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipoestado`
--

DROP TABLE IF EXISTS `ep_tipoestado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipoestado` (
  `codeptipoestado` int(11) NOT NULL,
  `ep_tipoestadonombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codeptipoestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipoestado`
--

LOCK TABLES `ep_tipoestado` WRITE;
/*!40000 ALTER TABLE `ep_tipoestado` DISABLE KEYS */;
INSERT INTO `ep_tipoestado` VALUES (1,'NUEVO'),(2,'PROCESO'),(3,'MODIFICACION');
/*!40000 ALTER TABLE `ep_tipoestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipoestatuscuenta`
--

DROP TABLE IF EXISTS `ep_tipoestatuscuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipoestatuscuenta` (
  `codeptipoestatuscuenta` int(11) NOT NULL,
  `ep_tipoestatuscuentanombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codeptipoestatuscuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipoestatuscuenta`
--

LOCK TABLES `ep_tipoestatuscuenta` WRITE;
/*!40000 ALTER TABLE `ep_tipoestatuscuenta` DISABLE KEYS */;
INSERT INTO `ep_tipoestatuscuenta` VALUES (1,'Activa'),(2,'Desactivada');
/*!40000 ALTER TABLE `ep_tipoestatuscuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipoinmueble`
--

DROP TABLE IF EXISTS `ep_tipoinmueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipoinmueble` (
  `codeptipoinmueble` int(11) NOT NULL,
  `ep_tipoinmueblenombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codeptipoinmueble`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipoinmueble`
--

LOCK TABLES `ep_tipoinmueble` WRITE;
/*!40000 ALTER TABLE `ep_tipoinmueble` DISABLE KEYS */;
INSERT INTO `ep_tipoinmueble` VALUES (1,'Terreno'),(2,'Casa'),(3,'Apartamento');
/*!40000 ALTER TABLE `ep_tipoinmueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipoinstitucion`
--

DROP TABLE IF EXISTS `ep_tipoinstitucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipoinstitucion` (
  `codeptipoinstitucion` int(11) NOT NULL,
  `ep_tipoinstitucionnombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codeptipoinstitucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipoinstitucion`
--

LOCK TABLES `ep_tipoinstitucion` WRITE;
/*!40000 ALTER TABLE `ep_tipoinstitucion` DISABLE KEYS */;
INSERT INTO `ep_tipoinstitucion` VALUES (1,'Instituciónes Bancarias'),(2,'Sociedades Financieras'),(3,'Cooperatiivas Sistema Micoope'),(4,'Microfinanciera');
/*!40000 ALTER TABLE `ep_tipoinstitucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipomoneda`
--

DROP TABLE IF EXISTS `ep_tipomoneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipomoneda` (
  `codeptipomoneda` int(11) NOT NULL,
  `ep_tipomonedanombre` varchar(45) DEFAULT NULL,
  `ep_signomoneda` varchar(45) DEFAULT NULL,
  `ep_codigointernacional` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codeptipomoneda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipomoneda`
--

LOCK TABLES `ep_tipomoneda` WRITE;
/*!40000 ALTER TABLE `ep_tipomoneda` DISABLE KEYS */;
INSERT INTO `ep_tipomoneda` VALUES (1,'Quetzales','Q','GTQ'),(2,'Dolares','$','USD');
/*!40000 ALTER TABLE `ep_tipomoneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tiponacionalidad`
--

DROP TABLE IF EXISTS `ep_tiponacionalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tiponacionalidad` (
  `codeptiponacionalidad` int(11) NOT NULL,
  `ep_tiponacionalidadnombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`codeptiponacionalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tiponacionalidad`
--

LOCK TABLES `ep_tiponacionalidad` WRITE;
/*!40000 ALTER TABLE `ep_tiponacionalidad` DISABLE KEYS */;
INSERT INTO `ep_tiponacionalidad` VALUES (1,'Nacional'),(2,'Extranjero');
/*!40000 ALTER TABLE `ep_tiponacionalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipoparentesco`
--

DROP TABLE IF EXISTS `ep_tipoparentesco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipoparentesco` (
  `codeptipoparentesco` int(11) NOT NULL,
  `ep_tipoparentesconombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`codeptipoparentesco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipoparentesco`
--

LOCK TABLES `ep_tipoparentesco` WRITE;
/*!40000 ALTER TABLE `ep_tipoparentesco` DISABLE KEYS */;
INSERT INTO `ep_tipoparentesco` VALUES (1,'Padre'),(2,'Madre'),(3,'Tio/a'),(4,'Abuelo/a'),(5,'Sobrino');
/*!40000 ALTER TABLE `ep_tipoparentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipopep`
--

DROP TABLE IF EXISTS `ep_tipopep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipopep` (
  `codeptipopep` int(11) NOT NULL,
  `ep_tipopep` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codeptipopep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipopep`
--

LOCK TABLES `ep_tipopep` WRITE;
/*!40000 ALTER TABLE `ep_tipopep` DISABLE KEYS */;
INSERT INTO `ep_tipopep` VALUES (1,'PEP'),(2,'PPEP'),(3,'CPEP');
/*!40000 ALTER TABLE `ep_tipopep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipoprestamo`
--

DROP TABLE IF EXISTS `ep_tipoprestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipoprestamo` (
  `codeptipoprestamo` int(11) NOT NULL,
  `ep_tipoprestamonombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codeptipoprestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipoprestamo`
--

LOCK TABLES `ep_tipoprestamo` WRITE;
/*!40000 ALTER TABLE `ep_tipoprestamo` DISABLE KEYS */;
INSERT INTO `ep_tipoprestamo` VALUES (1,'Fiduciario'),(2,'Hipotecario'),(3,'Prendario'),(4,'Back to Back / Automático'),(5,'Mixto');
/*!40000 ALTER TABLE `ep_tipoprestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipotelefono`
--

DROP TABLE IF EXISTS `ep_tipotelefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipotelefono` (
  `codeptipotelefono` int(11) NOT NULL,
  `ep_tipotelefononombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codeptipotelefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipotelefono`
--

LOCK TABLES `ep_tipotelefono` WRITE;
/*!40000 ALTER TABLE `ep_tipotelefono` DISABLE KEYS */;
INSERT INTO `ep_tipotelefono` VALUES (1,'Telefono Casa'),(2,'Celular');
/*!40000 ALTER TABLE `ep_tipotelefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_tipovehiculo`
--

DROP TABLE IF EXISTS `ep_tipovehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_tipovehiculo` (
  `codeptipovehiculo` int(11) NOT NULL,
  `ep_tipovehiculonombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codeptipovehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_tipovehiculo`
--

LOCK TABLES `ep_tipovehiculo` WRITE;
/*!40000 ALTER TABLE `ep_tipovehiculo` DISABLE KEYS */;
INSERT INTO `ep_tipovehiculo` VALUES (1,'Carro'),(2,'Bus'),(3,'Camion');
/*!40000 ALTER TABLE `ep_tipovehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ep_vehiculo`
--

DROP TABLE IF EXISTS `ep_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_vehiculo` (
  `codepvehiculo` int(11) NOT NULL,
  `codeptipovehiculo` int(11) DEFAULT NULL,
  `codepinformaciongeneralcif` int(11) DEFAULT NULL,
  `ep_vehiculomarca` varchar(100) DEFAULT NULL,
  `ep_vehiculolinea` varchar(100) DEFAULT NULL,
  `ep_vehiculomodelo` varchar(100) DEFAULT NULL,
  `ep_vehiculoplaca` varchar(100) DEFAULT NULL,
  `ep_vehiculocomentario` varchar(100) DEFAULT NULL,
  `ep_vehiculoanombrede` varchar(100) DEFAULT NULL,
  `ep_vehiculomotivodeanombrede` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codepvehiculo`),
  KEY `fk_ep_vehiculo_ep_tipovehiculo1_idx` (`codeptipovehiculo`),
  KEY `fk_ep_vehiculo_ep_informaciongeneral1_idx` (`codepinformaciongeneralcif`),
  CONSTRAINT `fk_ep_vehiculo_ep_informaciongeneral1` FOREIGN KEY (`codepinformaciongeneralcif`) REFERENCES `ep_informaciongeneral` (`codepinformaciongeneralcif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ep_vehiculo_ep_tipovehiculo1` FOREIGN KEY (`codeptipovehiculo`) REFERENCES `ep_tipovehiculo` (`codeptipovehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ep_vehiculo`
--

LOCK TABLES `ep_vehiculo` WRITE;
/*!40000 ALTER TABLE `ep_vehiculo` DISABLE KEYS */;
INSERT INTO `ep_vehiculo` VALUES (1,1,1,'Nissan','Lujo','2015','22545k','2','',''),(2,1,1,'Toyota','Luxio','2015','11544k',NULL,NULL,NULL),(3,1,16,'Nissan','Lujo','2015','22545k',NULL,NULL,NULL),(4,1,16,'Toyota','Luxio','2015','11544k',NULL,NULL,NULL),(5,1,1,'Toyota','Lexus','M43','2565D8',NULL,NULL,NULL),(6,2,30,'asd','asd','asd','546',NULL,NULL,NULL),(7,1,21,'Prueba','Prueba','Prueba','sa5465',NULL,NULL,NULL),(8,1,31,'2','2','Prueba','546','asdas',NULL,NULL),(9,2,1,'Toyota','Luxi','M4','5454','se lleva bien','Mauricio','Me lo presta por dos años');
/*!40000 ALTER TABLE `ep_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_area`
--

DROP TABLE IF EXISTS `gen_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_area` (
  `codgenarea` int(11) NOT NULL,
  `codgensucursal` int(11) DEFAULT NULL,
  `gen_areanombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codgenarea`),
  KEY `fk_gen_area_gen_sucursal1_idx` (`codgensucursal`),
  CONSTRAINT `fk_gen_area_gen_sucursal1` FOREIGN KEY (`codgensucursal`) REFERENCES `gen_sucursal` (`codgensucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_area`
--

LOCK TABLES `gen_area` WRITE;
/*!40000 ALTER TABLE `gen_area` DISABLE KEYS */;
INSERT INTO `gen_area` VALUES (1,1,'ADMINISTRACIÓN'),(2,2,'AG. ATANASIO TZUL'),(3,2,'AG. BOCA DEL MONTE'),(4,2,'AG. FLORIDA'),(5,2,'MERCADEO'),(6,2,'AG. GRAN VIA'),(7,2,'AG. MEGA 6'),(8,2,'AG. METROCENTRO'),(9,2,'AG. MIXCO'),(10,2,'AG. PACIFIC VH'),(11,2,'AG. PETAPA'),(12,2,'AG. PORTALES'),(13,2,'AG. SAN CRISTOBAL'),(14,2,'AG. SAN LUCAS'),(15,2,'AG. SAN NICOLAS'),(16,2,'AG. TERMINAL'),(17,2,'AG. ZONA 4'),(18,2,'MINI AG. METRONORTE'),(19,2,'AG.C.C. NARANJO MALL'),(20,2,'AGENCIA LOS ALAMOS'),(21,3,'ARCHIVO'),(22,4,'AUDITORIA INTERNA'),(23,1,'CAPACITACIÓN Y DESARROLLO'),(24,3,'CARTERA DEPURADA '),(25,2,'CENTRAL ZONA 14'),(26,3,'COBROS'),(27,2,'COMERCIALIZACIÓN'),(28,5,'CONTABILIDAD'),(29,3,'CRÉDITOS'),(30,4,'CUMPLIMIENTO'),(31,5,'FINANZAS'),(32,6,'GERENCIA GENERAL'),(33,1,'IDT'),(34,3,'JURIDICO'),(35,2,'KIOSCO MIRAFLORES'),(36,2,'KIOSCO MONSERRAT'),(37,2,'KIOSKO PORTALES'),(38,2,'MINI AG C.C. PRADERA'),(39,2,'NEGOCIOS'),(40,1,'NORMATIVIDAD/PROCESOS'),(41,2,'OPERACIONES AGENCIA'),(42,2,'PREMORA'),(43,2,'QA'),(44,6,'RIESGOS'),(45,1,'SEGURIDAD'),(46,5,'SEGUROS'),(47,1,'SERVICIOS GENERALES'),(48,2,'STA CATARINA PINULA'),(49,1,'TALENTO HUMANO'),(50,5,'TESORERIA');
/*!40000 ALTER TABLE `gen_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_departamento`
--

DROP TABLE IF EXISTS `gen_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_departamento` (
  `codgendepartamento` int(11) NOT NULL,
  `gen_departamentonombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codgendepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_departamento`
--

LOCK TABLES `gen_departamento` WRITE;
/*!40000 ALTER TABLE `gen_departamento` DISABLE KEYS */;
INSERT INTO `gen_departamento` VALUES (1,'GUATEMALA'),(2,'SACATEPÉQUEZ'),(3,'CHIMALTENANGO'),(4,'EL PROGRESO'),(5,'ESCUINTLA'),(6,'SANTA ROSA'),(7,'SOLOLÁ'),(8,'TOTONICAPÁN'),(9,'QUETZALTENANGO'),(10,'SUCHITEPÉQUEZ'),(11,'RETALHULEU'),(12,'SAN MARCOS'),(13,'HUEHUETENANGO'),(14,'EL QUICHÉ'),(15,'BAJA VERAPAZ'),(16,'ALTA VERAPAZ'),(17,'PETÉN'),(18,'IZABAL'),(19,'ZACAPA'),(20,'CHIQUIMULA'),(21,'JALAPA'),(22,'JUTIAPA');
/*!40000 ALTER TABLE `gen_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_invequipo`
--

DROP TABLE IF EXISTS `gen_invequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_invequipo` (
  `codgeninvequipo` int(11) NOT NULL,
  `codgensucursal` int(11) DEFAULT NULL,
  `gen_invequipodescripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codgeninvequipo`),
  KEY `fk_gen_invequipo_gen_sucursal1_idx` (`codgensucursal`),
  CONSTRAINT `fk_gen_invequipo_gen_sucursal1` FOREIGN KEY (`codgensucursal`) REFERENCES `gen_sucursal` (`codgensucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_invequipo`
--

LOCK TABLES `gen_invequipo` WRITE;
/*!40000 ALTER TABLE `gen_invequipo` DISABLE KEYS */;
INSERT INTO `gen_invequipo` VALUES (1,1,'Portatil');
/*!40000 ALTER TABLE `gen_invequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_municipio`
--

DROP TABLE IF EXISTS `gen_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_municipio` (
  `codgenmunicipio` int(11) NOT NULL,
  `codgendepartamento` int(11) DEFAULT NULL,
  `gen_municipionombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codgenmunicipio`),
  KEY `fk_gen_municipio_gen_departamento1_idx` (`codgendepartamento`),
  CONSTRAINT `fk_gen_municipio_gen_departamento1` FOREIGN KEY (`codgendepartamento`) REFERENCES `gen_departamento` (`codgendepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_municipio`
--

LOCK TABLES `gen_municipio` WRITE;
/*!40000 ALTER TABLE `gen_municipio` DISABLE KEYS */;
INSERT INTO `gen_municipio` VALUES (101,1,'GUATEMALA'),(102,1,'SANTA CATARINA PINULA'),(103,1,'SAN JOSÉ PINULA'),(104,1,'SAN JOSÉ DEL GOLFO'),(105,1,'PALENCIA'),(106,1,'CHINAUTLA'),(107,1,'SAN PEDRO AYAMPUC'),(108,1,'MIXCO'),(109,1,'SAN PEDRO SACATEPÉQUEZ'),(110,1,'SAN JUAN SACATEPÉQUEZ'),(111,1,'SAN RAYMUNDO'),(112,1,'CHUARRANCHO'),(113,1,'FRAIJANES'),(114,1,'AMATITLÁN'),(115,1,'VILLA NUEVA'),(116,1,'VILLA CANALES'),(117,1,'SAN MIGUEL PETAPA'),(201,4,'GUASTATOYA'),(202,4,'MORAZÁN'),(203,4,'SAN AGUSTÍN ACASAGUASTLÁN'),(204,4,'SAN CRISTÓBAL ACASAGUASTLÁN'),(205,4,'EL JÍCARO'),(206,4,'SANSARE'),(207,4,'SANARATE'),(208,4,'SAN ANTONIO LA PAZ'),(301,2,'ANTIGUA GUATEMALA'),(302,2,'JOCOTENANGO'),(303,2,'PASTORES'),(304,2,'SUMPANGO'),(305,2,'SANTO DOMINGO XENACOJ'),(306,2,'SANTIAGO SACATEPEQUÉZ'),(307,2,'SAN BARTOLOMÉ MILPAS ALTAS'),(308,2,'SAN LUCAS SACATEPÉQUEZ'),(309,2,'SANTA LUCÍA MILPAS ALTAS'),(310,2,'MAGDALENA MILPAS ALTAS'),(311,2,'SANTA MARÍA DE JESÚS'),(312,2,'CIUDAD VIEJA'),(313,2,'SAN MIGUEL DUEÑAS'),(314,2,'ALOTENANGO'),(315,2,'SAN ANTONIO AGUAS CALIENTES'),(316,2,'SANTA CATARINA BARAHONA'),(401,3,'CHIMALTENANGO'),(402,3,'SAN JOSÉ POAQUIL'),(403,3,'SAN MARTÍN JILOTEPEQUE'),(404,3,'SAN JUAN COMALAPA'),(405,3,'SANTA APOLONIA'),(406,3,'TECPÁN GUATEMALA'),(407,3,'PATZÚN'),(408,3,'POCHUTA'),(409,3,'PATZICÍA'),(410,3,'SANTA CRUZ BALANYA'),(411,3,'ACATENANGO'),(412,3,'SAN PEDRO YEPOCAPA'),(413,3,'SAN ANDRÉS ITZAPA'),(414,3,'PARRAMOS'),(415,3,'ZARAGOZA'),(416,3,'EL TEJAR'),(501,5,'ESCUINTLA'),(502,5,'SANTA LUCÍA COTZUMALGUAPA'),(503,5,'LA DEMOCRACIA'),(504,5,'SIQUINALÁ'),(505,5,'MASAGUA'),(506,5,'TIQUISATE'),(507,5,'LA GOMERA'),(508,5,'GUANAGAZAPA'),(509,5,'PUERTO SAN JOSÉ'),(510,5,'IZTAPA'),(511,5,'PALÍN'),(512,5,'SAN VICENTE PACAYA'),(513,5,'NUEVA CONCEPCIÓN'),(514,5,'SIPACATE'),(601,6,'CUILAPA'),(602,6,'BARBERENA'),(603,6,'SANTA ROSA DE LIMA'),(604,6,'CASILLAS'),(605,6,'SAN RAFAEL LAS FLORES'),(606,6,'ORATORIO'),(607,6,'SAN JUAN TECUACO'),(608,6,'CHIQUIMULILLA'),(609,6,'TAXISCO'),(610,6,'SANTA MARÍA IXHUATÁN'),(611,6,'GUAZACAPÁN'),(612,6,'SANTA CRUZ NARANJO'),(613,6,'PUEBLO NUEVO VIÑAS'),(614,6,'NUEVA SANTA ROSA'),(701,7,'SOLOLÁ'),(702,7,'SAN JOSÉ CHACAYÁ'),(703,7,'SANTA MARÍA VISITACIÓN'),(704,7,'SANTA LUCÍA UTATLÁN'),(705,7,'NAHUALÁ'),(706,7,'SANTA CATARINA IXTAHUACÁN'),(707,7,'SANTA CLARA LA LAGUNA'),(708,7,'CONCEPCIÓN'),(709,7,'SAN ANDRÉS SEMETABAJ'),(710,7,'PANAJACHEL'),(711,7,'SANTA CATARINA PALOPÓ'),(712,7,'SAN ANTONIO PALOPÓ'),(713,7,'SAN LUCAS TOLIMÁN'),(714,7,'SANTA CRUZ LA LAGUNA'),(715,7,'SAN PABLO LA LAGUNA'),(716,7,'SAN MARCOS LA LAGUNA'),(717,7,'SAN JUAN LA LAGUNA'),(718,7,'SAN PEDRO LA LAGUNA'),(719,7,'SANTIAGO ATITLÁN'),(801,8,'TOTONICAPÁN'),(802,8,'SAN CRISTÓBAL TOTONICAPÁN'),(803,8,'SAN FRANCISCO EL ALTO'),(804,8,'SAN ANDRÉS XECUL'),(805,8,'MOMOSTENANGO'),(806,8,'SANTA MARÍA CHIQUIMULA'),(807,8,'SANTA LUCÍA LA REFORMA'),(808,8,'SAN BARTOLO'),(901,9,'QUETZALTENANGO'),(902,9,'SALCAJÁ'),(903,9,'OLINTEPEQUE'),(904,9,'SAN CARLOS SIJA'),(905,9,'SIBILIA'),(906,9,'CABRICÁN'),(907,9,'CAJOLA'),(908,9,'SAN MIGUEL SIGUILA'),(909,9,'SAN JUAN OSTUNCALCO'),(910,9,'SAN MATEO'),(911,9,'CONCEPCIÓN CHIQUIRICHAPA'),(912,9,'SAN MARTÍN SACATEPÉQUEZ'),(913,9,'ALMOLONGA'),(914,9,'CANTEL'),(915,9,'HUITÁN'),(916,9,'ZUNIL'),(917,9,'COLOMBA'),(918,9,'SAN FRANCISCO LA UNIÓN'),(919,9,'EL PALMAR'),(920,9,'COATEPEQUE'),(921,9,'GÉNOVA COSTA CUCA'),(922,9,'FLORES'),(923,9,'LA ESPERANZA'),(924,9,'PALESTINA DE LOS ALTOS'),(1001,10,'MAZATENANGO'),(1002,10,'CUYOTENANGO'),(1003,10,'SAN FRANCISCO ZAPOTITLÁN'),(1004,10,'SAN BERNARDINO'),(1005,10,'SAN JOSÉ EL ÍDOLO'),(1006,10,'SANTO DOMINGO SUCHITEPEQUEZ'),(1007,10,'SAN LORENZO'),(1008,10,'SAMAYAC'),(1009,10,'SAN PABLO JOCOPILAS'),(1010,10,'SAN ANTONIO SUCHITEPÉQUEZ'),(1011,10,'SAN MIGUEL PANÁN'),(1012,10,'SAN GABRIEL'),(1013,10,'CHICACAO'),(1014,10,'PATULUL'),(1015,10,'SANTA BÁRBARA'),(1016,10,'SAN JUAN BAUTISTA'),(1017,10,'SANTO TOMÁS LA UNIÓN'),(1018,10,'ZUNILITO'),(1019,10,'PUEBLO NUEVO'),(1020,10,'RÍO BRAVO'),(1021,10,'SAN JOSÉ LA MÁQUINA'),(1101,11,'RETALHULEU'),(1102,11,'SAN SEBASTIÁN'),(1103,11,'SANTA CRUZ MULUÁ'),(1104,11,'SAN MARTÍN ZAPOTITLÁN'),(1105,11,'SAN FELIPE'),(1106,11,'SAN ANDRÉS VILLA SECA'),(1107,11,'CHAMPERICO'),(1108,11,'NUEVO SAN CARLOS'),(1109,11,'EL ASINTAL'),(1201,12,'SAN MARCOS'),(1202,12,'SAN PEDRO SACATEPÉQUEZ'),(1203,12,'SAN ANTONIO SACATEPÉQUEZ'),(1204,12,'COMITANCILLO'),(1205,12,'SAN MIGUEL IXTAHUACÁN'),(1206,12,'CONCEPCIÓN TUTUAPA'),(1207,12,'TACANÁ'),(1208,12,'SIBINAL'),(1209,12,'TAJUMULCO'),(1210,12,'TEJUTLA'),(1211,12,'SAN RAFAEL PIE DE LA CUESTA'),(1212,12,'NUEVO PROGRESO'),(1213,12,'EL TUMBADOR'),(1214,12,'SAN JOSE EL RODEO'),(1215,12,'MALACATÁN'),(1216,12,'CATARINA'),(1217,12,'AYUTLA (TECUN UMAN)'),(1218,12,'OCÓS'),(1219,12,'SAN PABLO'),(1220,12,'EL QUETZAL'),(1221,12,'LA REFORMA'),(1222,12,'PAJAPITA'),(1223,12,'IXCHIGUÁN'),(1224,12,'SAN JOSÉ OJETENAM'),(1225,12,'SAN CRISTÓBAL CUCHO'),(1226,12,'SIPACAPA'),(1227,12,'ESQUIPULAS PALO GORDO'),(1228,12,'RÍO BLANCO'),(1229,12,'SAN LORENZO'),(1230,12,'LA BLANCA'),(1301,13,'HUEHUETENANGO'),(1302,13,'CHIANTLA'),(1303,13,'MALACATANCITO'),(1304,13,'CUILCO'),(1305,13,'NENTÓN'),(1306,13,'SAN PEDRO NECTA'),(1307,13,'JACALTENANGO'),(1308,13,'SOLOMA'),(1309,13,'IXTAHUACÁN'),(1310,13,'SANTA BÁRBARA'),(1311,13,'LA LIBERTAD'),(1312,13,'LA DEMOCRACIA'),(1313,13,'SAN MIGUEL ACATÁN'),(1314,13,'SAN RAFAEL LA INDEPENDENCIA'),(1315,13,'TODOS SANTOS CUCHUMATÁN'),(1316,13,'SAN JUAN ATITÁN'),(1317,13,'SANTA EULALIA'),(1318,13,'SAN MATEO IXTATÁN'),(1319,13,'COLOTENANGO'),(1320,13,'SAN SEBASTIÁN HUEHUETENANGO'),(1321,13,'TECTITÁN'),(1322,13,'CONCEPCIÓN HUISTA'),(1323,13,'SAN JUAN IXCOY'),(1324,13,'SAN ANTONIO HUISTA'),(1325,13,'SAN SEBASTIÁN COATÁN'),(1326,13,'BARILLAS'),(1327,13,'AGUACATÁN'),(1328,13,'SAN RAFAEL PETZAL'),(1329,13,'SAN GASPAR IXCHIL'),(1330,13,'SANTIAGO CHIMALTENANGO'),(1331,13,'SANTA ANA HUISTA'),(1332,13,'UNION CANTINIL'),(1333,13,'PETATÁN'),(1401,14,'SANTA CRUZ DEL QUICHÉ'),(1402,14,'CHICHÉ'),(1403,14,'CHINIQUE'),(1404,14,'ZACUALPA'),(1405,14,'CHAJUL'),(1406,14,'CHICHICASTENANGO'),(1407,14,'PATZITE'),(1408,14,'SAN ANTONIO ILOTENANGO'),(1409,14,'SAN PEDRO JOCOPILAS'),(1410,14,'CUNÉN'),(1411,14,'SAN JUAN COTZAL'),(1412,14,'JOYABAJ'),(1413,14,'NEBAJ'),(1414,14,'SAN ANDRÉS SAJCABAJA'),(1415,14,'SAN MIGUEL USPANTÁN'),(1416,14,'SACAPULAS'),(1417,14,'SAN BARTOLOMÉ JOCOTENANGO'),(1418,14,'CANILLÁ'),(1419,14,'CHICAMÁN'),(1420,14,'IXCÁN'),(1421,14,'PACHALUM'),(1501,15,'SALAMÁ'),(1502,15,'SAN MIGUEL CHICAJ'),(1503,15,'RABINAL'),(1504,15,'CUBULCO'),(1505,15,'GRANADOS'),(1506,15,'EL CHOL'),(1507,15,'SAN JERÓNIMO'),(1508,15,'PURULHÁ'),(1601,16,'COBÁN'),(1602,16,'SANTA CRUZ VERAPAZ'),(1603,16,'SAN CRISTÓBAL VERAPAZ'),(1604,16,'TACTIC'),(1605,16,'TAMAHÚ'),(1606,16,'TUCURÚ'),(1607,16,'PANZÓS'),(1608,16,'SENAHÚ'),(1609,16,'SAN PEDRO CARCHÁ'),(1610,16,'SAN JUAN CHAMELCO'),(1611,16,'LANQUÍN'),(1612,16,'CAHABÓN'),(1613,16,'CHISEC'),(1614,16,'CHAHAL'),(1615,16,'FRAY BARTOLOMÉ DE LAS CASAS'),(1616,16,'SANTA CATARINA LA TINTA'),(1617,16,'RAXRUHA'),(1701,17,'FLORES'),(1702,17,'SAN JOSÉ'),(1703,17,'SAN BENITO'),(1704,17,'SAN ANDRÉS'),(1705,17,'LA LIBERTAD'),(1706,17,'SAN FRANCISCO'),(1707,17,'SANTA ANA'),(1708,17,'DOLORES'),(1709,17,'SAN LUIS'),(1710,17,'SAYAXCHÉ'),(1711,17,'MELCHOR DE MENCOS'),(1712,17,'POPTÚN'),(1713,17,'LAS CRUCES'),(1714,17,'EL CHAL'),(1801,18,'PUERTO BARRIOS'),(1802,18,'LIVINGSTON'),(1803,18,'EL ESTOR'),(1804,18,'MORALES'),(1805,18,'LOS AMATES'),(1901,19,'ZACAPA'),(1902,19,'ESTANZUELA'),(1903,19,'RÍO HONDO'),(1904,19,'GUALÁN'),(1905,19,'TECULUTÁN'),(1906,19,'USUMATLÁN'),(1907,19,'CABAÑAS'),(1908,19,'SAN DIEGO'),(1909,19,'LA UNIÓN'),(1910,19,'HUITÉ'),(1911,19,'SAN JORGE'),(2001,20,'CHIQUIMULA'),(2002,20,'SAN JOSÉ LA ARADA'),(2003,20,'SAN JUAN ERMITA'),(2004,20,'JOCOTÁN'),(2005,20,'CAMOTÁN'),(2006,20,'OLOPA'),(2007,20,'ESQUIPULAS'),(2008,20,'CONCEPCIÓN LAS MINAS'),(2009,20,'QUETZALTEPEQUE'),(2010,20,'SAN JACINTO'),(2011,20,'IPALA'),(2101,21,'JALAPA'),(2102,21,'SAN PEDRO PINULA'),(2103,21,'SAN LUIS JILOTEPEQUE'),(2104,21,'SAN MIGUEL CHAPARRÓN'),(2105,21,'SAN CARLOS ALZATATE'),(2106,21,'MONJAS'),(2107,21,'MATAQUESCUINTLA'),(2201,22,'JUTIAPA'),(2202,22,'EL PROGRESO'),(2203,22,'SANTA CATARINA MITA'),(2204,22,'AGUA BLANCA'),(2205,22,'ASUNCIÓN MITA'),(2206,22,'YUPILTEPEQUE'),(2207,22,'ATESCATEMPA'),(2208,22,'JEREZ'),(2209,22,'EL ADELANTO'),(2210,22,'ZAPOTITLÁN'),(2211,22,'COMAPA'),(2212,22,'JALPATAGUA'),(2213,22,'CONGUACO'),(2214,22,'MOYUTA'),(2215,22,'PASACO'),(2216,22,'SAN JOSÉ ACATEMPA'),(2217,22,'QUEZADA');
/*!40000 ALTER TABLE `gen_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_puestos`
--

DROP TABLE IF EXISTS `gen_puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_puestos` (
  `codgenpuestos` int(11) NOT NULL,
  `codgenarea` int(11) DEFAULT NULL,
  `gen_puestosnombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codgenpuestos`),
  KEY `fk_gen_puestos_gen_area1_idx` (`codgenarea`),
  CONSTRAINT `fk_gen_puesto_gen_areal1` FOREIGN KEY (`codgenarea`) REFERENCES `gen_area` (`codgenarea`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_puestos`
--

LOCK TABLES `gen_puestos` WRITE;
/*!40000 ALTER TABLE `gen_puestos` DISABLE KEYS */;
INSERT INTO `gen_puestos` VALUES (2,1,'ASISTENTE GERENCIA ADMINISTRATIVA'),(3,1,'TRADEMARKETING'),(4,1,'GERENTE ADMINISTRATIVO'),(5,1,'RECEPCIONISTA'),(6,2,'ASESOR DE ATENCION AL ASOCIADO'),(7,2,'ASESOR DE ATENCION AL ASOCIADO'),(8,2,'CONSERJE'),(9,2,'SUBJEFE DE AGENCIA'),(10,2,'RECEPTOR PAGADOR'),(11,2,'EJECUTIVO MULTIFUNCIONAL'),(12,2,'RECEPTOR PAGADOR'),(13,2,'JEFE DE AGENCIA'),(14,2,'ASESOR DE CREDITOS'),(15,3,'CONSERJE'),(16,3,'ASESOR DE CREDITOS'),(17,3,'ASESOR DE ATENCION AL ASOCIADO'),(18,3,'SUBJEFE DE AGENCIA'),(19,3,'RECEPTOR PAGADOR'),(20,3,'ASESOR DE CREDITOS'),(21,3,'RECEPTOR PAGADOR'),(22,3,'RECEPTOR PAGADOR'),(23,3,'EJECUTIVO MULTIFUNCIONAL'),(24,3,'ASESOR DE ATENCION AL ASOCIADO'),(25,3,'JEFE DE AGENCIA'),(26,4,'RECEPTOR PAGADOR'),(27,4,'RECEPTOR PAGADOR'),(28,4,'ASESOR DE ATENCION AL ASOCIADO'),(29,4,'JEFE DE AGENCIA'),(30,5,'AUXILIAR DE TELEVENTAS '),(31,4,'ASESOR DE CREDITOS'),(32,4,'CONSERJE'),(33,4,'SUBJEFE DE AGENCIA'),(34,4,'RECEPTOR PAGADOR'),(35,4,'ASESOR DE ATENCION AL ASOCIADO'),(36,4,'RECEPTOR PAGADOR'),(37,5,'ASESOR DE ATENCION AL ASOCIADO'),(38,5,'RECEPTOR PAGADOR'),(39,5,'ASESOR DE ATENCION AL ASOCIADO'),(40,5,'JEFE DE AGENCIA'),(41,5,'SUBJEFE DE AGENCIA'),(42,5,'ASESOR DE ATENCION AL ASOCIADO'),(43,5,'ASESOR DE CREDITOS'),(44,5,'RECEPTOR PAGADOR'),(45,5,'RECEPTOR PAGADOR'),(46,5,'CONSERJE'),(47,5,'RECEPTOR PAGADOR'),(48,5,'ASESOR DE ATENCION AL ASOCIADO'),(49,5,'JEFE DE AGENCIA'),(50,5,'RECEPTOR PAGADOR'),(51,5,'ASESOR DE CREDITOS'),(52,5,'CONSERJE'),(53,7,'ASESOR DE CREDITOS'),(54,7,'CONSERJE'),(55,7,'ASESOR DE CREDITOS'),(56,7,'ASESOR DE ATENCION AL ASOCIADO'),(57,7,'ASESOR DE ATENCION AL ASOCIADO'),(58,7,'JEFE DE AGENCIA'),(59,7,'RECEPTOR PAGADOR'),(60,7,'SUBJEFE DE AGENCIA'),(61,7,'RECEPTOR PAGADOR'),(62,8,'JEFE DE AGENCIA'),(63,8,'CONSERJE'),(64,8,'RECEPTOR PAGADOR'),(65,8,'RECEPTOR PAGADOR'),(66,8,'EJECUTIVO MULTIFUNCIONAL ROTATIVO ZONA 14'),(67,8,'RECEPTOR PAGADOR'),(68,8,'ASESOR DE ATENCION AL ASOCIADO'),(69,8,'SUBJEFE DE AGENCIA'),(70,9,'RECEPTOR PAGADOR'),(71,9,'RECEPTOR PAGADOR'),(72,9,'ASESOR DE ATENCION AL ASOCIADO'),(73,9,'JEFE DE AGENCIA JUNIOR'),(74,9,'ASESOR DE ATENCION AL ASOCIADO'),(75,9,'EJECUTIVO MULTIFUNCIONAL'),(76,10,'ASESOR DE CREDITOS'),(77,10,'JEFE DE AGENCIA'),(78,10,'CONSERJE'),(79,10,'RECEPTOR PAGADOR'),(80,10,'EJECUTIVO MULTIFUNCIONAL'),(81,10,'RECEPTOR PAGADOR'),(82,10,'ASESOR DE ATENCION AL ASOCIADO'),(83,10,'ASESOR DE ATENCION AL ASOCIADO'),(84,10,'RECEPTOR PAGADOR'),(85,10,'SUBJEFE DE AGENCIA'),(86,11,'JEFE DE AGENCIA'),(87,11,'RECEPTOR PAGADOR'),(88,11,'ASESOR DE ATENCION AL ASOCIADO'),(89,11,'EJECUTIVO MULTIFUNCIONAL'),(90,11,'ASESOR DE CREDITOS'),(91,11,'ASESOR DE ATENCION AL ASOCIADO'),(92,11,'CONSERJE'),(93,11,'RECEPTOR PAGADOR'),(94,11,'ASESOR DE CREDITOS'),(95,11,'SUBJEFE DE AGENCIA'),(96,11,'RECEPTOR PAGADOR'),(97,11,'ASESOR DE ATENCION AL ASOCIADO'),(98,12,'JEFE DE AGENCIA'),(99,12,'EJECUTIVO MULTIFUNCIONAL'),(100,12,'RECEPTOR PAGADOR'),(101,12,'ASESOR DE ATENCION AL ASOCIADO'),(102,12,'RECEPTOR PAGADOR'),(103,12,'ASESOR DE CREDITOS'),(104,12,'SUBJEFE DE AGENCIA'),(105,12,'CONSERJE'),(106,12,'ASESOR DE ATENCION AL ASOCIADO'),(107,13,'ASESOR DE ATENCION AL ASOCIADO'),(108,13,'RECEPTOR PAGADOR'),(109,13,'CONSERJE'),(110,13,'RECEPTOR PAGADOR'),(111,13,'ASESOR DE ATENCION AL ASOCIADO'),(112,13,'ASESOR DE CREDITOS'),(113,13,'JEFE DE AGENCIA'),(114,13,'SUBJEFE DE AGENCIA'),(115,13,'EJECUTIVO MULTIFUNCIONAL'),(116,14,'ASESOR DE ATENCION AL ASOCIADO'),(117,14,'RECEPTOR PAGADOR'),(118,14,'RECEPTOR PAGADOR'),(119,14,'SUBJEFE DE AGENCIA'),(120,14,'ASESOR DE CREDITOS'),(121,14,'JEFE DE AGENCIA'),(122,14,'CONSERJE'),(123,14,'EJECUTIVO MULTIFUNCIONAL'),(124,14,'ASESOR DE ATENCION AL ASOCIADO'),(125,15,'ASESOR DE ATENCION AL ASOCIADO'),(126,15,'ASESOR DE CREDITOS'),(127,15,'RECEPTOR PAGADOR'),(128,15,'JEFE DE AGENCIA'),(129,15,'SUBJEFE DE AGENCIA'),(130,16,'ASESOR DE ATENCION AL ASOCIADO'),(131,16,'ASESOR DE ATENCION AL ASOCIADO'),(132,16,'RECEPTOR PAGADOR'),(133,16,'SUBJEFE DE AGENCIA'),(134,16,'JEFE DE AGENCIA'),(135,16,'RECEPTOR PAGADOR'),(136,16,'CONSERJE'),(137,39,'RECEPTOR PAGADOR'),(138,16,'ASESOR DE ATENCION AL ASOCIADO'),(139,16,'EJECUTIVO MULTIFUNCIONAL'),(140,16,'ASESOR DE CREDITOS'),(141,18,'JEFE DE AGENCIA'),(142,18,'ASESOR DE ATENCION AL ASOCIADO'),(143,18,'ASESOR DE CREDITOS'),(144,18,'ASESOR DE ATENCION AL ASOCIADO'),(145,18,'RECEPTOR PAGADOR'),(146,18,'CONSERJE'),(147,18,'RECEPTOR PAGADOR'),(148,18,'SUBJEFE DE AGENCIA'),(149,18,'EJECUTIVO MULTIFUNCIONAL'),(150,19,'EJECUTIVO DE KIOSCO'),(151,16,'RECEPTOR PAGADOR'),(152,19,'JEFE DE AGENCIA JUNIOR'),(153,19,'CONSERJE'),(154,19,'EJECUTIVO DE KIOSCO'),(155,19,'RECEPTOR PAGADOR'),(156,19,'ASESOR DE CREDITOS'),(157,20,'AUXILIAR DE ARCHIVO'),(158,20,'AUXILIAR DE ARCHIVO'),(159,20,'AUXILIAR DE ARCHIVO'),(160,20,'CONSERJE '),(161,20,'JEFE DE ARCHIVO'),(162,20,'AUXILIAR DE ARCHIVO'),(163,20,'AUXILIAR DE ARCHIVO'),(164,20,'AUXILIAR DE ARCHIVO'),(165,21,'ENCARGADO DE AUDITORIA'),(166,21,'ASISTENTE DE AUDITORIA '),(167,21,'ASISTENTE DE AUDITORIA '),(168,21,'AUDITOR INTERNO'),(169,21,'AUXILIAR DE AUDITORIA'),(170,21,'AUXILIAR DE AUDITORIA'),(171,21,'AUXILIAR DE AUDITORIA'),(172,21,'AUXILIAR DE AUDITORIA'),(173,22,'GESTOR DE EDUCACION'),(174,22,'ASISTENTE DE SEGURIDAD OCUPACIONAL'),(175,22,'GESTOR DE EDUCACION'),(176,22,'JEFE DE CAPACITACION Y DESARROLLO'),(177,22,'ASISTENTE DE CAPACITACION Y DESARROLLO'),(178,22,'AUXILIAR DE CAPACITACIÓN'),(179,23,'ASISTENTE DE CARTERA DEPURADA'),(180,23,'JEFE DE CARTERA DEPURADA'),(181,23,'GESTOR DE COBROS CARTERA DEPURADA'),(182,23,'GESTOR DE COBROS CARTERA DEPURADA'),(183,23,'GESTOR DE COBROS CARTERA DEPURADA'),(184,23,'GESTOR DE COBROS CARTERA DEPURADA'),(185,23,'EJECUTIVO DE ACTIVOS EXTRAORDINARIOS'),(186,23,'GESTOR DE COBROS CARTERA DEPURADA'),(187,24,'JEFE DE AGENCIA'),(188,24,'ASESOR DE ATENCION AL ASOCIADO'),(189,24,'ASESOR DE ATENCION AL ASOCIADO'),(190,24,'ASESOR DE CREDITOS'),(191,24,'SUBJEFE DE AGENCIA'),(192,24,'RECEPTOR PAGADOR'),(193,24,'ASESOR DE CREDITOS'),(194,24,'ASESOR DE ATENCION AL ASOCIADO'),(195,24,'RECEPTOR PAGADOR'),(196,24,'ASESOR DE CREDITOS'),(197,25,'RECEPCIONISTA'),(198,25,'JEFE DE COBROS'),(199,25,'GESTOR DE COBROS'),(200,25,'GESTOR DE COBROS'),(201,25,'GESTOR DE COBROS'),(202,25,'GESTOR DE COBROS'),(203,25,'GESTOR DE COBROS'),(204,25,'GESTOR DE COBROS'),(205,25,'GESTOR DE COBROS'),(206,25,'GESTOR DE COBROS'),(207,25,'GESTOR DE COBROS'),(208,25,'GESTOR DE COBROS'),(209,25,'GESTOR DE COBROS'),(210,25,'GESTOR DE COBROS'),(211,25,'GESTOR DE COBROS'),(212,25,'ASISTENTE DE COBROS'),(213,25,'GESTOR DE COBROS'),(214,25,'ENCARGADO DE COBROS '),(215,25,'GESTOR DE COBROS'),(216,25,'GESTOR DE COBROS'),(217,26,'ASESOR FINANCIERO'),(218,26,'ASESOR FINANCIERO'),(219,26,'ASESOR FINANCIERO SENIOR'),(220,26,'JEFE DE VENTAS'),(221,26,'AUXILIAR DE VENTAS'),(222,26,'ASESOR FINANCIERO'),(223,27,'AUXILIAR DE CONTABILIDAD'),(224,27,'AUXILIAR DE CONTABILIDAD'),(225,27,'ASISTENTE DE CONTABILIDAD'),(226,27,'AUXILIAR DE CONTABILIDAD'),(227,27,'AUXILIAR DE CONTABILIDAD'),(228,27,'AUXILIAR DE CONTABILIDAD'),(229,27,'AUXILIAR DE CONTABILIDAD'),(230,27,'JEFE DE CONTABILIDAD'),(231,27,'AUXILIAR DE CONTABILIDAD'),(232,27,'AUXILIAR DE CONTABILIDAD'),(233,28,'ASISTENTE DE CREDITOS'),(234,28,'ANALISTA JUNIOR'),(235,28,'ANALISTA SENIOR'),(236,28,'VERIFICADOR TELEFONICO'),(237,28,'VERIFICADOR DE CAMPO'),(238,28,'ENCARGADO DE VERIFICACION'),(239,28,'ANALISTA JUNIOR'),(240,28,'ANALISTA SENIOR'),(241,28,'ANALISTA SENIOR'),(242,28,'VERIFICADOR DE CAMPO'),(243,28,'AUXILIAR TARJETA DE CREDITO/DEBITO'),(244,28,'ANALISTA DE CREDITOS MAYORES'),(245,28,'AUXILIAR DE BACK OFFICE'),(246,28,'ENCARGADO DE TARJETA DE CREDITO/DEBITO'),(247,28,'VERIFICADOR DE CAMPO'),(248,28,'DIGITADOR'),(249,28,'AUXILIAR DE BACK OFFICE'),(250,28,'AUXILIAR DE BACK OFFICE'),(251,28,'ANALISTA JUNIOR'),(252,28,'ANALISTA JUNIOR'),(253,28,'ANALISTA JUNIOR'),(254,28,'JEFE DE CREDITOS'),(255,28,'ANALISTA JUNIOR'),(256,28,'ANALISTA JUNIOR'),(257,28,'VERIFICADOR DE CAMPO'),(258,28,'VERIFICADOR DE CAMPO'),(259,28,'ANALISTA SENIOR'),(260,28,'VERIFICADOR DE CAMPO'),(261,28,'VERIFICADOR DE CAMPO'),(262,28,'ENCARGADA DE ANALISIS DE CRÉDITOS'),(263,28,'AUXILIAR DE BACK OFFICE'),(264,28,'ANALISTA SENIOR'),(265,28,'ANALISTA JUNIOR'),(266,29,'AUXILIAR DE CUMPLIMIENTO'),(267,29,'AUXILIAR DE CUMPLIMIENTO'),(268,29,'AUXILIAR DE CUMPLIMIENTO'),(269,29,'OFICIAL DE CUMPLIMIENTO SUPLENTE'),(270,29,'OFICIAL DE CUMPLIMIENTO'),(271,30,'ASISTENTE DE GERENCIA FINANCIERA'),(272,30,'GERENTE FINANCIERO'),(273,30,'ENCARGADO DE NOMINA Y PRESTACIONES'),(274,31,'GERENTE GENERAL'),(275,31,'SUB GERENTE GENERAL'),(276,31,'ASISTENTE DE GERENCIA GENERAL'),(277,31,'ASISTENTE DE CONSEJO DE ADMINISTRACION'),(278,32,'PROGRAMADOR'),(279,32,'AUXILIAR DE INFORMATICA'),(280,32,'PROGRAMADOR'),(281,32,'PROGRAMADOR'),(282,32,'AUXILIAR DE INFORMATICA'),(283,32,'JEFE DE INFORMATICA'),(284,32,'PROGRAMADOR'),(285,32,'AUXILIAR DE INFORMATICA'),(286,32,'ASISTENTE DE INFORMATICA'),(287,33,'COORDINADOR LEGAL '),(288,33,'PROCURADOR'),(289,33,'GERENTE JURIDICO'),(290,33,'JEFE DE AREA JURIDICA'),(291,33,'ESPECIALISTA JURIDICO'),(292,33,'PROCURADOR'),(293,33,'ASISTENTE LEGAL'),(294,33,'ASISTENTE LEGAL'),(295,34,'EJECUTIVO DE KIOSCO'),(296,34,'EJECUTIVO DE KIOSCO'),(297,35,'EJECUTIVO DE KIOSCO'),(298,35,'EJECUTIVO DE KIOSCO'),(299,36,'EJECUTIVO DE KIOSCO'),(300,36,'EJECUTIVO DE KIOSCO'),(301,5,'JEFE DE MERCADEO '),(302,5,'EJECUTIVO DE TELEVENTAS'),(303,5,'EJECUTIVO DE TELEVENTAS'),(304,5,'DISEÑADOR GRAFICO'),(305,5,'EJECUTIVO DE TELEVENTAS'),(306,5,'ENCARGADO DE PRODUCTOS ELECTRONICOS'),(307,5,'EJECUTIVO DE TELEVENTAS'),(308,5,'EJECUTIVO DE TELEVENTAS'),(309,5,'EJECUTIVO DE TELEVENTAS'),(310,5,'EJECUTIVO DE TELEVENTAS'),(311,5,'EJECUTIVO DE TELEVENTAS'),(312,5,'AUXILIAR DE MERCADEO'),(313,5,'ASISTENTE DE MERCADEO'),(314,38,'EJECUTIVO DE KIOSCO'),(315,38,'EJECUTIVO DE KIOSCO'),(316,39,'RECEPTOR PAGADOR'),(317,39,'ASESOR DE CREDITOS'),(318,39,'JEFE DE AGENCIA JUNIOR'),(319,39,'RECEPTOR PAGADOR'),(320,39,'ASESOR DE ATENCION AL ASOCIADO'),(321,40,'SUPERVISOR DE NEGOCIOS'),(322,40,'GERENTE DE NEGOCIOS'),(323,40,'ASISTENTE DE GERENCIA DE NEGOCIOS'),(324,40,'COORDINADOR DE AGENCIAS'),(325,40,'ANALISTA DE NEGOCIOS'),(326,41,'AUXILIAR DE PROCESOS'),(327,41,'JEFE DE PROCESOS Y ASEGURAMIENTO DE LA CALIDAD'),(328,41,'AUXILIAR DE PROCESOS'),(329,42,'ANALISTA DE OPERACIONES DE AGENCIAS'),(330,42,'ANALISTA DE OPERACIONES DE AGENCIAS'),(331,43,'ENCARGADO DE PREMORA'),(332,43,'GESTOR DE PREMORA'),(333,43,'GESTOR DE PREMORA'),(334,43,'GESTOR DE PREMORA'),(335,43,'GESTOR DE PREMORA'),(336,44,'ANALISTA QA'),(337,44,'ENCARGADO QA'),(338,44,'ANALISTA QA'),(339,44,'ANALISTA QA'),(340,44,'ANALISTA QA'),(341,44,'ANALISTA QA'),(342,44,'ANALISTA QA'),(343,45,'JEFE DE RIESGOS'),(344,45,'ASISTENTE DE RIEGOS'),(345,45,'ANALISTA DE RIESGOS'),(346,46,'MENSAJERO'),(347,46,'VELADOR'),(348,46,'MENSAJERO'),(349,46,'MENSAJERO'),(350,46,'MENSAJERO'),(351,46,'VELADOR'),(352,46,'AUXILIAR DE SEGURIDAD'),(353,46,'JEFE DE SEGURIDAD'),(354,47,'AUXILIAR DE SEGUROS '),(355,47,'AUXILIAR DE SEGUROS '),(356,47,'JEFE DE SEGUROS'),(357,47,'AUXILIAR DE SEGUROS '),(358,48,'CONSERJE'),(359,48,'AUXILIAR DE MANTENIMIENTO'),(360,48,'AUXILIAR DE MANTENIMIENTO'),(361,48,'JEFE DE MANTENIMIENTO E INFRAESTRUCTURA'),(362,48,'CONSERJE'),(363,48,'AUXILIAR DE MANTENIMIENTO'),(364,48,'AUXILIAR DE MANTENIMIENTO'),(365,49,'RECEPTOR PAGADOR'),(366,49,'JEFE DE AGENCIA JUNIOR'),(367,49,'ASESOR DE CREDITOS'),(368,50,'ENCARGADA DE RECLUTAMIENTO Y SELECCION'),(369,50,'ASISTENTE DE TALENTO HUMANO'),(370,50,'JEFE DE TALENTO HUMANO'),(371,50,'AUXILIAR DE TALENTO HUMANO'),(372,50,'AUXILIAR DE ENFERMERÍA ');
/*!40000 ALTER TABLE `gen_puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_roles`
--

DROP TABLE IF EXISTS `gen_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_roles` (
  `codgenroles` int(11) NOT NULL,
  `gen_rolesnombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_roles`
--

LOCK TABLES `gen_roles` WRITE;
/*!40000 ALTER TABLE `gen_roles` DISABLE KEYS */;
INSERT INTO `gen_roles` VALUES (1,'Administrador'),(2,'Usuario');
/*!40000 ALTER TABLE `gen_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_sucursal`
--

DROP TABLE IF EXISTS `gen_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_sucursal` (
  `codgensucursal` int(11) NOT NULL,
  `gen_sucursalnombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codgensucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_sucursal`
--

LOCK TABLES `gen_sucursal` WRITE;
/*!40000 ALTER TABLE `gen_sucursal` DISABLE KEYS */;
INSERT INTO `gen_sucursal` VALUES (1,'GERENCIAS ADMINISTRATIVA'),(2,'GERENCIA DE NEGOCIOS'),(3,'GERENCIA JURIDICA'),(4,'CONSEJO DE ADMINISTRACIÓN'),(5,'GERENCIA FINANCIERA'),(6,'GERENCIA GENERAL');
/*!40000 ALTER TABLE `gen_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_tipoidentificacion`
--

DROP TABLE IF EXISTS `gen_tipoidentificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_tipoidentificacion` (
  `codgentipoidentificacion` int(11) NOT NULL,
  `gen_tipoidentificacionnombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codgentipoidentificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_tipoidentificacion`
--

LOCK TABLES `gen_tipoidentificacion` WRITE;
/*!40000 ALTER TABLE `gen_tipoidentificacion` DISABLE KEYS */;
INSERT INTO `gen_tipoidentificacion` VALUES (1,'Dpi'),(2,'Visa');
/*!40000 ALTER TABLE `gen_tipoidentificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_usuario`
--

DROP TABLE IF EXISTS `gen_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_usuario` (
  `codgenusuario` int(11) NOT NULL,
  `codgeninvequipo` int(11) DEFAULT NULL,
  `gen_usuarionombre` varchar(45) DEFAULT NULL,
  `gen_usuariocorreo` varchar(100) DEFAULT NULL,
  `gen_area_codgenarea` int(11) DEFAULT NULL,
  `gen_roles_codgenroles` int(11) DEFAULT NULL,
  PRIMARY KEY (`codgenusuario`),
  KEY `fk_gen_usuario_gen_invequipo_idx` (`codgeninvequipo`),
  KEY `fk_gen_usuario_gen_area1` (`gen_area_codgenarea`),
  KEY `fk_gen_usuario_gen_roles1` (`gen_roles_codgenroles`),
  CONSTRAINT `fk_gen_usuario_gen_area` FOREIGN KEY (`gen_area_codgenarea`) REFERENCES `gen_area` (`codgenarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gen_usuario_gen_invequipo` FOREIGN KEY (`codgeninvequipo`) REFERENCES `gen_invequipo` (`codgeninvequipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_usuario`
--

LOCK TABLES `gen_usuario` WRITE;
/*!40000 ALTER TABLE `gen_usuario` DISABLE KEYS */;
INSERT INTO `gen_usuario` VALUES (1,1,'pggteo','jose.gonzalez@guadalupana.comgt',1,1),(2,1,'pgdgomez','diego.gomez@guadalupana.com.gt',1,1),(3,1,'pgaortiz','aida.ortiz@guadalupana.com.gt',1,2),(4,1,'pgecasasola','e.casasola@guadalupana.com.gt',1,1),(5,1,'pgmreyes','marlon.reyes@guadalupana.com.gt',1,1),(6,1,'pgachun','anibal.chun@guadalupana.com.gt',1,1);
/*!40000 ALTER TABLE `gen_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_zona`
--

DROP TABLE IF EXISTS `gen_zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_zona` (
  `codgenzona` int(11) NOT NULL,
  `codgendepartamento` int(11) DEFAULT NULL,
  `gen_zonanombre` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`codgenzona`),
  KEY `fk_gen_zona_gen_departamento1_idx` (`codgendepartamento`),
  CONSTRAINT `fk_gen_zona_gen_departamento1` FOREIGN KEY (`codgendepartamento`) REFERENCES `gen_departamento` (`codgendepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_zona`
--

LOCK TABLES `gen_zona` WRITE;
/*!40000 ALTER TABLE `gen_zona` DISABLE KEYS */;
INSERT INTO `gen_zona` VALUES (1,1,'Zona 1'),(2,1,'Zona 2'),(3,1,'Zona 3'),(4,1,'Zona 4'),(5,1,'Zona 5'),(6,1,'Zona 6'),(7,1,'Zona 7'),(8,1,'Zona 8'),(9,1,'Zona 9'),(10,1,'Zona 10'),(11,1,'Zona 11'),(12,1,'Zona 12'),(13,1,'Zona 13'),(14,1,'Zona 14'),(15,1,'Zona 15'),(16,1,'Zona 16'),(17,1,'Zona 17'),(18,1,'Zona 18'),(19,1,'Zona 19'),(20,1,'Zona 21'),(21,1,'Zona 22'),(22,1,'Zona 23'),(23,1,'Zona 24'),(24,1,'Zona 25'),(25,1,'Sin Zona');
/*!40000 ALTER TABLE `gen_zona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerencias`
--

DROP TABLE IF EXISTS `gerencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerencias` (
  `﻿1` int(11) DEFAULT NULL,
  `GERENCIA ADMINISTRATIVA` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerencias`
--

LOCK TABLES `gerencias` WRITE;
/*!40000 ALTER TABLE `gerencias` DISABLE KEYS */;
INSERT INTO `gerencias` VALUES (2,'GERENCIA DE NEGOCIOS'),(3,'GERENCIA JURIDICA'),(4,'CONSEJO DE ADMINISTRACIÓN'),(5,'GERENCIA ADMINISTRATIVA'),(6,'GERENCIA FINANCIERA');
/*!40000 ALTER TABLE `gerencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seg_log`
--

DROP TABLE IF EXISTS `seg_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seg_log` (
  `codseglog` int(11) NOT NULL,
  `codgenusuario` int(11) DEFAULT NULL,
  `codsegtipoproceso` int(11) DEFAULT NULL,
  `seg_logusuario` varchar(45) DEFAULT NULL,
  `seg_loghora` time DEFAULT NULL,
  `seg_logfecha` date DEFAULT NULL,
  `seg_logip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codseglog`),
  KEY `fk_seg_log_seg_tipoproceso1_idx` (`codsegtipoproceso`),
  KEY `fk_seg_log_gen_usuario1_idx` (`codgenusuario`),
  CONSTRAINT `fk_seg_log_gen_usuario1` FOREIGN KEY (`codgenusuario`) REFERENCES `gen_usuario` (`codgenusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_seg_log_seg_tipoproceso1` FOREIGN KEY (`codsegtipoproceso`) REFERENCES `seg_tipoproceso` (`codsegtipoproceso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seg_log`
--

LOCK TABLES `seg_log` WRITE;
/*!40000 ALTER TABLE `seg_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `seg_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seg_tipoproceso`
--

DROP TABLE IF EXISTS `seg_tipoproceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seg_tipoproceso` (
  `codsegtipoproceso` int(11) NOT NULL,
  `seg_tipoprocesonombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codsegtipoproceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seg_tipoproceso`
--

LOCK TABLES `seg_tipoproceso` WRITE;
/*!40000 ALTER TABLE `seg_tipoproceso` DISABLE KEYS */;
/*!40000 ALTER TABLE `seg_tipoproceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_detalle`
--

DROP TABLE IF EXISTS `ticket_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_detalle` (
  `codticketdetalle` int(11) NOT NULL,
  `codticketencabezado` int(11) DEFAULT NULL,
  `codticketestado` int(11) DEFAULT NULL,
  `codticketprioridad` int(11) DEFAULT NULL,
  `ticket_detalleresponsable` varchar(45) DEFAULT NULL,
  `ticket_detallehoradeactualizacion` time DEFAULT NULL,
  `ticket_detallefechadeactualizacion` date DEFAULT NULL,
  PRIMARY KEY (`codticketdetalle`),
  KEY `fk_ticket_detalle_ticket_estado1_idx` (`codticketestado`),
  KEY `fk_ticket_detalle_ticket_prioridad1_idx` (`codticketprioridad`),
  CONSTRAINT `fk_ticket_detalle_ticket_estado1` FOREIGN KEY (`codticketestado`) REFERENCES `ticket_estado` (`codticketestado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ticket_detalle_ticket_prioridad1` FOREIGN KEY (`codticketprioridad`) REFERENCES `ticket_prioridad` (`codticketprioridad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_detalle`
--

LOCK TABLES `ticket_detalle` WRITE;
/*!40000 ALTER TABLE `ticket_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_encabezado`
--

DROP TABLE IF EXISTS `ticket_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_encabezado` (
  `codticketencabezado` int(11) NOT NULL,
  `codgenarea` int(11) DEFAULT NULL,
  `ticket_encabezadousuario` varchar(45) DEFAULT NULL,
  `ticket_encabezadodescripcion` varchar(45) DEFAULT NULL,
  `ticket_encabezadoimagen` blob DEFAULT NULL,
  `ticket_encabezadofecha` date DEFAULT NULL,
  `ticket_encabezadohora` time DEFAULT NULL,
  PRIMARY KEY (`codticketencabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_encabezado`
--

LOCK TABLES `ticket_encabezado` WRITE;
/*!40000 ALTER TABLE `ticket_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_estado`
--

DROP TABLE IF EXISTS `ticket_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_estado` (
  `codticketestado` int(11) NOT NULL,
  `ticket_estadonombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codticketestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_estado`
--

LOCK TABLES `ticket_estado` WRITE;
/*!40000 ALTER TABLE `ticket_estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_prioridad`
--

DROP TABLE IF EXISTS `ticket_prioridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_prioridad` (
  `codticketprioridad` int(11) NOT NULL,
  `ticket_prioridadnombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codticketprioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_prioridad`
--

LOCK TABLES `ticket_prioridad` WRITE;
/*!40000 ALTER TABLE `ticket_prioridad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_prioridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_tipo`
--

DROP TABLE IF EXISTS `ticket_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_tipo` (
  `codtickettipo` int(11) NOT NULL,
  `codgenarea` int(11) DEFAULT NULL,
  `ticket_tiponombew` varchar(45) DEFAULT NULL,
  `ticket_tipodescripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codtickettipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_tipo`
--

LOCK TABLES `ticket_tipo` WRITE;
/*!40000 ALTER TABLE `ticket_tipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17 19:42:28