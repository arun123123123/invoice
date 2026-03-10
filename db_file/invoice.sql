-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 09:06 AM
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
-- Database: `invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bill_number` varchar(255) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_amount` decimal(10,2) NOT NULL,
  `payed_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `balance_payable` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `bill_number`, `invoice_number`, `invoice_date`, `invoice_amount`, `payed_amount`, `balance_payable`, `created_at`, `updated_at`) VALUES
(1, 10, 'BILL-0001', 'INV-0001', '2026-03-09', 8808.00, 0.00, 8808.00, '2026-03-10 02:12:24', '2026-03-10 02:12:24'),
(2, 10, 'BILL-0002', 'INV-0002', '2026-03-08', 19907.00, 0.00, 19907.00, '2026-03-10 02:12:24', '2026-03-10 02:12:24'),
(3, 9, 'BILL-0003', 'INV-0003', '2026-03-07', 15757.00, 0.00, 15757.00, '2026-03-10 02:12:24', '2026-03-10 02:12:24'),
(4, 8, 'BILL-0004', 'INV-0004', '2026-03-06', 14411.00, 0.00, 14411.00, '2026-03-10 02:12:24', '2026-03-10 02:12:24'),
(5, 2, 'BILL-0005', 'INV-0005', '2026-03-05', 13352.00, 52.00, 13300.00, '2026-03-10 02:12:24', '2026-03-10 02:20:12'),
(6, 3, 'BILL-0006', 'INV-0006', '2026-03-04', 17441.00, 0.00, 17441.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(7, 7, 'BILL-0007', 'INV-0007', '2026-03-03', 15734.00, 0.00, 15734.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(8, 3, 'BILL-0008', 'INV-0008', '2026-03-02', 5663.00, 500.00, 5163.00, '2026-03-10 02:12:25', '2026-03-10 02:30:35'),
(9, 4, 'BILL-0009', 'INV-0009', '2026-03-01', 6012.00, 0.00, 6012.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(10, 10, 'BILL-0010', 'INV-0010', '2026-02-28', 6803.00, 0.00, 6803.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(11, 2, 'BILL-0011', 'INV-0011', '2026-02-27', 8948.00, 8948.00, 0.00, '2026-03-10 02:12:25', '2026-03-10 02:20:12'),
(12, 10, 'BILL-0012', 'INV-0012', '2026-02-26', 7232.00, 0.00, 7232.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(13, 6, 'BILL-0013', 'INV-0013', '2026-02-25', 6589.00, 0.00, 6589.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(14, 7, 'BILL-0014', 'INV-0014', '2026-02-24', 14339.00, 0.00, 14339.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(15, 8, 'BILL-0015', 'INV-0015', '2026-02-23', 7808.00, 0.00, 7808.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(16, 8, 'BILL-0016', 'INV-0016', '2026-02-22', 18262.00, 0.00, 18262.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(17, 4, 'BILL-0017', 'INV-0017', '2026-02-21', 14396.00, 0.00, 14396.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(18, 4, 'BILL-0018', 'INV-0018', '2026-02-20', 6464.00, 0.00, 6464.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(19, 10, 'BILL-0019', 'INV-0019', '2026-02-19', 13368.00, 0.00, 13368.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(20, 9, 'BILL-0020', 'INV-0020', '2026-02-18', 12314.00, 0.00, 12314.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(21, 6, 'BILL-0021', 'INV-0021', '2026-02-17', 11284.00, 0.00, 11284.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(22, 10, 'BILL-0022', 'INV-0022', '2026-02-16', 19673.00, 0.00, 19673.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(23, 8, 'BILL-0023', 'INV-0023', '2026-02-15', 15013.00, 0.00, 15013.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25'),
(24, 4, 'BILL-0024', 'INV-0024', '2026-02-14', 10903.00, 100.00, 10803.00, '2026-03-10 02:12:25', '2026-03-10 02:18:10'),
(25, 7, 'BILL-0025', 'INV-0025', '2026-02-13', 8858.00, 0.00, 8858.00, '2026-03-10 02:12:25', '2026-03-10 02:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_03_10_055127_add_details_to_users_table', 2),
(5, '2026_03_10_055900_create_invoices_table', 3),
(6, '2026_03_10_070430_create_payments_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `payment_date`, `amount`, `created_at`, `updated_at`) VALUES
(1, 3, '2026-03-18', 200.00, '2026-03-10 02:12:53', '2026-03-10 02:12:53'),
(2, 4, '2026-03-25', 100.00, '2026-03-10 02:18:10', '2026-03-10 02:18:10'),
(3, 2, '2026-03-19', 2000.00, '2026-03-10 02:19:43', '2026-03-10 02:19:43'),
(4, 2, '2026-03-19', 7000.00, '2026-03-10 02:20:12', '2026-03-10 02:20:12'),
(5, 3, '2026-03-25', 300.00, '2026-03-10 02:30:35', '2026-03-10 02:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('V0Ch78ho8oA2uUaEnGDaOs3H31J6fEsZe0ZPe4QN', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1JVNUlnNmdIR05PSjdYRGZJSEFqZmN0Q1A2MUY5OGp0YjhHVEFXRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1773129645);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Super Admin', 'superadmin@example.com', NULL, '$2y$12$GbQwkLgJul/DFjgvTkQ/zO4mM0c9rdfXlJ3wcbL3tjfHYh6Pdikc.', NULL, '2026-03-10 00:24:15', '2026-03-10 00:24:15', 'superadmin'),
(2, 'User 1', 'user1@example.com', NULL, '$2y$12$JGq5UtgeDr8FtKlowHc9reS63g62zhILWnBqqs0EPB/auU/eRkW5C', NULL, '2026-03-10 00:24:15', '2026-03-10 00:24:15', 'user'),
(3, 'User 2', 'user2@example.com', NULL, '$2y$12$65dfh9Jp9a3VAlNuSrFxje97aIMBE/EwvxKGMMnHZuaWZPalQ0Xr6', NULL, '2026-03-10 00:24:15', '2026-03-10 00:24:15', 'user'),
(4, 'User 3', 'user3@example.com', NULL, '$2y$12$5/eNBo4aVCKr.D6XlXgm8eOJvde8Al2xSMHQbP8vzyKfP5R8oOc6a', NULL, '2026-03-10 00:24:15', '2026-03-10 00:24:15', 'user'),
(5, 'User 4', 'user4@example.com', NULL, '$2y$12$gfdWHtUP5SDQO0k6bfEtmObVc0PL60/qTebcCMYATLFW1NFCrA7ha', NULL, '2026-03-10 00:24:16', '2026-03-10 00:24:16', 'user'),
(6, 'User 5', 'user5@example.com', NULL, '$2y$12$rwfvP76B07amy.VnqezfXOYSCvYblGY0oeOQ71TAyhSVei/h4cb16', NULL, '2026-03-10 00:24:16', '2026-03-10 00:24:16', 'user'),
(7, 'User 6', 'user6@example.com', NULL, '$2y$12$Od0DqIwP/l0X6jeXU1FgeO2MXtBC5CBTA9CIXy.zQHE7rIyc5iNxa', NULL, '2026-03-10 00:24:16', '2026-03-10 00:24:16', 'user'),
(8, 'User 7', 'user7@example.com', NULL, '$2y$12$j4xTMYuBleUw6N.NxoZB7eDdEdti6Mbp38C66SzzGULBT0y7yVXUy', NULL, '2026-03-10 00:24:16', '2026-03-10 00:24:16', 'user'),
(9, 'User 8', 'user8@example.com', NULL, '$2y$12$edErtPIE/MbIlWxfkQykvuRhPG0lblE/aUciMuHW/EUKNiW/hnpV6', NULL, '2026-03-10 00:24:16', '2026-03-10 00:24:16', 'user'),
(10, 'User 9', 'user9@example.com', NULL, '$2y$12$6197Df7k3xlMNNu4JQL5x.O0ri5zB9y8R3SPijIs9ZxBrLDcqhAGW', NULL, '2026-03-10 00:24:17', '2026-03-10 00:24:17', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
