/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.5.5-10.1.13-MariaDB : Database - smart_voting_system
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `nominee` */

insert  into `nominee`(`sno`,`member_name`,`party_name`,`symbol_name`) values (1,'Narendra Modi','BJP','1.png'),(3,'Arvind Kejriwal','Aam Aadmi Party','3.jpg'),(4,'Akhilesh Yadav','Samajwadi Party','4.png'),(5,'Y s Jagan','YSRCP','5.png'),(6,'Rahul Gandhi','Congress','2.png'),(7,'Pawan Kalyan','Jana Sena','6.png');

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `vote` varchar(100) NOT NULL,
  `aadhar` varchar(100) NOT NULL,
  PRIMARY KEY (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vote` */

insert  into `vote`(`vote`,`aadhar`) values ('6.png','1212121212');

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
  `pno` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `d_name` varchar(100) DEFAULT NULL,
  `verified` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `voters` */

insert  into `voters`(`sno`,`first_name`,`middle_name`,`last_name`,`aadhar_id`,`voter_id`,`email`,`pno`,`state`,`d_name`,`verified`) values (1,'Rutuja','Bhalchandra','Ardak','1212121212','RA200597','rutujaardak1997@gmail.com','7769969869','Maharashtra','Amravati','yes'),(2,'take_off','Nagam','shek','123456789090','VT908900','cse.takeoff@gmail.com','9010867746','Andra Pradesh','Chittoor','no');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
