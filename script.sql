-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 11:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `script`
--

-- --------------------------------------------------------

--
-- Table structure for table `champs`
--

CREATE TABLE `champs` (
  `champs_id` int(11) NOT NULL,
  `champs_num_step` int(11) NOT NULL,
  `champs_libelle` varchar(255) NOT NULL,
  `champs_type` varchar(10) NOT NULL,
  `champs_next_step` int(11) DEFAULT NULL,
  `champs_prev_step` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `champs`
--

INSERT INTO `champs` (`champs_id`, `champs_num_step`, `champs_libelle`, `champs_type`, `champs_next_step`, `champs_prev_step`) VALUES
(1, 2, 'Appel sur ?', 'libelle', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `champs`
--
ALTER TABLE `champs`
  ADD PRIMARY KEY (`champs_id`),
  ADD UNIQUE KEY `champs_num_step` (`champs_num_step`),
  ADD KEY `champs_next_step` (`champs_next_step`,`champs_prev_step`),
  ADD KEY `champs_prev_step` (`champs_prev_step`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `champs`
--
ALTER TABLE `champs`
  MODIFY `champs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `champs`
--
ALTER TABLE `champs`
  ADD CONSTRAINT `champs_ibfk_1` FOREIGN KEY (`champs_next_step`) REFERENCES `champs` (`champs_num_step`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `champs_ibfk_2` FOREIGN KEY (`champs_prev_step`) REFERENCES `champs` (`champs_num_step`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
