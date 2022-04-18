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
-- Dumping data for table `accesorios`
--

LOCK TABLES `accesorios` WRITE;
/*!40000 ALTER TABLE `accesorios` DISABLE KEYS */;
INSERT INTO `accesorios` VALUES (1,'mouse y teclado logitech 90'),(2,'no cuenta con mouse y/o teclado');
/*!40000 ALTER TABLE `accesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'ya','duerman a','xochilt',0,0,'simelo',1),(22,'asdasd','asdasd','asdasd',1,22,'22',1),(888,'Daniel','Polido','RRRR',0,999,'123',105),(2021,'Daniel','Pulido','Robles',0,12,'simelo',98),(2022,'Daniel','Pulido','Robles',0,12,'simelo',98),(2024,'Daniel','Pulido','Robles',0,12,'simelo',98),(2029,'Sanile','nO','si',0,12,'simelose',82);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `alumno_has_equipo`
--

LOCK TABLES `alumno_has_equipo` WRITE;
/*!40000 ALTER TABLE `alumno_has_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno_has_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `configuracion`
--

LOCK TABLES `configuracion` WRITE;
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
INSERT INTO `configuracion` VALUES (1,'Sistema Operativo Windows 10 64bits'),(2,'Sistema Operativo Windows 11 64bits'),(3,'Sistema Operativo Windows 8 64bits'),(4,'Sistema Operativo Windows 7 64bits'),(5,'Sistema Operativo Windows XP'),(6,'Sistema Operativo Windows Vista');
/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES (3,'3'),(20,'20');
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (23,'23',20,4,1,3,1,1),(24,'24',3,3,1,1,4,1);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estadoreporte`
--

LOCK TABLES `estadoreporte` WRITE;
/*!40000 ALTER TABLE `estadoreporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadoreporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'1IM1'),(2,'1IM2'),(3,'1IM3'),(4,'1IM4'),(5,'1IM5'),(6,'1IM6'),(7,'1IM7'),(8,'1IM8'),(9,'1IM9'),(10,'1IM10'),(11,'2IM1'),(12,'2IM2'),(13,'2IM3'),(14,'2IM4'),(15,'2IM5'),(16,'2IM6'),(17,'2IM7'),(18,'2IM8'),(19,'2IM9'),(20,'2IM10'),(21,'3IM1'),(22,'3IM2'),(23,'3IM3'),(24,'3IM4'),(25,'3IM5'),(26,'3IM6'),(27,'3IM7'),(28,'3IM8'),(29,'3IM9'),(30,'3IM10'),(31,'4IM1'),(32,'4IM2'),(33,'4IM3'),(34,'4IM4'),(35,'4IM5'),(36,'4IM6'),(37,'4IM7'),(38,'4IM8'),(39,'4IM9'),(40,'4IM10'),(41,'5IM1'),(42,'5IM2'),(43,'5IM3'),(44,'5IM4'),(45,'5IM5'),(46,'5IM6'),(47,'5IM7'),(48,'5IM8'),(49,'5IM9'),(50,'5IM10'),(51,'6IM1'),(52,'6IM2'),(53,'6IM3'),(54,'6IM4'),(55,'6IM5'),(56,'6IM6'),(57,'6IM7'),(58,'6IM8'),(59,'6IM9'),(60,'6IM10'),(61,'1IV1'),(62,'1IV2'),(63,'1IV3'),(64,'1IV4'),(65,'1IV5'),(66,'1IV6'),(67,'1IV7'),(68,'1IV8'),(69,'1IV9'),(70,'1IV10'),(71,'2IV1'),(72,'2IV2'),(73,'2IV3'),(74,'2IV4'),(75,'2IV5'),(76,'2IV6'),(77,'2IV7'),(78,'2IV8'),(79,'2IV9'),(80,'2IV10'),(81,'3IV1'),(82,'3IV2'),(83,'3IV3'),(84,'3IV4'),(85,'3IV5'),(86,'3IV6'),(87,'3IV7'),(88,'3IV8'),(89,'3IV9'),(90,'3IV10'),(91,'4IV1'),(92,'4IV2'),(93,'4IV3'),(94,'4IV4'),(95,'4IV5'),(96,'4IV6'),(97,'4IV7'),(98,'4IV8'),(99,'4IV9'),(100,'4IV10'),(101,'5IV1'),(102,'5IV2'),(103,'5IV3'),(104,'5IV4'),(105,'5IV5'),(106,'5IV6'),(107,'5IV7'),(108,'5IV8'),(109,'5IV9'),(110,'5IV10'),(111,'6IV1'),(112,'6IV2'),(113,'6IV3'),(114,'6IV4'),(115,'6IV5'),(116,'6IV6'),(117,'6IV7'),(118,'6IV8'),(119,'6IV9'),(120,'6IV10');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (1,'LBD'),(2,'LDS'),(3,'LNT'),(4,'4.0');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'DELL'),(2,'no especificada');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `monitor`
--

LOCK TABLES `monitor` WRITE;
/*!40000 ALTER TABLE `monitor` DISABLE KEYS */;
INSERT INTO `monitor` VALUES (1,'1280x1024'),(2,'1366x768'),(3,'1600x900'),(4,'1920x1080');
/*!40000 ALTER TABLE `monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prioridad`
--

LOCK TABLES `prioridad` WRITE;
/*!40000 ALTER TABLE `prioridad` DISABLE KEYS */;
/*!40000 ALTER TABLE `prioridad` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2022-04-17 16:56:38
