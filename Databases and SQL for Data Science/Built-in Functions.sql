-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: labs-mysql-echoing-uneven-midnight:3306
-- Generation Time: Sep 04, 2024 at 06:28 AM
-- Server version: 8.0.37
-- PHP Version: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Mysql_Learners`
--
CREATE DATABASE IF NOT EXISTS `Mysql_Learners` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `Mysql_Learners`;

-- --------------------------------------------------------

--
-- Table structure for table `PETRESCUE`
--

CREATE TABLE `PETRESCUE` (
  `ID` int NOT NULL,
  `ANIMAL` varchar(20) DEFAULT NULL,
  `QUANTITY` int DEFAULT NULL,
  `COST` decimal(6,2) DEFAULT NULL,
  `RESCUEDATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PETRESCUE`
--

INSERT INTO `PETRESCUE` (`ID`, `ANIMAL`, `QUANTITY`, `COST`, `RESCUEDATE`) VALUES
(1, 'Cat', 9, 450.09, '2018-05-29'),
(2, 'Dog', 3, 666.66, '2018-06-01'),
(3, 'Dog', 1, 100.00, '2018-06-04'),
(4, 'Parrot', 2, 50.00, '2018-06-04'),
(5, 'Dog', 1, 75.75, '2018-06-10'),
(6, 'Hamster', 6, 60.60, '2018-06-11'),
(7, 'Cat', 1, 44.44, '2018-06-11'),
(8, 'Goldfish', 24, 48.48, '2018-06-14'),
(9, 'Dog', 2, 222.22, '2018-06-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PETRESCUE`
--
ALTER TABLE `PETRESCUE`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
