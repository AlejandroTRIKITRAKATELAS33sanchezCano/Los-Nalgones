-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bdexamen
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `accesorios`
--

DROP TABLE IF EXISTS `accesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesorios` (
  `idAccesorios` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAccesorios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesorios`
--

LOCK TABLES `accesorios` WRITE;
/*!40000 ALTER TABLE `accesorios` DISABLE KEYS */;
INSERT INTO `accesorios` VALUES (1,'mouse y teclado logitech 90'),(2,'no cuenta con mouse y/o teclado');
/*!40000 ALTER TABLE `accesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idBoleta` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `appat` varchar(45) DEFAULT NULL,
  `apmat` varchar(45) DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `edad` mediumint DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `Grupo_idGrupo` int NOT NULL,
  PRIMARY KEY (`idBoleta`,`Grupo_idGrupo`),
  KEY `fk_Alumno_Grupo_idx` (`Grupo_idGrupo`),
  CONSTRAINT `fk_Alumno_Grupo` FOREIGN KEY (`Grupo_idGrupo`) REFERENCES `grupo` (`idGrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=33334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'ya','duerman a','xochilt',0,0,'simelo',1),(22,'asdasd','asdasd','asdasd',1,22,'22',1),(888,'Daniel','Polido','RRRR',0,999,'123',105),(2021,'Daniel','Pulido','Robles',0,12,'simelo',98),(2022,'Daniel','Pulido','Robles',0,12,'simelo',98),(2024,'Daniel','Pulido','Robles',0,12,'simelo',98),(2029,'Sanile','nO','si',0,12,'simelose',82);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno_has_equipo`
--

DROP TABLE IF EXISTS `alumno_has_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno_has_equipo` (
  `Alumno_idAlumno` int NOT NULL,
  `Equipo_idEquipo` int NOT NULL,
  `En uso` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Alumno_idAlumno`,`Equipo_idEquipo`),
  KEY `fk_Alumno_has_Equipo_Equipo1_idx` (`Equipo_idEquipo`),
  KEY `fk_Alumno_has_Equipo_Alumno1_idx` (`Alumno_idAlumno`),
  CONSTRAINT `fk_Alumno_has_Equipo_Alumno1` FOREIGN KEY (`Alumno_idAlumno`) REFERENCES `alumno` (`idBoleta`),
  CONSTRAINT `fk_Alumno_has_Equipo_Equipo1` FOREIGN KEY (`Equipo_idEquipo`) REFERENCES `equipo` (`idEquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_has_equipo`
--

LOCK TABLES `alumno_has_equipo` WRITE;
/*!40000 ALTER TABLE `alumno_has_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno_has_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `idAsignatura` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAsignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracion`
--

DROP TABLE IF EXISTS `configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracion` (
  `idConfiguracion` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idConfiguracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracion`
--

LOCK TABLES `configuracion` WRITE;
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
INSERT INTO `configuracion` VALUES (1,'Sistema Operativo Windows 10 64bits'),(2,'Sistema Operativo Windows 11 64bits'),(3,'Sistema Operativo Windows 8 64bits'),(4,'Sistema Operativo Windows 7 64bits'),(5,'Sistema Operativo Windows XP'),(6,'Sistema Operativo Windows Vista');
/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `idMaquina` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMaquina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES (3,'3'),(20,'20');
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `numero_empleado` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `appat` varchar(45) DEFAULT NULL,
  `apmat` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `edad` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`numero_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `idEquipo` int NOT NULL AUTO_INCREMENT,
  `Eitqueta` varchar(45) DEFAULT NULL,
  `CPU_idMaquina` int NOT NULL,
  `Monitor_idMonitor` int NOT NULL,
  `Accesorios_idAccesorios` int NOT NULL,
  `Configuracion_idConfiguracion` int NOT NULL,
  `Laboratorio_idLaboratorio` int NOT NULL,
  `Marca_idMarca` int NOT NULL,
  PRIMARY KEY (`idEquipo`,`CPU_idMaquina`,`Monitor_idMonitor`,`Accesorios_idAccesorios`,`Configuracion_idConfiguracion`,`Laboratorio_idLaboratorio`,`Marca_idMarca`),
  KEY `fk_Equipo_CPU1_idx` (`CPU_idMaquina`),
  KEY `fk_Equipo_Monitor1_idx` (`Monitor_idMonitor`),
  KEY `fk_Equipo_Accesorios1_idx` (`Accesorios_idAccesorios`),
  KEY `fk_Equipo_Configuracion1_idx` (`Configuracion_idConfiguracion`),
  KEY `fk_Equipo_Laboratorio1_idx` (`Laboratorio_idLaboratorio`),
  KEY `fk_Equipo_Marca1_idx` (`Marca_idMarca`),
  CONSTRAINT `fk_Equipo_Accesorios1` FOREIGN KEY (`Accesorios_idAccesorios`) REFERENCES `accesorios` (`idAccesorios`),
  CONSTRAINT `fk_Equipo_Configuracion1` FOREIGN KEY (`Configuracion_idConfiguracion`) REFERENCES `configuracion` (`idConfiguracion`),
  CONSTRAINT `fk_Equipo_CPU1` FOREIGN KEY (`CPU_idMaquina`) REFERENCES `cpu` (`idMaquina`),
  CONSTRAINT `fk_Equipo_Laboratorio1` FOREIGN KEY (`Laboratorio_idLaboratorio`) REFERENCES `laboratorio` (`idLaboratorio`),
  CONSTRAINT `fk_Equipo_Marca1` FOREIGN KEY (`Marca_idMarca`) REFERENCES `marca` (`idMarca`),
  CONSTRAINT `fk_Equipo_Monitor1` FOREIGN KEY (`Monitor_idMonitor`) REFERENCES `monitor` (`idMonitor`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (23,'23',20,4,1,3,1,1),(24,'24',3,3,1,1,4,1);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoreporte`
--

DROP TABLE IF EXISTS `estadoreporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadoreporte` (
  `idEstadoReporte` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEstadoReporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoreporte`
--

LOCK TABLES `estadoreporte` WRITE;
/*!40000 ALTER TABLE `estadoreporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadoreporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `idGrupo` int NOT NULL,
  `descripcion` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'1IM1'),(2,'1IM2'),(3,'1IM3'),(4,'1IM4'),(5,'1IM5'),(6,'1IM6'),(7,'1IM7'),(8,'1IM8'),(9,'1IM9'),(10,'1IM10'),(11,'2IM1'),(12,'2IM2'),(13,'2IM3'),(14,'2IM4'),(15,'2IM5'),(16,'2IM6'),(17,'2IM7'),(18,'2IM8'),(19,'2IM9'),(20,'2IM10'),(21,'3IM1'),(22,'3IM2'),(23,'3IM3'),(24,'3IM4'),(25,'3IM5'),(26,'3IM6'),(27,'3IM7'),(28,'3IM8'),(29,'3IM9'),(30,'3IM10'),(31,'4IM1'),(32,'4IM2'),(33,'4IM3'),(34,'4IM4'),(35,'4IM5'),(36,'4IM6'),(37,'4IM7'),(38,'4IM8'),(39,'4IM9'),(40,'4IM10'),(41,'5IM1'),(42,'5IM2'),(43,'5IM3'),(44,'5IM4'),(45,'5IM5'),(46,'5IM6'),(47,'5IM7'),(48,'5IM8'),(49,'5IM9'),(50,'5IM10'),(51,'6IM1'),(52,'6IM2'),(53,'6IM3'),(54,'6IM4'),(55,'6IM5'),(56,'6IM6'),(57,'6IM7'),(58,'6IM8'),(59,'6IM9'),(60,'6IM10'),(61,'1IV1'),(62,'1IV2'),(63,'1IV3'),(64,'1IV4'),(65,'1IV5'),(66,'1IV6'),(67,'1IV7'),(68,'1IV8'),(69,'1IV9'),(70,'1IV10'),(71,'2IV1'),(72,'2IV2'),(73,'2IV3'),(74,'2IV4'),(75,'2IV5'),(76,'2IV6'),(77,'2IV7'),(78,'2IV8'),(79,'2IV9'),(80,'2IV10'),(81,'3IV1'),(82,'3IV2'),(83,'3IV3'),(84,'3IV4'),(85,'3IV5'),(86,'3IV6'),(87,'3IV7'),(88,'3IV8'),(89,'3IV9'),(90,'3IV10'),(91,'4IV1'),(92,'4IV2'),(93,'4IV3'),(94,'4IV4'),(95,'4IV5'),(96,'4IV6'),(97,'4IV7'),(98,'4IV8'),(99,'4IV9'),(100,'4IV10'),(101,'5IV1'),(102,'5IV2'),(103,'5IV3'),(104,'5IV4'),(105,'5IV5'),(106,'5IV6'),(107,'5IV7'),(108,'5IV8'),(109,'5IV9'),(110,'5IV10'),(111,'6IV1'),(112,'6IV2'),(113,'6IV3'),(114,'6IV4'),(115,'6IV5'),(116,'6IV6'),(117,'6IV7'),(118,'6IV8'),(119,'6IV9'),(120,'6IV10');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorio` (
  `idLaboratorio` int NOT NULL AUTO_INCREMENT,
  `tipo_lab` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLaboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (1,'LBD'),(2,'LDS'),(3,'LNT'),(4,'4.0');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `idMarca` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'DELL'),(2,'no especificada');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitor`
--

DROP TABLE IF EXISTS `monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitor` (
  `idMonitor` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMonitor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitor`
--

LOCK TABLES `monitor` WRITE;
/*!40000 ALTER TABLE `monitor` DISABLE KEYS */;
INSERT INTO `monitor` VALUES (1,'1280x1024'),(2,'1366x768'),(3,'1600x900'),(4,'1920x1080');
/*!40000 ALTER TABLE `monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prioridad`
--

DROP TABLE IF EXISTS `prioridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prioridad` (
  `idPrioridad` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPrioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioridad`
--

LOCK TABLES `prioridad` WRITE;
/*!40000 ALTER TABLE `prioridad` DISABLE KEYS */;
/*!40000 ALTER TABLE `prioridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte` (
  `idReporte` int NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `Equipo_idEquipo` int NOT NULL,
  `Docente_numero_empleado` int NOT NULL,
  `Alumno_idAlumno` int NOT NULL,
  `Prioridad_idPrioridad` int NOT NULL,
  `EstadoReporte_idEstadoReporte` int NOT NULL,
  `Asignatura_idAsignatura` int NOT NULL,
  `fecha_previa` varchar(45) DEFAULT NULL,
  `hora_previa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idReporte`,`Equipo_idEquipo`,`Docente_numero_empleado`,`Alumno_idAlumno`,`Prioridad_idPrioridad`,`EstadoReporte_idEstadoReporte`,`Asignatura_idAsignatura`),
  KEY `fk_Reporte_Equipo1_idx` (`Equipo_idEquipo`),
  KEY `fk_Reporte_Docente1_idx` (`Docente_numero_empleado`),
  KEY `fk_Reporte_Alumno1_idx` (`Alumno_idAlumno`),
  KEY `fk_Reporte_Prioridad1_idx` (`Prioridad_idPrioridad`),
  KEY `fk_Reporte_EstadoReporte1_idx` (`EstadoReporte_idEstadoReporte`),
  KEY `fk_Reporte_Asignatura1_idx` (`Asignatura_idAsignatura`),
  CONSTRAINT `fk_Reporte_Alumno1` FOREIGN KEY (`Alumno_idAlumno`) REFERENCES `alumno` (`idBoleta`),
  CONSTRAINT `fk_Reporte_Asignatura1` FOREIGN KEY (`Asignatura_idAsignatura`) REFERENCES `asignatura` (`idAsignatura`),
  CONSTRAINT `fk_Reporte_Docente1` FOREIGN KEY (`Docente_numero_empleado`) REFERENCES `docente` (`numero_empleado`),
  CONSTRAINT `fk_Reporte_Equipo1` FOREIGN KEY (`Equipo_idEquipo`) REFERENCES `equipo` (`idEquipo`),
  CONSTRAINT `fk_Reporte_EstadoReporte1` FOREIGN KEY (`EstadoReporte_idEstadoReporte`) REFERENCES `estadoreporte` (`idEstadoReporte`),
  CONSTRAINT `fk_Reporte_Prioridad1` FOREIGN KEY (`Prioridad_idPrioridad`) REFERENCES `prioridad` (`idPrioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-17 18:35:49
