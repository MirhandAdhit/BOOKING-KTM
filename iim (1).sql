-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2026 at 02:05 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iim`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nim` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fakultas` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prodi` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_hp` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `nama`, `nim`, `fakultas`, `prodi`, `no_hp`, `tanggal`, `jam`, `status`, `created_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rejected', '2026-01-18 02:04:10'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rejected', '2026-01-18 02:05:19'),
(3, 'Muhammad Imam Syakri', '2311513009', 'FTI', 'Teknik Komputer', NULL, '2026-01-20', '10:00', 'pending', '2026-01-18 02:22:56'),
(4, 'Muhammad Imam Syakri', '2311513009', 'FTI', 'Teknik Komputer', NULL, '2026-01-20', '10:00', 'pending', '2026-01-18 02:23:28'),
(5, 'Muhammad Imam Syakri', '2311513009', 'FTI', 'Teknik Komputer', NULL, '2026-01-20', '10:00', 'pending', '2026-01-18 02:23:36'),
(10, 'rapip', '2311512025', 'fti', NULL, NULL, '2026-01-25', '09:00', 'rejected', '2026-01-25 08:32:23'),
(11, 'beti', '2311512035', 'FTI', NULL, NULL, '2026-01-29', '11:00', 'rejected', '2026-01-26 00:06:18'),
(12, 'vdsvsd', '32423432', 'gvreger', 'vbfebe', NULL, '2026-01-30', '09:00', 'approved', '2026-01-26 00:45:04'),
(13, 'BETSKUY', '2311512029', 'FT', 'MESIN', '082283577421', '2026-01-30', '10:00', 'approved', '2026-01-26 01:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` enum('ADMIN','USER') COLLATE utf8mb4_general_ci DEFAULT 'USER',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Admin', 'admin@email.com', '$2y$10$.bTFafFBLmQ3d8nB5UvdCuCAL1BgDUX97YKF/UJKZIg2BVw6jIslu', 'ADMIN', '2026-01-18 12:51:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
