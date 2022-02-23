-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 02:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'burger', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(2, 'Beverage', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(3, 'combo meal\r\n', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `menu_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `menu_id`, `product_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hotdog', 20, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(2, 1, 'CheeseBurge', 25, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(3, 1, 'Fries', 15, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(4, 2, 'Coke', 15, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(5, 2, 'Sprite', 15, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(6, 2, 'Tea', 15, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(7, 3, 'Chicken Combo Meal', 80, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(8, 3, 'Pork Comb', 80, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(9, 3, 'Fish Combo', 80, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
