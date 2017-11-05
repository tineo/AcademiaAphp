-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: academia
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) DEFAULT NULL,
  `contraseña` varchar(30) DEFAULT NULL,
  `idpersona` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `idalumno` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) DEFAULT NULL,
  `codigoalumno` int(11) DEFAULT NULL,
  `idapoderado` int(11) DEFAULT NULL,
  `discapacidad` tinyint(1) DEFAULT NULL,
  `tipodiscapacidad` varchar(12) DEFAULT NULL,
  `foto` char(68) DEFAULT NULL,
  `talla` float DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `etapa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idalumno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apoderado`
--

DROP TABLE IF EXISTS `apoderado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoderado` (
  `idapoderado` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) DEFAULT NULL,
  `idalumno` int(11) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `afinidad` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idapoderado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apoderado`
--

LOCK TABLES `apoderado` WRITE;
/*!40000 ALTER TABLE `apoderado` DISABLE KEYS */;
/*!40000 ALTER TABLE `apoderado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asistencia` (
  `idasistencia` int(11) NOT NULL AUTO_INCREMENT,
  `dia` datetime DEFAULT NULL,
  `idalumno` int(11) DEFAULT NULL,
  `tipoestado` int(3) DEFAULT NULL,
  PRIMARY KEY (`idasistencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complejo`
--

DROP TABLE IF EXISTS `complejo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complejo` (
  `idcomplejo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `idubigeo` int(11) DEFAULT NULL,
  `pertenecealipd` int(1) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `fechacreacion` date DEFAULT NULL,
  `fechaeliminacion` date DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idcomplejo`)
) ENGINE=InnoDB AUTO_INCREMENT=2317 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complejo`
--

LOCK TABLES `complejo` WRITE;
/*!40000 ALTER TABLE `complejo` DISABLE KEYS */;
INSERT INTO `complejo` VALUES (2218,'COLISEO DE LA AMISTAD PERú - JAPON',1,40134,0,'1970-01-16',NULL,''),(2219,'CASA DEL ADULTO MAYOR DE LINCE',1,40135,1,'1970-01-16',NULL,''),(2220,'I.E. MANUEL ANTONIO MESONES MURO',1,40136,2,'1970-01-16',NULL,''),(2221,'COLISEO CERRADO SULLANA',1,40137,3,'1970-01-16',NULL,''),(2222,'COMPLEJO DEPORTIVO JOSE OLAYA',1,40138,4,'1970-01-16',NULL,''),(2223,'LOZA MUNICIPAL',1,40139,5,'1970-01-16',NULL,''),(2224,'IE 16229 - CAJARURO',1,40140,6,'1970-01-16',NULL,''),(2225,'MUNICIPALIDAD SAN MIGUEL',1,40141,7,'1970-01-16',NULL,''),(2226,'COLEGIO LABARTHE',1,40142,8,'1970-01-16',NULL,''),(2227,'I.E.E SAN JUAN DE LA LIBERTAD',1,40143,9,'1970-01-16',NULL,''),(2228,'I.E N 18156 - SAN CRISTOBAL',1,40144,10,'1970-01-16',NULL,''),(2229,'PARROQUIA LA ANUNCIACION',1,40145,11,'1970-01-16',NULL,''),(2230,'COMPLEJO DEPORTIVO JOSE OLAYA',1,40146,12,'1970-01-16',NULL,''),(2231,'I.E. MOISES MORENO ROMERO',1,40147,13,'1970-01-16',NULL,''),(2232,'I.E. N 18047',1,40148,14,'1970-01-16',NULL,''),(2233,'ESTADIO CONSTANTINO GUIVEL LÁMUD',1,40149,15,'1970-01-16',NULL,''),(2234,'I.E. RAMON CASTILLA',1,40150,16,'1970-01-16',NULL,''),(2235,'I.E. PUERTO GALILEA',1,40151,17,'1970-01-16',NULL,''),(2236,'LOCAL DE APDU',1,40152,18,'1970-01-16',NULL,''),(2237,'I.E NB14047 JUAN BLAS VALERA',1,40153,19,'1970-01-16',NULL,''),(2238,'AA.HH. VIRGEN DE LOURDES - NUEVA ESPERANZA',1,40154,20,'1970-01-16',NULL,''),(2239,'CASA DEL ADULTO MAYOR DE BREÑA',1,40155,21,'1970-01-16',NULL,''),(2240,'CASA DEL ADULTO MAYOR DE SAN MIGUEL',1,40156,22,'1970-01-16',NULL,''),(2241,'CASA DEL ADULTO MAYOR DE CHORRILLOS',1,40157,23,'1970-01-16',NULL,''),(2242,'CASA DEL ADULTO MAYOR DE LA PERLA',1,40158,24,'1970-01-16',NULL,''),(2243,'CASA DEL ADULTO MAYOR DE LOS OLIVOS',1,40159,25,'1970-01-16',NULL,''),(2244,'CASA DEL ADULTO MAYOR DE PUEBLO LIBRE',1,40160,26,'1970-01-16',NULL,''),(2245,'ESTADIO MIGUEL GRAU',1,40161,27,'1970-01-16',NULL,''),(2246,'ESTADIO ROSAS PAMPA',1,40162,28,'1970-01-16',NULL,''),(2247,'TERRENO PARA CAMPO DEPORTIVO SUCRE',1,40163,29,'1970-01-16',NULL,''),(2248,'ESTADIO IPD DE PUERTO MALDONADO',1,40164,30,'1970-01-16',NULL,''),(2249,'ESTADIO MUNICIPAL DE CELENDIN',1,40165,31,'1970-01-16',NULL,''),(2250,'COLEGIO SANTA MARIA MARIANISTAS',1,40166,32,'1970-01-16',NULL,''),(2251,'LOSA DEPORTIVA',1,40167,33,'1970-01-16',NULL,''),(2252,'COLISEO PIRILO GOMEZ',1,40168,34,'1970-01-16',NULL,''),(2253,'MANUEL HERNANSANDOVAL MORE',1,40169,35,'1970-01-16',NULL,''),(2254,'ESTADIO IPD DE PUERTO MALDONADO',1,40170,36,'1970-01-16',NULL,''),(2255,'I.E. DOMINGO ZAMACOLA Y JAUREQUI',1,40171,37,'1970-01-16',NULL,''),(2256,'I.E.MODULO DE SALUD',1,40172,38,'1970-01-16',NULL,''),(2257,'COMPLEJO DEPORTIVO  PARODI',1,40173,39,'1970-01-16',NULL,''),(2258,'ESTADIO DANIEL ALCIDES CARRION',1,40174,40,'1970-01-16',NULL,''),(2259,'ESTADIO HERMANOS CARCAMO',1,40175,41,'1970-01-16',NULL,''),(2260,'ESTDIO ROMULO SHAW CISNEROS',1,40176,42,'1970-01-16',NULL,''),(2261,'MELITON CARVAJAL',1,40177,43,'1970-01-16',NULL,''),(2262,'I.E. LASTENIA REJAS DE CASTAÑON',1,40178,44,'1970-01-16',NULL,''),(2263,'I.E. NUESTROS HÉROES DE LA GUERRA DEL PACIFICO',1,40179,45,'1970-01-16',NULL,''),(2264,'CEDIF LOS CABITOS',1,40180,46,'1970-01-16',NULL,''),(2265,'COMPLEJO DEPORTIVO CUSCO PARQUE ZONAL',1,40181,47,'1970-01-16',NULL,''),(2266,'CANCHA DE CALENTAMIENTO',1,40182,48,'1970-01-16',NULL,''),(2267,'ESTADIO CAMPEONES DEL 36',1,40183,49,'1970-01-16',NULL,''),(2268,'LIGA DEPORTIVA DE KARATE',1,40184,50,'1970-01-16',NULL,''),(2269,'POLIDEPORTIVO DE MONSEFU',1,40185,51,'1970-01-16',NULL,''),(2270,'16194',1,40186,52,'1970-01-16',NULL,''),(2271,'SEBA  MANUEL ANTONIO MESONES MURO',1,40187,53,'1970-01-16',NULL,''),(2272,'POLIDEPORTIVO MUNICIPAL',1,40188,54,'1970-01-16',NULL,''),(2273,'COPA DEPORTIVA INTER ESCOLAR VIVA EL DEPORTE',1,40189,55,'1970-01-16',NULL,''),(2274,'CICLOVIAS',1,40190,56,'1970-01-16',NULL,''),(2275,'LOSA DEPORTIVA CIUDAD DEL PESCADOR',1,40191,57,'1970-01-16',NULL,''),(2276,'INSTITUCIÓN EDUCATIVA N 414 - TOCACHE',1,40192,58,'1970-01-16',NULL,''),(2277,'I.E. N 18132 - COLISEO CERRADO DE LUYA',1,40193,59,'1970-01-16',NULL,''),(2278,'I.E. LOSA DEPORTIVA',1,40194,60,'1970-01-16',NULL,''),(2279,'LOSA DEPORTIVA',1,40195,61,'1970-01-16',NULL,''),(2280,'CIRCUITO DE PLAYA',1,40196,62,'1970-01-16',NULL,''),(2281,'AV. LA FLORIDA',1,40197,63,'1970-01-16',NULL,''),(2282,'C.D. MANGOMARCA',1,40198,64,'1970-01-16',NULL,''),(2283,'GIMNASIO DEL COLISEO IPD SAN BARTOLOME',1,40199,65,'1970-01-16',NULL,''),(2284,'JUNTA VECINAL LAS PALMAS',1,40200,66,'1970-01-16',NULL,''),(2285,'BIBLIOTECA MUNICIPAL',1,40201,67,'1970-01-16',NULL,''),(2286,'PISCINA GILDEMESITER',1,40202,68,'1970-01-16',NULL,''),(2287,'COLISEO PIRILO GOMEZ',1,40203,69,'1970-01-16',NULL,''),(2288,'COLISEO CERRADO -JUAN PINASCO VILLANUEVA',1,40204,70,'1970-01-16',NULL,''),(2289,'WALTER LóPEZ GUERRERO',1,40205,71,'1970-01-16',NULL,''),(2290,'I. E.LAS CAPULLANAS',1,40206,72,'1970-01-16',NULL,''),(2291,'MIGUEL MONTEZA TAUR',1,40207,73,'1970-01-16',NULL,''),(2292,'ODONTOLOGIA',1,40208,74,'1970-01-16',NULL,''),(2293,'PISCINA PROSOYA',1,40209,75,'1970-01-16',NULL,''),(2294,'COLISEO CERRADO DE HUARAZ',1,40210,76,'1970-01-16',NULL,''),(2295,'PISCINA MUNICIPAL OLIMPICA DE VEGUETA',1,40211,77,'1970-01-16',NULL,''),(2296,'PARQUE ALFONSO UGARTE',1,40212,78,'1970-01-16',NULL,''),(2297,'COLISEO CERRADO MADRE DE DIOS',1,40213,79,'1970-01-16',NULL,''),(2298,'COLISEO INCA',1,40214,80,'1970-01-16',NULL,''),(2299,'VIRGEN DEL CARMEN',1,40215,81,'1970-01-16',NULL,''),(2300,'C.D. PARQUE CHICAMA',1,40216,82,'1970-01-16',NULL,''),(2301,'COLISEO CERRADO DE BAGUA',1,40217,83,'1970-01-16',NULL,''),(2302,'COLEGIO MIGUEL GRAU',1,40218,84,'1970-01-16',NULL,''),(2303,'CASA DE LA JUVENTUD',1,40219,85,'1970-01-16',NULL,''),(2304,'LOCAL COMUNAL',1,40220,86,'1970-01-16',NULL,''),(2305,'I.E.E. ISABEL LA CATOLICA',1,40221,87,'1970-01-16',NULL,''),(2306,'COMPLEJO DEPORTIVO MUNICIPAL IVAN ELIAS MORENO',1,40222,88,'1970-01-16',NULL,''),(2307,'PARQUE SANTA ROSA',1,40223,89,'1970-01-16',NULL,''),(2308,'MUNICIPALIDAD DE SANTIAGO DE SURCO',1,40224,90,'1970-01-16',NULL,''),(2309,'COMPLEJO DEPORTIVO IPD - HUANCAVELICA',1,40225,91,'1970-01-16',NULL,''),(2310,'IE SANTA ROSA',1,40226,92,'1970-01-16',NULL,''),(2311,'CASA DE LA JUVENTUD',1,40227,93,'1970-01-16',NULL,''),(2312,'C.D. ADELFO MAGALLANES',1,40228,94,'1970-01-16',NULL,''),(2313,'ESTADIO IPD DE PTO .MALDONADO CAMPO ALTERNO N 1',1,40229,95,'1970-01-16',NULL,''),(2314,'ESTADIO IPD DE PTO .MALDONADO LOSA DEPORTIVA COBERTURA',1,40230,96,'1970-01-16',NULL,''),(2315,'16207',1,40231,97,'1970-01-16',NULL,''),(2316,'ESTADIO MUNICIPAL DE AMBO',1,40232,98,'1970-01-16',NULL,'');
/*!40000 ALTER TABLE `complejo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discapacidad`
--

DROP TABLE IF EXISTS `discapacidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discapacidad` (
  `iddiscapacidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`iddiscapacidad`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discapacidad`
--

LOCK TABLES `discapacidad` WRITE;
/*!40000 ALTER TABLE `discapacidad` DISABLE KEYS */;
INSERT INTO `discapacidad` VALUES (1,'Discapacidad Fisico'),(2,'Discapacidad Motora'),(3,'Discapacidad Auditiva'),(4,'Discapacidad Visual'),(5,'Discapacidad Psicologica'),(6,'Discapacidad Intelectual');
/*!40000 ALTER TABLE `discapacidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `iddisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `idtipo` int(3) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fechacreacion` date DEFAULT NULL,
  `fechaeliminacion` date DEFAULT NULL,
  PRIMARY KEY (`iddisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinaevento`
--

DROP TABLE IF EXISTS `disciplinaevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplinaevento` (
  `iddisciplinaevento` int(11) NOT NULL AUTO_INCREMENT,
  `iddisciplina` int(11) DEFAULT NULL,
  `idevento` int(11) DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  `capacidadmax` int(11) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`iddisciplinaevento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinaevento`
--

LOCK TABLES `disciplinaevento` WRITE;
/*!40000 ALTER TABLE `disciplinaevento` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplinaevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `idevento` int(11) NOT NULL AUTO_INCREMENT,
  `idubigeo` int(11) DEFAULT NULL,
  `fechadecreacion` date DEFAULT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `idcomplejo` int(11) DEFAULT NULL,
  `objetivo` varchar(250) DEFAULT NULL,
  `cantidadeportistas` int(11) DEFAULT NULL,
  `edadmin` int(3) DEFAULT NULL,
  `edadmax` int(3) DEFAULT NULL,
  `organizador` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idevento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `idhorario` int(11) NOT NULL AUTO_INCREMENT,
  `iddisciplina` int(11) DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `dias` tinytext,
  `coliseo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idhorario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participanteevento`
--

DROP TABLE IF EXISTS `participanteevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participanteevento` (
  `idparticipanteevento` int(11) NOT NULL AUTO_INCREMENT,
  `idevento` int(11) DEFAULT NULL,
  `idpersona` int(11) DEFAULT NULL,
  `estado` int(3) DEFAULT NULL,
  `estadoparticipante` int(3) DEFAULT NULL,
  PRIMARY KEY (`idparticipanteevento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participanteevento`
--

LOCK TABLES `participanteevento` WRITE;
/*!40000 ALTER TABLE `participanteevento` DISABLE KEYS */;
/*!40000 ALTER TABLE `participanteevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(20) DEFAULT NULL,
  `apepaterno` varchar(20) DEFAULT NULL,
  `apematerno` varchar(20) DEFAULT NULL,
  `idubigeonac` int(11) DEFAULT NULL,
  `fechanac` int(11) DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  `estadocivil` int(11) DEFAULT NULL,
  `idtipodoc` int(2) DEFAULT NULL,
  `nrodoc` int(11) DEFAULT NULL,
  `idseguro` int(11) DEFAULT NULL,
  `nroseguro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `idprofesor` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) DEFAULT NULL,
  `usuario` varchar(15) DEFAULT NULL,
  `contraseña` varchar(30) DEFAULT NULL,
  `foto` varchar(68) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `niveleducativo` varchar(15) DEFAULT NULL,
  `disciplina` varchar(20) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`idprofesor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `idtest` int(11) NOT NULL AUTO_INCREMENT,
  `cualidad` varchar(20) DEFAULT NULL,
  `valortest` varchar(20) DEFAULT NULL,
  `unidades` varchar(10) DEFAULT NULL,
  `fecha` date NOT NULL,
  `observaion` varchar(200) DEFAULT NULL,
  `idprofesor` int(11) DEFAULT NULL,
  `idalumno` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodisciplina`
--

DROP TABLE IF EXISTS `tipodisciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodisciplina` (
  `idtipodisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`idtipodisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodisciplina`
--

LOCK TABLES `tipodisciplina` WRITE;
/*!40000 ALTER TABLE `tipodisciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipodisciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposeguro`
--

DROP TABLE IF EXISTS `tiposeguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposeguro` (
  `idtiposeguro` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `razon` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idtiposeguro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposeguro`
--

LOCK TABLES `tiposeguro` WRITE;
/*!40000 ALTER TABLE `tiposeguro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiposeguro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trofeos`
--

DROP TABLE IF EXISTS `trofeos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trofeos` (
  `idtrofeo` int(11) NOT NULL AUTO_INCREMENT,
  `idalumno` int(11) DEFAULT NULL,
  `iddisciplinaevento` int(11) DEFAULT NULL,
  `idprofesor` int(11) DEFAULT NULL,
  `descripcion` text,
  `categoria` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idtrofeo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trofeos`
--

LOCK TABLES `trofeos` WRITE;
/*!40000 ALTER TABLE `trofeos` DISABLE KEYS */;
/*!40000 ALTER TABLE `trofeos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubigeo`
--

DROP TABLE IF EXISTS `ubigeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubigeo` (
  `idubigeo` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(15) DEFAULT NULL,
  `departamento` varchar(15) DEFAULT NULL,
  `provincia` varchar(15) DEFAULT NULL,
  `distrito` varchar(15) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idubigeo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubigeo`
--

LOCK TABLES `ubigeo` WRITE;
/*!40000 ALTER TABLE `ubigeo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubigeo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `password` char(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 11:58:01
