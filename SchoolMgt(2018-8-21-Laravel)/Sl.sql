/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 10.1.34-MariaDB : Database - sl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sl`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2018_08_21_002944_create_schools_table',1),
(4,'2018_08_21_010851_create_school_statistics_table',2);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `school_statistics` */

DROP TABLE IF EXISTS `school_statistics`;

CREATE TABLE `school_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `elect_eur` decimal(10,2) NOT NULL,
  `elect_kwh` decimal(10,2) NOT NULL,
  `heating_eur` decimal(10,2) NOT NULL,
  `heating_kwh` decimal(10,2) NOT NULL,
  `water_eur` decimal(10,2) NOT NULL,
  `water_litres` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `school_statistics_school_id_index` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `school_statistics` */

insert  into `school_statistics`(`id`,`school_id`,`year`,`week`,`month`,`elect_eur`,`elect_kwh`,`heating_eur`,`heating_kwh`,`water_eur`,`water_litres`,`created_at`,`updated_at`) values 
(1,2,2018,34,8,233.00,323.00,232.00,23.00,232.00,23.00,'2018-08-21 18:35:19','2018-08-21 18:35:19'),
(2,3,2018,34,8,11212.00,121.00,1212.00,1212.00,121.00,12.00,'2018-08-21 19:08:08','2018-08-21 19:08:08'),
(3,4,2022,20,4,231.00,454.00,123.00,1235.00,1231.00,123.00,'2018-08-21 19:08:25','2018-08-21 10:38:58'),
(4,5,2024,20,7,45.00,45.00,456.00,4456.00,45.00,456.00,'2018-08-21 19:08:37','2018-08-21 19:08:37'),
(5,6,2019,20,4,4564.00,456456.00,4564.00,456.00,456.00,45.00,'2018-08-21 19:08:51','2018-08-21 19:08:51');

/*Table structure for table `schools` */

DROP TABLE IF EXISTS `schools`;

CREATE TABLE `schools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `schools` */

insert  into `schools`(`id`,`name`,`created_at`,`updated_at`) values 
(2,'Moscow','2018-08-21 17:56:00','2018-08-21 17:56:00'),
(3,'India','2018-08-21 17:56:07','2018-08-21 17:56:07'),
(4,'Beijing','2018-08-21 17:56:15','2018-08-21 17:56:15'),
(5,'Indonesia','2018-08-21 17:56:29','2018-08-21 17:56:29'),
(6,'DaeMan','2018-08-21 17:56:54','2018-08-21 17:56:54'),
(7,'Cambridge','2018-08-21 10:30:02','2018-08-21 10:30:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
