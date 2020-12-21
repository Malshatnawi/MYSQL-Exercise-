-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 10:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysql_exercises`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercise1_countriestable`
--

CREATE TABLE `exercise1_countriestable` (
  `country_id` int(3) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise3_dupcountries`
--

CREATE TABLE `exercise3_dupcountries` (
  `country_id` int(3) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise4_dulicatedtable`
--

CREATE TABLE `exercise4_dulicatedtable` (
  `country_id` int(3) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise6_jobs`
--

CREATE TABLE `exercise6_jobs` (
  `job_id` int(3) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `min_salary` float DEFAULT NULL,
  `max_salary` float DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `exercise7_countries`
--

CREATE TABLE `exercise7_countries` (
  `country_id` int(3) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `exercise8_job_history`
--

CREATE TABLE `exercise8_job_history` (
  `employee_id` int(3) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `job_id` varchar(32) DEFAULT NULL,
  `department_id` varchar(32) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `exercise9_countries`
--

CREATE TABLE `exercise9_countries` (
  `COUNTRY_ID` int(3) NOT NULL,
  `COUNTRY_NAME` varchar(40) NOT NULL,
  `REGION_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise10_jobs`
--

CREATE TABLE `exercise10_jobs` (
  `JOB_ID` int(5) NOT NULL,
  `JOB_TITLE` varchar(35) NOT NULL DEFAULT ' ',
  `MIN_SALARY` decimal(6,0) DEFAULT 8000,
  `MAX_SALARY` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise11_countries`
--

CREATE TABLE `exercise11_countries` (
  `country_id` int(5) NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise12_countries`
--

CREATE TABLE `exercise12_countries` (
  `COUNTRY_ID` int(11) NOT NULL,
  `COUNTRY_NAME` varchar(40) NOT NULL,
  `REGION_ID` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise13_countries`
--

CREATE TABLE `exercise13_countries` (
  `COUNTRY_ID` varchar(2) NOT NULL,
  `COUNTRY_NAME` varchar(40) DEFAULT NULL,
  `REGION_ID` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise14_job_history`
--

CREATE TABLE `exercise14_job_history` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `JOB_ID` int(5) NOT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise15_departments`
--

CREATE TABLE `exercise15_departments` (
  `department_id` decimal(4,0) NOT NULL,
  `department_name` varchar(30) DEFAULT NULL,
  `manager_id` decimal(6,0) NOT NULL,
  `location_id` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise15_employees`
--

CREATE TABLE `exercise15_employees` (
  `EMPLOYEE_ID` decimal(4,0) NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise16_employees`
--

CREATE TABLE `exercise16_employees` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` int(5) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise18_employees`
--

CREATE TABLE `exercise18_employees` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise18_jobs`
--

CREATE TABLE `exercise18_jobs` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(35) NOT NULL DEFAULT ' ',
  `MIN_SALARY` decimal(6,0) DEFAULT 8000,
  `MAX_SALARY` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise19_employees`
--

CREATE TABLE `exercise19_employees` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise20_employees`
--

CREATE TABLE `exercise20_employees` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `JOB_ID` int(11) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exersice5_constrained_countries`
--

CREATE TABLE `exersice5_constrained_countries` (
  `country_id` int(3) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `region_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exercise8_job_history`
--
ALTER TABLE `exercise8_job_history`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `exercise9_countries`
--
ALTER TABLE `exercise9_countries`
  ADD UNIQUE KEY `COUNTRY_ID` (`COUNTRY_ID`);

--
-- Indexes for table `exercise10_jobs`
--
ALTER TABLE `exercise10_jobs`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `exercise11_countries`
--
ALTER TABLE `exercise11_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `exercise12_countries`
--
ALTER TABLE `exercise12_countries`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `exercise13_countries`
--
ALTER TABLE `exercise13_countries`
  ADD PRIMARY KEY (`COUNTRY_ID`,`REGION_ID`);

--
-- Indexes for table `exercise14_job_history`
--
ALTER TABLE `exercise14_job_history`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `exercise15_departments`
--
ALTER TABLE `exercise15_departments`
  ADD PRIMARY KEY (`department_id`,`manager_id`);

--
-- Indexes for table `exercise15_employees`
--
ALTER TABLE `exercise15_employees`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `DEPARTMENT_ID` (`DEPARTMENT_ID`,`MANAGER_ID`);

--
-- Indexes for table `exercise16_employees`
--
ALTER TABLE `exercise16_employees`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `DEPARTMENT_ID` (`DEPARTMENT_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `exercise18_employees`
--
ALTER TABLE `exercise18_employees`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `exercise18_jobs`
--
ALTER TABLE `exercise18_jobs`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `exercise19_employees`
--
ALTER TABLE `exercise19_employees`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `exercise20_employees`
--
ALTER TABLE `exercise20_employees`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `exersice5_constrained_countries`
--
ALTER TABLE `exersice5_constrained_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercise8_job_history`
--
ALTER TABLE `exercise8_job_history`
  MODIFY `employee_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exercise10_jobs`
--
ALTER TABLE `exercise10_jobs`
  MODIFY `JOB_ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exercise12_countries`
--
ALTER TABLE `exercise12_countries`
  MODIFY `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exersice5_constrained_countries`
--
ALTER TABLE `exersice5_constrained_countries`
  MODIFY `country_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exercise14_job_history`
--
ALTER TABLE `exercise14_job_history`
  ADD CONSTRAINT `exercise14_job_history_ibfk_1` FOREIGN KEY (`JOB_ID`) REFERENCES `exercise10_jobs` (`JOB_ID`);

--
-- Constraints for table `exercise15_employees`
--
ALTER TABLE `exercise15_employees`
  ADD CONSTRAINT `exercise15_employees_ibfk_1` FOREIGN KEY (`DEPARTMENT_ID`,`MANAGER_ID`) REFERENCES `exercise15_departments` (`department_id`, `manager_id`);

--
-- Constraints for table `exercise16_employees`
--
ALTER TABLE `exercise16_employees`
  ADD CONSTRAINT `exercise16_employees_ibfk_1` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `exercise15_departments` (`department_id`),
  ADD CONSTRAINT `exercise16_employees_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `exercise10_jobs` (`JOB_ID`);

--
-- Constraints for table `exercise18_employees`
--
ALTER TABLE `exercise18_employees`
  ADD CONSTRAINT `exercise18_employees_ibfk_1` FOREIGN KEY (`JOB_ID`) REFERENCES `exercise18_jobs` (`JOB_ID`) ON DELETE CASCADE;

--
-- Constraints for table `exercise19_employees`
--
ALTER TABLE `exercise19_employees`
  ADD CONSTRAINT `exercise19_employees_ibfk_1` FOREIGN KEY (`JOB_ID`) REFERENCES `exercise18_jobs` (`JOB_ID`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `exercise20_employees`
--
ALTER TABLE `exercise20_employees`
  ADD CONSTRAINT `exercise20_employees_ibfk_1` FOREIGN KEY (`JOB_ID`) REFERENCES `exercise18_jobs` (`JOB_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
