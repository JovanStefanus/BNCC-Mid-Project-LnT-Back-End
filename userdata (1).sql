-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2025 at 02:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jovanmidprojectbackend`
--

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `UserID` varchar(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`UserID`, `Username`, `Password`) VALUES
('2802411612', 'Anastasia Mei', 'AM123456'),
('2802411613', 'Emily Johnson', 'EJ123456'),
('2802411614', 'Pierre Dubois', 'PD123456'),
('2802411615', 'Ivan Petrov', 'IR123456'),
('2802411616', 'Rajesh Sharma', 'RS123456'),
('2802411617', 'Thiago Oliveira', 'TO123456'),
('2802411618', 'Claire Fontaine', 'CF123456'),
('2802411619', 'Isabella Ricci', 'IR123456'),
('2802411620', 'Anna Schmidt', 'AS123456'),
('2802411621', 'Marco Romano', 'MR123456'),
('2802411622', 'Hans Muller', 'HM123456'),
('2802411623', 'Takashi Yamamoto', 'TY123456'),
('2802411624', 'James Anderson', 'JA123456'),
('2802411625', 'Jane Doe', 'JD123456'),
('2802411626', 'Jovan Stefanus', 'JS123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
