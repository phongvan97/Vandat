-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 04:50 AM
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
-- Database: `vandat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Week` int(50) DEFAULT NULL,
  `DaysOfWeek` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`Id`, `Name`, `Week`, `DaysOfWeek`) VALUES
(21, NULL, 7, 1),
(22, NULL, 7, 2),
(23, NULL, 7, 3),
(24, NULL, 7, 4),
(25, NULL, 7, 5),
(26, NULL, 7, 6);

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
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`Id`, `Name`) VALUES
(1, 'Runner'),
(2, 'Tầng 1'),
(3, 'Tầng 2'),
(4, 'Rửa Bát'),
(5, 'Thu Ngân'),
(6, 'Bếp');

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
(1, 'Ca Sáng'),
(2, 'Ca Chiều');

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
(29, 3, 1, 1),
(30, 3, 2, 1),
(31, 3, 3, 1),
(32, 3, 4, 1),
(33, 3, 5, 1),
(34, 3, 6, 1),
(36, 3, 7, 1),
(37, 3, 1, 2),
(38, 3, 2, 2),
(39, 3, 3, 2),
(40, 3, 4, 2),
(41, 3, 5, 2),
(42, 3, 6, 2),
(43, 3, 7, 2);

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
(105, 1, 21),
(106, 2, 21),
(111, 1, 22),
(112, 2, 22),
(117, 1, 23),
(118, 2, 23),
(123, 1, 24),
(124, 2, 24),
(129, 1, 25),
(130, 2, 25),
(135, 1, 26),
(136, 2, 26);

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
(3, 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `staffworkshiff`
--

CREATE TABLE `staffworkshiff` (
  `Id` int(11) NOT NULL,
  `Staff` int(255) DEFAULT NULL,
  `ShiffWorkIn` int(255) DEFAULT NULL,
  `Pos` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staffworkshiff`
--

INSERT INTO `staffworkshiff` (`Id`, `Staff`, `ShiffWorkIn`, `Pos`) VALUES
(31, 3, 106, 3),
(36, 3, 112, 5),
(37, 3, 111, 4);

-- --------------------------------------------------------

--
-- Table structure for table `week`
--

CREATE TABLE `week` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `week`
--

INSERT INTO `week` (`Id`, `Name`) VALUES
(7, 'ssss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `hh` (`DaysOfWeek`),
  ADD KEY `rfrg` (`Week`);

--
-- Indexes for table `daysofweek`
--
ALTER TABLE `daysofweek`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
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
  ADD KEY `vdsv` (`ShiffWorkIn`),
  ADD KEY `Pos` (`Pos`);

--
-- Indexes for table `week`
--
ALTER TABLE `week`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `daysofweek`
--
ALTER TABLE `daysofweek`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shiff`
--
ALTER TABLE `shiff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shiffdaystaff`
--
ALTER TABLE `shiffdaystaff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `shiffofday`
--
ALTER TABLE `shiffofday`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffworkshiff`
--
ALTER TABLE `staffworkshiff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `week`
--
ALTER TABLE `week`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `days`
--
ALTER TABLE `days`
  ADD CONSTRAINT `hh` FOREIGN KEY (`DaysOfWeek`) REFERENCES `daysofweek` (`Id`),
  ADD CONSTRAINT `xx` FOREIGN KEY (`Week`) REFERENCES `week` (`Id`);

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
  ADD CONSTRAINT `staffworkshiff_ibfk_1` FOREIGN KEY (`Pos`) REFERENCES `position` (`Id`),
  ADD CONSTRAINT `vdsv` FOREIGN KEY (`ShiffWorkIn`) REFERENCES `shiffofday` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
