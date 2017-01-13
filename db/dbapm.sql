/*
SQLyog Community v12.3.3 (32 bit)
MySQL - 10.1.19-MariaDB : Database - dbapm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbapm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbapm`;

/*Table structure for table `disposisi` */

DROP TABLE IF EXISTS `disposisi`;

CREATE TABLE `disposisi` (
  `disposisi_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_disposisi` varchar(20) DEFAULT NULL,
  `no_agenda` varchar(30) DEFAULT NULL,
  `tgl_agenda` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `instruksi` varchar(50) DEFAULT NULL,
  `kepada` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`disposisi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `disposisi` */

/*Table structure for table `file_surat_keluar` */

DROP TABLE IF EXISTS `file_surat_keluar`;

CREATE TABLE `file_surat_keluar` (
  `file_surat_keluar_id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `surat_keluar_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`file_surat_keluar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `file_surat_keluar` */

/*Table structure for table `file_surat_masuk` */

DROP TABLE IF EXISTS `file_surat_masuk`;

CREATE TABLE `file_surat_masuk` (
  `file_surat_masuk_id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `surat_keluar_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`file_surat_masuk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `file_surat_masuk` */

/*Table structure for table `surat_keluar` */

DROP TABLE IF EXISTS `surat_keluar`;

CREATE TABLE `surat_keluar` (
  `surat_keluar_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_sk_1` varchar(25) DEFAULT NULL,
  `no_sk_2` varchar(25) DEFAULT NULL,
  `tanggal_sk` date DEFAULT NULL,
  `perihal` varchar(50) DEFAULT NULL,
  `tujuan` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  PRIMARY KEY (`surat_keluar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `surat_keluar` */

/*Table structure for table `surat_masuk` */

DROP TABLE IF EXISTS `surat_masuk`;

CREATE TABLE `surat_masuk` (
  `surat_masuk_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_sm` varchar(20) NOT NULL,
  `tanggal_sm` date DEFAULT NULL,
  `pengirim` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`surat_masuk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `surat_masuk` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_role` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
