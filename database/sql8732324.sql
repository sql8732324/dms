-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql8.freemysqlhosting.net
-- Generation Time: Sep 25, 2024 at 05:47 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql8732324`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_list`
--

CREATE TABLE `account_list` (
  `id` int(30) NOT NULL,
  `code` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `student_id` int(30) NOT NULL,
  `room_id` int(30) NOT NULL,
  `rate` float(12,2) NOT NULL,
  `department` text NOT NULL,
  `course` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_list`
--

INSERT INTO `account_list` (`id`, `code`, `student_id`, `room_id`, `rate`, `department`, `course`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(4, '202409180001', 1, 5, 0.00, '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '202409180002', 2, 5, 0.00, '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ali_list`
--

CREATE TABLE `ali_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0',
  `date_created` text NOT NULL,
  `date_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ali_list`
--

INSERT INTO `ali_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Ù…Ø³ØªØ´ÙÙ‰ ÙƒØ±Ù‰ Ø§Ù„Ø¹Ø§Ù…:\r\nØ·Ø±ÙŠÙ‚ Ù…Ø§Ø±Ø¨ ØµØ§ÙØ± : 35ÙƒÙ… Ù…Ù† Ø§Ù„Ù…Ø¯ÙŠÙ†Ø©', 1, 0, '', '2024-09-18 18:17:28'),
(2, 'Ù…Ø³ØªØ´ÙÙ‰ Ø§Ù„Ø´Ù‡ÙŠØ¯ : Ø¬ÙˆØ§Ø± Ø§Ù„Ø¬Ø§Ù…Ø¹Ø©  :Ø§Ù„Ù…Ø¯ÙŠÙ†Ø©', 1, 0, '', '2024-09-18 18:20:15'),
(3, 'Ù…Ø³ØªØ´ÙÙ‰ Ø§Ù„Ù…Ø¬Ø¯: Ø¬ÙˆØ§Ø± Ø§Ù„Ø­Ø¯ÙŠÙ‚Ø© : Ø§Ù„Ù…Ø¯ÙŠÙ†Ø©', 1, 0, '', '2024-09-18 18:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `dorm_list`
--

CREATE TABLE `dorm_list` (
  `id` int(30) NOT NULL,
  `name` text CHARACTER SET utf8mb4 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dorm_list`
--

INSERT INTO `dorm_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'ØªÙ…Ù‡ÙŠØ¯ÙŠ', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'kimi', 1, 0, '0000-00-00 00:00:00', '2024-09-17 22:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `payment_list`
--

CREATE TABLE `payment_list` (
  `id` int(30) NOT NULL,
  `account_id` int(30) NOT NULL,
  `month_of` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `aa` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `bb` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `cc` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `dd` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `ee` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `ff` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `amount` float(12,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_list`
--

INSERT INTO `payment_list` (`id`, `account_id`, `month_of`, `aa`, `bb`, `cc`, `dd`, `ee`, `ff`, `amount`, `status`, `date_created`, `date_updated`, `delete_flag`) VALUES
(1, 4, '9/4', '', '', '', '', '2024-10', '2024-10', 0.00, 1, '0000-00-00 00:00:00', '2024-09-17 23:38:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_list`
--

CREATE TABLE `room_list` (
  `id` int(30) NOT NULL,
  `dorm_id` int(30) NOT NULL,
  `name` text CHARACTER SET utf8mb4 NOT NULL,
  `slots` int(10) NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT '10000.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_list`
--

INSERT INTO `room_list` (`id`, `dorm_id`, `name`, `slots`, `price`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 'Ø´Ù„Ù„', 1000000, 1.00, 1, 0, '2024-09-18 00:00:00', '2024-09-18 00:00:00'),
(3, 1, 'شلل', 1000000, 10000.00, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'شلل', 1000000, 10000.00, 1, 0, '2024-09-18 00:00:00', '2024-09-18 00:00:00'),
(5, 2, 'kimi', 1000, 0.00, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(11) NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `firstname` text CHARACTER SET utf8mb4 NOT NULL,
  `middlename` text CHARACTER SET utf8mb4 NOT NULL,
  `lastname` text CHARACTER SET utf8mb4 NOT NULL,
  `department` text CHARACTER SET utf8mb4 COLLATE utf8mb4_icelandic_ci NOT NULL,
  `course` text CHARACTER SET utf8mb4 NOT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `contact` text CHARACTER SET utf8mb4 NOT NULL,
  `email` text CHARACTER SET utf8mb4 NOT NULL,
  `address` text CHARACTER SET utf8mb4 NOT NULL,
  `emergency_name` text CHARACTER SET utf8mb4 NOT NULL,
  `emergency_contact` text CHARACTER SET utf8mb4 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `emergency_address` text CHARACTER SET utf8mb4 NOT NULL,
  `emergency_relation` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `code`, `firstname`, `middlename`, `lastname`, `department`, `course`, `gender`, `contact`, `email`, `address`, `emergency_name`, `emergency_contact`, `status`, `delete_flag`, `date_created`, `date_updated`, `emergency_address`, `emergency_relation`) VALUES
(1, '123', 'ÙƒÙŠÙ…ÙŠ', 'Ø´Ø±ÙŠØ§Ù†', 'Ø§Ù„Ù†Ø¹ÙŠÙ…ÙŠ', '', '', 'Male', '772472109', 'kimi@gmail.com', '2005-02', 'Ù…Ø§Ø±Ø¨', 'Ø§Ù„Ø´Ø±ÙƒØ©', 1, 0, '2024-09-18 00:00:00', '2024-09-18 00:00:00', 'Ù…Ø§Ø±Ø¨', 'Ù†Ù‡Ù…'),
(2, '128', 'Ø¹Ø¨Ø¯Ø§Ù„ÙƒØ±ÙŠÙ…', 'ØµØ§Ù„Ø­', '', '', '', 'Male', '87654', 'kimi@gmail.com', '2024-09', 'Ù†Ù‡Ù…', 'Ø§Ù„Ø´Ø±ÙƒØ©', 1, 0, '0000-00-00 00:00:00', '2024-09-17 23:15:44', 'Ù…Ø§Ø±Ø¨', 'Ù…Ø§Ø±Ø¨');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text CHARACTER SET utf8mb4 NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Ù†Ø¸Ø§Ù… Ø§Ø¯Ø§Ø±Ø© Ù…ÙƒØªØ¨ Ø§Ù„ØªØ­ØµÙŠÙ†(Ù…Ø­Ø§ÙØ¸Ø© Ù…Ø§Ø±Ø¨)'),
(2, 'short_name', 'Ù…ÙƒÙ€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€ØªØ¨ Ø§Ù„Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€ØªÙ€Ù€Ù€Ù€Ø­ØµÙ€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€Ù€ÙŠÙ†'),
(3, 'logo', 'uploads/19.jpg?v=1651888584'),
(4, 'cover', 'uploads/15.jpg?v=1651888585'),
(5, 'user_avatar', 'uploads/15.jpg?');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `middlename` text CHARACTER SET utf8mb4 NOT NULL,
  `lastname` text CHARACTER SET utf8mb4 NOT NULL,
  `username` text CHARACTER SET utf8mb4 NOT NULL,
  `password` text CHARACTER SET utf8mb4 NOT NULL,
  `avatar` text CHARACTER SET utf8mb4,
  `last_login` text CHARACTER SET utf8mb4,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(2, 'Kimi', 'kimi', 'kimi', 'kimi', '202cb962ac59075b964b07152d234b70', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '0000-00-00 00:00:00'),
(3, 'ali', 'ali', 'Ali', 'ali', '202cb962ac59075b964b07152d234b70', 'uploads/avatars/1.png?v=1649834664', NULL, 2, '2024-09-18 17:09:17', '2024-09-18 17:27:53'),
(4, 'tom', 'tom', 'tom', 'tom', '202cb962ac59075b964b07152d234b70', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '0000-00-00 00:00:00', '2024-09-18 17:28:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_list`
--
ALTER TABLE `account_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `ali_list`
--
ALTER TABLE `ali_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dorm_list`
--
ALTER TABLE `dorm_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_list`
--
ALTER TABLE `payment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `room_list`
--
ALTER TABLE `room_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dorm_id` (`dorm_id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `account_list`
--
ALTER TABLE `account_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ali_list`
--
ALTER TABLE `ali_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dorm_list`
--
ALTER TABLE `dorm_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_list`
--
ALTER TABLE `payment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `room_list`
--
ALTER TABLE `room_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_list`
--
ALTER TABLE `account_list`
  ADD CONSTRAINT `account_list_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room_list` (`id`),
  ADD CONSTRAINT `account_list_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`);

--
-- Constraints for table `payment_list`
--
ALTER TABLE `payment_list`
  ADD CONSTRAINT `payment_list_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_list` (`id`);

--
-- Constraints for table `room_list`
--
ALTER TABLE `room_list`
  ADD CONSTRAINT `room_list_ibfk_1` FOREIGN KEY (`dorm_id`) REFERENCES `dorm_list` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
