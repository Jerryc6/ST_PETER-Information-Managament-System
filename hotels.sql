-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 12, 2023 at 05:38 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `hotels`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `booking_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(4, 'Dr.', 'lloyd', 'Umali', 'Function Hall', NULL, NULL, '2023-12-08', '2023-12-09', 220.00, 220.00, NULL, NULL, NULL, 1),
(7, 'Dr.', 'Lebron', 'James', 'Audio Video Room', NULL, NULL, '2023-12-12', '2023-12-13', 0.00, 0.00, NULL, NULL, NULL, 1),
(6, 'Dr.', 'dexter', 'discar', 'Covered Court', NULL, NULL, '2023-12-09', '2023-12-10', 320.00, 320.00, NULL, NULL, NULL, 1),
(8, 'Mrs.', 'HDZFHDZ', 'SGSH', 'Conference Room', NULL, NULL, '2023-12-12', '2023-12-13', 180.00, 180.00, NULL, NULL, NULL, 1),
(9, 'Mr.', 'Donald', 'Duck', 'Audio Video Room', NULL, NULL, '2023-12-12', '2023-12-15', 0.00, 0.00, NULL, NULL, NULL, 3),
(10, 'Miss.', 'Maria', 'Makiling', 'Function Hall', NULL, NULL, '2023-12-15', '2023-12-16', 220.00, 220.00, NULL, NULL, NULL, 1),
(11, 'Mr.', 'Jun', 'Jun', 'Conference Room', NULL, NULL, '2023-12-18', '2023-12-19', 180.00, 180.00, NULL, NULL, NULL, 1),
(12, 'Engr.', 'Ruel', 'Jose', 'Conference Room', NULL, NULL, '2023-12-27', '2023-12-29', 360.00, 360.00, NULL, NULL, NULL, 2),
(13, 'Miss.', 'Lendy', 'Yen', 'Covered Court', NULL, NULL, '2023-12-27', '2023-12-28', 320.00, 320.00, NULL, NULL, NULL, 1),
(14, 'Mr.', 'Lee', 'Lou', 'Covered Court', NULL, NULL, '2023-12-25', '2023-12-26', 320.00, 320.00, NULL, NULL, NULL, 1),
(16, 'Mr.', 'john', 'wick', 'Function Hall', NULL, NULL, '2023-12-21', '2023-12-22', 220.00, 220.00, NULL, NULL, NULL, 1),
(15, 'Engr.', 'Rolly', 'Polly', 'Covered Court', NULL, NULL, '2023-12-28', '2023-12-29', 320.00, 320.00, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `place`, `cusid`) VALUES
(1, 'Covered Court', 'NotFree', 15),
(2, 'Function Hall', 'NotFree', 16),
(3, 'Conference Room', 'NotFree', 12),
(4, 'Audio Visual Room', 'Free', NULL),
(5, 'Student Hall', 'Free', NULL),
(6, 'Class room', 'Free', NULL),
(7, 'Oval Grounds', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text,
  `LName` text,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL,
  `blocking` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`, `blocking`) VALUES
(4, 'Dr.', 'lloyd', 'Umali', 'lloyd@gmail.com', 'Filipino', 'Philippines', '03040404040', 'Function Hall', NULL, NULL, NULL, '2023-12-08', '2023-12-09', 'Confirm', 1, '1'),
(6, 'Dr.', 'dexter', 'discar', 'anntony1816@gmail.com', 'Filipino', 'Philippines', '09111234567', 'Covered Court', NULL, NULL, NULL, '2023-12-09', '2023-12-10', 'Confirm', 1, '2'),
(8, 'Mrs.', 'HDZFHDZ', 'SGSH', 'tsgs@GMAIL.COM', 'Filipino', 'Bahrain', '09261285467', 'Conference Room', NULL, NULL, NULL, '2023-12-12', '2023-12-13', 'Confirm', 1, '4'),
(9, 'Mr.', 'Donald', 'Duck', 'duck@gmail.com', 'Filipino', 'Philippines', '03040404040', 'Audio Video Room', NULL, NULL, NULL, '2023-12-12', '2023-12-15', 'Confirm', 3, 'Confirm'),
(10, 'Miss.', 'Maria', 'Makiling', 'maria@mail.com', 'Filipino', 'Philippines', '09261285467', 'Function Hall', NULL, NULL, NULL, '2023-12-15', '2023-12-16', 'Confirm', 1, '4046'),
(11, 'Mr.', 'Jun', 'Jun', 'jun@mail.com', 'Filipino', 'Philippines', '987655544', 'Conference Room', NULL, NULL, NULL, '2023-12-18', '2023-12-19', 'Confirm', 1, 'Conference Room'),
(12, 'Engr.', 'Ruel', '', 'jise@mail.com', 'Filipino', 'Philippines', '98865445678', 'Conference Room', NULL, NULL, NULL, '2023-12-27', '2023-12-29', 'Confirm', 2, '12'),
(14, 'Mr.', 'Lee', 'Lou', 'lee@mail.com', 'Filipino', 'Philippines', '09111234567', 'Covered Court', NULL, NULL, NULL, '2023-12-25', '2023-12-26', 'Confirm', 1, 'Covered Court2023-12-252023-12-26'),
(15, 'Engr.', 'Rolly', 'Polly', 'roll@mail.com', 'Filipino', 'Philippines', '98865445678', 'Covered Court', NULL, NULL, NULL, '2023-12-28', '2023-12-29', 'Confirm', 1, 'Covered Court2023-12-282023-12-29'),
(16, 'Mr.', 'john', 'wick', 'test@gmail.com', 'Filipino', 'Philippines', '09111234567', 'Function Hall', NULL, NULL, NULL, '2023-12-21', '2023-12-22', 'Confirm', 1, 'Function Hall2023-12-212023-12-22'),
(17, 'Mr.', 'John', 'Stamos', 'stam@mail.com', 'Filipino', 'Belgium', '98865445678', 'Function Hall', NULL, NULL, NULL, '2023-12-21', '2023-12-22', 'Not Confirm', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blocking` (`blocking`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
