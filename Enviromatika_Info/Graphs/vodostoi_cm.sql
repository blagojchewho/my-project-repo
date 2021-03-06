-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2019 at 01:18 PM
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
-- Table structure for table `vodostoi_cm`
--

DROP TABLE IF EXISTS `vodostoi_cm`;
CREATE TABLE IF NOT EXISTS `vodostoi_cm` (
  `id` int(11) NOT NULL,
  `Stanica` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data` date NOT NULL,
  `Merenje` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vodostoi_cm`
--

INSERT INTO `vodostoi_cm` (`id`, `Stanica`, `Data`, `Merenje`) VALUES
(1, 'ЈАГУНОВЦЕ- Вардар', '2019-02-05', 68),
(2, 'СКОПЈЕ ЖМ - Вардар', '2019-02-05', 101),
(3, 'ВЕЛЕС- Вардар', '2019-02-05', 95),
(4, 'Д.КАПИЈА- Вардар', '2019-02-05', 160),
(5, 'МАК.БРОД- Треска', '2019-02-05', 25),
(6, 'КАТ.БАЊА- Пчиња', '2019-02-05', 122),
(7, 'К.ПАЛАНКА- К.Река', '2019-02-05', 26),
(8, 'БЕРОВО- Брегалница', '2019-02-05', 58),
(9, 'ШТИП- Брегалница', '2019-02-05', 108),
(10, 'СУШЕВО- Струмица', '2019-02-05', 100),
(11, 'НОВАЦИ- Црна Река', '2019-02-05', 120),
(12, 'ЛОЖАНИ- Црн Дрим', '2019-02-05', 122),
(13, 'БОТУН- Сатеска', '2019-02-05', 4),
(14, 'Б.МОСТ- Радика', '2019-02-05', 61),
(15, '0', '2019-02-06', 0),
(16, 'ЈАГУНОВЦЕ- Вардар', '2019-02-06', 60),
(17, 'СКОПЈЕ ЖМ - Вардар', '2019-02-06', 93),
(18, 'ВЕЛЕС- Вардар', '2019-02-06', NULL),
(19, 'Д.КАПИЈА- Вардар', '2019-02-06', 166),
(20, 'МАК.БРОД- Треска', '2019-02-06', 27),
(21, 'КАТ.БАЊА- Пчиња', '2019-02-06', 111),
(22, 'К.ПАЛАНКА- К.Река', '2019-02-06', 25),
(23, 'БЕРОВО- Брегалница', '2019-02-06', 52),
(24, 'ШТИП- Брегалница', '2019-02-06', 106),
(25, 'СУШЕВО- Струмица', '2019-02-06', 99),
(26, 'НОВАЦИ- Црна Река', '2019-02-06', 124),
(27, 'ЛОЖАНИ- Црн Дрим', '2019-02-06', 121),
(28, 'БОТУН- Сатеска', '2019-02-06', 4),
(29, 'Б.МОСТ- Радика', '2019-02-06', 62),
(27, 'ЈАГУНОВЦЕ- Вардар', '2019-02-07', 80),
(28, 'СКОПЈЕ ЖМ - Вардар', '2019-02-07', 97),
(29, 'ВЕЛЕС- Вардар', '2019-02-07', 85),
(30, 'Д.КАПИЈА- Вардар', '2019-02-07', 158),
(31, 'МАК.БРОД- Треска', '2019-02-07', 29),
(32, 'КАТ.БАЊА- Пчиња', '2019-02-07', 108),
(33, 'К.ПАЛАНКА- К.Река', '2019-02-07', 25),
(34, 'БЕРОВО- Брегалница', '2019-02-07', 48),
(35, 'ШТИП- Брегалница', '2019-02-07', 100),
(36, 'СУШЕВО- Струмица', '2019-02-07', 99),
(37, 'НОВАЦИ- Црна Река', '2019-02-07', 128),
(38, 'ЛОЖАНИ- Црн Дрим', '2019-02-07', 120),
(39, 'БОТУН- Сатеска', '2019-02-07', 2),
(40, 'Б.МОСТ- Радика', '2019-02-07', 60),
(41, 'ЈАГУНОВЦЕ- Вардар', '2019-02-08', 70),
(42, 'СКОПЈЕ ЖМ - Вардар', '2019-02-08', 95),
(43, 'ВЕЛЕС- Вардар', '2019-02-08', 90),
(44, 'Д.КАПИЈА- Вардар', '2019-02-08', 152),
(45, 'МАК.БРОД- Треска', '2019-02-08', 29),
(46, 'КАТ.БАЊА- Пчиња', '2019-02-08', 106),
(47, 'К.ПАЛАНКА- К.Река', '2019-02-08', 20),
(48, 'БЕРОВО- Брегалница', '2019-02-08', 48),
(49, 'ШТИП- Брегалница', '2019-02-08', 95),
(50, 'СУШЕВО- Струмица', '2019-02-08', 97),
(51, 'НОВАЦИ- Црна Река', '2019-02-08', 114),
(52, 'ЛОЖАНИ- Црн Дрим', '2019-02-08', 119),
(53, 'БОТУН- Сатеска', '2019-02-08', 0),
(54, 'Б.МОСТ- Радика', '2019-02-08', 57),
(55, 'ЈАГУНОВЦЕ- Вардар', '2019-02-09', 60),
(56, 'СКОПЈЕ ЖМ - Вардар', '2019-02-09', 93),
(55, 'ЈАГУНОВЦЕ- Вардар', '2019-02-09', 60),
(56, 'СКОПЈЕ ЖМ - Вардар', '2019-02-09', 93),
(57, 'ВЕЛЕС- Вардар', '2019-02-09', NULL),
(58, 'Д.КАПИЈА- Вардар', '2019-02-09', 166),
(59, 'МАК.БРОД- Треска', '2019-02-09', 27),
(60, 'КАТ.БАЊА- Пчиња', '2019-02-09', 111),
(62, 'К.ПАЛАНКА- К.Река', '2019-02-09', 25),
(63, 'БЕРОВО- Брегалница', '2019-02-09', 52),
(64, 'ШТИП- Брегалница', '2019-02-09', 106),
(65, 'СУШЕВО- Струмица', '2019-02-09', 99),
(66, 'НОВАЦИ- Црна Река', '2019-02-09', 124),
(67, 'ЛОЖАНИ- Црн Дрим', '2019-02-09', 117),
(68, 'БОТУН- Сатеска', '2019-02-09', -2),
(69, 'Б.МОСТ- Радика', '2019-02-09', 55),
(70, 'ЈАГУНОВЦЕ- Вардар', '2019-02-10', 80),
(71, 'СКОПЈЕ ЖМ - Вардар', '2019-02-10', 89),
(72, 'ВЕЛЕС- Вардар', '2019-02-10', 90),
(73, 'Д.КАПИЈА- Вардар', '2019-02-10', 152),
(74, 'МАК.БРОД- Треска', '2019-02-10', 28),
(75, 'КАТ.БАЊА- Пчиња', '2019-02-10', 97),
(76, 'К.ПАЛАНКА- К.Река', '2019-02-10', 19),
(77, 'БЕРОВО- Брегалница', '2019-02-10', 46),
(78, 'ШТИП- Брегалница', '2019-02-10', 88),
(79, 'СУШЕВО- Струмица', '2019-02-10', 94),
(80, 'НОВАЦИ- Црна Река', '2019-02-10', 108),
(81, 'ЛОЖАНИ- Црн Дрим', '2019-02-10', 116),
(82, 'БОТУН- Сатеска', '2019-02-10', -3),
(83, 'Б.МОСТ- Радика', '2019-02-10', 54),
(84, 'ЈАГУНОВЦЕ- Вардар', '2019-02-11', 66),
(85, 'СКОПЈЕ ЖМ - Вардар', '2019-02-11', 96),
(86, 'ВЕЛЕС- Вардар', '2019-02-11', 90),
(87, 'Д.КАПИЈА- Вардар', '2019-02-11', 144),
(88, 'МАК.БРОД- Треска', '2019-02-11', 27),
(89, 'КАТ.БАЊА- Пчиња', '2019-02-11', 95),
(90, 'К.ПАЛАНКА- К.Река', '2019-02-11', 18),
(91, 'БЕРОВО- Брегалница', '2019-02-11', 44),
(92, 'ШТИП- Брегалница', '2019-02-11', 86),
(93, 'СУШЕВО- Струмица', '2019-02-11', 92),
(94, 'НОВАЦИ- Црна Река', '2019-02-11', 104),
(95, 'ЛОЖАНИ- Црн Дрим', '2019-02-11', 138),
(96, 'БОТУН- Сатеска', '2019-02-11', -4),
(97, 'Б.МОСТ- Радика', '2019-02-11', 54);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
