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
-- Database: `brief5`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `renter_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `property_id`, `renter_id`, `start_date`, `end_date`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 1, '2023-12-02', '2023-12-07', 529.00, 'pending', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(2, 6, 5, '2023-12-03', '2023-12-08', 443.00, 'confirmed', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(3, 6, 4, '2023-12-04', '2023-12-09', 102.00, 'pending', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(4, 1, 5, '2023-12-05', '2023-12-10', 297.00, 'confirmed', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(5, 1, 5, '2023-12-06', '2023-12-11', 303.00, 'pending', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(6, 3, 1, '2023-12-07', '2023-12-12', 343.00, 'confirmed', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(7, 3, 10, '2023-12-08', '2023-12-13', 867.00, 'pending', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(8, 2, 1, '2023-12-09', '2023-12-14', 559.00, 'confirmed', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(9, 9, 1, '2023-12-10', '2023-12-15', 145.00, 'pending', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(10, 10, 8, '2023-12-11', '2023-12-16', 925.00, 'confirmed', '2023-12-01 15:55:37', '2023-12-01 15:55:37');

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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Amman', '2023-12-01 15:55:34', '2023-12-01 15:55:34'),
(2, 'Irbid', '2023-12-01 15:55:34', '2023-12-01 15:55:34'),
(3, 'Zarqa\'a', '2023-12-01 15:55:34', '2023-12-01 15:55:34'),
(4, 'Aqaba', '2023-12-01 15:55:34', '2023-12-01 15:55:34'),
(5, 'Salt', '2023-12-01 15:55:34', '2023-12-01 15:55:34');

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
(31, '2012_11_29_155720_create_roles_table', 1),
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(36, '2020_11_29_155915_create_property_types_table', 1),
(37, '2020_11_29_155943_create_locations_table', 1),
(38, '2023_11_29_155848_create_properties_table', 1),
(39, '2023_11_29_160052_create_bookings_table', 1),
(40, '2023_11_29_160114_create_reviews_table', 1);

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
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `lessor_id` bigint(20) UNSIGNED NOT NULL,
  `property_type_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `one_day_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `image`, `lessor_id`, `property_type_id`, `location_id`, `one_day_price`, `created_at`, `updated_at`) VALUES
(1, 'Property 1', 'property_1.jpg', 10, 7, 3, 458.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(2, 'Property 2', 'property_2.jpg', 3, 4, 5, 88.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(3, 'Property 3', 'property_3.jpg', 9, 4, 2, 499.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(4, 'Property 4', 'property_4.jpg', 1, 9, 5, 277.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(5, 'Property 5', 'property_5.jpg', 9, 2, 5, 165.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(6, 'Property 6', 'property_6.jpg', 4, 8, 3, 227.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(7, 'Property 7', 'property_7.jpg', 8, 9, 3, 263.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(8, 'Property 8', 'property_8.jpg', 3, 8, 3, 431.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(9, 'Property 9', 'property_9.jpg', 6, 9, 2, 445.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(10, 'Property 10', 'property_10.jpg', 4, 8, 2, 446.00, '2023-12-01 15:55:37', '2023-12-01 15:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Property Type 1', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(2, 'Property Type 2', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(3, 'Property Type 3', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(4, 'Property Type 4', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(5, 'Property Type 5', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(6, 'Property Type 6', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(7, 'Property Type 7', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(8, 'Property Type 8', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(9, 'Property Type 9', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(10, 'Property Type 10', '2023-12-01 15:55:37', '2023-12-01 15:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `renter_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `property_id`, `renter_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 2, 'This is review 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(2, 8, 4, 5, 'This is review 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(3, 1, 5, 4, 'This is review 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(4, 8, 1, 1, 'This is review 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(5, 9, 1, 2, 'This is review 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(6, 2, 1, 3, 'This is review 6. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(7, 9, 2, 3, 'This is review 7. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(8, 1, 5, 5, 'This is review 8. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(9, 3, 1, 1, 'This is review 9. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37'),
(10, 2, 10, 4, 'This is review 10. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-12-01 15:55:37', '2023-12-01 15:55:37');

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
(1, 'Admin', '2023-12-01 15:55:34', '2023-12-01 15:55:34'),
(2, 'Landlord', '2023-12-01 15:55:34', '2023-12-01 15:55:34'),
(3, 'Renter', '2023-12-01 15:55:34', '2023-12-01 15:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `image`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed', 'images/1701524204.jpg', 'mohammedghnimat@gmail.com', '2023-12-01 15:55:34', '$2y$12$Uoy1Ska8ESTijOcQ4tQCp.Bd8fqLO9N/dWVTonEvlZmI.d3vPaJfW', 3, 'ZDREkAdCH9', '2023-12-01 15:55:35', '2023-12-02 10:36:44'),
(2, 'User2', 'image2png', 'user2@example.com', '2023-12-01 15:55:35', '$2y$12$2.laWIXm3pWOWXb5K8kmleWpQXbQPqnMWgSoKLx0289p/MwzBkw.e', 2, 'Jns1vS96DO', '2023-12-01 15:55:35', '2023-12-01 15:55:35'),
(3, 'User3', 'image3png', 'user3@example.com', '2023-12-01 15:55:35', '$2y$12$Is0Gau8.0PGVNGgevSyjl.sN8pY9uqf.9J2WuGLmzj8p7H1O/H1E.', 1, 'ZsjKoS2jmA', '2023-12-01 15:55:35', '2023-12-01 15:55:35'),
(4, 'User4', 'image4png', 'user4@example.com', '2023-12-01 15:55:35', '$2y$12$o6XIhXOyOQtVcwbDbDthmufocaBk4W.9RwRYP4z.E8Mf3q9PPJnRS', 3, 'Qpod4BKO9e', '2023-12-01 15:55:35', '2023-12-01 15:55:35'),
(5, 'User5', 'image5png', 'user5@example.com', '2023-12-01 15:55:35', '$2y$12$pWE8bpp/p6nTieFCCvBy4eoguozkAwDIe5vuC9S9cXbCl/sYc0sMm', 3, 'z2qdoVT3mk', '2023-12-01 15:55:36', '2023-12-01 15:55:36'),
(6, 'User6', 'image6png', 'user6@example.com', '2023-12-01 15:55:36', '$2y$12$H7ohiWVKp5b./XQ8JzeTFO8sKXJNatQ6msXuMPYgXaZ..xoLycfGG', 1, 'Yavl3MEibX', '2023-12-01 15:55:36', '2023-12-01 15:55:36'),
(7, 'User7', 'image7png', 'user7@example.com', '2023-12-01 15:55:36', '$2y$12$6MGNChpSX4RAwGxuR8JZEOCqtWzjBgoUJxKFU36ACCw15fQYjElcO', 1, 'xvSEeJT0kq', '2023-12-01 15:55:36', '2023-12-01 15:55:36'),
(8, 'User8', 'image8png', 'user8@example.com', '2023-12-01 15:55:36', '$2y$12$iLRQcMdW9kaOMcsdJqqKyeFhtBDiUJO/7cG7wkXFtcqnyHuigeWh6', 3, 'tfWwrFQtFK', '2023-12-01 15:55:36', '2023-12-01 15:55:36'),
(9, 'User9', 'image9png', 'user9@example.com', '2023-12-01 15:55:36', '$2y$12$neLdWo3Uv8hQqf2hXzbtf.L9ZOXhqNdepT.4YQqP877hIrXTX9X02', 2, 'xqF4QumvPj', '2023-12-01 15:55:36', '2023-12-01 15:55:36'),
(10, 'User10', 'image10png', 'user10@example.com', '2023-12-01 15:55:36', '$2y$12$xr4E0jH0jBawSzNEOYfyhec.bNG3OVO3xWkzbg.cW40Qnb8FdzB3e', 3, 'EfMPAxf5fz', '2023-12-01 15:55:37', '2023-12-01 15:55:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_property_id_foreign` (`property_id`),
  ADD KEY `bookings_renter_id_foreign` (`renter_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_lessor_id_foreign` (`lessor_id`),
  ADD KEY `properties_property_type_id_foreign` (`property_type_id`),
  ADD KEY `properties_location_id_foreign` (`location_id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_property_id_foreign` (`property_id`),
  ADD KEY `reviews_renter_id_foreign` (`renter_id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_renter_id_foreign` FOREIGN KEY (`renter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_lessor_id_foreign` FOREIGN KEY (`lessor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `properties_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `properties_property_type_id_foreign` FOREIGN KEY (`property_type_id`) REFERENCES `property_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_renter_id_foreign` FOREIGN KEY (`renter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
