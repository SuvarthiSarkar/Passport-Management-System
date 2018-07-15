-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2018 at 12:29 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sys_passport`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `aid` int(10) NOT NULL,
  `a_type` char(1) NOT NULL,
  `a_given_name` varchar(20) NOT NULL,
  `a_last_name` varchar(10) NOT NULL,
  `a_sex` varchar(10) NOT NULL,
  `a_dob` date NOT NULL,
  `a_pob` varchar(30) NOT NULL,
  `a_guardian` varchar(30) DEFAULT NULL,
  `a_spouse` varchar(30) DEFAULT NULL,
  `a_address` text NOT NULL,
  `a_aadhar` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`aid`, `a_type`, `a_given_name`, `a_last_name`, `a_sex`, `a_dob`, `a_pob`, `a_guardian`, `a_spouse`, `a_address`, `a_aadhar`) VALUES
(0, 'N', 'Deborupa', 'Roy', 'Female', '1996-04-02', 'Kalyani', 'Ramaprasad Roy', NULL, 'A2, Anamika Apartment, 778 Purbachal Main Road  Kolkata  West Bengal  700078', '222222222222'),
(1, 'N', 'Suvra', 'Roy', 'Female', '1964-02-17', 'Kolkata', 'Ramaprasad Roy', 'Ramaprasad Roy', 'A2, Anamika Apartment, 778 Purbachal Main Road  Kolkata  West Bengal  700078', '333333333333'),
(2, 'U', 'Deborupa', 'Roy', 'Female', '1996-04-02', 'Kalyani', 'Ramaprasad Roy', NULL, 'A2, Anamika Apartment, 778 Purbachal Main Road  Kolkata  West Bengal  700078', '222222222222');

-- --------------------------------------------------------

--
-- Table structure for table `app_info`
--

CREATE TABLE `app_info` (
  `i_aid` int(10) NOT NULL,
  `a_stage` int(2) NOT NULL,
  `app_sc_count` int(11) NOT NULL DEFAULT '0',
  `pay_amt` int(4) NOT NULL,
  `pay_mode` varchar(10) NOT NULL,
  `app_mobile` char(10) NOT NULL,
  `app_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_info`
--

INSERT INTO `app_info` (`i_aid`, `a_stage`, `app_sc_count`, `pay_amt`, `pay_mode`, `app_mobile`, `app_email`) VALUES
(0, 8, 1, 300, 'CASH', '9674661550', 'roytania0402@gmail.com'),
(1, 99, 0, 250, 'CASH', '8100779208', 'roytania0402@gmail.com'),
(2, 2, 0, 300, 'CASH', '8100779208', 'roytania0402@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `app_stage`
--

CREATE TABLE `app_stage` (
  `s_aid` int(10) NOT NULL,
  `p1_eid` varchar(10) NOT NULL,
  `p1_s_dt` datetime NOT NULL,
  `p1_e_dt` datetime DEFAULT NULL,
  `p2_eid` varchar(10) DEFAULT NULL,
  `p2_s_dt` datetime DEFAULT NULL,
  `p2_e_dt` datetime DEFAULT NULL,
  `p2_comm` text,
  `p3_eid` varchar(10) DEFAULT NULL,
  `p4_dt` datetime DEFAULT NULL,
  `p4_eid` varchar(10) DEFAULT NULL,
  `p4_s_time` time DEFAULT NULL,
  `p4_e_time` time DEFAULT NULL,
  `p4_comm` text,
  `p5_e_dt` datetime DEFAULT NULL,
  `p5_comm` text,
  `p6_eid` varchar(10) DEFAULT NULL,
  `p6_s_dt` datetime DEFAULT NULL,
  `p6_e_dt` datetime DEFAULT NULL,
  `p7_e_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_stage`
--

INSERT INTO `app_stage` (`s_aid`, `p1_eid`, `p1_s_dt`, `p1_e_dt`, `p2_eid`, `p2_s_dt`, `p2_e_dt`, `p2_comm`, `p3_eid`, `p4_dt`, `p4_eid`, `p4_s_time`, `p4_e_time`, `p4_comm`, `p5_e_dt`, `p5_comm`, `p6_eid`, `p6_s_dt`, `p6_e_dt`, `p7_e_dt`) VALUES
(0, 'e1', '2018-06-30 14:19:49', '2018-06-30 14:24:09', 'e2', '2018-06-30 14:32:29', '2018-06-30 14:27:07', 'VERIFIED', 'e3', '2018-06-30 00:00:00', 'e4', '14:29:02', '14:29:30', 'VERIFIED', '2018-06-30 14:30:16', 'VERIFIED', 'e2', '2018-06-30 14:43:58', '2018-06-30 15:13:10', '2018-06-30 15:19:07'),
(1, 'e1', '2018-06-30 15:20:34', '2018-06-30 15:20:58', 'e2', '2018-06-30 15:34:17', '2018-06-30 15:34:47', 'VALUE PROBLEM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dum_aadhar`
--

CREATE TABLE `dum_aadhar` (
  `ano` char(12) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dum_aadhar`
--

INSERT INTO `dum_aadhar` (`ano`, `name`, `dob`, `sex`, `address`) VALUES
('111111111111', 'Sherlock Holmes', '1987-02-19', 'Male', '21B  Baker Street  London  7000001  '),
('222222222222', 'Deborupa Roy', '1996-04-02', 'Female', 'A2 Anamika Apartment  Kolkata West Bengal  700078  '),
('333333333333', 'Suvra Roy', '1964-02-17', 'Female', 'A2 Anamika Apartment  Kolkata  West Bengal  700078  '),
('444444444444', 'Atindriya De', '1995-10-17', 'Female', 'Tallygung Thana  Kolkata  West Bengal  7000075');

-- --------------------------------------------------------

--
-- Table structure for table `dum_passport`
--

CREATE TABLE `dum_passport` (
  `pno` int(10) NOT NULL,
  `p_given_name` varchar(20) NOT NULL,
  `p_last_name` varchar(10) NOT NULL,
  `p_sex` varchar(10) NOT NULL,
  `p_dob` date NOT NULL,
  `p_pob` varchar(30) NOT NULL,
  `p_guardian` varchar(30) DEFAULT NULL,
  `p_spouse` varchar(30) DEFAULT NULL,
  `p_address` text NOT NULL,
  `p_aadhar` char(12) NOT NULL,
  `p_issue_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dum_passport`
--

INSERT INTO `dum_passport` (`pno`, `p_given_name`, `p_last_name`, `p_sex`, `p_dob`, `p_pob`, `p_guardian`, `p_spouse`, `p_address`, `p_aadhar`, `p_issue_date`) VALUES
(10000001, 'Deborupa', 'Roy', 'Female', '1996-04-02', 'Kalyani', 'Ramaprasad Roy', NULL, 'A2, Anamika Apartment, 778 Purbachal Main Road  Kolkata  West Bengal  700078', '222222222222', '2018-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` varchar(10) NOT NULL,
  `e_name` varchar(30) NOT NULL,
  `e_pwd` varchar(10) NOT NULL,
  `e_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `e_name`, `e_pwd`, `e_type`) VALUES
('e1', 'Low Level', '123', 1),
('e2', 'Verification', '123', 2),
('e3', 'Information', '123', 3),
('e4', 'Interview', '123', 4),
('e5', 'Police', '123', 5),
('e6', 'Admin', '1234', 6),
('e7', 'Printer', '1234', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `a_aadhar` (`a_aadhar`);

--
-- Indexes for table `app_info`
--
ALTER TABLE `app_info`
  ADD PRIMARY KEY (`i_aid`);

--
-- Indexes for table `app_stage`
--
ALTER TABLE `app_stage`
  ADD PRIMARY KEY (`s_aid`),
  ADD KEY `fk_stg1` (`p1_eid`),
  ADD KEY `fk_stg2` (`p2_eid`),
  ADD KEY `fk_stg3` (`p3_eid`),
  ADD KEY `fk_stg4` (`p4_eid`),
  ADD KEY `fk_stg6` (`p6_eid`);

--
-- Indexes for table `dum_aadhar`
--
ALTER TABLE `dum_aadhar`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `dum_passport`
--
ALTER TABLE `dum_passport`
  ADD PRIMARY KEY (`pno`),
  ADD KEY `p_aadhar` (`p_aadhar`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `fk_app_adhr` FOREIGN KEY (`a_aadhar`) REFERENCES `dum_aadhar` (`ano`);

--
-- Constraints for table `app_info`
--
ALTER TABLE `app_info`
  ADD CONSTRAINT `fk_info_app` FOREIGN KEY (`i_aid`) REFERENCES `application` (`aid`);

--
-- Constraints for table `app_stage`
--
ALTER TABLE `app_stage`
  ADD CONSTRAINT `fk_stg1` FOREIGN KEY (`p1_eid`) REFERENCES `employee` (`eid`),
  ADD CONSTRAINT `fk_stg2` FOREIGN KEY (`p2_eid`) REFERENCES `employee` (`eid`),
  ADD CONSTRAINT `fk_stg3` FOREIGN KEY (`p3_eid`) REFERENCES `employee` (`eid`),
  ADD CONSTRAINT `fk_stg4` FOREIGN KEY (`p4_eid`) REFERENCES `employee` (`eid`),
  ADD CONSTRAINT `fk_stg6` FOREIGN KEY (`p6_eid`) REFERENCES `employee` (`eid`),
  ADD CONSTRAINT `fk_stge_app` FOREIGN KEY (`s_aid`) REFERENCES `application` (`aid`);

--
-- Constraints for table `dum_passport`
--
ALTER TABLE `dum_passport`
  ADD CONSTRAINT `fk_psprt_adhr` FOREIGN KEY (`p_aadhar`) REFERENCES `dum_aadhar` (`ano`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
