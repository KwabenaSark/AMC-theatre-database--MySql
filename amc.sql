-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 07, 2022 at 12:18 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amc`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_email` varchar(30) DEFAULT NULL,
  `Phone_no` varchar(30) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `vaccination` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_email`, `Phone_no`, `age`, `vaccination`) VALUES
(1, 'Kris@gmail.com', '233741852963', 25, NULL),
(2, 'Junior@gmail.com', '233963852741', 25, NULL),
(3, 'Stef@gmail.com', '2337946612', 15, NULL),
(4, 'Abe@gmail.com', '233123456789', 18, NULL),
(5, 'Tay@gmail.com', '233456789123', 42, NULL),
(6, 'lawrence@gmail.com', '2589636978', 30, 'not vaccinated'),
(7, 'feeb@gmail.com', '2545614777', 40, 'vaccinated');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `email`, `phone_no`, `address`) VALUES
(1, 'Mark Mill', 'markmill@gmail.com', '123456789', '4 avenue'),
(2, 'Abi Gyal', 'abi@gmail.com', '114456789', 'Time square'),
(3, 'Corantina Demic', '1coran@gmail.com', '1354456789', 'Manhatten'),
(4, 'Tom Paige', 'ton114@gmail.com', '234456789', 'Time square'),
(5, 'Mike cill', 'mkel@gmail.com', '457456789', 'View area');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(30) DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL,
  `ratings` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `genre`, `ratings`) VALUES
(1, 'Avengers', 'Sci-fi', '80%'),
(2, 'Oceans 8', 'Action', '70%'),
(3, 'Top Gun', 'Action', '90%'),
(4, 'Minions', 'Animation', '90%'),
(5, 'Me Time', 'Comedy', '60%');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `payment_desc` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `customer_id`, `date`, `payment_desc`) VALUES
(1, 1, '2022-08-15', 'Cash'),
(2, 2, '2022-08-27', 'Credit Card'),
(3, 3, '2022-08-02', 'Debit Card'),
(4, 4, '2022-07-15', 'Cash'),
(5, 5, '2022-09-01', 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `reservation_id` int(11) NOT NULL,
  `reservation_date` date DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `reservation_date`, `ticket_id`, `customer_id`) VALUES
(1, '2022-08-10', 1, 1),
(2, '2022-08-20', 2, 2),
(3, '2022-07-30', 3, 3),
(4, '2022-08-01', 4, 4),
(5, '2022-08-01', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
CREATE TABLE IF NOT EXISTS `schedules` (
  `schedule_id` int(11) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`schedule_id`, `start_time`, `end_time`, `language`) VALUES
(1, '10:50:30', '12:30:00', 'English'),
(2, '02:00:30', '04:30:00', 'English'),
(3, '04:00:30', '05:30:00', 'English'),
(4, '05:00:00', '08:40:00', 'English'),
(5, '10:50:30', '12:30:00', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
CREATE TABLE IF NOT EXISTS `seats` (
  `seat_id` int(11) NOT NULL,
  `row_no` varchar(30) DEFAULT NULL,
  `theatre_id` int(11) NOT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `theatre_id` (`theatre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_id`, `row_no`, `theatre_id`) VALUES
(1, '8', 1),
(2, '12', 2),
(3, '20', 3),
(4, '2', 4),
(5, '6', 5);

-- --------------------------------------------------------

--
-- Table structure for table `special_screening`
--

DROP TABLE IF EXISTS `special_screening`;
CREATE TABLE IF NOT EXISTS `special_screening` (
  `special_screening_id` int(11) NOT NULL,
  `ss_name` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`special_screening_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_screening`
--

INSERT INTO `special_screening` (`special_screening_id`, `ss_name`, `type`) VALUES
(1, 'spider-man', 'feature movie'),
(2, 'Sea spiracy', 'Documentary'),
(3, 'Thor 5', 'TV movie'),
(4, 'Batman', 'feature movie'),
(5, 'Pamela anderson', 'Documentary');

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
CREATE TABLE IF NOT EXISTS `theatre` (
  `theatre_id` int(11) NOT NULL,
  `theatre_name` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`theatre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`theatre_id`, `theatre_name`, `location`) VALUES
(1, 'theatre 1', 'West Wing'),
(2, 'theatre 2', 'East Wing'),
(3, 'theatre 3', 'North Wing'),
(4, 'theatre 4', 'south Wing'),
(5, 'theatre 5', 'Up stairs');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `ticket_id` int(11) NOT NULL,
  `price` varchar(30) DEFAULT NULL,
  `theatre_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `show_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `theatre_id` (`theatre_id`),
  KEY `employee_id` (`employee_id`),
  KEY `schedule_id` (`schedule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `price`, `theatre_id`, `employee_id`, `seat_id`, `schedule_id`, `show_date`) VALUES
(1, '$15', 1, 1, 1, 1, '2022-08-04'),
(2, '$15', 2, 2, 2, 2, '2022-08-08'),
(3, '$10', 2, 1, 2, 3, '2022-08-08'),
(4, '$10', 3, 4, 2, 4, '2022-08-14'),
(5, '$15', 5, 5, 5, 5, '2022-07-05');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
