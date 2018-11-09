-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2018 at 08:42 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
DROP DATABASE IF EXISTS collegeCraft;
CREATE DATABASE IF NOT EXISTS collegeCraft;
USE collegeCraft;
DROP TABLE IF EXISTS users, roles, product, comments, sells, reputation, trade_ad;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegecraft`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `trade_ad_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review` varchar(256) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(64),
  `description` varchar(256) DEFAULT NULL,
  `category` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reputation`
--

CREATE TABLE `reputation` (
  `id` int(11) NOT NULL,
  `trust_level` int(11) DEFAULT NULL,
  `statistics` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `user_id` varchar(64) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trade_ad`
--

CREATE TABLE `trade_ad` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `seller` int(11) DEFAULT NULL,
  `buyer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `hashed_password` varchar(255) DEFAULT NULL,
  `email_address` varchar(30) DEFAULT NULL,
  `bio` varchar(512) DEFAULT NULL,
  `reputation_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `COMMENTS_tradeid` (`trade_ad_id`),
  ADD KEY `COMMENTS_user` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reputation`
--
ALTER TABLE `reputation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `trade_ad`
--
ALTER TABLE `trade_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TRADE_Product` (`product_id`),
  ADD KEY `TRADE_Seller` (`seller`),
  ADD KEY `TRADE_Buyer` (`buyer`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reputation`
--
ALTER TABLE `reputation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trade_ad`
--
ALTER TABLE `trade_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `COMMENTS_tradeid` FOREIGN KEY (`trade_ad_id`) REFERENCES `trade_ad` (`id`),
  ADD CONSTRAINT `COMMENTS_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);


  ALTER TABLE `users`
    ADD CONSTRAINT `USERS` FOREIGN KEY (`reputation_id`) REFERENCES `reputation` (`id`);

--
-- Constraints for table `trade_ad`
--
ALTER TABLE `trade_ad`
  ADD CONSTRAINT `TRADE_Buyer` FOREIGN KEY (`buyer`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `TRADE_Product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `TRADE_Seller` FOREIGN KEY (`seller`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
