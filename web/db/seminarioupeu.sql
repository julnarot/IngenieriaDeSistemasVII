/*
SQLyog Community v8.81 
MySQL - 5.5.8 : Database - seminarioupeu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`seminarioupeu` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `seminarioupeu`;

/*Table structure for table `encargado` */

DROP TABLE IF EXISTS `encargado`;

CREATE TABLE `encargado` (
  `idenc` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(40) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `rol` varchar(60) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `numtelefono` varchar(20) NOT NULL,
  PRIMARY KEY (`idenc`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `encargado` */

insert  into `encargado`(`idenc`,`direccion`,`estado`,`name`,`rol`,`usuario`,`clave`,`numtelefono`) values (1,'dir1','1','guillermo','cobrador','user1','123','123456789');

/*Table structure for table `persona` */

DROP TABLE IF EXISTS `persona`;

CREATE TABLE `persona` (
  `idper` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `asistencia` varchar(10) DEFAULT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `idenc` int(11) NOT NULL,
  `monto` int(10) DEFAULT NULL,
  `entregado` varchar(10) DEFAULT NULL,
  `nroticket` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idper`),
  KEY `encargado_persona_fk` (`idenc`),
  CONSTRAINT `encargado_persona_fk` FOREIGN KEY (`idenc`) REFERENCES `encargado` (`idenc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `persona` */

insert  into `persona`(`idper`,`name`,`codigo`,`email`,`estado`,`asistencia`,`comentario`,`dni`,`idenc`,`monto`,`entregado`,`nroticket`) values (2,'WILLIAM CALISAYA PARI','200810381','elmagwi@gmail.com','1','0','cool','44444444',1,15,'0','101'),(6,'JOSE CARLOS MARIATEGUI','2342','wfwerwe','1','0','asd','3245354',1,0,'0','102'),(7,'GISELA MORENO VALA','234234','WEWER','1','0','asdas','23423',1,15,'0','103');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
