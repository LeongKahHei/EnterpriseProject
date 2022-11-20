-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 01:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(94, 31, 24, 'carot', 12, 1, 'carrot.jpg'),
(117, 37, 24, 'carrot', 12, 1, 'carrot.jpg'),
(120, 37, 32, 'pear', 13, 1, 'download (2).jpeg'),
(122, 37, 30, 'salmon', 26, 1, 'salmon fish.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 33, 'Kah', 'leongkahhei@gmail.com', '0174091019', 'hi'),
(9, 33, 'Kah', 'leongkahhei@gmail.com', '0174091019', 'a'),
(10, 33, 'Kah', 'leongkahhei@gmail.com', '0174091019', 'adad'),
(11, 33, 'Kah', 'leongkahhei@gmail.com', '0174091019', 'afafafafaf');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `notification`, `payment_status`) VALUES
(19, 33, 'Kah Hei Leong', '0174091019', 'moon.leong@gmail.com', 'cash on delivery', ' 328penang road Georgetown 11600', ', leek ( 1 ), tomato ( 1 )', 54, '08-Mar-2022', 'no', 'completed'),
(20, 33, 'Kah Hei Leong', '0174091019', 'moon.leong@gmail.com', 'cash on delivery', ' 328penang road Georgetown 11600', ', carot ( 1 ), tomato ( 1 )', 44, '09-Feb-2022', 'no', 'completed'),
(32, 33, 'Kah Hei Leong', '0174091019', 'moon.leong@gmail.com', 'cash on delivery', ' 328penang road Georgetown 11600', ', carot ( 1 )', 12, '18-Jan-2022', 'no', 'completed'),
(35, 33, 'Kah Hei Leong', '0174091019', 'moon.leong@gmail.com', 'cash on delivery', ' 328penang road Georgetown 11600', ', carot ( 1 )', 12, '18-Nov-2022', 'yes', 'completed'),
(37, 33, 'Kah Hei Leong', '0174091018', 'moon.leong@gmail.com', 'cash on delivery', ' 26k jelutong 11600', ', chicken ( 1 ), carrot ( 1 )', 28, '19-Nov-2022', 'null', 'pending'),
(43, 33, 'Kah Hei Leong', '0174091018', 'moon.leong@gmail.com', 'cash on delivery', ' 26k jelutong 11600', ', carrot ( 1 )', 12, '19-Nov-2022', 'null', 'pending'),
(48, 37, 'Kah Hei Leong', '0174091019', 'aaa@gmail.com', 'cash on delivery', ' 328penang road Georgetown 11601', ', carrot ( 1 )', 12, '19-Nov-2022', 'yes', 'completed'),
(49, 37, 'Kah Hei Leong', '0174091019', 'aaa@gmail.com', 'cash on delivery', ' 328penang road Georgetown 11601', ', tomato ( 1 )', 11, '19-Nov-2022', 'yes', 'completed'),
(50, 37, 'Kah Hei Leong', '0174091019', 'aaa@gmail.com', 'cash on delivery', ' 328penang road Georgetown 11601', ', tilapia ( 1 ), apple ( 1 )', 22, '19-Nov-2022', 'null', 'pending'),
(51, 37, 'Kah Hei Leong', '0174091019', 'aaa@gmail.com', 'cash on delivery', ' 328penang road Georgetown 11601', ', banana ( 1 ), tomato ( 1 ), celery ( 1 )', 37, '19-Nov-2022', 'null', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `sold` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`, `sold`) VALUES
(24, 'carrot', 'vegetables', 'The fiber in carrots can help keep blood sugar levels under control. ', 12, 'carrot.jpg', 21),
(25, 'tomato', 'vegetables', 'Tomatoes are able boost your immune system, lower your cholesterol levels, and keep your blood from clotting.', 11, 'Tomato.jpg', 11),
(26, 'celery', 'vegetables', 'Celery contains vitamin C, beta carotene, and flavonoids, but there are at least 12 additional kinds of antioxidant nutrients found in a single stalk.', 10, 'celery.jpg', 6),
(27, 'chicken', 'meat', 'Chicken Provides Vitamins and Minerals Involved in Brain Function', 16, 'chicken.png', 4),
(28, 'apple', 'fruits', 'Apples are an incredibly nutritious fruit that offers multiple health benefits. They&#39;re rich in fiber and antioxidants. Eating them is linked to a lower risk of many chronic conditions.', 8, 'apple.png', 1),
(29, 'tilapia', 'seafood', 'Tilapia is packed with vitamins and minerals like choline, niacin, vitamin B12, vitamin D, selenium, and phosphorus.', 14, 'download.jpeg', 1),
(30, 'salmon', 'seafood', 'salmon is low in saturated fat and cholesterol and is a good source of protein.', 26, 'salmon fish.png', 1),
(31, 'mackerel', 'seafood', 'Mackerels are considered some of the most nutritious fishes. They&#39;re an excellent source of protein, vitamins B2, B3, B6, and B12, and vitamin D.', 19, 'download (1).jpeg', 0),
(32, 'pear', 'fruits', 'Pears contain high levels of antioxidants, including vitamin C, vitamin K, and copper. These chemicals counter the effects of free radicals , protecting cells from the damage they can cause.', 13, 'download (2).jpeg', 0),
(33, 'banana', 'fruits', 'Bananas are one of the healthiest fruits in the world because they are packed full of vitamins and minerals – especially potassium, vitamin B6 and vitamin C.', 16, 'istockphoto-1145222158-612x612.jpg', 1),
(34, 'pork', 'meat', 'Pork is a rich source of certain vitamins and minerals your body needs to function, like iron and zinc.', 20, 'pork.jpeg', 0),
(35, 'duck', 'meat', 'Duck meat is an excellent source of protein and iron. Protein keeps us healthy by building and repairing our muscles, skin and blood.', 21, 'duck.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `year` int(100) NOT NULL,
  `month` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `total`, `year`, `month`) VALUES
(1, 12, 2022, 1),
(2, 27, 2022, 8),
(3, 11, 2022, 11),
(4, 26, 2022, 11),
(5, 10, 2022, 11),
(6, 12, 2022, 11),
(7, 11, 2022, 11),
(8, 22, 2022, 11),
(9, 37, 2022, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `number`, `address`, `city`, `pin`, `user_type`) VALUES
(31, 'Kah Hei Leong', 'leongkahhei@gmail.com', '0cc175b9c0f1b6a831c399e269772661', '0174091011', '328penang road', 'Georgetown', '11600', 'user'),
(32, 'Kah Hei Leong', 'admin@gmail.com', '0cc175b9c0f1b6a831c399e269772661', '0174091019', '328penang road', 'Georgetown', '11600', 'admin'),
(33, 'Kah Hei Leong', 'moon.leong@gmail.com', '0cc175b9c0f1b6a831c399e269772661', '0174091018', '26k', 'jelutong', '11600', 'user'),
(37, 'Kah Hei Leong', 'aaa@gmail.com', 'a3dcb4d229de6fde0db5686dee47145d', '0174091019    ', '328penang road', 'Georgetown', '11601', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(55, 33, 28, 'apple', 8, 'apple.png'),
(57, 37, 25, 'tomato', 11, 'Tomato.jpg'),
(59, 37, 33, 'banana', 16, 'istockphoto-1145222158-612x612.jpg'),
(60, 37, 31, 'mackerel', 19, 'download (1).jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
