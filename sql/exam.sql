-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 11:58 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `callgroups`
--

CREATE TABLE `callgroups` (
  `id` int(11) NOT NULL,
  `groupname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `callgroups`
--

INSERT INTO `callgroups` (`id`, `groupname`) VALUES
(1, 'Group 1'),
(2, 'Group 2'),
(3, 'Group 3');

-- --------------------------------------------------------

--
-- Table structure for table `calllists`
--

CREATE TABLE `calllists` (
  `id` int(11) NOT NULL,
  `clid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calllists`
--

INSERT INTO `calllists` (`id`, `clid`, `level`, `name`) VALUES
(1, 1, 1, 'Name 1'),
(2, 1, 2, 'Name 2'),
(3, 1, 3, 'Name 3'),
(4, 1, 4, 'Name 4'),
(7, 2, 1, 'Name 1'),
(8, 2, 2, 'Name 2'),
(9, 2, 3, 'Name 3'),
(10, 2, 4, 'Name 4'),
(11, 3, 1, 'Name 1'),
(12, 3, 2, 'Name 2'),
(13, 3, 3, 'Name 3'),
(14, 3, 4, 'Name 4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `callgroups`
--
ALTER TABLE `callgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calllists`
--
ALTER TABLE `calllists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clid` (`clid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `callgroups`
--
ALTER TABLE `callgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calllists`
--
ALTER TABLE `calllists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calllists`
--
ALTER TABLE `calllists`
  ADD CONSTRAINT `calllists_ibfk_1` FOREIGN KEY (`clid`) REFERENCES `callgroups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
