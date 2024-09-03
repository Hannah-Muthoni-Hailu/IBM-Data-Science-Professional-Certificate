-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: labs-mysql-icy-ancient-jelly:3306
-- Generation Time: Sep 03, 2024 at 06:49 AM
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
-- Database: `CVD`
--

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_DEPARTMENTS`
--

CREATE TABLE `MEDICAL_DEPARTMENTS` (
  `DEPT_ID` char(9) NOT NULL,
  `DEPT_NAME` varchar(50) DEFAULT NULL,
  `MANAGER_ID` char(9) DEFAULT NULL,
  `LOCATION_ID` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `MEDICAL_DEPARTMENTS`
--

INSERT INTO `MEDICAL_DEPARTMENTS` (`DEPT_ID`, `DEPT_NAME`, `MANAGER_ID`, `LOCATION_ID`) VALUES
('D001', 'Cardiology', NULL, 'L001'),
('D002', 'Internal Medicine', NULL, 'L002'),
('D003', 'Cardiothoracic Surgery', NULL, 'L001'),
('D004', 'Electrophysiology', NULL, 'L002');

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_HISTORY`
--

CREATE TABLE `MEDICAL_HISTORY` (
  `MEDICAL_HISTORY_ID` char(9) NOT NULL,
  `PATIENT_ID` char(9) NOT NULL,
  `DIAGNOSIS_DATE` date DEFAULT NULL,
  `DIAGNOSIS_CODE` varchar(10) DEFAULT NULL,
  `MEDICAL_CONDITION` varchar(100) DEFAULT NULL,
  `DEPT_ID` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `MEDICAL_HISTORY`
--

INSERT INTO `MEDICAL_HISTORY` (`MEDICAL_HISTORY_ID`, `PATIENT_ID`, `DIAGNOSIS_DATE`, `DIAGNOSIS_CODE`, `MEDICAL_CONDITION`, `DEPT_ID`) VALUES
('MH001', 'P001', '2022-12-10', 'I20.0', 'Coronary Artery Disease', 'D001'),
('MH002', 'P001', '2023-07-30', 'I25.10', 'Hypertensive Heart Disease', 'D002'),
('MH003', 'P002', '2023-08-01', 'I25.10', 'Hypertensive Heart Disease', 'D002'),
('MH004', 'P003', '2023-08-01', 'I20.9', 'Unstable Angina', 'D003'),
('MH005', 'P004', '2023-08-01', 'I25.5', 'Ischemic Cardiomyopathy', 'D004'),
('MH006', 'P005', '2023-08-02', 'I50.9', 'HeartFailure, Unspecified', 'D003');

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_LOCATIONS`
--

CREATE TABLE `MEDICAL_LOCATIONS` (
  `LOCATION_ID` char(9) NOT NULL,
  `DEPT_ID` char(9) NOT NULL,
  `LOCATION_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `MEDICAL_LOCATIONS`
--

INSERT INTO `MEDICAL_LOCATIONS` (`LOCATION_ID`, `DEPT_ID`, `LOCATION_NAME`) VALUES
('L001', 'D001', 'City Hospital'),
('L002', 'D002', 'Medical Center');

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_PROCEDURES`
--

CREATE TABLE `MEDICAL_PROCEDURES` (
  `PROCEDURE_ID` char(9) NOT NULL,
  `PROCEDURE_NAME` varchar(30) DEFAULT NULL,
  `PROCEDURE_DATE` date DEFAULT NULL,
  `PATIENT_ID` char(9) NOT NULL,
  `DEPT_ID` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `MEDICAL_PROCEDURES`
--

INSERT INTO `MEDICAL_PROCEDURES` (`PROCEDURE_ID`, `PROCEDURE_NAME`, `PROCEDURE_DATE`, `PATIENT_ID`, `DEPT_ID`) VALUES
('PR001', 'Angioplasty', '2023-07-30', 'P001', 'D002'),
('PR002', 'Cardiac Catheterization', '2023-08-01', 'P002', 'D002'),
('PR003', 'Electrocardiogram', '2023-08-02', 'P003', 'D003'),
('PR004', 'Echocardiogram', '2023-08-03', 'P004', 'D004'),
('PR005', 'Stress Test', '2023-08-03', 'P005', 'D003'),
('PR006', 'Coronary Angiogram', '2023-08-04', 'P003', 'D003'),
('PR007', 'Pacemaker Implantation', '2023-08-04', 'P005', 'D003');

-- --------------------------------------------------------

--
-- Table structure for table `PATIENTS`
--

CREATE TABLE `PATIENTS` (
  `PATIENT_ID` char(9) NOT NULL,
  `FIRST_NAME` varchar(15) NOT NULL,
  `LAST_NAME` varchar(15) NOT NULL,
  `SSN` char(9) DEFAULT NULL,
  `BIRTH_DATE` date DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `DEPT_ID` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PATIENTS`
--

INSERT INTO `PATIENTS` (`PATIENT_ID`, `FIRST_NAME`, `LAST_NAME`, `SSN`, `BIRTH_DATE`, `SEX`, `ADDRESS`, `DEPT_ID`) VALUES
('P001', 'John', 'Doe', '123456789', '1990-05-15', 'M', '123 Main St', 'D001'),
('P002', 'Jane', 'Smith', '987654321', '1985-10-20', 'F', '456 Oak Ave', 'D002'),
('P003', 'Michael', 'Johnson', '111222333', '1975-03-12', 'M', '789 Elm St', 'D003'),
('P004', 'Emily', 'Brown', '444555666', '1980-09-25', 'F', '321 Pine Rd', 'D004'),
('P005', 'William', 'Miller', '777888999', '1992-11-18', 'M', '567 Maple Ave', 'D003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MEDICAL_DEPARTMENTS`
--
ALTER TABLE `MEDICAL_DEPARTMENTS`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `MEDICAL_HISTORY`
--
ALTER TABLE `MEDICAL_HISTORY`
  ADD PRIMARY KEY (`MEDICAL_HISTORY_ID`);

--
-- Indexes for table `MEDICAL_LOCATIONS`
--
ALTER TABLE `MEDICAL_LOCATIONS`
  ADD PRIMARY KEY (`LOCATION_ID`,`DEPT_ID`);

--
-- Indexes for table `MEDICAL_PROCEDURES`
--
ALTER TABLE `MEDICAL_PROCEDURES`
  ADD PRIMARY KEY (`PROCEDURE_ID`);

--
-- Indexes for table `PATIENTS`
--
ALTER TABLE `PATIENTS`
  ADD PRIMARY KEY (`PATIENT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
