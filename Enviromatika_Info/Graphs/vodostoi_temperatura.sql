-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2019 at 05:46 PM
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
-- Table structure for table `vodostoi_temperatura`
--

DROP TABLE IF EXISTS `vodostoi_temperatura`;
CREATE TABLE IF NOT EXISTS `vodostoi_temperatura` (
  `id` int(11) NOT NULL,
  `Stanica` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data` date NOT NULL,
  `Merenje` decimal(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vodostoi_temperatura`
--

INSERT INTO `vodostoi_temperatura` (`id`, `Stanica`, `Data`, `Merenje`) VALUES
(1, 'Н.ДОЈРАН- Ез. Дојран', '2019-02-05', '5.0'),
(2, 'НАКОЛЕЦ- Ез.Преспа', '2019-02-05', '5.0'),
(3, 'ОХРИД- Ез.Охрид', '2019-02-05', '7.5'),
(4, 'Н.ДОЈРАН- Ез. Дојран', '2019-02-06', '5.2'),
(5, 'НАКОЛЕЦ- Ез.Преспа', '2019-02-06', '4.5'),
(6, 'ОХРИД- Ез.Охрид', '2019-02-06', '7.0'),
(7, 'Н.ДОЈРАН- Ез. Дојран', '2019-02-07', '5.2'),
(8, 'НАКОЛЕЦ- Ез.Преспа', '2019-02-07', '4.5'),
(9, 'ОХРИД- Ез.Охрид', '2019-02-07', '7.0'),
(10, 'Н.ДОЈРАН- Ез. Дојран', '2019-02-08', '5.5'),
(11, 'НАКОЛЕЦ- Ез.Преспа', '2019-02-08', '4.0'),
(12, 'ОХРИД- Ез.Охрид', '2019-02-08', '7.0'),
(13, 'Н.ДОЈРАН- Ез. Дојран', '2019-02-09', '5.5'),
(14, 'НАКОЛЕЦ- Ез.Преспа', '2019-02-09', '4.5'),
(15, 'ОХРИД- Ез.Охрид', '2019-02-09', '7.5'),
(16, 'Н.ДОЈРАН- Ез. Дојран', '2019-02-10', '5.8'),
(17, 'НАКОЛЕЦ- Ез.Преспа', '2019-02-10', '5.0'),
(18, 'ОХРИД- Ез.Охрид', '2019-02-10', '7.5'),
(19, 'Н.ДОЈРАН- Ез. Дојран', '2019-02-11', '6.0'),
(20, 'НАКОЛЕЦ- Ез.Преспа', '2019-02-11', '5.0'),
(21, 'ОХРИД- Ез.Охрид', '2019-02-11', '7.5');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
