-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 06:32 AM
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
-- Database: `blogxxx`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(255) NOT NULL COMMENT 'หัวข้อ',
  `description` text NOT NULL COMMENT 'รายละเอียด',
  `tags` varchar(255) DEFAULT NULL COMMENT 'tag บท',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `links` varchar(255) NOT NULL COMMENT 'Link ที่อ้างอิง',
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `topic`, `description`, `tags`, `created_at`, `updated_at`, `user_id`, `links`, `status`) VALUES
(1, 'A Word Can Be Used in a Sentence Many Ways', 'Sometimes to understand a word\'s meaning you need more than a definition; you need to see the word used in a sentence. At YourDictionary, we give you the tools to learn what a word means and how to use it correctly. With this sentence maker, simply type a word in the search bar and see a variety of sentences with that word used in its different ways. Our sentence generator can provide more context and relevance, ensuring you use a word the right way.', 'Dictionary, Sentence, Word\'s Meaning', '2023-05-18 02:21:00', '2023-07-22 01:14:12', 1, 'https://laravel.com/', 1),
(2, 'How Do Our Sentence Examples Help You?', 'Whether it’s simple sentences for those just learning the English language or phrasing for an academic paper, this easy-to-use sentence generator will help you choose your words with confidence.\r\n\r\nWith our sentence examples, seeing a word within the context of a sentence helps you better understand it and know how to use it correctly. From long to short, simple to complex, this tool can assist you with how to use words that may have more than one meaning.', 'Examples, Phrasing, Academic', '2023-05-18 02:21:00', '2023-07-22 00:44:13', 1, 'https://getbootstrap.com/', 0),
(3, 'What is a Sentence? TEST', 'Understand how words are used within the sentence, no matter the structure, and get inspiration for writing your own sentence correctly with the help of these example sentences.\r\nTEST', 'Understand, Inspiration, Complexities, TEST', '2023-05-18 21:06:58', '2023-07-30 21:30:44', 1, 'https://www.w3schools.com/php/default.asp', 1),
(14, 'Backbencher Sentence Examples', 'Afterward, despite been offered various minor unpaid posts in the Government, he preferred to remain a backbencher.', 'Backbencher, Afterward, despite', '2023-07-09 01:10:12', '2023-07-26 20:10:18', 1, 'https://getbootstrap.com/', 0),
(15, 'YourDictionary on Instagram', 'Follow us for grammar hacks, amazing facts, and words you didn\'t even know you needed.', 'Dictionary, Instagram, grammar', '2023-07-09 01:12:30', '2023-07-09 01:12:30', 1, 'https://axios-http.com/docs/intro', 1),
(17, 'Complex Sentences', 'A complex sentence is made up of an independent clause and one or more dependent clauses connected to it. A dependent clause is similar to an independent clause, or complete sentence, but it lacks one of the elements that would make it a complete sentence.', 'Complex, independent, lacks', '2023-07-13 20:22:43', '2023-07-22 00:33:50', 1, 'https://facultyweb.ivcc.edu/rrambo/eng1001/sentences.htm', 0),
(18, 'Role back input data.', 'i know href is not use !! how can assign different page? (if i click to button redirect to some page (href)? ) how? the \"id\" i define is not working... i think b/c it s different page ! pop up only work in single page??', 'Understand , Words, Inspiration', '2023-07-22 00:25:01', '2023-07-22 00:25:01', 1, 'https://laracasts.com/discuss/channels/laravel/popup-page-in-blade-file', 1);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_25_081148_create_contents_table', 1),
(6, '2023_07_09_094109_add_links_to_contents_table', 2),
(7, '2023_07_17_010010_add_stutus_to_contents_table', 3);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User1', 'user1@gmail.com', '2023-07-27 03:28:41', '$2a$12$WK11aibu2IRjR2V3uKpYwu0N5sWJ8ik2lA9ye7Pk31ruyT30G8Pz2', NULL, '2023-07-27 03:28:41', '2023-07-27 03:28:41'),
(2, 'User2', 'user2@gmail.com', '2023-07-28 03:29:27', '$2a$12$WK11aibu2IRjR2V3uKpYwu0N5sWJ8ik2lA9ye7Pk31ruyT30G8Pz2', NULL, '2023-07-28 03:29:27', '2023-07-28 03:29:27'),
(3, 'User3', 'user3@gmail.com', '2023-07-29 03:30:03', '$2a$12$WK11aibu2IRjR2V3uKpYwu0N5sWJ8ik2lA9ye7Pk31ruyT30G8Pz2', NULL, '2023-07-29 03:30:03', '2023-07-29 03:30:03'),
(4, 'User4', 'user4@gmail.com', '2023-07-30 03:30:59', '$2a$12$WK11aibu2IRjR2V3uKpYwu0N5sWJ8ik2lA9ye7Pk31ruyT30G8Pz2', NULL, '2023-07-30 03:30:59', '2023-07-30 03:30:59'),
(5, 'User5', 'user5@gmail.com', '2023-07-31 03:31:49', '$2a$12$WK11aibu2IRjR2V3uKpYwu0N5sWJ8ik2lA9ye7Pk31ruyT30G8Pz2', NULL, '2023-07-31 03:31:49', '2023-07-31 03:31:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links` (`links`),
  ADD KEY `links_2` (`links`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
