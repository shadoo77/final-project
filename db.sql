-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 05, 2019 at 12:25 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `shadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_status`
--

CREATE TABLE `city_status` (
  `id` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `market_date` date NOT NULL,
  `total_price` float NOT NULL,
  `total_count` float NOT NULL,
  `total_m2` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `link` varchar(255) NOT NULL,
  `market_date` date NOT NULL,
  `location_country` varchar(50) NOT NULL,
  `location_city` varchar(50) NOT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `location_coordinates_lat` float DEFAULT NULL,
  `location_coordinates_lng` float DEFAULT NULL,
  `size_parcelm2` float DEFAULT NULL,
  `size_grossm2` float DEFAULT NULL,
  `size_netm2` float DEFAULT NULL,
  `size_rooms` float NOT NULL,
  `price_value` float NOT NULL,
  `price_currency` varchar(11) NOT NULL,
  `description` text,
  `title` varchar(255) DEFAULT NULL,
  `images` text,
  `sold` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city_status`
--
ALTER TABLE `city_status`
  ADD PRIMARY KEY (`city`,`market_date`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`link`);
