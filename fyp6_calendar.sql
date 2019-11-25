-- phpMyAdmin SQL Dump
-- version 5.0.0-alpha1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2019 at 10:42 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp6_calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `atts`
--

CREATE TABLE `atts` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atts`
--

INSERT INTO `atts` (`id`, `uuid`, `title`, `cover`, `created_at`, `updated_at`) VALUES
(6, '04e68650-0f39-11ea-b609-a1796b0d37a6', 'Lokman Madani', '0335429', '2019-11-24 20:06:55', '2019-11-24 20:06:55'),
(7, 'a850aae0-0f39-11ea-90e3-739379faab23', 'john', '00000', '2019-11-24 20:11:29', '2019-11-24 20:11:29'),
(8, '46359ed0-0f45-11ea-8860-1129e61d3c6a', 'John SMith', '0335429', '2019-11-24 21:34:39', '2019-11-24 21:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `uuid`, `title`, `cover`, `created_at`, `updated_at`) VALUES
(1, '90aa6580-0eb5-11ea-b80b-4bc566bccd6f', 'carrot', 'carrot.jpg', '2019-11-24 04:25:56', '2019-11-24 04:25:56'),
(2, 'dae8a4e0-0eb5-11ea-9acf-e1624168b8c9', 'Exam', 'Assignment cover sheet.pdf', '2019-11-24 04:28:01', '2019-11-24 04:28:01'),
(3, '09173620-0ec7-11ea-a0c5-4d3b1a4e8bea', 'Feedback', 'feedback.txt', '2019-11-24 06:31:00', '2019-11-24 06:31:00'),
(4, '0b7158c0-0f2b-11ea-a2f9-3396ed435e24', 'db', 'hospital_db.sql', '2019-11-24 18:26:53', '2019-11-24 18:26:53'),
(5, 'fcf9a320-0f44-11ea-a9c3-cd64debf3f43', 'assignment', 'DIT Computing Project Report Structure - ChapterOutline(2016).pdf', '2019-11-24 21:32:36', '2019-11-24 21:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_20_025910_create_events_table', 1),
(8, '2019_11_24_084027_create_books_table', 2),
(9, '2019_11_25_034606_create_atts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lokman Madani', 'lokmanbae@gmail.com', '$2y$10$ACPex.KdsMEz6Xq4MnYoy.rn8vVhCRVQ./vbuETS/TPUQmWq7UaVa', 'IXTndxbUBPt9pklxH5cxUjQk7sBJqtzNxqvwkscFEg2e2kDTaEibOSlck5E9', '2019-11-23 20:01:56', '2019-11-23 20:01:56'),
(2, 'Khandoker Akib', 'akibmj2010@gmail.com', '$2y$10$fd26KPEZdtc2h/bLaMyIAeFrVJI.D6HoPfms4P5NbabrRM9ABBYae', 'lL43jenAtIThqJqVz4OzJOJcClUzVerTlhPDHAw23jx4JgsvngbAXHHTY2BZ', '2019-11-24 00:56:04', '2019-11-24 00:56:04'),
(3, 'as', 's@gmail.com', '$2y$10$8wD0lB8vg7u/a0L1iSR6dOrCk.iWgYPcAeQ6TjCLt7g6EwmF9ysvS', 'YLw447HVsZ9sVxyfc5yAFyrieOXjqHbhCCu42tp9IGunSGpyvgXU2UbEwmRh', '2019-11-24 04:04:43', '2019-11-24 04:04:43'),
(4, 'John Smith', 'john@gmail.com', '$2y$10$fZvbhR.y98kc1dMNBmnJVu/TJTdpikuGwu9qKW1PTdMbe2EKzfBD6', 'AA2vJGHR7RcqBTVJDgKiUQXdHF9glWkGm2wokXymhbYI1IZJNEZLM6rzUU0Y', '2019-11-24 06:07:56', '2019-11-24 06:07:56'),
(5, 'John Mayer', 'mayer@gmail.com', '$2y$10$emvWyrQmww5eRY17wBBhze1plJo7/1k5.pKxn1p9WfU7Q6D69jDq2', 'rBcHhYfd6qWm3iMvt0U0Go6nZxjYg1hpNSd3RwmyRHRFjzPJlPQM6ujveEMU', '2019-11-24 06:10:30', '2019-11-24 06:10:30'),
(6, 'imthiyaas', 'imthiyaas73@gmail.com', '$2y$10$AexkZnFKbrhEi.i4M.c0keSMNWtNfcW0n95JODFWvt3ysTyq/qOPS', 'IRwtaiJ2poTV7quW6gDLFBgSCoGLZ3RzGV1bwtxS1qDwxIALB513xXrNJkKS', '2019-11-24 18:25:43', '2019-11-24 18:25:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atts`
--
ALTER TABLE `atts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `atts`
--
ALTER TABLE `atts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

