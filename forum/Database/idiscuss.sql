-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 08:00 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `askq`
--

CREATE TABLE `askq` (
  `ask_id` int(7) NOT NULL,
  `ask_title` varchar(255) NOT NULL,
  `ask_desc` text NOT NULL,
  `ask_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `askq`
--

INSERT INTO `askq` (`ask_id`, `ask_title`, `ask_desc`, `ask_user_id`, `timestamp`) VALUES
(1, 'python', 'unable to install', 1, '2021-07-30 20:44:47'),
(2, 'java', 'concern', 1, '2021-07-31 00:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Tickets', 'Queries related to tickets booking.', '2021-07-30 00:06:39'),
(2, 'Qatar', 'Q/A related to venue i.e Qatar.', '2021-07-30 00:08:13'),
(3, 'FIFA Info', 'Queries related to rules of the game.', '2021-07-30 00:26:28'),
(4, 'Dress', 'Dress code, T shirts order, etc.', '2021-07-30 00:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(3, 'com', 1, 1, '2021-07-30 02:17:24'),
(5, 'this is a comment', 1, 2, '2021-07-30 13:33:40'),
(6, 'solutions', 6, 1, '2021-07-30 14:03:46'),
(7, 'solution to the prob', 7, 2, '2021-07-30 15:20:43'),
(8, 'comments', 9, 1, '2021-07-31 12:16:24'),
(9, 'solutions', 10, 1, '2021-07-31 12:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'Unable to book ticket', 'When I try to book it got cancelled.', 1, 1, '2021-07-30 00:54:30'),
(2, 'Book ticket in first row', 'Please help me', 1, 2, '2021-07-30 00:58:59'),
(3, 'VIP Pass', 'Can\'t get', 1, 3, '2021-07-30 01:09:58'),
(4, 'Ticket', 'Ticket', 1, 1, '2021-07-30 02:17:14'),
(5, 'prob', 'prob', 1, 1, '2021-07-30 03:06:24'),
(6, 'problem', 'concern', 1, 1, '2021-07-30 14:03:34'),
(9, 'Qatar', 'COVID', 2, 1, '2021-07-31 12:16:07'),
(10, 'problem', 'conecrn', 1, 1, '2021-07-31 12:50:17'),
(11, 'How fifa handling covid regulations', 'COVID is coming again', 3, 11, '2023-02-09 00:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(1, 'pal@pal.com', '$2y$10$6u6HTL1jItQYEtilIj0c5OxqG5q3DMTk7Wdl6Fp9/YuPNUMoobzNa', '2021-07-30 02:07:16'),
(2, 'anirudh@gmail.com', '$2y$10$VmBzgqc3AfUtcRHsmfAKAuQ01f0yVQVduyTiGMUXwCVHnzCcpFV3i', '2021-07-30 02:25:50'),
(3, 'pallavi@gmail.com', '$2y$10$4UD/0HBTuDqKGihoXqIBxuUl2ldKkhyiDFEHIzwEXT35MwbJvZq2C', '2021-07-30 02:26:09'),
(9, 'chauhan', '$2y$10$M6zHotLABQbZTdaDLWifyubSy095wgQdhCRNpZHU1QCsjqEJWcE/2', '2023-02-09 00:00:56'),
(10, 'palla', '$2y$10$FcY9p3yruoUVCz9qVZQzGuCoHYgd27inJnTUYIAj2FAPQ8D2Dsi4e', '2023-02-09 00:04:11'),
(11, 'fifa', '$2y$10$sXEKq0/9mdiuFEtmDjS3QeNxaXnAZQvcKkxgdTAw66JwfVtaiA4XC', '2023-02-09 00:27:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `askq`
--
ALTER TABLE `askq`
  ADD PRIMARY KEY (`ask_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `askq`
--
ALTER TABLE `askq`
  MODIFY `ask_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
