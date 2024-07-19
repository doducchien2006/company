-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.39 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table company.user_banks
CREATE TABLE IF NOT EXISTS `user_banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_num` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acc_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acc_bank` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `balance` decimal(20,0) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table company.user_banks: ~10 rows (approximately)
INSERT INTO `user_banks` (`id`, `acc_num`, `acc_name`, `acc_bank`, `user_id`, `sort`, `balance`, `status`, `created_at`, `updated_at`) VALUES
	(1, '123', 'chien', 'vcb', 1, 1, 2222, 1, '2024-07-17 11:02:00', '2024-07-17 11:02:01'),
	(2, '321222', 'asd', 'mb', 2, 2, 10000, 3, '2024-07-17 11:02:38', '2024-07-17 11:02:38'),
	(3, '6666', 'asd', 'acb', 3, 3, 10000, 2, '2024-07-17 11:02:38', '2024-07-17 11:02:38'),
	(4, '3213332', 'asd', 'VCB', 4, 4, 3333, 5, '2024-07-17 11:02:38', '2024-07-17 11:02:38'),
	(5, '32123', 'asd', 'MB', 5, 5, 11111, 6, '2024-07-17 11:02:38', '2024-07-17 11:02:38'),
	(6, '1231', 'asd', 'vcb', 6, 6, 44444, 7, '2024-07-17 11:02:38', '2024-07-17 11:02:38'),
	(7, '543345', 'asd', 'ACB', 7, 1, 20000, 8, '2024-07-17 11:02:38', '2024-07-17 11:02:38'),
	(8, '6544', 'asd', 'vcb', 8, 2, 55555, 8, '2024-07-17 11:02:38', '2024-07-17 11:02:38'),
	(9, '221', 'asd', 'mb', 9, 8, 11111, 9, '2024-07-17 11:02:38', '2024-07-17 11:02:38'),
	(10, '7575', 'asd', 'vcb', 10, 9, 66666, 3, '2024-07-17 11:02:38', '2024-07-17 11:02:38');

-- Dumping structure for table company.user_family
CREATE TABLE IF NOT EXISTS `user_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1-5',
  `descrip_at` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` decimal(20,0) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table company.user_family: ~8 rows (approximately)
INSERT INTO `user_family` (`id`, `name`, `level`, `descrip_at`, `balance`, `status`, `created_at`, `update_at`) VALUES
	(1, 'chien 1', '2', '3', 111111, '1', NULL, NULL),
	(2, 'chien2', '3', '4', 666666, '1', NULL, NULL),
	(3, 'c3', '4', '5', 777777, '1', NULL, NULL),
	(4, 'c4', '5', '6', 888888, '1', NULL, NULL),
	(5, 'c5', '6', '7', 999999, '1', NULL, NULL),
	(6, 'c6', '7', '8', 123213, '1', NULL, NULL),
	(7, 'c7', '8', '9', 232345, '1', NULL, NULL),
	(8, 'c8', '9', '10', 987789, '1', NULL, NULL),
	(9, 'c9', '10', '11', 123987, '1', NULL, NULL),
	(10, 'c10', '11', '12', 455678, '1', NULL, NULL);

-- Dumping structure for table company.user_lang
CREATE TABLE IF NOT EXISTS `user_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1-5',
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` decimal(20,0) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table company.user_lang: ~10 rows (approximately)
INSERT INTO `user_lang` (`id`, `name`, `level`, `description`, `balance`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'chien 1', '5', '2', 30000, '4', '2024-07-17 13:18:13', '2024-07-17 13:18:14'),
	(2, 'chien 2', '3', '9', 30000, '4', '2024-07-17 13:18:13', '2024-07-17 13:18:14'),
	(3, 'c3', '3', '1', 222222, '2', '2024-07-17 13:02:12', '2024-07-17 13:02:14'),
	(4, 'c4', '9', '8', 10000, '4', '2024-07-17 13:18:13', '2024-07-17 13:18:14'),
	(5, 'c5', '6', '3', 11111, '1', '2024-07-17 13:01:31', '2024-07-17 13:02:13'),
	(6, 'c6', '3', '4', 10000, '3', '2024-07-17 13:02:32', '2024-07-17 13:02:31'),
	(7, 'c7', '5', '6', 1000, '4', '2024-07-17 13:18:13', '2024-07-17 13:18:14'),
	(8, 'c8', '7', '5', 100000, '4', '2024-07-17 13:18:13', '2024-07-17 13:18:14'),
	(9, 'c9', '2', '6', 40000, '4', '2024-07-17 13:18:13', '2024-07-17 13:18:14'),
	(10, 'c11', '1', '5', 20000, '4', '2024-07-17 13:18:13', '2024-07-17 13:18:14');

-- Dumping structure for table company.user_min
CREATE TABLE IF NOT EXISTS `user_min` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` decimal(20,0) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT '1',
  `crepted_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table company.user_min: ~4 rows (approximately)
INSERT INTO `user_min` (`id`, `name`, `age`, `level`, `balance`, `status`, `crepted_at`, `update_at`) VALUES
	(1, 'c2', '8', '6', 100000, '1', '2024-07-19 14:44:12', '2024-07-19 14:44:11'),
	(2, 'c3', '9', '3', 12345, '1', NULL, NULL),
	(3, 'c5', '2', '6', 543535, '1', NULL, NULL),
	(4, '123', '4', '5', 23423432, '1', '2024-07-19 14:45:02', '2024-07-19 14:45:03'),
	(5, '324', '123', '444', 213213213, '1', NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
