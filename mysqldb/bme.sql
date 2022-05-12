-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 05:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bme`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `admin_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', '4321');

-- --------------------------------------------------------

--
-- Table structure for table `cart_history`
--

CREATE TABLE `cart_history` (
  `cart_id` int(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `event_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_history`
--

INSERT INTO `cart_history` (`cart_id`, `customer_name`, `event_id`, `quantity`) VALUES
(52, 'anup', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `customer_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`customer_id`, `username`, `password`, `phone`, `email`) VALUES
(1, 'anup', '87878', '8876373424', 'anup@gmail.com'),
(2, 'Janice', '9999', '870970909', 'janice@gmail.com'),
(3, 'harshit', '7777', '1234567890', 'harshit@gmail.com'),
(4, 'krishanu', '6666', '76869', 'krishanu@gmail.com'),
(5, 'nitin', '5555', '890890890', 'nitin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `event_details`
--

CREATE TABLE `event_details` (
  `event_id` int(255) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `poster` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_details`
--

INSERT INTO `event_details` (`event_id`, `event_name`, `price`, `date_time`, `poster`) VALUES
(5, 'Carousel', 200, '2021-11-20 12:00:00.000000', './event/321pexels-elina-fairytale-3811012.jpg'),
(6, 'gaint wheel', 100, '2021-11-21 12:00:00.000000', './event/683pexels-lexi-lauwers-2840896.jpg'),
(7, 'dino park', 300, '2021-11-22 13:01:00.000000', './event/492WhatsApp Image 2021-11-10 at 11.55.06 PM.jpeg'),
(8, 'joker land', 250, '2021-11-24 18:02:00.000000', './event/961WhatsApp Image 2021-11-10 at 11.55.07 PM.jpeg'),
(9, 'disney world', 500, '2021-11-27 16:02:00.000000', './event/793WhatsApp Image 2021-11-10 at 11.55.07 PM (1).jpeg'),
(10, 'halloween park', 700, '2021-11-27 14:04:00.000000', './event/448halloween.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `transaction_id` int(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `total_event` varchar(255) NOT NULL,
  `total_price` int(255) NOT NULL,
  `date_booked` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`transaction_id`, `customer_name`, `total_event`, `total_price`, `date_booked`) VALUES
(30, 'anup', '3-gaint wheel (2021-11-21 12:00:00), ', 300, '2021-11-11 10:03:15.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart_history`
--
ALTER TABLE `cart_history`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_history`
--
ALTER TABLE `cart_history`
  MODIFY `cart_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `customer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `event_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_history`
--
ALTER TABLE `cart_history`
  ADD CONSTRAINT `cart_history_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event_details` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
