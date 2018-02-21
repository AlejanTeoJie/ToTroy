-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2018 at 03:50 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sqa_emp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence_log`
--

CREATE TABLE `absence_log` (
  `log_id` int(11) NOT NULL,
  `emp_id` char(12) NOT NULL,
  `absent_date` date NOT NULL,
  `leave_tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absence_log`
--

INSERT INTO `absence_log` (`log_id`, `emp_id`, `absent_date`, `leave_tag`) VALUES
(1, '1', '2018-01-01', 'sick'),
(2, '1', '2018-01-02', 'sick'),
(3, '2', '2018-01-03', 'sick'),
(4, '1', '2018-01-04', 'sick'),
(6, '1', '2018-01-05', 'sick'),
(7, '1', '2018-01-06', 'vacation'),
(8, '1', '2018-01-07', 'vacation'),
(9, '1', '2018-01-08', 'vacation'),
(10, '1', '2018-01-09', 'vacation'),
(11, '1', '2018-01-10', 'vacation'),
(12, '1', '2018-01-11', 'vacation'),
(13, '1', '2018-01-12', 'vacation'),
(14, '1', '2018-01-13', 'vacation'),
(15, '1', '2018-01-14', 'vacation'),
(16, '1', '2018-01-15', 'vacation'),
(17, '1', '2018-01-16', ''),
(18, '1', '2018-01-17', ''),
(20, '1', '2018-01-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_log`
--

CREATE TABLE `attendance_log` (
  `logID` int(11) NOT NULL,
  `emp_id` char(12) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `break_in` time NOT NULL,
  `break_out` time NOT NULL,
  `date_of_attendance` date NOT NULL,
  `hours_rendered` int(11) NOT NULL,
  `late` int(11) NOT NULL,
  `late_deduction` int(11) NOT NULL,
  `undertime` int(11) NOT NULL,
  `overtime` int(11) NOT NULL,
  `total_hours_rendered` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_log`
--

INSERT INTO `attendance_log` (`logID`, `emp_id`, `time_in`, `time_out`, `break_in`, `break_out`, `date_of_attendance`, `hours_rendered`, `late`, `late_deduction`, `undertime`, `overtime`, `total_hours_rendered`) VALUES
(94, '201825218KJL', '07:08:00', '14:31:00', '14:09:00', '11:09:00', '2018-02-01', 4, 120, 1, 4, 0, 3),
(95, '201845967CJM', '07:08:00', '00:00:00', '15:16:00', '15:15:00', '2018-02-01', 0, 0, 0, 0, 0, 0),
(96, '201869674JAD', '07:08:00', '00:00:00', '00:00:00', '00:00:00', '2018-02-01', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dep_id` char(6) NOT NULL,
  `dep_name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `basic_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dep_id`, `dep_name`, `position`, `basic_salary`) VALUES
('HA2653', 'cat', 'Agent', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `employees_benefits`
--

CREATE TABLE `employees_benefits` (
  `emp_id` char(12) NOT NULL,
  `emp_TIN` char(15) NOT NULL,
  `emp_SSS` int(5) NOT NULL,
  `emp_PAGIBIG` char(14) NOT NULL,
  `emp_PhilHealth` char(14) NOT NULL,
  `emp_TaxCode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees_benefits`
--

INSERT INTO `employees_benefits` (`emp_id`, `emp_TIN`, `emp_SSS`, `emp_PAGIBIG`, `emp_PhilHealth`, `emp_TaxCode`) VALUES
('201825218KJL', '558-888-488-799', 55899, '5888-7746-9822', '55-999556666-6', 'M2'),
('201845967CJM', '558-888-488-799', 55899, '5888-7746-9822', '55-999556666-6', 'M2'),
('201869674JAD', '558-888-488-799', 55899, '5888-7746-9822', '55-999556666-6', 'M2');

-- --------------------------------------------------------

--
-- Table structure for table `employees_degrees`
--

CREATE TABLE `employees_degrees` (
  `emp_id` char(12) NOT NULL,
  `emp_degree` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees_prev_employers`
--

CREATE TABLE `employees_prev_employers` (
  `emp_id` char(12) NOT NULL,
  `emp_prev_employers` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees_schools`
--

CREATE TABLE `employees_schools` (
  `emp_id` char(12) NOT NULL,
  `emp_school` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_information`
--

CREATE TABLE `employee_information` (
  `emp_id` char(12) NOT NULL,
  `emp_first_name` varchar(50) NOT NULL,
  `emp_last_name` varchar(50) NOT NULL,
  `emp_middle_name` varchar(50) NOT NULL,
  `emp_age` tinyint(3) NOT NULL,
  `emp_birthdate` date NOT NULL,
  `emp_mobile_contact` bigint(11) NOT NULL,
  `emp_status` varchar(15) NOT NULL,
  `emp_nationality` varchar(50) NOT NULL,
  `emp_religion` varchar(50) NOT NULL,
  `emp_height` int(11) NOT NULL,
  `emp_weight` int(11) NOT NULL,
  `dep_id` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_information`
--

INSERT INTO `employee_information` (`emp_id`, `emp_first_name`, `emp_last_name`, `emp_middle_name`, `emp_age`, `emp_birthdate`, `emp_mobile_contact`, `emp_status`, `emp_nationality`, `emp_religion`, `emp_height`, `emp_weight`, `dep_id`) VALUES
('201825218KJL', 'Ken', 'Lorn', 'John', 41, '1977-01-10', 9198941858, 'Single', 'Filipino', 'Catholic', 125, 45, 'HA2653'),
('201845967CJM', 'Carl', 'Michelle', 'Jon', 39, '1979-01-01', 9198941858, 'Single', 'Filipino', 'Catholic', 125, 45, 'HA2653'),
('201869674JAD', 'John', 'Doe', 'Anon', 39, '1979-01-09', 9198941858, 'Single', 'Filipino', 'Catholic', 125, 45, 'HA2653');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence_log`
--
ALTER TABLE `absence_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `attendance_log`
--
ALTER TABLE `attendance_log`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `employees_benefits`
--
ALTER TABLE `employees_benefits`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employees_degrees`
--
ALTER TABLE `employees_degrees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employees_schools`
--
ALTER TABLE `employees_schools`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employee_information`
--
ALTER TABLE `employee_information`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absence_log`
--
ALTER TABLE `absence_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attendance_log`
--
ALTER TABLE `attendance_log`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
