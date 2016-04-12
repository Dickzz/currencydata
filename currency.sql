-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2016 at 10:03 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `currencydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `CurrencyName` varchar(7) NOT NULL,
  `Date/Time` datetime NOT NULL,
  `Price` float(10,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`CurrencyName`, `Date/Time`, `Price`) VALUES
('USD/CHF', '2016-03-31 03:00:00', 0.96440),
('GBP/USD', '2016-03-31 03:00:00', 1.44040),
('EUR/USD', '2016-03-31 03:00:00', 1.13090),
('USD/JPY', '2016-03-31 03:00:00', 112.64000),
('USD/CAD', '2016-03-31 03:00:00', 1.29940),
('AUD/USD', '2016-03-31 03:00:00', 0.76770),
('EUR/GBP', '2016-03-31 03:00:00', 0.78510),
('EUR/AUD', '2016-03-31 03:00:00', 1.47310),
('EUR/CHF', '2016-03-31 03:00:00', 1.09120),
('EUR/JPY', '2016-03-31 03:00:00', 127.43000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
