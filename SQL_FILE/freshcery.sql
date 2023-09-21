-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 03:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshcery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'admin@gmail.com', '$2y$10$Y.2.9DL2NtNk6AT.c4xRj..iInt8KS5yainiiTZWv6O/w3wPNkgUC', '2023-07-31 11:56:09', '2023-07-31 11:56:09'),
(3, 'admin.first', 'admin.first@gmail.com', '$2y$10$yWQLpzWLm/ORjvlTKTprUuXUyE/IS/6eMb6oKqpOwo.hoRTjIscXq', '2023-08-01 05:49:29', '2023-08-01 05:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `pro_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `subtotal` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `image`, `price`, `qty`, `pro_id`, `user_id`, `subtotal`, `created_at`, `updated_at`) VALUES
(10, 'meat', 'meats.jpg', '20', 2, 1, 1, 40, '2023-08-02 05:08:30', '2023-08-02 05:08:30'),
(11, 'Chicken', 'Chicken.webp', '10', 3, 7, 1, 30, '2023-08-02 06:54:11', '2023-08-02 06:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Meats', 'meats.jpg', 'roast-leg', '2023-07-27 08:35:11', '2023-07-27 08:35:11'),
(2, 'Fishes', 'fish.jpg', 'fish-1', '2023-07-27 08:35:11', '2023-07-27 08:35:11'),
(3, 'Frozen Foods', 'frozen.jpg', 'french-fries', '2023-07-27 08:35:11', '2023-07-27 08:35:11'),
(4, 'Fruits', 'fruits.jpg', 'apple', '2023-07-27 08:35:11', '2023-07-27 08:35:11'),
(5, 'VEGETABLES', 'vegetables.jpg', 'carrot', '2023-07-27 08:35:11', '2023-07-27 08:35:11');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `town` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zip_code` int(30) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `price` varchar(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `order_notes` text NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Processing',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `last_name`, `address`, `town`, `state`, `zip_code`, `email`, `phone_number`, `price`, `user_id`, `order_notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'Hassan', 'Objectively initiate exceptional infrastructures through highly efficient core competencies.', 'twon', 'state', 102992, 'moh@gmail.com', '01929322', '70', 1, 'Authoritatively deploy impactful action items with plug-and-play content. Competently administrate interoperable partnerships after empowered supply chains. Rapidiously disintermediate progressive', 'Processing', '2023-07-30 06:54:55', '2023-07-30 06:54:55'),
(2, 'Mohamed', 'Hassan', 'Objectively initiate exceptional infrastructures through highly efficient core competencies.', 'twon', 'state', 102992, 'moh@gmail.com', '01929322', '70', 1, 'Authoritatively deploy impactful action items with plug-and-play content. Competently administrate interoperable partnerships after empowered supply chains. Rapidiously disintermediate progressive', 'Processing', '2023-07-30 06:56:19', '2023-07-30 06:56:19'),
(4, 'Mohamed', 'Hassan', 'Competently conceptualize value-added results rather than bricks-and-clicks growth strategies.', 'twon', 'state', 109922, 'moha@gmial.com', '019299322', '70', 1, 'Professionally streamline principle-centered e-business with customer directed materials. Dynamically architect emerging infomediaries', 'Delivered', '2023-07-30 08:25:24', '2023-08-01 08:41:46'),
(5, 'Mohamed', 'Hassan', 'Professionally deploy emerging leadership skills through distinctive e-business. Quickly exploit ethical e-markets through accurate methods of', 'town', 'country', 1002929, 'moha@gmial.com', '01929233', '30', 1, 'Phosfluorescently customize visionary applications through user friendly technology. Dynamically benchmark innovative partnerships and equity', 'Processing', '2023-07-30 08:46:10', '2023-08-01 08:41:30'),
(6, 'Mohamed', 'HASSAN', 'Conveniently myocardinate high-quality relationships through error-free products. Seamlessly exploit holistic models whereas market-driven interfaces. 2', 'town', 'state', 998766, 'moh@gmail.com', '0090099', '60', 1, 'Conveniently myocardinate high-quality relationships through error-free products. Seamlessly exploit holistic models whereas market-driven interfaces.', 'Processing', '2023-08-02 05:12:43', '2023-08-02 05:12:43'),
(7, 'Mohamed', 'Hassan', 'Phosfluorescently cultivate granular bandwidth through synergistic technologies. Intrinsicly exploit customized strategic theme areas with seamless core', 'town', 'state', 92981, 'moh.mail@gmial.com', '019293922', '90', 1, 'Phosfluorescently cultivate granular bandwidth through synergistic technologies. Intrinsicly exploit customized strategic theme areas with seamless core', 'Delivered', '2023-08-02 06:56:37', '2023-08-02 07:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(10) NOT NULL,
  `exp_date` varchar(30) NOT NULL,
  `category_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `exp_date`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'meat', 'meats.jpg', 'Proactively reinvent future-proof expertise without effective solutions. Dynamically e-enable standardized alignments whereas proactive niches. Competently leverage other\'s low-risk high-yield innovation via functionalized niche markets. ', '20', '2025', 1, '2023-07-27 09:52:44', '2023-07-27 09:52:44'),
(2, 'Apple', 'fruits.jpg', 'Completely pontificate open-source infomediaries whereas best-of-breed infomediaries. Enthusiastically productize alternative applications before competitive catalysts for change. Progressively seize granular schemas without corporate vortals. ', '10', '2025', 4, '2023-07-27 09:52:44', '2023-07-27 09:52:44'),
(4, 'Tomatos', 'vegetables.jpg', 'Proactively reinvent future-proof expertise without effective solutions. Dynamically e-enable standardized alignments whereas proactive niches. Competently leverage other\'s low-risk high-yield innovation via functionalized niche markets. ', '10', '2025', 5, '2023-07-27 09:52:44', '2023-07-27 09:52:44'),
(5, 'Fish', 'fish.jpg', 'Proactively reinvent future-proof expertise without effective solutions. Dynamically e-enable standardized alignments whereas proactive niches. Competently leverage other\'s low-risk high-yield innovation via functionalized niche markets. ', '10', '2025', 2, '2023-07-27 09:52:44', '2023-07-27 09:52:44'),
(7, 'Chicken', 'Chicken.webp', 'Proactively reinvent future-proof expertise without effective solutions. Dynamically e-enable standardized alignments whereas proactive niches. Competently leverage other\'s low-risk high-yield innovation via functionalized niche markets. ', '10', '2025', 1, '2023-07-27 09:52:44', '2023-07-27 09:52:44');

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
  `address` text DEFAULT NULL,
  `town` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip_code` int(30) DEFAULT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'web-coding.png',
  `phone_number` int(40) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `town`, `state`, `zip_code`, `image`, `phone_number`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohmaed', 'mo@gmail.com', NULL, '$2y$10$Y.2.9DL2NtNk6AT.c4xRj..iInt8KS5yainiiTZWv6O/w3wPNkgUC', 'Credibly mesh cost effective outsourcing with customer directed collaboration and idea-sharing. Compellingly grow bricks-and-clicks ROI vis-a-vis resource sucking value. Progressively maintain', NULL, 'Country', 1929932, 'web-coding.png', 1929932, NULL, '2023-07-26 06:20:58', '2023-07-31 06:37:11'),
(2, 'John', 'john123@gmail.com', NULL, '$2y$10$jpZcIoKlqIqHtABcq1WR3e39PsClSSOJgIgiD88a1llLVbfykTy6y', NULL, NULL, NULL, NULL, 'web-coding.png', NULL, NULL, '2023-07-26 07:55:19', '2023-07-26 07:55:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
