-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 04:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boat_business`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('staff1', '1234'),
('staff2', '1234'),
('staff3', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `account` varchar(30) NOT NULL,
  `event` varchar(30) NOT NULL,
  `transfer_to` varchar(30) NOT NULL,
  `amount` double NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `account`, `event`, `transfer_to`, `amount`, `rdate`) VALUES
(1, '789456123', 'Deposit', '', 70, '14-03-2022'),
(2, '5678909876', 'Deposit', '', 1000, '27-03-2023');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `driver_name` varchar(45) NOT NULL,
  `boat_number` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `account` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `deposit` double NOT NULL,
  `pass` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `driver_name`, `boat_number`, `gender`, `dob`, `address`, `email`, `contact`, `account`, `branch`, `deposit`, `pass`, `rdate`, `status`) VALUES
(9, 'mani', 'kk', '12', 'Male', '20-07-2022', 'trichy', 'kk@gmail.com', 6756789456, '7567465784', 'trichy', 1000, '1234', '28-03-2023', 1),
(10, 'kumar', 'bala', '45', 'Male', '20-07-2000', 'chennai', 'bala@gmail.com', 8767890987, '7654567894', 'chennai', 500, '1234', '28-03-2023', 1),
(11, 'jebin', 'prakash', '67', 'Male', '24-02-2000', 'keralla', 'jebin@gmail.com', 6456784567, '1234567890', 'SBI', 100, '1234', '28-03-2023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `account` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `rtime` varchar(30) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `bprocess` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `tid`, `account`, `rdate`, `rtime`, `staff`, `bprocess`, `status`) VALUES
(1, 1, '789456123', '14-03-2022', '10:00 AM', 'staff1', 'transaction done', 3),
(2, 2, '789456123', '14-03-2022', '11:00 Am', 'staff1', '', 2),
(3, 3, '5678909876', '27-03-2023', '7:00', 'staff1', 'token completed.', 3),
(4, 4, '1234567890', '27-03-2023', '7:00AM', '', '', 0),
(5, 5, '1234567890', '28-03-2023', '10:00 AM', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
