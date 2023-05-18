-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 01:39 PM
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
-- Database: `aptech`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `rec_proc` ()   BEGIN 
UPDATE record SET salary = salary + 5000 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `rec_pro_1` (`e_id` INT, `e_salary` INT)   BEGIN 
UPDATE record SET salary = salary + e_salary WHERE id = 2 ;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `s_name` varchar(200) DEFAULT NULL,
  `user_email` varchar(200) DEFAULT NULL,
  `salary` int(30) DEFAULT NULL,
  `sub` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`s_name`, `user_email`, `salary`, `sub`) VALUES
('asad', 'asad@gmail.com', 20000, NULL),
('anas', 'anas@gmail.com', 30000, NULL),
('abdul samad', 'asamad@gmail.com', 40000, NULL),
('Dayyan', 'dayyan@gmail.com', 35000, NULL),
(NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `age` int(11) DEFAULT 0,
  `gender` enum('male','female') DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `first_name`, `last_name`, `age`, `gender`, `date_of_birth`, `department`, `salary`) VALUES
(1, 'Kamran', 'tasoori', 39, 'male', '2010-09-20', 'HR', 70000),
(2, 'suleman', 'sheikh', 23, 'male', '1988-12-28', 'HR', 38000),
(3, 'rafay', 'kamran', 11, 'male', '0000-00-00', 'faculty', 45000),
(4, 'samra', 'saleem', 11, 'female', '2009-03-06', 'faculty', 45000),
(5, 'noor-ul-ain', 'zain', 11, 'female', '2019-03-05', 'faculty', 45000),
(6, 'subhan', 'shakoor', 18, 'male', '2002-06-06', 'IT', 75000),
(7, 'zohra', 'zulfiqar', 45, 'female', '1885-02-26', 'HR', 65000),
(8, 'asad', 'yaqoob', 19, 'male', '2003-11-15', 'IT', 85000);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL DEFAULT 'karachi',
  `gender` enum('male','female') DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `dept` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `city`, `gender`, `salary`, `dept`) VALUES
(1, 'asad', 'asad123@gmail.com', 'karachi', 'male', 70000, 'HR'),
(2, 'abdulsamad', 'asamad123@gmail.com', 'lahore', 'male', 40000, 'HR'),
(3, 'anas', 'anasd123@gmail.com', 'islambad', 'male', 90000, 'faculty'),
(4, 'faisal', 'faisal123@gmail.com', 'peshawar', 'male', 50000, 'faculty'),
(5, 'rehman', 'rehman123@gmail.com', 'kpk', 'male', 60000, 'HR'),
(8, 'khanbaba', 'khan@34gmail.com', 'karachi', 'male', 30000, 'Faculty'),
(9, 'ruksana', 'ruk@42gmail.com', 'karachi', 'female', 25000, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(100) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) DEFAULT 'karachi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `std_name`, `email`, `city`) VALUES
(1, 'asad', 'asadmuhammad@gmail.com', 'karachi'),
(3, 'anas', 'anas@gmail.com', 'karachi'),
(4, 'meerab', 'meerab@gmail.com', 'karachi'),
(5, 'shabaz', 'shabaz@gmail.com', 'karachi'),
(6, 'faisal', 'faisal@gmail.com', 'karachi'),
(7, 'azeem', 'azeem@gmail.com', ' '),
(8, 'ujala', 'ujala@gmail.com', 'karachi');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `subject`) VALUES
(1, 'MATH'),
(2, 'PHYSICS'),
(3, 'COMPUTER'),
(4, 'ENGLISH'),
(5, 'URDU'),
(6, 'ISLAMIAT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD KEY `sub` (`sub`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`sub`) REFERENCES `subject` (`sub_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
