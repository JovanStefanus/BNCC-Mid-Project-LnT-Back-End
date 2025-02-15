-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2025 at 03:44 PM
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
-- Table structure for table `bookdata`
--

CREATE TABLE `bookdata` (
  `Book_ID` varchar(20) NOT NULL,
  `Book_Name` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Publisher` varchar(50) NOT NULL,
  `Number_Of_Page` varchar(10000) NOT NULL,
  `User_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookdata`
--

INSERT INTO `bookdata` (`Book_ID`, `Book_Name`, `Author`, `Publisher`, `Number_Of_Page`, `User_ID`) VALUES
('12345678', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons', '180', '2802411612'),
('12345679', 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', '281', '2802411613'),
('12345680', 'Harry Potter and the Sorcerer’s Stone', 'J.K. Rowling', 'Bloomsbury (UK) / Scholastic (US)', '309', '2802411614'),
('12345681', 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', '310', '2802411615'),
('12345682', 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '214', '2802411616'),
('12345683', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Harper', '443', '2802411617'),
('12345684', 'The Power Of Habit', 'Charless Duhigg', 'Random House', '371', '2802411618'),
('12345685', 'Atomic Habits', 'James Clear', 'Avery', '320', '2802411619'),
('12345686', 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Farrar, Straus and Giroux', '499', '2802411620'),
('12345687', 'The 7 Habits of Highly Effective People', 'Stephen R. Covey', 'Free Press', '381', '2802411621'),
('12345688', '1984 Years', 'George Orwell', 'Secker & Warburg', '328', '2802411622'),
('12345689', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton', '279', '2802411623'),
('12345690', 'The Alchemist', 'Paulo Coelho', 'HarperCollins', '208', '2802411624'),
('12345691', 'A Brief History of Time', 'Stephen Hawking', 'Bantam Books', '256', '2802411625'),
('12345692', 'Rich Dad Poor Dad', 'Robert T. Kiyosaki', 'Warner Books', '336', '2802411626');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookdata`
--
ALTER TABLE `bookdata`
  ADD PRIMARY KEY (`Book_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
