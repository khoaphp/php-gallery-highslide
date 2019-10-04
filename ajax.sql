-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2019 at 04:29 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `hinhnho` varchar(200) NOT NULL,
  `hinhlon` varchar(200) NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `hinhnho`, `hinhlon`, `mota`) VALUES
(1, 'upload/nho/45905b32Bb-1pice.jpg', 'upload/lon/c8b2156408-42666105_2174746692743819_5761307944473853952_n.jpg', 'Hello world'),
(2, 'upload/nho/1dA0693852-WIN_20180802_02_25_19_Pro.jpg', 'upload/lon/ca97a15A39-1pice.jpg', 'Hello world'),
(3, 'upload/nho/A670a19470-thumb5.jpg', 'upload/lon/084aAc00a9-full5.jpg', 'COn chim');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `hoten`, `email`) VALUES
(1, 'teo', '202cb962ac59075b964b07152d234b70', 'Nguyen Van Teo', 'teo@yahoo.com'),
(2, 'teo', '202cb962ac59075b964b07152d234b70', 'Nguyen Van Teo', 'teo@yahoo.com'),
(3, 'teo', '202cb962ac59075b964b07152d234b70', 'Nguyen Van Teo', 'teo@yahoo.com'),
(4, 'teo', '202cb962ac59075b964b07152d234b70', 'Nguyen Van Teo', 'teo@yahoo.com'),
(5, 'teo', '202cb962ac59075b964b07152d234b70', 'Nguyen Van Teo', 'teo@yahoo.com'),
(6, 'teo', '202cb962ac59075b964b07152d234b70', 'Nguyen Van Teo', 'teo@yahoo.com'),
(7, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(8, 'xxx', '202cb962ac59075b964b07152d234b70', 'ABC', ''),
(9, 'xxx', '202cb962ac59075b964b07152d234b70', 'ABC', 'teo@yahoo.com'),
(10, 'xxx', '202cb962ac59075b964b07152d234b70', 'ABC', 'teo@yahoo.com'),
(11, '1', 'c81e728d9d4c2f636f067f89cc14862c', '3', '4'),
(12, '1', 'c81e728d9d4c2f636f067f89cc14862c', '3', '4'),
(13, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(14, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(15, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(16, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(17, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(18, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(19, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(20, 'xxx', '202cb962ac59075b964b07152d234b70', 'ABC', 'teo@yahoo.com'),
(21, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(22, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
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
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
