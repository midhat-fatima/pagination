-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 02:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `pagination`
--

CREATE TABLE `pagination` (
  `ID` int(11) NOT NULL,
  `username` varchar(191) NOT NULL,
  `age` int(11) NOT NULL,
  `country` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pagination`
--

INSERT INTO `pagination` (`ID`, `username`, `age`, `country`) VALUES
(1, 'midhat', 20, 'canada'),
(2, 'batool', 28, 'UK'),
(3, 'fatima', 27, 'germany'),
(4, 'zehra', 29, 'itlay'),
(5, 'aiman', 21, 'turkey'),
(6, 'alisha', 22, 'pakistan'),
(7, 'khatija', 23, 'pakistan'),
(8, 'muskan', 24, 'UK'),
(9, 'sana', 25, 'turkey'),
(10, 'sara', 26, 'canada'),
(11, 'hira', 31, 'pakistan'),
(12, 'hina', 30, 'UK'),
(13, 'hani', 32, 'Nepal'),
(14, 'kokab', 33, 'pakistan'),
(15, 'seher', 35, 'New Zealand'),
(16, 'narjis', 34, 'canada'),
(17, 'areeba', 36, 'Nepal'),
(18, 'shiza', 39, 'New Zealand'),
(19, 'maira', 37, 'Japan'),
(20, 'maria', 38, 'Mexico'),
(21, 'javeria', 40, 'Netherlands'),
(22, 'rubab', 31, 'Mexico'),
(23, 'zeenat', 20, 'Japan'),
(24, 'rukhsana', 40, 'Netherlands'),
(25, 'fariha', 30, 'Egypt'),
(26, 'farheen', 21, 'Iraq'),
(27, 'faiza', 25, 'Colombia'),
(28, 'fizza', 35, 'Denmark'),
(29, 'kulsom', 18, 'Iraq'),
(30, 'zainab', 17, 'Egypt'),
(31, 'nafisa', 29, 'Colombia'),
(32, 'shabana', 28, 'Denmark'),
(33, 'farzana', 17, 'Belgium'),
(34, 'ambareen', 26, 'china'),
(35, 'husna', 33, 'Algeria'),
(36, 'erum', 22, 'Afghanistan'),
(37, 'yumna', 19, 'Belgium'),
(38, 'mahjabeen', 29, 'china'),
(39, 'madiha', 39, 'Afghanistan'),
(40, 'saman', 37, 'Algeria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pagination`
--
ALTER TABLE `pagination`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pagination`
--
ALTER TABLE `pagination`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
