-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2023 at 03:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tremblay-Simonis', '2023-11-21 14:57:06', '2023-11-21 14:57:06'),
(2, 'Lindgren PLC', '2023-11-21 14:57:06', '2023-11-21 14:57:06'),
(3, 'Moen, Toy and Runte', '2023-11-21 14:57:06', '2023-11-21 14:57:06'),
(4, 'Lebsack-Mills', '2023-11-21 14:57:06', '2023-11-21 14:57:06'),
(5, 'Hauck-Ferry', '2023-11-21 14:57:06', '2023-11-21 14:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `dep_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `salary`, `dep_id`, `created_at`, `updated_at`) VALUES
(5, 'Jarrell Thiel', 96716.74, 2, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(6, 'Ashtyn Jacobi', 37739.08, 2, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(7, 'Lavina Kuhn', 92459.41, 4, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(8, 'Aglae Hahn III', 37556.14, 3, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(9, 'bilal', 83726.35, 4, '2023-11-21 14:57:07', '2023-11-21 18:30:33'),
(10, 'Alejandra Huels', 70211.27, 1, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(11, 'Dr. Paul Schuppe', 33600.92, 5, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(12, 'Dr. Tracy Morar', 55143.20, 2, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(13, 'Annabell O\'Keefe', 35488.01, 5, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(14, 'Rafael Reinger', 40109.88, 5, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(15, 'Dr. Russel Glover', 99427.95, 1, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(16, 'Gideon Hayes', 52281.03, 4, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(17, 'Mr. Nicola Macejkovic', 67075.64, 3, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(18, 'Veronica Dibbert DVM', 46364.00, 5, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(19, 'Antoinette Zemlak MD', 42540.59, 4, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(20, 'Mrs. Loraine Parker DVM', 90824.33, 2, '2023-11-21 14:57:07', '2023-11-21 14:57:07'),
(22, 'mohammed', 12321.10, 2, '2023-11-21 18:26:04', '2023-11-21 18:26:04'),
(23, 'sleaman', 12321.10, 2, '2023-11-21 19:26:27', '2023-11-21 19:26:27');

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
(1, '2011_11_21_172927_create_roles_table', 1),
(2, '2012_10_12_000000_create_users_table', 2),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(4, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2023_11_21_074835_create_departments_table', 2),
(7, '2023_11_21_075012_create_employees_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

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
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bilal', 'bilal@gmail.com', NULL, '$2y$12$vSbE4OX7OQBLalJK87NWmexrAMqODBZA8HEahjPFId3LMnOyBI9yG', 2, NULL, '2023-11-21 16:39:29', '2023-11-21 16:39:29'),
(2, 'mohammed', 'mohammed@gmail.com', NULL, '$2y$12$ylz0AzkQ1wZ4VIBcJOAfceq0Na8fN9pv5aS7F/f0oWX6RZk4PJUHm', 2, NULL, '2023-11-21 16:46:15', '2023-11-21 16:46:15'),
(3, 'yazan', 'yazan@gmail.com', NULL, '$2y$12$azSDgNkBLt4zIjnR6DHiIu8CWot6QnNdBYFWOuin.UoUsRyIFm3Ja', 2, NULL, '2023-11-21 16:50:32', '2023-11-21 16:50:32'),
(4, 'mazen', 'mazen@gmail.com', NULL, '$2y$12$/z59.JAg2.SRACTsc7z5qekGKSe.yjq/6H9gSkMokatSSDKz1GSHa', 2, NULL, '2023-11-21 17:42:27', '2023-11-21 17:42:27'),
(6, 'mazen', 'm@gmail.com', NULL, '$2y$12$AjmFiaFXjrJDH8k/pvvLh.U/Vjt4THxx/JiAqvgHwY0d8NJ3C2b4W', 1, NULL, '2023-11-21 17:42:48', '2023-11-21 17:42:48'),
(7, 'laith', 'laith@gmail.com', NULL, '$2y$12$5ruwqoFnSxSKqHCf6TN2Leue9d7n5ecrvgr9KfLj/3u.ABXlCch0C', 2, NULL, '2023-11-21 17:50:08', '2023-11-21 17:50:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_dep_id_foreign` (`dep_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dep_id_foreign` FOREIGN KEY (`dep_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
