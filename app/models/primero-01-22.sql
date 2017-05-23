-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.57-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema primero
--

CREATE DATABASE IF NOT EXISTS primero;
USE primero;

--
-- Definition of table `clases`
--


-- Definition of table `estudiantes`
--


--
-- Definition of table `mensajes`
--


--
-- Definition of table `arbol`
--
DROP TABLE IF EXISTS `arbols`;
CREATE TABLE `arbols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) NOT NULL,
  `text` varchar(25) NOT NULL DEFAULT '',
  `vinculo` varchar(100) NOT NULL DEFAULT '',
  `padre_id` int(11),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `arbols` (`id`,`tipo`,`text`,`vinculo`,`padre_id`) VALUES 
 (10,1,'Administrador','',0),
 (11,1,'Crear usuarios','',10),
 (12,1,'Crear rol','rol',10),
 (13,2,'Coordinador','',0),
 (14,2,'Asignar Evaluador','',13),
 (15,2,'Ver lista Proyectos','',13),
 (16,3,'Evaluador','',0),
 (17,3,'Leer Proyecto','',16),
 (18,3,'Conclusion Proyecto','',16),
 (19,3,'Investigador','',0),
 (20,3,'Subir Proyecto','',19),
 (21,3,'Ajustar Proyecto','',19)







 ;
 
 
DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `estados` (`id`,`nombre`) VALUES 
 (1,'Amazonas'),
 (2,'Anzoategui'),
 (3,'Lara');
 
DROP TABLE IF EXISTS `ciudades`;
CREATE TABLE `ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idestado` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `ciudades` (`id`,`idestado`,`nombre`) VALUES
 (1,1,'Alto Orinoco'),
 (2,1,'Maroa'), 
 (3,1,'Pto. Ayacucho'),
 (4,2,'Anaco'),
 (5,2,'Pto. La Cruz'),
 (6,3,'Barquisimeto'), 
 (7,3,'Cabudare'),
 (8,3,'Carora');