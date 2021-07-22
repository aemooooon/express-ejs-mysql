-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.28 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table sts.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(50) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(255) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- Dumping data for table sts.user: ~6 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `uuid`, `username`, `password`, `first_name`, `last_name`, `gender`, `dob`, `email`, `phone`, `address`, `is_enabled`, `created_at`, `updated_at`) VALUES
	(1, 'e41be6220e054427bdcc16fe9607828b', 'admin', '$2a$10$fQVs4FbrynJ60jlsjYpWX.iRDm2mu7KTshB6BzqpFr.wap8nlNrr6', 'Hua2', 'Wawng', 'Male', '1984-09-12', 'wanghwss21@student.op.ac.nz', '021 1381630', '12 Clifford Street, Dalmon, Dunedin', 1, 1616860800000, 1623211389387),
	(43, 'fea3356d2edf4c68998ef63ce1c7891f', 'tony', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 'Aemon', 'WANG', 'Male', '2021-06-02', 'wanghsss21@student.op.ac.nz', '13222280909', '224 DONGFENG ROAD', 1, 1617883681273, 1623337122436),
	(48, 'cd2cf4738a074f6db45360e015452e21', 'Anna', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', 'Anna', 'Ence', 'Female', '2021-06-02', 'anna12345@gmail.com', '021 13456789', '224 DONGFENG ROAD', 1, 1617883755924, 1617883755924),
	(50, '6b0d64299c184327955f4dc187205137', 'hua', '$2a$10$J0HAB0Q/7pT7wxhnyZIHy.KfHk/nZIV42PD6zvi04tPqqp6cGhaCy', 'John', 'Doe', 'Other', '2021-06-01', 'hua22@qq.com', '13260280909', '224 DONGFENG ROAD', 0, 1622534316333, 1622787914220),
	(52, '11b6dd9bda094f23a1a6cc0d986d51e9', 'Brooke', '$2a$10$oaIsb1Cd8nHDsQ3tvooZouNfSv8U4xIs24yIYC2ft/NZOuxNFIN1K', 'Brooke', 'Lee', 'Female', '2000-01-01', 'brookelee@gmail.com', '0064 32678689', '786 Back Queen Road, Auckland', 1, 1623234611288, 1623235026701),
	(54, '95f40f2352d84b36a7a45f037a9c470d', 'Jasmine', '$2a$10$I6shkjrCg7PyttBtdGjukey/eFUv7w6R5s75gcsbUyllIEiC0GWO.', 'Jasmine', 'Smith', 'Female', '1996-05-12', 'Jasmine1996@op.ac.nz', '0064 34589032', '564 hill road, Royslin, Dunedin', 1, 1623234723993, 1623294445261);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
