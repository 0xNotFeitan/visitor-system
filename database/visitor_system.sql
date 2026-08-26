-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2026 at 11:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visitor_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `range_start` int(11) NOT NULL,
  `range_end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `range_start`, `range_end`) VALUES
(1, 'Director\'s Office', 1000, 1020),
(2, 'ITeMS Board Secretariat', 2000, 2020),
(3, 'Gaming Hub', 3000, 3020),
(4, 'NelFund Support', 4000, 4020),
(5, 'Directorate\'s', 5000, 5020),
(19, 'Directorate', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `keycards`
--

CREATE TABLE `keycards` (
  `id` int(11) NOT NULL,
  `card_number` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `is_assigned` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keycards`
--

INSERT INTO `keycards` (`id`, `card_number`, `destination_id`, `is_assigned`) VALUES
(178, 400, 4, 0),
(179, 401, 4, 0),
(180, 402, 4, 0),
(181, 403, 4, 0),
(182, 404, 4, 0),
(183, 405, 4, 0),
(184, 406, 4, 0),
(185, 407, 4, 0),
(186, 408, 4, 0),
(187, 409, 4, 0),
(188, 410, 4, 0),
(189, 411, 4, 0),
(190, 412, 4, 0),
(191, 413, 4, 0),
(192, 414, 4, 0),
(193, 415, 4, 0),
(194, 416, 4, 0),
(195, 417, 4, 0),
(196, 418, 4, 0),
(197, 419, 4, 0),
(198, 200, 2, 0),
(199, 201, 2, 0),
(200, 202, 2, 0),
(201, 203, 2, 0),
(202, 204, 2, 0),
(203, 205, 2, 0),
(204, 206, 2, 0),
(205, 207, 2, 0),
(206, 208, 2, 0),
(207, 209, 2, 0),
(208, 210, 2, 0),
(209, 211, 2, 0),
(210, 212, 2, 0),
(211, 213, 2, 0),
(212, 214, 2, 0),
(213, 215, 2, 0),
(214, 216, 2, 0),
(215, 217, 2, 0),
(216, 218, 2, 0),
(217, 219, 2, 0),
(218, 100, 1, 1),
(219, 101, 1, 1),
(220, 102, 1, 0),
(221, 103, 1, 0),
(222, 104, 1, 0),
(223, 105, 1, 0),
(224, 106, 1, 0),
(225, 107, 1, 0),
(226, 108, 1, 0),
(227, 109, 1, 0),
(228, 110, 1, 0),
(229, 111, 1, 0),
(230, 112, 1, 0),
(231, 113, 1, 0),
(232, 114, 1, 0),
(233, 115, 1, 0),
(234, 116, 1, 0),
(235, 117, 1, 0),
(236, 118, 1, 0),
(237, 119, 1, 0),
(238, 500, 5, 0),
(239, 501, 5, 0),
(240, 502, 5, 0),
(241, 503, 5, 0),
(242, 504, 5, 0),
(243, 505, 5, 0),
(244, 506, 5, 0),
(245, 507, 5, 0),
(246, 508, 5, 0),
(247, 509, 5, 0),
(248, 510, 5, 0),
(249, 511, 5, 0),
(250, 512, 5, 0),
(251, 513, 5, 0),
(252, 514, 5, 0),
(253, 515, 5, 0),
(254, 516, 5, 0),
(255, 517, 5, 0),
(256, 518, 5, 0),
(257, 519, 5, 0),
(258, 300, 3, 1),
(259, 301, 3, 0),
(260, 302, 3, 0),
(261, 303, 3, 0),
(262, 304, 3, 0),
(263, 305, 3, 0),
(264, 306, 3, 0),
(265, 307, 3, 0),
(266, 308, 3, 0),
(267, 309, 3, 0),
(268, 310, 3, 0),
(269, 311, 3, 0),
(270, 312, 3, 0),
(271, 313, 3, 0),
(272, 314, 3, 0),
(273, 315, 3, 0),
(274, 316, 3, 0),
(275, 317, 3, 0),
(276, 318, 3, 0),
(277, 319, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `is_read`, `created_at`) VALUES
(1, 1, 'New visitor: Ethakpemi Jude heading to your destination.', 0, '2025-10-02 11:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('super_admin','director','receptionist','destination_admin') NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `destination_id`) VALUES
(1, 'director', 'changeme123', 'director', NULL),
(5, 'superadmin', 'changeme123', 'super_admin', NULL),
(7, 'reception', 'changeme123', 'receptionist', NULL),
(9, 'gaminghub', 'changeme123', 'destination_admin', 3),
(10, 'nelfund', 'changeme123', 'destination_admin', 4),
(11, 'directorates', 'changeme123', 'destination_admin', 5),
(17, 'itemsboardsecretariat', 'changeme123', 'destination_admin', 2),
(21, 'directorate_admin', '$2y$10$ivGUCFdt5js.hHItLpIm/.4YR7SlO/e98J6/qI.qFhHf85DQHHlLK', 'destination_admin', 19);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `token` varchar(64) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `fullname` varchar(100) NOT NULL,
  `visitor_type` varchar(50) NOT NULL,
  `keycard` varchar(50) DEFAULT NULL,
  `faculty_organization` varchar(150) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `time_in` timestamp NOT NULL DEFAULT current_timestamp(),
  `time_out` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `is_alternate` tinyint(1) DEFAULT 0,
  `keycard_id` int(11) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `token`, `expires_at`, `fullname`, `visitor_type`, `keycard`, `faculty_organization`, `phone_number`, `purpose`, `destination`, `time_in`, `time_out`, `date`, `is_alternate`, `keycard_id`, `status`) VALUES
(1, NULL, NULL, 'Ethakpemi Jude', '', NULL, 'Arts', '1222212', 'owner', 'Director\'s Office', '2025-07-23 00:23:08', '2025-07-22 20:10:55', '2025-07-22', 0, NULL, 'active'),
(2, NULL, NULL, 'Gade Jade', '', NULL, 'sdsd', '7681221', 'owner', 'Director\'s Office', '2025-07-23 18:34:12', '2025-07-23 11:34:20', '2025-07-23', 0, NULL, 'active'),
(3, NULL, NULL, 'Gade Jade', '', NULL, 'sdsd', '08036435924', 'owner', 'Director\'s Office', '2025-07-23 18:34:59', '2025-07-23 11:35:11', '2025-07-23', 0, NULL, 'active'),
(4, NULL, NULL, 'ethakpemi jude', '', NULL, 'Arts', '08036435924', 'owner', 'Director\'s Office', '2025-07-29 17:59:16', '2025-07-29 10:59:26', '2025-07-29', 0, NULL, 'active'),
(5, NULL, NULL, 'Gade Jade', '', NULL, 'sdsd', '08036435924', 'sdsdsd', 'Director\'s Office', '2025-07-29 18:37:25', '2025-07-29 11:54:12', '2025-07-29', 0, NULL, 'active'),
(6, NULL, NULL, 'Gade Jade', '', NULL, 'sdsd', '08036435924', 'ssss', 'Director\'s Office', '2025-07-30 20:24:27', '2025-07-30 14:17:32', '2025-07-30', 0, NULL, 'active'),
(7, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Engineering', '08036435924', 'visitor', 'Director\'s Office', '2025-08-18 18:35:51', '0000-00-00 00:00:00', '2025-08-18', 0, NULL, 'active'),
(8, NULL, NULL, 'Gade Jade', 'staff', NULL, 'Faculty of Arts', '08036435924', 'owner', 'home', '2025-08-18 18:44:21', '0000-00-00 00:00:00', '2025-08-18', 1, NULL, 'active'),
(9, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Education', '08036435924', 'owner', 'Director\'s Office', '2025-08-18 18:45:50', '0000-00-00 00:00:00', '2025-08-18', 0, NULL, 'active'),
(10, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Education', '08036435924', 'owner', 'ITeMS Board Secretariat', '2025-08-18 18:46:07', '0000-00-00 00:00:00', '2025-08-18', 0, NULL, 'active'),
(11, NULL, NULL, 'Gade Jade', 'staff', NULL, 'Faculty of Arts', '08036435924', 'sdsd', 'Director\'s Office', '2025-08-18 19:54:51', '0000-00-00 00:00:00', '2025-08-18', 0, NULL, 'active'),
(12, NULL, NULL, 'Gade Jade', 'staff', NULL, 'Faculty of Education', '08036435924', 'sdsdsd', 'Nelfund Support', '2025-08-18 19:55:04', '0000-00-00 00:00:00', '2025-08-18', 0, NULL, 'active'),
(13, NULL, NULL, 'Gade Jade', 'student', NULL, 'france', '08036435924', 'bb', 'Director\'s Office', '2025-08-18 19:55:17', '0000-00-00 00:00:00', '2025-08-18', 0, NULL, 'active'),
(15, NULL, NULL, 'Gade Jade', 'student', NULL, 'Information Technology Services', '08036435924', 'i would like to deliver some letters for the director and as well you can reach me on 920390230293 thank you ma', 'Director\'s Office', '2025-08-18 20:35:10', '0000-00-00 00:00:00', '2025-08-18', 0, NULL, 'active'),
(16, NULL, NULL, 'Gade Jade', 'student', NULL, 'medcine', '08036435924', 'huik', 'Nelfund Support', '2025-09-01 21:40:12', '0000-00-00 00:00:00', '2025-09-01', 0, NULL, 'active'),
(17, NULL, NULL, 'Gade Jade', 'staff', NULL, 'Faculty of Science', '08036435924', 'dsdsd', 'Director\'s Office', '2025-09-08 23:20:22', '0000-00-00 00:00:00', '2025-09-08', 0, NULL, 'active'),
(18, NULL, NULL, 'sdsd', 'student', NULL, 'Faculty of Arts', '08036435924', 'sdsd', 'ITeMS Board Secretariat', '2025-09-08 23:20:37', '0000-00-00 00:00:00', '2025-09-08', 1, NULL, 'active'),
(19, NULL, NULL, 'Gade Jade', 'student', '59FE8F', 'Faculty of Pharmacy', '08036435924', 'gb', 'Gaming Hub', '2025-09-10 20:10:30', '0000-00-00 00:00:00', '2025-09-10', 0, NULL, 'active'),
(20, NULL, NULL, 'Gade Jade', 'staff', '0827A3', 'Faculty of Veterinary Medicine', '08036435924', 'asaj', 'Gaming Hub', '2025-09-12 17:46:55', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(21, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of The Social Sciences', '08036435924', 'jmnm', 'ITeMS Board Secretariat', '2025-09-12 17:47:54', '0000-00-00 00:00:00', '2025-09-12', 1, NULL, 'active'),
(22, NULL, NULL, 'Gade Jade', 'staff', NULL, 'Faculty of Pharmacy', '08036435924', 'sdsdsd', '1', '2025-09-12 20:01:18', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(23, NULL, NULL, 'Gade Jade', 'guest', NULL, 'Faculty of Renewable Natural Resources', '08036435924', 'wdwd', '3', '2025-09-12 20:01:41', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(24, NULL, NULL, 'Gade Jade', 'guest', NULL, 'Faculty of Renewable Natural Resources', '1222212', 'ssss', '3', '2025-09-12 20:10:26', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(25, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Veterinary Medicine', '08036435924', 'aaa', '3', '2025-09-12 20:11:07', '0000-00-00 00:00:00', '2025-09-12', 1, NULL, 'active'),
(26, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Basic Clinical Sciences', '1222212', 'sas', '1', '2025-09-12 20:15:57', '0000-00-00 00:00:00', '2025-09-12', 1, NULL, 'active'),
(27, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Engineering', '1222212', 'dsds', '1', '2025-09-12 20:20:44', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(28, NULL, NULL, 'Gade Jade', 'staff', NULL, 'Faculty of Environmental Design and Management', '1222212', 'cscsc', '3', '2025-09-12 20:23:01', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(29, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Engineering', '1222212', 'hj', '3', '2025-09-12 20:33:10', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(30, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of The Social Sciences', '1222212', 'hj', '3', '2025-09-12 21:13:12', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(31, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Engineering', '1222212', 'tyyyyyyyyy', '2', '2025-09-12 21:23:22', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(32, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Engineering', '1222212', 'thy', '3', '2025-09-12 21:30:32', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(33, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Engineering', '1222212', 'thy', '3', '2025-09-12 21:34:45', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(34, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Engineering', '1222212', 'gggggggggggggggg', '3', '2025-09-12 22:02:45', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(35, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Environmental Design and Management', '1222212', 'dddd', '3', '2025-09-12 22:34:53', '0000-00-00 00:00:00', '2025-09-12', 1, NULL, 'active'),
(36, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Engineering', '1222212', 'aaa', '1', '2025-09-12 22:41:50', '0000-00-00 00:00:00', '2025-09-12', 1, NULL, 'active'),
(37, NULL, NULL, 'Ethakpemi Jude', 'student', NULL, 'gwagalaja', '1222212', 'SEE', '3', '2025-09-12 22:58:22', '0000-00-00 00:00:00', '2025-09-12', 0, NULL, 'active'),
(38, NULL, NULL, 'Ethakpemi Jude', 'student', NULL, 'Faculty of Veterinary Medicine', '1222212', 'na', '3', '2025-09-12 23:01:52', '0000-00-00 00:00:00', '2025-09-12', 1, NULL, 'active'),
(39, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Engineering', '1222212', 'aaaa', '1', '2025-09-17 17:38:42', '2025-09-17 11:41:01', '2025-09-17', 0, NULL, 'active'),
(40, NULL, NULL, 'Gade Jade', 'staff', NULL, 'Faculty of Veterinary Medicine', '1222212', 'jh', '1', '2025-09-17 20:34:44', '2025-09-17 16:57:09', '2025-09-17', 0, NULL, 'active'),
(41, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Veterinary Medicine', '1222212', 'sssssss', '1', '2025-09-18 00:49:14', '0000-00-00 00:00:00', '2025-09-17', 0, NULL, 'active'),
(42, NULL, NULL, 'Gade Jade', 'staff', NULL, 'Faculty of Pharmacy', '1222212', 'hello', '3', '2025-09-22 02:57:28', '0000-00-00 00:00:00', '2025-09-21', 1, NULL, 'active'),
(43, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of The Social Sciences', '1222212', 'games', '3', '2025-09-23 02:27:38', '0000-00-00 00:00:00', '2025-09-22', 0, 258, 'active'),
(44, NULL, NULL, 'Gade Jade', 'student', NULL, 'Faculty of Veterinary Medicine', '1222212', 'aa', '1', '2025-09-23 05:28:19', '0000-00-00 00:00:00', '2025-09-22', 0, 218, 'active'),
(45, '6e2511acde84bac0014a4b396d216849d5d36a93f8995f91234f770cad24fddc', '2025-09-24 11:40:45', 'Gade Jade', 'student', NULL, 'Faculty of Veterinary Medicine', '1222212', 'aaa', '5', '2025-09-23 18:40:45', '2025-09-23 16:03:47', '2025-09-23', 0, 238, 'active'),
(46, 'c750c254305e3a2e540fb28de5689722a5fedf895fba1e3a6990bcb3e2f606b9', '2025-10-03 13:17:53', 'Ethakpemi Jude', 'student', NULL, 'Faculty of Computing', '08160949520', 'Official visit', '1', '2025-10-02 20:17:53', '0000-00-00 00:00:00', '2025-10-02', 0, 219, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `keycards`
--
ALTER TABLE `keycards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_number` (`card_number`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_admin_destination` (`destination_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `keycard_id` (`keycard_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `keycards`
--
ALTER TABLE `keycards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keycards`
--
ALTER TABLE `keycards`
  ADD CONSTRAINT `keycards_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_admin_destination` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_ibfk_1` FOREIGN KEY (`keycard_id`) REFERENCES `keycards` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
