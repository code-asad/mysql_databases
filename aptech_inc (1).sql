-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 01:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aptech_inc`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `city` varchar(50) NOT NULL,
  `sale` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `city`, `sale`) VALUES
(1, 'aptechsfc', 'karachi', 12000),
(2, 'aptechmgc', 'karachi', 5000),
(3, 'aptechrani', 'hyderabad', 7000),
(4, 'aptechkmc', 'hyderabad', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `name` varchar(400) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `salary` int(40) DEFAULT NULL,
  `id` int(10) NOT NULL,
  `sub` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`name`, `email`, `salary`, `id`, `sub`) VALUES
('fariha', 'ali@gmail.com', 50000, 1, 1),
('huzaifa', 'h12@gmail.com', 60000, 2, 2),
('aqsa', 'aqsagmail.com', 55000, 3, 3),
('rafiya', 'rafiya@gmail.com', 67000, 4, 4),
('sana', 'sanaa@gmail.com', 67000, 5, 5),
('saman', 'saman@gmail.com', 60000, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `Std_name` varchar(300) NOT NULL,
  `email` varchar(300) DEFAULT NULL,
  `city` varchar(200) DEFAULT 'karachi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `Std_name`, `email`, `city`) VALUES
(1, 'Ali', 'ali@gmail.com', 'karachi'),
(3, 'Huzaifa', 'Huzaifa@gmail.com', 'karachi'),
(4, 'aqsa', 'aqsa@gmail.com', 'karachi'),
(5, 'sana', 'san@gmail.com', 'karachi'),
(6, 'Meerab', 'meerab@gmail.com', 'karachi'),
(7, 'Laraib', 'Laraib', 'karachi');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_id` int(10) NOT NULL,
  `subjects` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `subjects`) VALUES
(1, 'physics'),
(2, 'chemistry'),
(3, 'maths'),
(4, 'emglish'),
(5, 'urdu'),
(6, 'islamiat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `sub` (`sub`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `sub_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`sub`) REFERENCES `subjects` (`sub_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
