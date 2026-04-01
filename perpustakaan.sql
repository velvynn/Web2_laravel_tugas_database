-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for perpustakaan
CREATE DATABASE IF NOT EXISTS `perpustakaan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `perpustakaan`;

-- Dumping structure for table perpustakaan.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookshelf_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_bookshelf_id_foreign` (`bookshelf_id`),
  KEY `books_category_id_foreign` (`category_id`),
  CONSTRAINT `books_bookshelf_id_foreign` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`id`) ON DELETE CASCADE,
  CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.books: ~50 rows (approximately)
INSERT INTO `books` (`id`, `title`, `author`, `year`, `publisher`, `city`, `cover`, `bookshelf_id`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, 'Nemo quae enim.', 'Wardaya Pradipta', '2021', 'Perum Pudjiastuti Rahayu Tbk', 'Blitar', 'default.jpg', 19, 5, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(2, 'Architecto minima mollitia.', 'Ami Endah Prastuti S.Kom', '2016', 'Yayasan Kusmawati', 'Administrasi Jakarta Utara', 'default.jpg', 38, 48, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(3, 'Sunt quod similique in adipisci.', 'Cinthia Humaira Wulandari S.H.', '2012', 'Fa Mardhiyah', 'Sibolga', 'default.jpg', 5, 32, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(4, 'Dolorem qui rerum.', 'Karma Putra', '2022', 'PD Sinaga Ardianto', 'Administrasi Jakarta Timur', 'default.jpg', 28, 32, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(5, 'Eius dolore eos voluptas.', 'Salimah Maryati', '2025', 'PD Latupono Tbk', 'Tanjungbalai', 'default.jpg', 25, 35, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(6, 'Atque doloribus deleniti et.', 'Faizah Sadina Nuraini S.I.Kom', '2018', 'PD Laksita Manullang Tbk', 'Metro', 'default.jpg', 6, 13, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(7, 'Mollitia unde illo amet.', 'Cecep Mustofa S.Psi', '2012', 'CV Winarsih Damanik Tbk', 'Sibolga', 'default.jpg', 23, 2, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(8, 'Beatae debitis quidem explicabo.', 'Heryanto Sihombing', '2019', 'PT Padmasari Tbk', 'Kediri', 'default.jpg', 5, 16, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(9, 'Nesciunt facilis vitae temporibus.', 'Gaduh Mansur', '2025', 'PJ Utami', 'Tanjungbalai', 'default.jpg', 41, 42, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(10, 'Aut modi quas.', 'Saka Samosir', '2024', 'PD Mangunsong', 'Probolinggo', 'default.jpg', 4, 8, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(11, 'Veritatis nulla ut a.', 'Hani Paramita Sudiati', '2015', 'PD Utami', 'Administrasi Jakarta Selatan', 'default.jpg', 38, 19, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(12, 'Numquam architecto quibusdam.', 'Wasis Sihotang', '2023', 'Yayasan Hassanah', 'Probolinggo', 'default.jpg', 26, 16, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(13, 'Dolorum minus nesciunt.', 'Zaenab Kusmawati', '2010', 'Yayasan Simanjuntak Wahyudin', 'Batam', 'default.jpg', 37, 16, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(14, 'Voluptas repellat dolore vel.', 'Ratih Bella Uyainah M.TI.', '2019', 'CV Hariyah Iswahyudi', 'Sawahlunto', 'default.jpg', 27, 11, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(15, 'Aut est maxime rerum.', 'Rafid Bagiya Gunarto S.E.', '2014', 'PJ Aryani Aryani', 'Palopo', 'default.jpg', 44, 40, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(16, 'Provident veritatis qui.', 'Nadine Sudiati', '2020', 'Fa Hassanah (Persero) Tbk', 'Pariaman', 'default.jpg', 25, 46, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(17, 'Expedita officiis illo.', 'Gilda Almira Purnawati', '2021', 'PD Nasyiah Narpati Tbk', 'Gorontalo', 'default.jpg', 6, 32, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(18, 'Magni sunt reprehenderit.', 'Harto Prasetya', '2010', 'Fa Pratiwi (Persero) Tbk', 'Bogor', 'default.jpg', 5, 8, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(19, 'A corporis explicabo.', 'Irfan Prayoga', '2012', 'Yayasan Utama', 'Batam', 'default.jpg', 33, 41, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(20, 'Itaque alias et beatae inventore.', 'Putri Hassanah S.Farm', '2012', 'PD Agustina', 'Cirebon', 'default.jpg', 7, 35, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(21, 'Aliquid explicabo.', 'Gangsa Uda Prasetya', '2013', 'CV Nurdiyanti (Persero) Tbk', 'Administrasi Jakarta Pusat', 'default.jpg', 50, 17, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(22, 'Quis et sint eligendi aut.', 'Hardana Waskita', '2025', 'PJ Halim Yuliarti', 'Makassar', 'default.jpg', 24, 23, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(23, 'Sunt perferendis enim vero.', 'Slamet Jamal Saptono', '2017', 'Fa Wijaya Susanti (Persero) Tbk', 'Pematangsiantar', 'default.jpg', 33, 43, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(24, 'Consequatur quidem explicabo.', 'Faizah Nasyiah', '2020', 'UD Puspita (Persero) Tbk', 'Palopo', 'default.jpg', 32, 41, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(25, 'Voluptatibus voluptatibus molestias.', 'Kunthara Budiman', '2021', 'Yayasan Rahayu Prabowo Tbk', 'Malang', 'default.jpg', 6, 44, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(26, 'Perspiciatis recusandae.', 'Simon Tamba', '2023', 'CV Utama (Persero) Tbk', 'Mataram', 'default.jpg', 11, 48, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(27, 'Consequuntur officia explicabo.', 'Elisa Puspita M.Ak', '2023', 'PD Prasasta', 'Cilegon', 'default.jpg', 8, 18, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(28, 'Voluptatem veniam id.', 'Maida Farida', '2011', 'PT Damanik Lazuardi (Persero) Tbk', 'Bima', 'default.jpg', 23, 2, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(29, 'Dolor enim et.', 'Julia Maimunah Winarsih', '2019', 'UD Budiman (Persero) Tbk', 'Manado', 'default.jpg', 27, 33, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(30, 'Sapiente laboriosam voluptatem aut.', 'Hafshah Maryati', '2018', 'PD Nababan (Persero) Tbk', 'Palembang', 'default.jpg', 43, 6, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(31, 'Blanditiis neque.', 'Keisha Purwanti', '2016', 'PJ Simbolon Tbk', 'Malang', 'default.jpg', 15, 45, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(32, 'Quae et debitis voluptas a.', 'Darijan Cengkir Irawan S.T.', '2023', 'UD Manullang (Persero) Tbk', 'Bengkulu', 'default.jpg', 27, 47, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(33, 'Iure neque neque corrupti.', 'Febi Zulaika', '2025', 'PJ Purnawati', 'Bontang', 'default.jpg', 8, 36, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(34, 'Ab qui consequatur.', 'Cemani Saputra S.Sos', '2024', 'UD Maryadi', 'Mataram', 'default.jpg', 8, 22, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(35, 'Est iusto omnis assumenda.', 'Karya Saragih', '2012', 'PD Pratama (Persero) Tbk', 'Payakumbuh', 'default.jpg', 22, 48, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(36, 'Sed non distinctio sit impedit.', 'Galar Saragih S.I.Kom', '2017', 'UD Saragih', 'Depok', 'default.jpg', 35, 8, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(37, 'At dignissimos labore quia.', 'Xanana Hadi Tarihoran S.T.', '2014', 'Perum Prasetyo', 'Gunungsitoli', 'default.jpg', 30, 4, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(38, 'Tenetur consequatur officia.', 'Harsana Embuh Waskita', '2016', 'PJ Simanjuntak', 'Gorontalo', 'default.jpg', 16, 13, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(39, 'Similique aut dolor.', 'Emil Purwanto Wacana', '2020', 'Yayasan Agustina', 'Medan', 'default.jpg', 16, 42, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(40, 'Aut reprehenderit harum voluptas quia.', 'Paulin Karen Laksmiwati S.I.Kom', '2019', 'CV Maryati Wulandari', 'Subulussalam', 'default.jpg', 41, 2, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(41, 'Dolores ipsa accusantium eius.', 'Kairav Ardianto', '2014', 'UD Tamba', 'Balikpapan', 'default.jpg', 10, 10, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(42, 'Qui a placeat.', 'Chelsea Mulyani', '2017', 'PJ Yuniar (Persero) Tbk', 'Administrasi Jakarta Utara', 'default.jpg', 27, 20, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(43, 'Libero rerum officia.', 'Kemba Atma Suryono', '2016', 'PD Permata Tbk', 'Manado', 'default.jpg', 11, 5, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(44, 'Consequatur ipsa aut dolor molestiae.', 'Hana Wulandari', '2012', 'Yayasan Suryatmi Wahyuni', 'Prabumulih', 'default.jpg', 14, 25, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(45, 'Alias ipsum fuga quis.', 'Paris Zamira Fujiati', '2016', 'Yayasan Utama Purnawati Tbk', 'Pangkal Pinang', 'default.jpg', 35, 22, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(46, 'Enim aut neque.', 'Diah Hariyah', '2020', 'PD Lazuardi (Persero) Tbk', 'Banjar', 'default.jpg', 10, 23, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(47, 'Doloribus vel est.', 'Pranawa Maryadi', '2016', 'UD Dongoran Santoso', 'Tarakan', 'default.jpg', 10, 20, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(48, 'Rem dolorem dolores.', 'Siti Aryani', '2012', 'Fa Maulana', 'Blitar', 'default.jpg', 20, 25, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(49, 'Et est.', 'Winda Hastuti', '2018', 'Perum Safitri', 'Langsa', 'default.jpg', 11, 13, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(50, 'Praesentium quo maiores.', 'Teddy Saragih S.Gz', '2017', 'PJ Kusmawati', 'Madiun', 'default.jpg', 45, 45, '2026-04-01 04:11:53', '2026-04-01 04:11:53');

-- Dumping structure for table perpustakaan.bookshelves
CREATE TABLE IF NOT EXISTS `bookshelves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.bookshelves: ~50 rows (approximately)
INSERT INTO `bookshelves` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'R46', 'Rak N', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(2, 'R41', 'Rak F', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(3, 'R03', 'Rak T', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(4, 'R53', 'Rak P', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(5, 'R14', 'Rak Q', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(6, 'R53', 'Rak N', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(7, 'R47', 'Rak M', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(8, 'R23', 'Rak B', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(9, 'R43', 'Rak N', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(10, 'R15', 'Rak A', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(11, 'R52', 'Rak B', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(12, 'R19', 'Rak Q', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(13, 'R33', 'Rak P', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(14, 'R46', 'Rak R', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(15, 'R58', 'Rak C', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(16, 'R16', 'Rak T', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(17, 'R80', 'Rak F', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(18, 'R11', 'Rak M', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(19, 'R24', 'Rak P', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(20, 'R13', 'Rak M', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(21, 'R07', 'Rak Z', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(22, 'R18', 'Rak J', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(23, 'R48', 'Rak I', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(24, 'R52', 'Rak P', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(25, 'R23', 'Rak R', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(26, 'R06', 'Rak U', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(27, 'R02', 'Rak N', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(28, 'R84', 'Rak L', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(29, 'R23', 'Rak E', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(30, 'R77', 'Rak M', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(31, 'R76', 'Rak N', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(32, 'R93', 'Rak Q', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(33, 'R96', 'Rak V', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(34, 'R11', 'Rak R', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(35, 'R36', 'Rak U', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(36, 'R28', 'Rak S', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(37, 'R16', 'Rak F', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(38, 'R34', 'Rak G', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(39, 'R76', 'Rak Q', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(40, 'R31', 'Rak O', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(41, 'R44', 'Rak Z', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(42, 'R29', 'Rak J', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(43, 'R22', 'Rak J', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(44, 'R67', 'Rak E', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(45, 'R85', 'Rak F', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(46, 'R65', 'Rak I', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(47, 'R81', 'Rak Y', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(48, 'R93', 'Rak U', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(49, 'R20', 'Rak I', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(50, 'R34', 'Rak K', '2026-04-01 04:11:30', '2026-04-01 04:11:30');

-- Dumping structure for table perpustakaan.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.cache: ~0 rows (approximately)

-- Dumping structure for table perpustakaan.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.cache_locks: ~0 rows (approximately)

-- Dumping structure for table perpustakaan.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.categories: ~50 rows (approximately)
INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
	(1, 'adipisci', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(2, 'inventore', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(3, 'corrupti', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(4, 'omnis', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(5, 'itaque', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(6, 'consequuntur', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(7, 'magnam', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(8, 'iusto', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(9, 'temporibus', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(10, 'est', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(11, 'voluptas', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(12, 'eius', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(13, 'laudantium', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(14, 'natus', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(15, 'voluptate', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(16, 'ad', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(17, 'earum', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(18, 'vero', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(19, 'sint', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(20, 'est', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(21, 'voluptatem', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(22, 'molestias', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(23, 'recusandae', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(24, 'laboriosam', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(25, 'aut', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(26, 'et', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(27, 'aut', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(28, 'repellendus', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(29, 'quidem', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(30, 'incidunt', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(31, 'dolor', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(32, 'vel', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(33, 'est', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(34, 'aliquam', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(35, 'quia', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(36, 'quae', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(37, 'id', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(38, 'non', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(39, 'quia', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(40, 'et', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(41, 'est', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(42, 'est', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(43, 'perferendis', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(44, 'sunt', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(45, 'provident', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(46, 'at', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(47, 'dolor', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(48, 'sed', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(49, 'earum', '2026-04-01 04:11:30', '2026-04-01 04:11:30'),
	(50, 'minima', '2026-04-01 04:11:30', '2026-04-01 04:11:30');

-- Dumping structure for table perpustakaan.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table perpustakaan.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.jobs: ~0 rows (approximately)

-- Dumping structure for table perpustakaan.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.job_batches: ~0 rows (approximately)

-- Dumping structure for table perpustakaan.loans
CREATE TABLE IF NOT EXISTS `loans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_npm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_at` date NOT NULL,
  `return_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loans_user_npm_foreign` (`user_npm`),
  CONSTRAINT `loans_user_npm_foreign` FOREIGN KEY (`user_npm`) REFERENCES `users` (`npm`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.loans: ~50 rows (approximately)
INSERT INTO `loans` (`id`, `user_npm`, `loan_at`, `return_at`, `created_at`, `updated_at`) VALUES
	(1, '5520124077', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(2, '5520124090', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(3, '5520124038', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(4, '5520124001', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(5, '5520124090', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(6, '5520124089', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(7, '5520124020', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(8, '5520124090', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(9, '5520124092', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(10, '5520124077', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(11, '5520124000', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(12, '5520124090', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(13, '5520124000', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(14, '5520124014', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(15, '5520124032', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(16, '5520124016', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(17, '5520124025', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(18, '5520124042', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(19, '5520124077', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(20, '5520124005', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(21, '5520124079', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(22, '5520124033', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(23, '5520124077', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(24, '5520124066', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(25, '5520124088', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(26, '5520124025', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(27, '5520124019', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(28, '5520124026', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(29, '5520124042', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(30, '5520124074', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(31, '5520124077', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(32, '5520124014', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(33, '5520124050', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(34, '5520124014', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(35, '5520124037', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(36, '5520124026', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(37, '5520124034', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(38, '5520124030', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(39, '5520124025', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(40, '5520124040', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(41, '5520124098', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(42, '5520124062', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(43, '5520124090', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(44, '5520124074', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(45, '5520124066', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(46, '5520124081', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(47, '5520124031', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(48, '5520124094', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(49, '5520124020', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(50, '5520124058', '2026-04-01', '2026-04-08', '2026-04-01 04:11:53', '2026-04-01 04:11:53');

-- Dumping structure for table perpustakaan.loan_details
CREATE TABLE IF NOT EXISTS `loan_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `loan_id` bigint unsigned NOT NULL,
  `book_id` bigint unsigned NOT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loan_details_loan_id_foreign` (`loan_id`),
  KEY `loan_details_book_id_foreign` (`book_id`),
  CONSTRAINT `loan_details_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `loan_details_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.loan_details: ~50 rows (approximately)
INSERT INTO `loan_details` (`id`, `loan_id`, `book_id`, `is_return`, `created_at`, `updated_at`) VALUES
	(1, 50, 35, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(2, 29, 6, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(3, 1, 5, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(4, 20, 12, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(5, 18, 21, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(6, 40, 32, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(7, 19, 10, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(8, 3, 8, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(9, 47, 48, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(10, 36, 40, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(11, 10, 35, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(12, 6, 34, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(13, 19, 26, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(14, 13, 6, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(15, 12, 20, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(16, 9, 13, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(17, 1, 25, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(18, 1, 18, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(19, 40, 36, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(20, 46, 19, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(21, 10, 42, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(22, 43, 10, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(23, 47, 32, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(24, 19, 21, 0, '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	(25, 37, 47, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(26, 47, 37, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(27, 21, 12, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(28, 26, 42, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(29, 40, 15, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(30, 22, 34, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(31, 35, 1, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(32, 11, 37, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(33, 45, 41, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(34, 3, 30, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(35, 50, 27, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(36, 28, 28, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(37, 18, 10, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(38, 43, 11, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(39, 50, 45, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(40, 45, 13, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(41, 16, 15, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(42, 18, 14, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(43, 10, 34, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(44, 36, 5, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(45, 21, 50, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(46, 46, 6, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(47, 20, 28, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(48, 14, 13, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(49, 22, 34, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(50, 25, 46, 0, '2026-04-01 04:11:54', '2026-04-01 04:11:54');

-- Dumping structure for table perpustakaan.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2026_04_01_095526_create_categories_table', 1),
	(5, '2026_04_01_095536_create_bookshelves_table', 1),
	(6, '2026_04_01_095623_create_books_table', 1),
	(7, '2026_04_01_095633_create_loans_table', 1),
	(8, '2026_04_01_095639_create_loan_details_table', 1),
	(9, '2026_04_01_095646_create_returns_table', 1);

-- Dumping structure for table perpustakaan.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table perpustakaan.returns
CREATE TABLE IF NOT EXISTS `returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `loan_detail_id` bigint unsigned NOT NULL,
  `charge` tinyint(1) NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `returns_loan_detail_id_foreign` (`loan_detail_id`),
  CONSTRAINT `returns_loan_detail_id_foreign` FOREIGN KEY (`loan_detail_id`) REFERENCES `loan_details` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.returns: ~50 rows (approximately)
INSERT INTO `returns` (`id`, `loan_detail_id`, `charge`, `amount`, `created_at`, `updated_at`) VALUES
	(1, 26, 1, 48797, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(2, 50, 0, 5796, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(3, 33, 1, 29092, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(4, 32, 1, 26957, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(5, 32, 0, 4694, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(6, 7, 0, 46145, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(7, 4, 0, 3664, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(8, 5, 1, 31957, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(9, 37, 0, 6633, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(10, 29, 0, 6410, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(11, 3, 0, 18356, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(12, 31, 0, 19771, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(13, 4, 0, 2728, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(14, 37, 0, 19329, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(15, 7, 1, 1882, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(16, 18, 1, 25106, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(17, 39, 1, 39850, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(18, 2, 0, 23862, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(19, 4, 1, 539, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(20, 19, 0, 3880, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(21, 9, 1, 32595, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(22, 6, 0, 3074, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(23, 15, 1, 41285, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(24, 22, 1, 26437, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(25, 10, 1, 26932, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(26, 26, 1, 44047, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(27, 21, 0, 963, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(28, 26, 0, 15586, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(29, 34, 1, 25266, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(30, 50, 1, 34823, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(31, 23, 1, 16916, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(32, 48, 0, 22356, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(33, 1, 1, 12061, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(34, 36, 1, 38192, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(35, 44, 1, 21690, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(36, 50, 0, 6900, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(37, 34, 0, 49214, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(38, 16, 1, 34678, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(39, 38, 0, 20280, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(40, 26, 1, 21838, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(41, 8, 0, 37017, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(42, 35, 1, 39102, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(43, 28, 0, 24127, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(44, 13, 1, 10672, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(45, 13, 0, 1992, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(46, 34, 0, 7582, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(47, 37, 0, 37683, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(48, 25, 0, 12393, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(49, 50, 1, 45634, '2026-04-01 04:11:54', '2026-04-01 04:11:54'),
	(50, 7, 0, 40097, '2026-04-01 04:11:54', '2026-04-01 04:11:54');

-- Dumping structure for table perpustakaan.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.sessions: ~0 rows (approximately)

-- Dumping structure for table perpustakaan.users
CREATE TABLE IF NOT EXISTS `users` (
  `npm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`npm`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.users: ~50 rows (approximately)
INSERT INTO `users` (`npm`, `username`, `first_name`, `last_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
	('5520124000', 'cici99', 'Ani', 'Novitasari', 'galih15@example.net', '$2y$12$5krKKwRTc8ISjMKGrijSCeLvHPtfKAg8ACATHE90x251bWthvDWyK', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124001', 'spranowo', 'Naradi', 'Yolanda', 'bpadmasari@example.net', '$2y$12$gysWZbp2oC20/iy28kExyeRCOD7wAnPFoelwWIW9kHVlYMKHsuPuW', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124003', 'elvin23', 'Wisnu', 'Agustina', 'nadine17@example.com', '$2y$12$xzkF3iAwsS7rC8OUuDNrJOQhTm8c4lfzJ2YGMocanC7MzxZTVuw4m', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124005', 'oiswahyudi', 'Latika', 'Safitri', 'loktaviani@example.org', '$2y$12$1YRMD9c1amY7syEICJhAIecLQuTBiF6VJ6tq1Ty4Oac8.OLP4P3xa', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124006', 'qanggriawan', 'Elvin', 'Jailani', 'abyasa.puspita@example.org', '$2y$12$lu3ARU9BZSjST3SMATPnxejOxVnOYWF3Mzc5T2bGB9StdlTx5KcQC', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124007', 'hilda47', 'Hadi', 'Nuraini', 'asihombing@example.com', '$2y$12$ceZu70WfZQkLFjwM0sUOhO23KMEA9INJmjw7y1QI/TufZViX5/ZtS', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124009', 'bella35', 'Jasmin', 'Wasita', 'nardi16@example.com', '$2y$12$kDpcMvqeDT8Vqbmh8alRoe6CnNh7rTzfskxeMXqOmLno.B0U0lS.a', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124012', 'pandu54', 'Elon', 'Rahmawati', 'manullang.rama@example.org', '$2y$12$umFVDptEVd4dBkoRXMhDa.4PgA0GeiQIoJaddICvkKc9ZXxc6tqH.', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124014', 'luluh.hutagalung', 'Kawaya', 'Maryati', 'prasetya28@example.org', '$2y$12$Nn9aYyoPlfxe9TE7JPPiwenA9stOhRCnQqe7GwyIL.jDD/9LUC.5m', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124015', 'suryono.dian', 'Gadang', 'Kusmawati', 'phutagalung@example.com', '$2y$12$6TuMysrmqte3EoYBKNfwhOGPXka4YirYRv8pHBES0sKX5n73G.LfC', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124016', 'hutasoit.anastasia', 'Azalea', 'Rajata', 'muni53@example.net', '$2y$12$Z.QCZ/NEst0s.hbZ7dyXCO78Ncpcz/joAPAWV7ulxbjmeotXOFKqK', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124017', 'yulianti.lamar', 'Tari', 'Prakasa', 'ulva.nasyidah@example.org', '$2y$12$on74TTf1Pznn9XUoQ2CaUu9txyCqmeZZtcChmY9QDeK0sjl4zup8q', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124019', 'wibisono.lurhur', 'Ivan', 'Wulandari', 'prasetyo.iriana@example.net', '$2y$12$8XPalvAHlp4YTOs5sy.AvOl77L1Y156rGWwmxDiLFr5k.lzKSmawW', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124020', 'yyuliarti', 'Teguh', 'Tampubolon', 'pratiwi.cawisono@example.org', '$2y$12$6Q3MLbZQeI5uMDW0GOIt7eocsgrYhFNWwZDZxrb93YQnUuMFI86Be', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124023', 'budiyanto.mila', 'Budi', 'Astuti', 'diah.hartati@example.com', '$2y$12$SK0VkzvHyUnSzVrKWFPJNecfh4psxIthpCFR.swfmW.lPgRjGOZPe', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124025', 'nyana.santoso', 'Ulva', 'Mayasari', 'dmelani@example.org', '$2y$12$DPtSIX7Vm2Z76v9aHKwSwORKwKI7VPKmI19Z01li9ILRZVKBrajN6', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124026', 'bmanullang', 'Prayitna', 'Susanti', 'ulva20@example.org', '$2y$12$kqfMrUA6eh8PVSjjR0.R6OZEoT9/Vnsbbi/HmcNS4njT4wX5ZMAHe', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124027', 'mandasari.vino', 'Kezia', 'Wibisono', 'lprasetya@example.com', '$2y$12$1CujWobetHsrTEsfCoDZIOM4Dttle9sPWEk5xENRJggrUjc5clSXC', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124030', 'laila.irawan', 'Kamaria', 'Mardhiyah', 'cengkir39@example.com', '$2y$12$nJpchQ6p6KBH0EwnlK1fqe/fc2iDQM4334egGQyKuKQERrOy.cRFy', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124031', 'fmansur', 'Lili', 'Susanti', 'plestari@example.com', '$2y$12$xaEpdjG8oEms4Z.kzAAkPeHia0VeBKYbwWrR6oLy3he5AguktfJtq', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124032', 'muni.permata', 'Anastasia', 'Hariyah', 'wahyu72@example.org', '$2y$12$MsFcvTAvcJCsAge6RxVo4.Rjmx9UfL3ULNbdHNS.eRjSIOZHVK4N6', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124033', 'puspasari.vivi', 'Halima', 'Lailasari', 'kawaya35@example.com', '$2y$12$cOjrn1YcWY5Chnlgjod5QeuLCneOTlI0u/sGxcuOHvgjYYNtZWgVe', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124034', 'wasis.megantara', 'Maya', 'Widiastuti', 'damanik.arsipatra@example.com', '$2y$12$qhIojrfpFzT4wZw7rNW2pO8S1IKcb2LNnt7lp5gBGVWRD/e7DRJuq', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124037', 'prakasa.bagya', 'Perkasa', 'Saragih', 'danuja.purwanti@example.com', '$2y$12$EksAF/kkaQlWzX3dY6YKZ.Tkj82QU2y0eF4oBKFGC1rKepEz.3Yfu', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124038', 'michelle.gunawan', 'Dirja', 'Nurdiyanti', 'genta53@example.net', '$2y$12$lvIbVwqkrBBGmeLCDUk5fOPb/PoeyijVuytcuQHj14iyxYjRg.e1q', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124040', 'karja93', 'Cahyadi', 'Rahimah', 'apadmasari@example.com', '$2y$12$JkGFzSS/4jxax1zFbsmjputgOeUKKfZuRrCI1n.h71xI5ezanhSey', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124042', 'wawan.wibisono', 'Dartono', 'Sudiati', 'hasan.waskita@example.org', '$2y$12$DqDAwtrJtjZgHy2dwcxTgu1bckYMq6o7nxTwZ1V0kV6mK2kduIdG.', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124043', 'ogunawan', 'Marwata', 'Kuswandari', 'karman.habibi@example.net', '$2y$12$zlaZ3DcOUp63hNPgqMbHPenLb9x0uJ6xAD8xTGP64P160XPqvbgim', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124050', 'zlailasari', 'Gadang', 'Tamba', 'namaga.vanya@example.com', '$2y$12$qrWzcdVwDh9LJSi6ek/OBuC8XOxR3/H6UBj6CxIG.iaBXVDK8/Aau', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124058', 'adriansyah.lala', 'Cakrabirawa', 'Dongoran', 'hlaksita@example.net', '$2y$12$vhpCmpKUwb40gnGvFdmQRegABsLpS/FSWDRfBoXfgm.OAHGU.fND2', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124061', 'tamba.rina', 'Wahyu', 'Damanik', 'yolanda.nabila@example.com', '$2y$12$M7D0iZjZrbE/eg29hYKfCeq046RKejMGU8MtzM2YriSwf/dNH7hyq', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124062', 'raditya67', 'Zalindra', 'Hariyah', 'ade.sirait@example.com', '$2y$12$JEK62auZwuwUPB9WQR/i/u/8EbTBferTky2GTtvxFCkxyttZ.dNI6', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124064', 'hesti12', 'Cemplunk', 'Nashiruddin', 'sari47@example.com', '$2y$12$OpwjCNbRQjWDO8US.j.gSO4ArBewS5W5LUN6qWkUp6smmliDgR9pK', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124066', 'padma02', 'Arta', 'Prasetyo', 'mwastuti@example.net', '$2y$12$UwUR85f1Dev0dN2KKjt3DeCClwdUUiz2xS9kUT3uyh/JjfQM02hoi', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124074', 'melani.nyana', 'Hasta', 'Utami', 'qhalim@example.com', '$2y$12$SUBJ40A8zxGPIhBU.2omte6otjz7N1lTXBkXcWzlYk60UWyO6OgSS', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124075', 'imam91', 'Cinthia', 'Uyainah', 'paramita.rahimah@example.net', '$2y$12$UEEX1AsLjDj/FFwCIWOPOOWxWr7lEZmuEUuuEYK10P3Zzb5vnwQeq', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124076', 'lhasanah', 'Ayu', 'Saefullah', 'prima45@example.com', '$2y$12$fR.EFTboGDvlCOwouBXFxOVDXWnUX5h8F2TiPAgnb2mjJY5HjJKEu', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124077', 'ciaobella.pudjiastuti', 'Lintang', 'Wulandari', 'sihombing.gatot@example.org', '$2y$12$Vx120vNmnLjZvGBHXxk0iuBoPhVdGrqxKSyAack71OfxqD.M.pzwy', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124079', 'yusuf.pangestu', 'Paramita', 'Suartini', 'cinta.permata@example.net', '$2y$12$Ixf03lcH690VUGvQ7ZzV0.q46WqD6FklpzzoSEINevwwcdFJPQQaC', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124081', 'mila.halim', 'Wulan', 'Wijayanti', 'rmustofa@example.net', '$2y$12$qOak9rg9B2bW4c74A9tEq.Nn8JNA.VG7VQDw1uEUy8OLS7WzHaQNS', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124083', 'lnatsir', 'Vera', 'Marbun', 'ymayasari@example.com', '$2y$12$fqg8eBNq3odEQX/2nGMWt.xnAb1N6c9jLGZxfM4HI8alBr5L9Ki9W', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124084', 'pprasasta', 'Gandi', 'Irawan', 'purnawati.asmuni@example.com', '$2y$12$d1QMg0syPmY5BBVQ6.mTOu2T1D/5HxzecQNwLVP/pxrkiDYNSAUte', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124087', 'purnawati.cengkir', 'Paiman', 'Situmorang', 'jriyanti@example.com', '$2y$12$ebvcU5AwiDdhFAz8jT4nle0Zm1uvPUHjE7Mnrj5pFLSApQfXsnlHO', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124088', 'mutia00', 'Nadia', 'Wulandari', 'agnes41@example.com', '$2y$12$oep.k0rpfOjaop8Psup.w.EkwCG1jV1qy6IUiFIdy81008gAjG1s2', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124089', 'vyuniar', 'Zulfa', 'Agustina', 'okta09@example.com', '$2y$12$4MZOBGofuw6UkQjHXkILh.sZqB8DRQaIEtQxdhS7lwJ098gAuT4Xy', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124090', 'yunita.usada', 'Restu', 'Prastuti', 'pardianto@example.com', '$2y$12$G5D4IazYtVeE0refu9.bSeF6t75lRjiGY35FD3QZ6rSURMXdPjuUu', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124092', 'calista.namaga', 'Talia', 'Suryono', 'dnuraini@example.net', '$2y$12$c3eyzqyf8rZ2tFcNrhOrRuqy.6A.qP2ENoe.fiFx.LdHe5wKXSlFu', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124094', 'firgantoro.rangga', 'Mariadi', 'Laksmiwati', 'artanto96@example.org', '$2y$12$jWkpU2Aj0gjeH5QNgWJPg.MC6w//iD8sIhtUH8hoGbTZ16a4aHNrK', '2026-04-01 04:11:52', '2026-04-01 04:11:52'),
	('5520124097', 'marbun.okta', 'Unjani', 'Jailani', 'jwibisono@example.net', '$2y$12$67KcjHv8QlFuFrjfX15tBenPwHuu.pln8iWeQUGfY0k9Gyu64xS2K', '2026-04-01 04:11:53', '2026-04-01 04:11:53'),
	('5520124098', 'bakidin.nugroho', 'Makuta', 'Yulianti', 'dpuspasari@example.org', '$2y$12$BtJM9FCfd9t6y9HY/5DyYu6xOQJ/SgiCOxHWFrq.zpby4rOSdjpEy', '2026-04-01 04:11:52', '2026-04-01 04:11:52');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
