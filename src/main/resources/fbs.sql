-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.27.129.80
-- Generation Time: Jun 27, 2022 at 02:22 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` bigint(20) NOT NULL,
  `pnr_no` varchar(100) NOT NULL,
  `seat` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(50) NOT NULL,
  `crt_by` bigint(20) NOT NULL,
  `crt_ts` datetime NOT NULL,
  `upd_by` bigint(20) NOT NULL,
  `upd_ts` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flight_detail`
--

CREATE TABLE `flight_detail` (
  `id` bigint(20) NOT NULL,
  `flight_name` varchar(500) NOT NULL,
  `flight_code` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `crt_by` bigint(20) NOT NULL,
  `crt_ts` datetime NOT NULL,
  `upd_by` bigint(20) NOT NULL,
  `upd_ts` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pnr_detail`
--

CREATE TABLE `pnr_detail` (
  `id` bigint(20) NOT NULL,
  `pnr_no` varchar(100) NOT NULL,
  `seat` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(50) NOT NULL,
  `crt_by` bigint(20) NOT NULL,
  `crt_ts` datetime NOT NULL,
  `upd_by` bigint(20) NOT NULL,
  `upd_ts` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pnr_header`
--

CREATE TABLE `pnr_header` (
  `id` bigint(20) NOT NULL,
  `pnr_no` varchar(100) NOT NULL,
  `traval_date` date NOT NULL,
  `sec_from` bigint(20) NOT NULL,
  `sec_to` bigint(20) NOT NULL,
  `flight_id` bigint(20) NOT NULL,
  `dept_time` varchar(50) NOT NULL,
  `arv_time` varchar(50) NOT NULL,
  `route` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `crt_by` bigint(20) NOT NULL,
  `crt_ts` datetime NOT NULL,
  `upd_by` bigint(20) NOT NULL,
  `upd_ts` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `id` bigint(20) NOT NULL,
  `sector_name` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `crt_by` bigint(20) NOT NULL,
  `crt_ts` datetime NOT NULL,
  `upd_by` bigint(20) NOT NULL,
  `upd_ts` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_detail`
--
ALTER TABLE `flight_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pnr_detail`
--
ALTER TABLE `pnr_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pnr_header`
--
ALTER TABLE `pnr_header`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pnr_no` (`pnr_no`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_detail`
--
ALTER TABLE `flight_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pnr_detail`
--
ALTER TABLE `pnr_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pnr_header`
--
ALTER TABLE `pnr_header`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
