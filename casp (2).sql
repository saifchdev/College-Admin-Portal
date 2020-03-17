-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 10:06 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casp`
--

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `req_id` int(11) NOT NULL,
  `rollno` varchar(10) COLLATE utf16_bin NOT NULL,
  `accounts` varchar(1) COLLATE utf16_bin NOT NULL DEFAULT '0',
  `department` varchar(1) COLLATE utf16_bin NOT NULL DEFAULT '0',
  `library` varchar(1) COLLATE utf16_bin NOT NULL DEFAULT 'o',
  `examcell` int(11) NOT NULL DEFAULT '0',
  `email` text COLLATE utf16_bin NOT NULL,
  `contact` varchar(10) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`req_id`, `rollno`, `accounts`, `department`, `library`, `examcell`, `email`, `contact`) VALUES
(1, '12co27', '1', '0', 'o', 0, 'saifchogle2@gmail.com', '9769361836'),
(2, '18dco01', '0', '0', 'o', 0, 'zishantofa143@gmail.com', '986575465');

-- --------------------------------------------------------

--
-- Table structure for table `req_details`
--

CREATE TABLE `req_details` (
  `req_id` int(11) NOT NULL,
  `accounts_status` longtext COLLATE utf16_bin NOT NULL,
  `department_status` longtext COLLATE utf16_bin NOT NULL,
  `library_status` longtext COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `f_name` varchar(30) COLLATE utf16_bin NOT NULL,
  `l_name` varchar(30) COLLATE utf16_bin NOT NULL,
  `rollno` varchar(20) COLLATE utf16_bin NOT NULL,
  `gender` varchar(10) COLLATE utf16_bin NOT NULL,
  `email` varchar(30) COLLATE utf16_bin NOT NULL,
  `phone` bigint(10) NOT NULL,
  `password` varchar(50) COLLATE utf16_bin NOT NULL,
  `dob` varchar(30) COLLATE utf16_bin NOT NULL,
  `approval` varchar(10) COLLATE utf16_bin NOT NULL DEFAULT 'no',
  `gcode` int(10) NOT NULL DEFAULT '4'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`f_name`, `l_name`, `rollno`, `gender`, `email`, `phone`, `password`, `dob`, `approval`, `gcode`) VALUES
('saif', 'chogle', '12co27', 'male', 'saifchogle@gmail.com', 9769361836, '921848f314e08d5dcd2040ab630b07ab', '2020-03-12', 'no', 4),
(' maaz', '', '18dco01', '', '', 0, 'e091a899040c296f919c565b704f056f', '', 'no', 4),
('maaz', 'lambe', '18dco09', 'male', 'lambemaaz70@gmail.com', 9769351836, 'maaz123', '2020-03-26', 'no', 4),
('Sajjad', 'khalfe', '18dco15', 'male', 'sajjadkhalfe7@gmail.com', 8275890868, 'Sajjad7@sk', '1998-06-17', 'no', 4),
('Ashraf', 'Sonde', '54', 'male', 'ashrafsonde@gmail.com', 987654321, '0987654321', '2020-03-11', 'no', 4),
('', '', 'accounts', '', '', 0, '921848f314e08d5dcd2040ab630b07ab', '', 'no', 2),
('admin', '', 'admin', '', '', 0, '21232f297a57a5a743894a0e4a801fc3', '', 'no', 1),
('', '', 'saifali', '', '', 0, '921848f314e08d5dcd2040ab630b07ab', '', 'no', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `rollno` (`rollno`);

--
-- Indexes for table `req_details`
--
ALTER TABLE `req_details`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`rollno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
