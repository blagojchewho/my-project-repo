-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2019 at 04:52 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blagojce_pr`
--

-- --------------------------------------------------------

--
-- Table structure for table `vodostoi_mnm`
--

DROP TABLE IF EXISTS `vodostoi_mnm`;
CREATE TABLE IF NOT EXISTS `vodostoi_mnm` (
  `id` int(11) NOT NULL,
  `Stanica` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data` date NOT NULL,
  `Merenje` decimal(11,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vodostoi_mnm`
--

INSERT INTO `vodostoi_mnm` (`id`, `Stanica`, `Data`, `Merenje`) VALUES
(1, 'Н.ДОЈРАН- Ез. Дојран \"O\" кота 144.93 мнм', '2019-02-05', '147.16'),
(2, 'НАКОЛЕЦ- Ез.Преспа \"O\" кота 847.60 мнм', '2019-02-05', '843.82'),
(3, 'ОХРИД- Ез.Охрид \"O\" кота 693.17 мнм', '2019-02-05', '693.30'),
(4, 'Н.ДОЈРАН- Ез. Дојран \"O\" кота 144.93 мнм', '2019-02-06', '147.16'),
(5, 'НАКОЛЕЦ- Ез.Преспа \"O\" кота 847.60 мнм', '2019-02-06', '843.83'),
(6, 'ОХРИД- Ез.Охрид \"O\" кота 693.17 мнм', '2019-02-06', '693.29'),
(7, 'Н.ДОЈРАН- Ез. Дојран \"O\" кота 144.93 мнм', '2019-02-07', '147.17'),
(8, 'НАКОЛЕЦ- Ез.Преспа \"O\" кота 847.60 мнм', '2019-02-07', '843.83'),
(9, 'ОХРИД- Ез.Охрид \"O\" кота 693.17 мнм', '2019-02-07', '693.29'),
(10, 'Н.ДОЈРАН- Ез. Дојран \"O\" кота 144.93 мнм', '2019-02-08', '147.17'),
(11, 'НАКОЛЕЦ- Ез.Преспа \"O\" кота 847.60 мнм', '2019-02-08', '843.83'),
(12, 'ОХРИД- Ез.Охрид \"O\" кота 693.17 мнм', '2019-02-08', '693.29'),
(13, 'Н.ДОЈРАН- Ез. Дојран \"O\" кота 144.93 мнм', '2019-02-09', '147.17'),
(14, 'НАКОЛЕЦ- Ез.Преспа \"O\" кота 847.60 мнм', '2019-02-09', '843.83'),
(15, 'ОХРИД- Ез.Охрид \"O\" кота 693.17 мнм', '2019-02-09', '693.28'),
(16, 'Н.ДОЈРАН- Ез. Дојран \"O\" кота 144.93 мнм', '2019-02-10', '147.17'),
(17, 'НАКОЛЕЦ- Ез.Преспа \"O\" кота 847.60 мнм', '2019-02-10', '843.82'),
(18, 'ОХРИД- Ез.Охрид \"O\" кота 693.17 мнм', '2019-02-10', '693.28'),
(19, 'Н.ДОЈРАН- Ез. Дојран \"O\" кота 144.93 мнм', '2019-02-11', '147.17'),
(20, 'НАКОЛЕЦ- Ез.Преспа \"O\" кота 847.60 мнм', '2019-02-11', '843.82'),
(21, 'ОХРИД- Ез.Охрид \"O\" кота 693.17 мнм', '2019-02-11', '693.28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
