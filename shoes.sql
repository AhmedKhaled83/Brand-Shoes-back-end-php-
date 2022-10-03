-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 01:27 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `address_title` varchar(100) NOT NULL,
  `address_decriptin` text NOT NULL,
  `address_lattiude` double NOT NULL,
  `address_langtiude` double NOT NULL,
  `address_primary` int(1) NOT NULL,
  `address_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address_title`, `address_decriptin`, `address_lattiude`, `address_langtiude`, `address_primary`, `address_user_id`) VALUES
(1, 'Tanta', 'Home', 30.3333, 33.11111, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prand`
--

CREATE TABLE `prand` (
  `Prand_id` int(11) NOT NULL,
  `Prand_name` varchar(150) NOT NULL,
  `Prand_image` varchar(255) NOT NULL,
  `Prand_woman_image` varchar(255) NOT NULL,
  `Prand_show` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prand`
--

INSERT INTO `prand` (`Prand_id`, `Prand_name`, `Prand_image`, `Prand_woman_image`, `Prand_show`) VALUES
(1, 'Adidas', 'adidas', 'adidaswoman', 1),
(2, 'Nike', 'nike', 'nikewoman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Products_id` int(11) NOT NULL,
  `Products_name` varchar(150) NOT NULL,
  `Products_image` varchar(255) NOT NULL,
  `prodact_price` double NOT NULL,
  `product_count` int(11) NOT NULL DEFAULT 1,
  `choose_size` varchar(255) NOT NULL,
  `total_price` double NOT NULL,
  `show_shoes` int(1) NOT NULL DEFAULT 1,
  `label` varchar(255) NOT NULL,
  `Prand_type` varchar(50) NOT NULL,
  `Prand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Products_id`, `Products_name`, `Products_image`, `prodact_price`, `product_count`, `choose_size`, `total_price`, `show_shoes`, `label`, `Prand_type`, `Prand_id`) VALUES
(1, 'adidas men', 'adidas', 500, 1, '0', 500, 1, '39//42//43//45', 'men', 0),
(2, 'Nike Men', 'nike', 240, 1, '0', 0, 1, '42//43//45', 'men', 2),
(3, 'Adidas Men', 'nike', 600, 1, '0', 0, 1, '35//37//40//42', 'men', 1),
(4, 'adides woman', 'adidas woman', 300, 1, '0', 300, 1, '42//43//45', 'woman', 1),
(5, 'adidas men', 'adidas', 300, 1, '0', 300, 1, '37//39//40', 'men', 1),
(6, 'Adidas Woman', 'Adidasimage', 550, 1, '0', 550, 1, '39//42//43//45', 'woman', 1),
(7, 'Nike Woman', 'nike image', 420, 1, '0', 420, 1, '39//40//42', 'woman', 2),
(8, 'Nike woman', 'nike image', 460, 1, '0', 460, 1, '39//40//41', 'woman', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  `user_phone` varchar(16) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_tokn` varchar(255) NOT NULL,
  `user_login` int(1) NOT NULL,
  `user_date_login` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_image`, `user_tokn`, `user_login`, `user_date_login`) VALUES
(6, 'ahmed', 'ahmed@gmail.com', 'ahmed010', '01002068758', 'image1', 'aaa', 1, '2022-04-15'),
(7, 'khaled', 'khaled@gmail.com', 'khaled011', '01097348194', 'image2', 'kkk', 1, '2022-04-15'),
(8, 'ahmedkhaled', 'kk@gmail.com', 'ahmed010', '01002068758', '', 'aaa', 0, '2022-04-15'),
(9, 'khalil', 'khalil@gmail.com', 'khalil012', '01011121202', '', 'lll', 0, '2022-04-15'),
(10, 'seif', 'seif@gmail.com', 'seif0122', '01011121202', '', '222', 1, '2022-04-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `prand`
--
ALTER TABLE `prand`
  ADD PRIMARY KEY (`Prand_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Products_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prand`
--
ALTER TABLE `prand`
  MODIFY `Prand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
