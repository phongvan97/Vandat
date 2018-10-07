-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 07:41 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vandat_db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Month` int(50) DEFAULT NULL,
  `DaysOfWeek` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`Id`, `Name`, `Month`, `DaysOfWeek`) VALUES
(3, 'Mùng 3', 1, 4),
(4, 'Mùng 4', 1, 5),
(6, 'Mùng 1', 8, 1),
(8, 'Mùng 2', 8, 3),
(9, 'Mùng mấy đấy', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `daysofweek`
--

CREATE TABLE `daysofweek` (
  `Id` int(11) NOT NULL,
  `NameDay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daysofweek`
--

INSERT INTO `daysofweek` (`Id`, `NameDay`) VALUES
(1, 'Thứ 2'),
(2, 'Thứ 3'),
(3, 'Thứ 4'),
(4, 'Thứ 5'),
(5, 'Thứ 6'),
(6, 'Thứ 7'),
(7, 'Chủ Nhật');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`Id`, `Name`) VALUES
(1, 'Tháng 9'),
(2, 'Tháng 10'),
(3, 'Tháng 11'),
(7, 'Tháng 12'),
(8, 'Tháng 8');

-- --------------------------------------------------------

--
-- Table structure for table `shiff`
--

CREATE TABLE `shiff` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shiff`
--

INSERT INTO `shiff` (`Id`, `Name`) VALUES
(1, 'Ca 1'),
(2, 'Ca 2'),
(3, 'Ca 3'),
(4, 'Ca 4');

-- --------------------------------------------------------

--
-- Table structure for table `shiffdaystaff`
--

CREATE TABLE `shiffdaystaff` (
  `Id` int(11) NOT NULL,
  `Staff` int(255) DEFAULT NULL,
  `DaysOfWeek` int(255) DEFAULT NULL,
  `Shiff` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shiffdaystaff`
--

INSERT INTO `shiffdaystaff` (`Id`, `Staff`, `DaysOfWeek`, `Shiff`) VALUES
(4, 2, 3, 3),
(5, 2, 5, 3),
(6, 2, 2, 3),
(9, 2, 3, 1),
(14, 2, 2, 2),
(21, 6, 1, 1),
(22, 6, 1, 2),
(23, 6, 1, 3),
(24, 6, 1, 4),
(25, 6, 2, 1),
(26, 6, 2, 2),
(27, 6, 2, 3),
(28, 6, 2, 4),
(29, 5, 1, 1),
(30, 5, 1, 2),
(31, 5, 1, 3),
(32, 5, 1, 4),
(33, 5, 2, 1),
(34, 5, 2, 2),
(35, 5, 2, 3),
(36, 5, 2, 4),
(37, 4, 1, 1),
(38, 4, 1, 2),
(39, 4, 1, 3),
(40, 4, 1, 4),
(41, 4, 2, 1),
(42, 4, 2, 2),
(43, 4, 2, 3),
(44, 4, 2, 4),
(45, 1, 1, 1),
(46, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shiffofday`
--

CREATE TABLE `shiffofday` (
  `Id` int(11) NOT NULL,
  `Shiff` int(255) DEFAULT NULL,
  `Day` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shiffofday`
--

INSERT INTO `shiffofday` (`Id`, `Shiff`, `Day`) VALUES
(9, 1, 3),
(10, 2, 3),
(11, 3, 3),
(12, 4, 3),
(13, 1, 4),
(14, 2, 4),
(15, 3, 4),
(16, 4, 4),
(21, 1, 6),
(22, 2, 6),
(23, 3, 6),
(24, 4, 6),
(29, 1, 8),
(30, 2, 8),
(31, 3, 8),
(32, 4, 8),
(33, 1, 9),
(34, 2, 9),
(35, 3, 9),
(36, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Id` int(11) NOT NULL,
  `StaffName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Id`, `StaffName`) VALUES
(1, 'Phong Văn'),
(2, 'Văn Đạt'),
(3, 'Tiến Đông'),
(4, 'aaa'),
(5, 'xxxxx'),
(6, 'ffffff'),
(7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staffworkshiff`
--

CREATE TABLE `staffworkshiff` (
  `Id` int(11) NOT NULL,
  `Staff` int(255) DEFAULT NULL,
  `ShiffWorkIn` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staffworkshiff`
--

INSERT INTO `staffworkshiff` (`Id`, `Staff`, `ShiffWorkIn`) VALUES
(1, 5, 21),
(2, 6, 21),
(3, 4, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `hh` (`DaysOfWeek`),
  ADD KEY `rfrg` (`Month`);

--
-- Indexes for table `daysofweek`
--
ALTER TABLE `daysofweek`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `shiff`
--
ALTER TABLE `shiff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `shiffdaystaff`
--
ALTER TABLE `shiffdaystaff`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ss` (`Staff`),
  ADD KEY `sss` (`DaysOfWeek`),
  ADD KEY `dd` (`Shiff`);

--
-- Indexes for table `shiffofday`
--
ALTER TABLE `shiffofday`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `aa` (`Shiff`),
  ADD KEY `ád` (`Day`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `staffworkshiff`
--
ALTER TABLE `staffworkshiff`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `sadd` (`Staff`),
  ADD KEY `vdsv` (`ShiffWorkIn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `daysofweek`
--
ALTER TABLE `daysofweek`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shiff`
--
ALTER TABLE `shiff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shiffdaystaff`
--
ALTER TABLE `shiffdaystaff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `shiffofday`
--
ALTER TABLE `shiffofday`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staffworkshiff`
--
ALTER TABLE `staffworkshiff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `days`
--
ALTER TABLE `days`
  ADD CONSTRAINT `hh` FOREIGN KEY (`DaysOfWeek`) REFERENCES `daysofweek` (`Id`),
  ADD CONSTRAINT `rfrg` FOREIGN KEY (`Month`) REFERENCES `month` (`Id`);

--
-- Constraints for table `shiffdaystaff`
--
ALTER TABLE `shiffdaystaff`
  ADD CONSTRAINT `dd` FOREIGN KEY (`Shiff`) REFERENCES `shiff` (`Id`),
  ADD CONSTRAINT `ss` FOREIGN KEY (`Staff`) REFERENCES `staff` (`Id`),
  ADD CONSTRAINT `sss` FOREIGN KEY (`DaysOfWeek`) REFERENCES `daysofweek` (`Id`);

--
-- Constraints for table `shiffofday`
--
ALTER TABLE `shiffofday`
  ADD CONSTRAINT `aa` FOREIGN KEY (`Shiff`) REFERENCES `shiff` (`Id`),
  ADD CONSTRAINT `ád` FOREIGN KEY (`Day`) REFERENCES `days` (`Id`);

--
-- Constraints for table `staffworkshiff`
--
ALTER TABLE `staffworkshiff`
  ADD CONSTRAINT `sadd` FOREIGN KEY (`Staff`) REFERENCES `staff` (`Id`),
  ADD CONSTRAINT `vdsv` FOREIGN KEY (`ShiffWorkIn`) REFERENCES `shiffofday` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
