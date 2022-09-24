-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 07:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookmyshow`
--

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

CREATE TABLE `cinema` (
  `C_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `Ph_number` int(12) NOT NULL,
  `mebsite` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `E_year` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `M_id` int(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `timing` decimal(5,5) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `actor_acctress` varchar(100) NOT NULL,
  `Language` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movie_show`
--

CREATE TABLE `movie_show` (
  `t_id` int(20) NOT NULL,
  `s_id` int(20) NOT NULL,
  `M_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `screen`
--

CREATE TABLE `screen` (
  `t_id` int(20) NOT NULL,
  `s_id` int(20) NOT NULL,
  `capacity` int(200) NOT NULL,
  `timing` decimal(5,5) NOT NULL,
  `screen_size` int(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `show_timing`
--

CREATE TABLE `show_timing` (
  `t_id` int(20) NOT NULL,
  `s_id` int(20) NOT NULL,
  `m_id` int(20) NOT NULL,
  `start_time` decimal(5,2) NOT NULL,
  `end_time` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `theriter`
--

CREATE TABLE `theriter` (
  `t_id` int(20) NOT NULL,
  `Pincode` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `c_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(5) NOT NULL,
  `u_name` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `p_no` int(12) NOT NULL,
  `passward` varchar(25) NOT NULL,
  `wallet_amount` decimal(5,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`M_id`);

--
-- Indexes for table `movie_show`
--
ALTER TABLE `movie_show`
  ADD PRIMARY KEY (`t_id`,`s_id`,`M_id`),
  ADD KEY `M_id` (`M_id`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`t_id`,`s_id`);

--
-- Indexes for table `show_timing`
--
ALTER TABLE `show_timing`
  ADD PRIMARY KEY (`t_id`,`s_id`,`m_id`,`start_time`,`end_time`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `theriter`
--
ALTER TABLE `theriter`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `p_no` (`p_no`),
  ADD UNIQUE KEY `passward` (`passward`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `M_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theriter`
--
ALTER TABLE `theriter`
  MODIFY `t_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_show`
--
ALTER TABLE `movie_show`
  ADD CONSTRAINT `movie_show_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `theriter` (`t_id`),
  ADD CONSTRAINT `movie_show_ibfk_2` FOREIGN KEY (`M_id`) REFERENCES `movies` (`M_id`);

--
-- Constraints for table `screen`
--
ALTER TABLE `screen`
  ADD CONSTRAINT `screen_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `theriter` (`t_id`);

--
-- Constraints for table `show_timing`
--
ALTER TABLE `show_timing`
  ADD CONSTRAINT `show_timing_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `theriter` (`t_id`),
  ADD CONSTRAINT `show_timing_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `movies` (`M_id`);

--
-- Constraints for table `theriter`
--
ALTER TABLE `theriter`
  ADD CONSTRAINT `theriter_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `cinema` (`C_id`),
  ADD CONSTRAINT `theriter_ibfk_2` FOREIGN KEY (`t_id`) REFERENCES `movie_show` (`t_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
