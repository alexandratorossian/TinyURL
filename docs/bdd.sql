-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 21 mars 2024 à 09:06
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tinyurl`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tab_id` varchar(255) DEFAULT NULL,
  `long_url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `links`
--

INSERT INTO `links` (`id`, `tab_id`, `long_url`, `created_at`, `updated_at`) VALUES
(1, 'tinyurl_1', 'https://www.shutterstock.com/image-photo/british-shorthair-cat-lying-front-600nw-2232298701.jpg', '2024-03-20 16:45:29', '2024-03-21 05:33:56'),
(2, 'tinyurl_2', 'https://codingcat.codes/wp-content/uploads/2017/08/l1-1.png', '2024-03-20 16:45:29', '2024-03-21 03:46:22'),
(3, 'tinyurl_3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3flZauHuf3Bj2BMVgfAUSd2cJqeChRlfwGgSjzr01yw&s', '2024-03-20 16:45:29', '2024-03-20 18:09:39'),
(5, NULL, 'https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630', '2024-03-21 05:47:02', '2024-03-21 05:47:02');

-- --------------------------------------------------------

--
-- Structure de la table `link_clicks`
--

DROP TABLE IF EXISTS `link_clicks`;
CREATE TABLE IF NOT EXISTS `link_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link_id` int NOT NULL,
  `clicked_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `link_id` (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_21_023124_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('alexandra.admin@gmail.com', '$2y$12$jhIdiOiWlzZV7cTqNzYuku4loihIAv7GCqDGJJIaicYu4sCvXQLIG', '2024-03-21 02:19:26'),
('alexandra.torossian@outlook.com', '$2y$12$6rq4BRYNVZ4qZan1UxG1bu1Zn3H6PAgqbSs4/h.QGMwWyBZOGTIdi', '2024-03-21 02:20:11');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--
-- Erreur de lecture de structure pour la table tinyurl.permissions : #1017 - Ne peut trouver le fichier: &#039;permissions&#039; (Errcode: 2 - No such file or directory)
-- Erreur de lecture des données pour la table tinyurl.permissions : #1017 - Ne peut trouver le fichier: &#039;permissions&#039; (Errcode: 2 - No such file or directory)

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('agulYKzvwHvg7rMIgHGoBhmVD08Pmuj0Rp9jhPfE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGhhcHhNczlFckljS2RZUTFKQmpLSFEzZ0FRT3lwT1A2RTJwbWRHayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711004555),
('DyGHChyi6TE8AN2XjITFyzBmy1wvL4FkeRXXllZ3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWhrbGozNnRnUXV0dFJWTXhncGdpVGhXZU1OdFlTUmx0cGlCVzVkQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711004552),
('OLXhEfz8AV0sa8awxIcU9eqLXXM6bzf67rLedojt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDlybFBDM083Q1NoaVZUZU9wZXZ5dmlwcllPNWtpWTRpMUI4NGpUdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711004231),
('ZdPh2NFSxn9jTfod2Un1YTaSXKmKtu980zdJQ4xn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTlIWUtMRVVveTJua2VsS1NtVFZ6cVhPQkdlYUFVVUExTks0WEdLSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711004230),
('C4vrBUwITrG4vIIhyyj0McO6IzM01NV8ax3UiWER', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnA3R1pVc2o1bFlQZlJlS3AyZHp5dnFnSXVUSkVZOG5Mc0tIZmJQMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711004228),
('2p8pxSWaYNwbKjbZ7yXuRw2891ISf3Rsm2uQuU4Y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1ZOd1hKeDZLa1hMU3ZqV3hLRTZ0MVNtdzg3RWFrUU9HWlU4VnlFciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711003002),
('jVqqEarQnL4tZBK9Abvgn5F1c0pr3mytijfchb2S', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlQ0MVBYbzY4VzRKOXRDZ21RZTdmNTNqRGN0Qkg1VlhGRklPcVFmTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711002838),
('9W2YsYDGHK5iQRQOOjKpeU6QvS06debHe70gAlCS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRksxejFyM0FQa0l4RFZwZUIxVTZpaGNmUVFjdjFqV2p0Z2MyV296dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711002826),
('UehomMZ2x4JqQx3c6tJnHAsnu0k5VTVS58eUefTn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFJhM2lCbUpjWnJzeXVxS3J6VUQ0UjlWR3FzUUhsSUh2YldyTDBYZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711002722),
('xSXXc382jKEgrdisDYUuRiQJUASJpTr9RSVR5J49', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNERoTE9hM2NQMzZCV3h5N2NOSDVnbm1nelMzekdpd0MyZk50blhYNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711002720),
('e2I5s84oewH5FoR4vgbY5TjuYsPvpISudxNZmYKr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUtDY1lpbzhvQmFZRDhmYzRtM3FkQ2IwTHF6cmI2S2NmWndXRjV5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711002425),
('lW0ePyAf9EbJYwecVa1Jvm9qTiHBiqaaoMUMtDxe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzhjb2lYQUdkajE4bkE1bHZjaFdlcjNkWlVxclFaZUVDU1hEV2h4eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711002427),
('He35vD54FtHXQrXfoYWnIJ5Rf5tRTN7sQZIdtzj4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXFUSjZ1ekd1WU5XWXhUOUJISHJldTZ5QlB0V1JXOHNBRW1RNTF3eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711006410),
('ZNZajy0Vbmn1wCJBfIJBjcchI5NBbIXT7YeOcUoN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGpjTmFKSXlNdEx5dHhPdncxU1VYQUVDNVRXSFQyd2VGSVBjVkNzZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711006410),
('5QzQP8mk0jGbtThEJc2Z6y4jKbISNYj49lUpe2Ao', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0hZbEdXY24zSVZXRXdUZjFBemRGWHRtczBTSm5FNDJIY0xjd0FBQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711002694),
('RgKcnCPFm8g9iOGRPmcCeiEMohQztab70dQFu78U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1pIQ3U4Nk5tdHIzWm5vbEc3QTQxVVUyQk12S2ZwTEJJWTdYWmVGMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711002718),
('9bHp0LvSyFooWnB5kLRZrI1Vzrh4ds1lKIy4kOjF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTEFxcEFPNWJIT1FEa3VtT2V3SXpnUjZJTVhUem11RzlqRG1NMFBVZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTEwMDQ2NDM7fX0=', 1711011923),
('4Mhbc29Q6tyG3NcG0KxHMoUZvcONvvhGZVKt2Dua', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ255NjJZVEFLOFRHOU1HaUtCVVJ1NjRiZmllQk1oMXRZT3dHUWJiUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbG9uZy11cmwvdGlueXVybF8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1711006413);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alexandra', 'alexandra.admin@tinyurl.com', NULL, '$2y$12$PTou4hwg5NuM98AciEWu7ud6V.1OEH0iDTXYL/S1fiswBVVs50Z5W', 'NYc0JYVlLZUcyReG7aucnWXoXRBSfwaYEUkRtDLhlAOvMidf32wAMRio1iPy', '2024-03-21 02:23:45', '2024-03-21 02:23:45'),
(3, 'Guest', 'user_guest@tinyurl.com', NULL, '$2y$12$Atf3POq1v6fKPxTkbK2bNulteDCff0PLmnMnlSlkbDf17bha/FLUK', NULL, '2024-03-21 04:37:49', '2024-03-21 04:37:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
