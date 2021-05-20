-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Sep 05, 2020 at 09:00 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `Name` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`Name`, `Password`) VALUES
('admin', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `donar`
--

CREATE TABLE `donar` (
  `Name` text NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `Goods` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donar`
--

INSERT INTO `donar` (`Name`, `Phone`, `Email`, `Address`, `Goods`) VALUES
('Hasan', 5555555555, 'hasan@gmail.com', 'Gaziantep', 'medicines');

-- --------------------------------------------------------

--
-- Table structure for table `sfdlogin`
--

CREATE TABLE `sfdlogin` (
  `Name` text NOT NULL,
  `ReceiveGoods` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sfdlogin`
--

INSERT INTO `sfdlogin` (`Name`, `ReceiveGoods`, `Password`) VALUES
('hasan', 'books', 'hasan123');

-- --------------------------------------------------------

--
-- Table structure for table `sfdsignin`
--

CREATE TABLE `sfdsignin` (
  `sfdName` text NOT NULL,
  `Contact` int(10) NOT NULL,
  `Email` text NOT NULL,
  `Location` text NOT NULL,
  `Password` text NOT NULL,
  `ConfirmPassword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sfdsignin`
--

INSERT INTO `sfdsignin` (`sfdName`, `Contact`, `Email`, `Location`, `Password`, `ConfirmPassword`) VALUES
('Hasan', 0123456789, 'hasan@gmail.com', 'Gaziantep', 'hasan123', 'hasan123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
