-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 03, 2019 at 12:11 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrivals`
--

CREATE TABLE `arrivals` (
  `id` int(11) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `supplier_name` varchar(40) DEFAULT NULL,
  `product_supplied` varchar(40) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `date_arrived` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arrivals`
--

INSERT INTO `arrivals` (`id`, `recipient`, `supplier_name`, `product_supplied`, `quantity`, `balance`, `price`, `invoice`, `date_arrived`, `status`) VALUES
(6, '', 'emzor', 'vasoprin', 20, 0, 200, 116563, '28/Oct/2018', 'fully paid'),
(7, '', 'juhel', 'sudrex', 50, 440, 500, 723822, '28/Oct/2018', 'part payment');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `sales_person` varchar(10) DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_description` varchar(40) NOT NULL,
  `product_expiry_date` date NOT NULL,
  `new_quantity` int(11) NOT NULL,
  `current_quantity` int(11) NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `product_supplier` varchar(40) NOT NULL,
  `cost_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `date_added` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `products_sold` varchar(40) DEFAULT NULL,
  `sold_quantity` int(11) DEFAULT NULL,
  `amount_sold` int(11) DEFAULT NULL,
  `date_sold` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice`, `user`, `products_sold`, `sold_quantity`, `amount_sold`, `date_sold`) VALUES
-- (1, '378607', 'user', 'lumatem', 12, 5400, '2018-10-22'),
-- (2, '530870', 'user', 'lumatem', 8, 3600, '2018-10-22'),
-- (3, '364013', 'user', 'lumatem', 3, 1350, '2018-10-24'),
-- (4, '707281', 'user', 'lumatem', 4, 3200, '2019-04-18'),
-- (5, '468892', 'user', 'lumatem', 4, 2000, '2019-04-20'),
-- (6, '267569', 'user', 'lumatem', 5, 2500, '04-20-2019'),
-- (7, '826997', 'user', 'kjbnkjbn', 100, 40000, '2019-04-20'),
-- (8, '165725', 'user', 'lumatem', 10, 5000, '2019-04-20'),
-- (9, '585040', 'user', 'lumatem', 5, 500, '2019-05-22'),
-- (10, '411783', 'user', 'lumatem', 5, 500, '2019-05-28'),
-- (11, '441515', 'user', 'lumatem', 1, 500, '2019-05-28'),
-- (12, '974441', 'user', 'lumatem', 9, 500, '2019-05-28'),
-- (13, '654886', 'user', 'lumatem', 3, 500, '2019-05-28'),
-- (14, '654886', 'user', 'kjbnkjbn', 10, 400, '2019-05-28'),
-- (15, '451304', 'user', 'lumatem', 2, 500, '2019-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `date_added` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `date_added`) VALUES
(1, 'emzor', '28/Oct/2018'),
(2, 'juhel', '28/Oct/2018');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `supplier` varchar(40) DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `product` varchar(40) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date_paid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `supplier`, `invoice`, `product`, `quantity`, `amount_paid`, `balance`, `price`, `date_paid`) VALUES
-- (6, 'emzor', 232693, 'vasoprin', 80, 180, 20, 200, '28/Oct/2018'),
-- (7, 'emzor', 950086, 'sudrex', 23, 230, 0, 230, '28/Oct/2018'),
-- (8, 'emzor', 116563, 'vasoprin', 20, 200, 0, 200, '28/Oct/2018'),
-- (9, 'juhel', 723822, 'sudrex', 50, 50, 450, 500, '28/Oct/2018'),
-- (10, 'juhel', 723822, 'sudrex', 50, 5, 445, 500, '28/Oct/2018'),
-- (11, 'juhel', 723822, 'sudrex', 50, 1, 444, 500, '28/Oct/2018'),
-- (12, 'juhel', 723822, 'sudrex', 50, 4, 440, 500, '28/Oct/2018');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(40) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `town` varchar(20) DEFAULT NULL,
  `village` varchar(20) DEFAULT NULL,
  `house_address` varchar(100) DEFAULT NULL,
  `date_of_birth` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `date_added` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `state`, `town`, `village`, `house_address`, `date_of_birth`, `phone`, `position`, `date_added`) VALUES
(1, 'user', 'user', 'cGFzcw==', 'anambra', 'awka', 'ifite', 'ifite', '1111-11-11', '0909090909', 'cashier', '21/10/2018'),
(2, 'bossy', 'bossy', 'Ym9zc3k=', 'anambra', 'awka', 'ifite', 'ifite', '1990-11-11', '12345678909', 'admin', '22/10/2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrivals`
--
ALTER TABLE `arrivals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrivals`
--
ALTER TABLE `arrivals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
