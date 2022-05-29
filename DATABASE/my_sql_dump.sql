/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 6.0.11-alpha-community : Database - smart_voting_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`smart_voting_system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smart_voting_system`;

/*Table structure for table `nominee` */

DROP TABLE IF EXISTS `nominee`;

CREATE TABLE `nominee` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(100) NOT NULL,
  `party_name` varchar(100) DEFAULT NULL,
  `symbol_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `vote` varchar(100) NOT NULL,
  `aadhar` varchar(100) NOT NULL,
  PRIMARY KEY (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `voters` */

DROP TABLE IF EXISTS `voters`;

CREATE TABLE `voters` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `aadhar_id` varchar(100) DEFAULT NULL,
  `voter_id` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `verified` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
