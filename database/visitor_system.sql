-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2026 at 12:05 AM
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
(1, 'director', '$2y$10$lBvPfeQzTNtjbQ/K8EOOpeUTa4wDXOqOEXA.xjeTWhM5BAqQ1rgGO', 'director', NULL),
(5, 'superadmin', '$2y$10$lBvPfeQzTNtjbQ/K8EOOpeUTa4wDXOqOEXA.xjeTWhM5BAqQ1rgGO', 'super_admin', NULL),
(7, 'reception', '$2y$10$lBvPfeQzTNtjbQ/K8EOOpeUTa4wDXOqOEXA.xjeTWhM5BAqQ1rgGO', 'receptionist', NULL),
(9, 'gaminghub', '$2y$10$lBvPfeQzTNtjbQ/K8EOOpeUTa4wDXOqOEXA.xjeTWhM5BAqQ1rgGO', 'destination_admin', 3),
(10, 'nelfund', '$2y$10$lBvPfeQzTNtjbQ/K8EOOpeUTa4wDXOqOEXA.xjeTWhM5BAqQ1rgGO', 'destination_admin', 4),
(11, 'directorates', '$2y$10$lBvPfeQzTNtjbQ/K8EOOpeUTa4wDXOqOEXA.xjeTWhM5BAqQ1rgGO', 'destination_admin', 5),
(17, 'itemsboardsecretariat', '$2y$10$lBvPfeQzTNtjbQ/K8EOOpeUTa4wDXOqOEXA.xjeTWhM5BAqQ1rgGO', 'destination_admin', 2),
(21, 'directorate_admin', '$2y$10$ivGUCFdt5js.hHItLpIm/.4YR7SlO/e98J6/qI.qFhHf85DQHHlLK', 'destination_admin', 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_admin_destination` (`destination_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_admin_destination` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
