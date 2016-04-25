-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2016 at 01:35 PM
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
  `CurrencyID` int(11) NOT NULL AUTO_INCREMENT,
  `CurrencyName` varchar(7) NOT NULL DEFAULT ''' ''',
  `Date_Time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Price` float(10,5) NOT NULL DEFAULT '0.00000',
  PRIMARY KEY (`CurrencyID`),
  UNIQUE KEY `Date_Time` (`Date_Time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`CurrencyID`, `CurrencyName`, `Date_Time`, `Price`) VALUES
(1, 'EUR/JPY', '2016-04-25 01:09:37', 124.88600),
(2, 'USD/CAD', '2016-04-25 02:08:26', 1.26836),
(3, 'USD/JPY', '2016-04-25 03:21:31', 111.12700),
(4, 'EUR/AUD', '2016-04-25 04:05:23', 1.45873),
(5, 'AUD/USD', '2016-04-25 04:46:35', 0.77987),
(6, 'EUR/USD', '2016-04-25 05:15:25', 1.13767),
(7, 'GBP/USD', '2016-04-25 06:25:40', 1.44467),
(8, 'EUR/CHF', '2016-04-25 07:18:17', 1.09872),
(9, 'USD/CHF', '2016-04-25 09:20:09', 0.97897),
(10, 'EUR/USD', '2016-04-25 10:31:26', 1.13755),
(11, 'EUR/GBP', '2016-04-25 16:20:33', 0.77876);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
