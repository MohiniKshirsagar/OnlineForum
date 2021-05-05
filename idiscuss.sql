-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 02:11 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Python', 'Python is an interpreted high-level general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant indentation.', '2021-04-26 08:37:27'),
(2, 'JavaScript', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification.', '2021-04-26 08:42:45'),
(3, 'Django', 'Django is a Python-based free and open-source web framework that follows the model-template-views architectural pattern. ', '2021-04-28 10:14:44'),
(4, 'Flask', 'Django is another Python-based free and open-source web framework. ', '2021-04-28 01:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_time` datetime NOT NULL,
  `comment_by` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_time`, `comment_by`) VALUES
(1, 'this is a comment!', 1, '2021-05-02 09:21:16', 0),
(2, 'rt', 1, '2021-05-02 10:00:12', 0),
(3, 'Hiiii! welcome to iDiscuss', 9, '2021-05-03 08:59:13', 2),
(4, 'Django is a Python-based free and open-source web framework that follows the model-template-views architectural pattern. It is maintained by the Django Software Foundation, an American independent organization.\r\n', 6, '2021-05-03 09:04:34', 2),
(5, 'sdhfjsd', 10, '2021-05-04 08:11:07', 4);

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
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'Unable to install pyaudio', 'I am not able to install pyaudio on windows, please help me out with this.', 1, 0, '2021-04-29 12:58:18'),
(2, 'Not able to use python', 'Please help me.', 1, 0, '2021-04-29 16:33:04'),
(3, 'How to do python programming', 'please tell me how can I start my python study as a beginner. ', 1, 0, '2021-04-29 16:46:06'),
(4, 'how to create variables in python', 'hello, i am new to python studies and i want to know more about variables in python. so please help me out with this.', 1, 1, '2021-05-03 05:14:35'),
(5, 'what is use of javaScript?', 'can anyone tell me what is exact use of javascript in programming and how can I use it?', 2, 1, '2021-05-03 05:18:19'),
(6, 'what is Django?', 'What is Django? Is it really necessary to learn Django as a programmer?', 3, 1, '2021-05-03 05:20:36'),
(7, '', 'gkfkjhgjkhg', 3, 1, '2021-05-03 08:42:50'),
(8, '', 'Django is a Python-based free and open-source web framework that follows the model-template-views architectural pattern. It is maintained by the Django Software Foundation, an American independent organization.', 3, 1, '2021-05-03 08:45:19'),
(9, 'Hey hi ', 'Hello everyone!', 2, 2, '2021-05-03 08:58:10'),
(10, 'how to use python', 'please tell me how to do programming in python', 1, 4, '2021-05-04 08:10:47'),
(11, 'how to use python', 'please tell me how to do programming in python', 1, 4, '2021-05-04 08:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(1, 'mohiniksagar8135@gmail.com', '$2y$10$OHrr1wudsSzJ0tMZ4No8YuiLcvJCXzXYSz2DbdPJA4DlWYlDIovPy', 2147483647),
(2, 'Poo', '$2y$10$QDgxU5S6ZI30nrdA77/ta.e1t3M8BNH.tMs.W1BKhn8a.CEAxL/eS', 2147483647),
(3, '', '$2y$10$ZpOUsxrFYrStHQz1L27dvOIcazlBNL2nPYdr74QlXq1BU7y1yMuTu', 2147483647),
(4, 'pooja', '$2y$10$DUopdWnki6.HeHW58RWkEuLvpacNXSko/c1ABCOUt7phs95NwT87e', 2147483647);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
