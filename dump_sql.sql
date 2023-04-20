-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 20 avr. 2023 à 07:44
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données : `directus`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_uuid` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `status`, `user_created`, `date_created`, `user_updated`, `date_updated`, `name`, `slug`, `category_uuid`) VALUES
(1, 'published', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:29:26', NULL, NULL, 'Test Yolo', 'test', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE `course` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float(10,5) DEFAULT '0.00000',
  `course_uuid` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `course`
--

INSERT INTO `course` (`id`, `status`, `user_created`, `date_created`, `user_updated`, `date_updated`, `name`, `slug`, `description`, `price`, `course_uuid`) VALUES
(3, 'draft', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:53:45', NULL, NULL, 'dededed', 'ddede', 'deded', 0.00000, NULL),
(4, 'draft', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 14:34:51', NULL, NULL, 'bbbbb', 'jjbbbj', 'jjjj', 28.00000, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `course_category`
--

CREATE TABLE `course_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `course_category`
--

INSERT INTO `course_category` (`id`, `course_id`, `category_id`) VALUES
(1, NULL, 1),
(2, NULL, 1),
(3, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `course_video`
--

CREATE TABLE `course_video` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `video_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `course_video`
--

INSERT INTO `course_video` (`id`, `course_id`, `video_id`) VALUES
(1, 3, 2),
(2, 3, 1),
(3, 4, 2),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(50) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `comment` text,
  `origin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`, `origin`) VALUES
(1, 'login', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:29:42', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_users', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', NULL, 'http://0.0.0.0:8055'),
(2, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:33:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '1', NULL, 'http://0.0.0.0:8055'),
(3, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:33:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '2', NULL, 'http://0.0.0.0:8055'),
(4, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:33:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '3', NULL, 'http://0.0.0.0:8055'),
(5, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:33:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '4', NULL, 'http://0.0.0.0:8055'),
(6, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:33:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '5', NULL, 'http://0.0.0.0:8055'),
(7, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:33:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '6', NULL, 'http://0.0.0.0:8055'),
(8, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:33:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'videos', NULL, 'http://0.0.0.0:8055'),
(9, 'delete', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:48:10', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'videos', NULL, 'http://0.0.0.0:8055'),
(10, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:48:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '7', NULL, 'http://0.0.0.0:8055'),
(11, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:48:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '8', NULL, 'http://0.0.0.0:8055'),
(12, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:48:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '9', NULL, 'http://0.0.0.0:8055'),
(13, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:48:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '10', NULL, 'http://0.0.0.0:8055'),
(14, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:48:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '11', NULL, 'http://0.0.0.0:8055'),
(15, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:48:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'videos', NULL, 'http://0.0.0.0:8055'),
(16, 'delete', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 10:59:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'videos', NULL, 'http://0.0.0.0:8055'),
(17, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 11:00:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '12', NULL, 'http://0.0.0.0:8055'),
(18, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 11:00:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '13', NULL, 'http://0.0.0.0:8055'),
(19, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 11:00:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '14', NULL, 'http://0.0.0.0:8055'),
(20, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 11:00:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '15', NULL, 'http://0.0.0.0:8055'),
(21, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 11:00:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '16', NULL, 'http://0.0.0.0:8055'),
(22, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 11:00:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '17', NULL, 'http://0.0.0.0:8055'),
(23, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 11:00:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'video', NULL, 'http://0.0.0.0:8055'),
(24, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:12:04', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '18', NULL, 'http://0.0.0.0:8055'),
(25, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:12:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '12', NULL, 'http://0.0.0.0:8055'),
(26, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:12:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '18', NULL, 'http://0.0.0.0:8055'),
(27, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:12:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '13', NULL, 'http://0.0.0.0:8055'),
(28, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:12:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '14', NULL, 'http://0.0.0.0:8055'),
(29, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:12:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '15', NULL, 'http://0.0.0.0:8055'),
(30, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:12:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '16', NULL, 'http://0.0.0.0:8055'),
(31, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:12:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '17', NULL, 'http://0.0.0.0:8055'),
(32, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:13:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '19', NULL, 'http://0.0.0.0:8055'),
(33, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:13:59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '12', NULL, 'http://0.0.0.0:8055'),
(34, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:13:59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '19', NULL, 'http://0.0.0.0:8055'),
(35, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:13:59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '18', NULL, 'http://0.0.0.0:8055'),
(36, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:13:59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '13', NULL, 'http://0.0.0.0:8055'),
(37, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:13:59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '14', NULL, 'http://0.0.0.0:8055'),
(38, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:13:59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '15', NULL, 'http://0.0.0.0:8055'),
(39, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:13:59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '16', NULL, 'http://0.0.0.0:8055'),
(40, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:14:00', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '17', NULL, 'http://0.0.0.0:8055'),
(41, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:14:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'video', NULL, 'http://0.0.0.0:8055'),
(42, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:15:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(43, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:15:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(44, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:15:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(45, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:15:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(46, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:15:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(47, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:15:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(48, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:15:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'course', NULL, 'http://0.0.0.0:8055'),
(49, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:17:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(50, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:17:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(51, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:17:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(52, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:17:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(53, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:17:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(54, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:17:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(55, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:17:44', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(56, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:17:44', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(57, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:01', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(58, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:05', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(59, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:05', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(60, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:06', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(61, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:06', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(62, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:06', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(63, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:06', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(64, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:06', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(65, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:06', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(66, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:18:50', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'course', NULL, 'http://0.0.0.0:8055'),
(67, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:19:09', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'course', NULL, 'http://0.0.0.0:8055'),
(68, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:19:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '28', NULL, 'http://0.0.0.0:8055'),
(69, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:19:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '29', NULL, 'http://0.0.0.0:8055'),
(70, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:19:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '30', NULL, 'http://0.0.0.0:8055'),
(71, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:19:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '31', NULL, 'http://0.0.0.0:8055'),
(72, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:19:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '32', NULL, 'http://0.0.0.0:8055'),
(73, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:19:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '33', NULL, 'http://0.0.0.0:8055'),
(74, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:19:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'categorie', NULL, 'http://0.0.0.0:8055'),
(75, 'delete', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:21:16', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'categorie', NULL, 'http://0.0.0.0:8055'),
(76, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:21:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '34', NULL, 'http://0.0.0.0:8055'),
(77, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:21:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '35', NULL, 'http://0.0.0.0:8055'),
(78, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:21:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '36', NULL, 'http://0.0.0.0:8055'),
(79, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:21:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '37', NULL, 'http://0.0.0.0:8055'),
(80, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:21:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '38', NULL, 'http://0.0.0.0:8055'),
(81, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:21:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '39', NULL, 'http://0.0.0.0:8055'),
(82, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:21:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'category', NULL, 'http://0.0.0.0:8055'),
(83, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:05', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '40', NULL, 'http://0.0.0.0:8055'),
(84, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:14', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '41', NULL, 'http://0.0.0.0:8055'),
(85, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '34', NULL, 'http://0.0.0.0:8055'),
(86, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '41', NULL, 'http://0.0.0.0:8055'),
(87, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '35', NULL, 'http://0.0.0.0:8055'),
(88, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '36', NULL, 'http://0.0.0.0:8055'),
(89, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '37', NULL, 'http://0.0.0.0:8055'),
(90, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '38', NULL, 'http://0.0.0.0:8055'),
(91, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '39', NULL, 'http://0.0.0.0:8055'),
(92, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '40', NULL, 'http://0.0.0.0:8055'),
(93, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:20', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '34', NULL, 'http://0.0.0.0:8055'),
(94, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:20', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '41', NULL, 'http://0.0.0.0:8055'),
(95, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '40', NULL, 'http://0.0.0.0:8055'),
(96, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '35', NULL, 'http://0.0.0.0:8055'),
(97, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '36', NULL, 'http://0.0.0.0:8055'),
(98, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '37', NULL, 'http://0.0.0.0:8055'),
(99, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '38', NULL, 'http://0.0.0.0:8055'),
(100, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '39', NULL, 'http://0.0.0.0:8055'),
(101, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:25', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'category', NULL, 'http://0.0.0.0:8055'),
(102, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:46', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '42', NULL, 'http://0.0.0.0:8055'),
(103, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(104, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(105, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(106, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '42', NULL, 'http://0.0.0.0:8055'),
(107, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(108, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(109, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(110, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(111, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:22:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(112, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:23:25', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055'),
(113, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:00', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(114, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(115, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(116, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(117, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '42', NULL, 'http://0.0.0.0:8055'),
(118, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(119, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(120, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(121, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(122, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(123, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(124, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055'),
(125, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(126, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:11', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(127, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(128, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '42', NULL, 'http://0.0.0.0:8055'),
(129, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055'),
(130, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(131, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(132, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(133, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(134, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(135, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(136, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:14', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(137, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:14', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(138, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:14', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(139, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:14', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055'),
(140, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '42', NULL, 'http://0.0.0.0:8055'),
(141, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(142, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(143, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(144, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(145, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(146, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:24:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(147, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '45', NULL, 'http://0.0.0.0:8055'),
(148, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '12', NULL, 'http://0.0.0.0:8055'),
(149, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '19', NULL, 'http://0.0.0.0:8055'),
(150, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '18', NULL, 'http://0.0.0.0:8055'),
(151, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '45', NULL, 'http://0.0.0.0:8055'),
(152, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '13', NULL, 'http://0.0.0.0:8055'),
(153, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '14', NULL, 'http://0.0.0.0:8055'),
(154, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '15', NULL, 'http://0.0.0.0:8055'),
(155, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:40', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '16', NULL, 'http://0.0.0.0:8055'),
(156, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:25:40', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '17', NULL, 'http://0.0.0.0:8055'),
(157, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(158, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(159, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(160, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055'),
(161, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(162, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(163, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(164, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(165, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(166, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(167, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:26:27', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '42', NULL, 'http://0.0.0.0:8055'),
(168, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:09', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '46', NULL, 'http://0.0.0.0:8055'),
(169, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:09', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '47', NULL, 'http://0.0.0.0:8055'),
(170, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:09', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'course_category', NULL, 'http://0.0.0.0:8055'),
(171, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:09', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '48', NULL, 'http://0.0.0.0:8055'),
(172, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:09', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '49', NULL, 'http://0.0.0.0:8055'),
(173, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(174, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(175, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(176, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '46', NULL, 'http://0.0.0.0:8055'),
(177, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055'),
(178, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(179, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(180, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(181, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(182, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(183, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(184, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(185, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(186, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(187, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055');
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`, `origin`) VALUES
(188, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(189, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '46', NULL, 'http://0.0.0.0:8055'),
(190, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(191, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(192, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(193, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(194, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 12:31:18', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(195, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:21:55', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_files', 'bbd3d2e3-238c-40ea-9b28-2bd1528e2e9e', NULL, 'http://0.0.0.0:8055'),
(196, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:22:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_settings', '1', NULL, 'http://0.0.0.0:8055'),
(197, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:25:52', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_settings', '1', NULL, 'http://0.0.0.0:8055'),
(198, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:26:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '50', NULL, 'http://0.0.0.0:8055'),
(199, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:28:05', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '51', NULL, 'http://0.0.0.0:8055'),
(200, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:29:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'category', '1', NULL, 'http://0.0.0.0:8055'),
(201, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:30:09', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_files', 'ade4a074-d9cb-414d-8acc-61369087f0e2', NULL, 'http://0.0.0.0:8055'),
(202, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:30:16', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'video', '1', NULL, 'http://0.0.0.0:8055'),
(203, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:31:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course_category', '1', NULL, 'http://0.0.0.0:8055'),
(204, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:31:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course', '1', NULL, 'http://0.0.0.0:8055'),
(205, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:31:24', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course_category', '2', NULL, 'http://0.0.0.0:8055'),
(206, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:31:24', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course', '2', NULL, 'http://0.0.0.0:8055'),
(207, 'delete', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:48:00', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course', '1', NULL, 'http://0.0.0.0:8055'),
(208, 'delete', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:48:00', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course', '2', NULL, 'http://0.0.0.0:8055'),
(209, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:50:38', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '52', NULL, 'http://0.0.0.0:8055'),
(210, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:51:26', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_files', 'e2b26cff-04fc-4438-a453-0df8a022f5fd', NULL, 'http://0.0.0.0:8055'),
(211, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:51:32', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'video', '2', NULL, 'http://0.0.0.0:8055'),
(212, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:53:23', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '53', NULL, 'http://0.0.0.0:8055'),
(213, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:53:23', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '54', NULL, 'http://0.0.0.0:8055'),
(214, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:53:23', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'course_video', NULL, 'http://0.0.0.0:8055'),
(215, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:53:23', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '55', NULL, 'http://0.0.0.0:8055'),
(216, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:53:23', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '56', NULL, 'http://0.0.0.0:8055'),
(217, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:53:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course_video', '1', NULL, 'http://0.0.0.0:8055'),
(218, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:53:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course_video', '2', NULL, 'http://0.0.0.0:8055'),
(219, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:53:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course', '3', NULL, 'http://0.0.0.0:8055'),
(220, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 14:34:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course_category', '3', NULL, 'http://0.0.0.0:8055'),
(221, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 14:34:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course_video', '3', NULL, 'http://0.0.0.0:8055'),
(222, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 14:34:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course_video', '4', NULL, 'http://0.0.0.0:8055'),
(223, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 14:34:51', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'course', '4', NULL, 'http://0.0.0.0:8055'),
(224, 'login', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:15:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_users', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', NULL, 'http://0.0.0.0:8055'),
(225, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:35:28', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_permissions', '1', NULL, 'http://0.0.0.0:8055'),
(226, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:35:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_permissions', '2', NULL, 'http://0.0.0.0:8055'),
(227, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:35:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_permissions', '3', NULL, 'http://0.0.0.0:8055'),
(228, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:35:40', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_permissions', '4', NULL, 'http://0.0.0.0:8055'),
(229, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:35:43', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_permissions', '5', NULL, 'http://0.0.0.0:8055'),
(230, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:36:56', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '57', NULL, 'http://0.0.0.0:8055'),
(231, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:36:56', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '58', NULL, 'http://0.0.0.0:8055'),
(232, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:36:56', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '59', NULL, 'http://0.0.0.0:8055'),
(233, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:36:56', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '60', NULL, 'http://0.0.0.0:8055'),
(234, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:36:56', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '61', NULL, 'http://0.0.0.0:8055'),
(235, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:36:56', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '62', NULL, 'http://0.0.0.0:8055'),
(236, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:36:56', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '63', NULL, 'http://0.0.0.0:8055'),
(237, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:36:56', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'user_course', NULL, 'http://0.0.0.0:8055'),
(238, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:38:32', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '64', NULL, 'http://0.0.0.0:8055'),
(239, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:40:14', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '65', NULL, 'http://0.0.0.0:8055'),
(240, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:40:23', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'user_course', NULL, 'http://0.0.0.0:8055'),
(241, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '66', NULL, 'http://0.0.0.0:8055'),
(242, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '67', NULL, 'http://0.0.0.0:8055'),
(243, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:52', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '34', NULL, 'http://0.0.0.0:8055'),
(244, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:52', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '67', NULL, 'http://0.0.0.0:8055'),
(245, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:52', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '41', NULL, 'http://0.0.0.0:8055'),
(246, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:53', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '40', NULL, 'http://0.0.0.0:8055'),
(247, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:53', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '35', NULL, 'http://0.0.0.0:8055'),
(248, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:53', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '36', NULL, 'http://0.0.0.0:8055'),
(249, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:53', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '37', NULL, 'http://0.0.0.0:8055'),
(250, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:53', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '38', NULL, 'http://0.0.0.0:8055'),
(251, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:41:53', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '39', NULL, 'http://0.0.0.0:8055'),
(252, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:28', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '68', NULL, 'http://0.0.0.0:8055'),
(253, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '57', NULL, 'http://0.0.0.0:8055'),
(254, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '65', NULL, 'http://0.0.0.0:8055'),
(255, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '58', NULL, 'http://0.0.0.0:8055'),
(256, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '59', NULL, 'http://0.0.0.0:8055'),
(257, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '60', NULL, 'http://0.0.0.0:8055'),
(258, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '61', NULL, 'http://0.0.0.0:8055'),
(259, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '62', NULL, 'http://0.0.0.0:8055'),
(260, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '63', NULL, 'http://0.0.0.0:8055'),
(261, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:33', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '68', NULL, 'http://0.0.0.0:8055'),
(262, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '57', NULL, 'http://0.0.0.0:8055'),
(263, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '65', NULL, 'http://0.0.0.0:8055'),
(264, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '68', NULL, 'http://0.0.0.0:8055'),
(265, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '58', NULL, 'http://0.0.0.0:8055'),
(266, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '59', NULL, 'http://0.0.0.0:8055'),
(267, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '60', NULL, 'http://0.0.0.0:8055'),
(268, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '61', NULL, 'http://0.0.0.0:8055'),
(269, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '62', NULL, 'http://0.0.0.0:8055'),
(270, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:42:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '63', NULL, 'http://0.0.0.0:8055'),
(271, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(272, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(273, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(274, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:12', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '66', NULL, 'http://0.0.0.0:8055'),
(275, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055'),
(276, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(277, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '46', NULL, 'http://0.0.0.0:8055'),
(278, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(279, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(280, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(281, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(282, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(283, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:13', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '53', NULL, 'http://0.0.0.0:8055'),
(284, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(285, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '66', NULL, 'http://0.0.0.0:8055'),
(286, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(287, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(288, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055'),
(289, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(290, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '46', NULL, 'http://0.0.0.0:8055'),
(291, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(292, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(293, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(294, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:15', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(295, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:16', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(296, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:16', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '53', NULL, 'http://0.0.0.0:8055'),
(297, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '20', NULL, 'http://0.0.0.0:8055'),
(298, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '66', NULL, 'http://0.0.0.0:8055'),
(299, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '27', NULL, 'http://0.0.0.0:8055'),
(300, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '26', NULL, 'http://0.0.0.0:8055'),
(301, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '43', NULL, 'http://0.0.0.0:8055'),
(302, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '44', NULL, 'http://0.0.0.0:8055'),
(303, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '46', NULL, 'http://0.0.0.0:8055'),
(304, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '53', NULL, 'http://0.0.0.0:8055'),
(305, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '21', NULL, 'http://0.0.0.0:8055'),
(306, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '22', NULL, 'http://0.0.0.0:8055'),
(307, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '23', NULL, 'http://0.0.0.0:8055'),
(308, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '24', NULL, 'http://0.0.0.0:8055'),
(309, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 09:43:37', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '25', NULL, 'http://0.0.0.0:8055'),
(310, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:15:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '69', NULL, 'http://0.0.0.0:8055'),
(311, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:15:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '70', NULL, 'http://0.0.0.0:8055'),
(312, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:15:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'user_course_course', NULL, 'http://0.0.0.0:8055'),
(313, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:15:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '71', NULL, 'http://0.0.0.0:8055'),
(314, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:15:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '72', NULL, 'http://0.0.0.0:8055'),
(315, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:17:14', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '73', NULL, 'http://0.0.0.0:8055'),
(316, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:20:28', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '74', NULL, 'http://0.0.0.0:8055'),
(317, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:23', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '75', NULL, 'http://0.0.0.0:8055'),
(318, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '57', NULL, 'http://0.0.0.0:8055'),
(319, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '75', NULL, 'http://0.0.0.0:8055'),
(320, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '58', NULL, 'http://0.0.0.0:8055'),
(321, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '59', NULL, 'http://0.0.0.0:8055'),
(322, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '60', NULL, 'http://0.0.0.0:8055'),
(323, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '61', NULL, 'http://0.0.0.0:8055'),
(324, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '62', NULL, 'http://0.0.0.0:8055'),
(325, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '63', NULL, 'http://0.0.0.0:8055'),
(326, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:23:30', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '74', NULL, 'http://0.0.0.0:8055'),
(327, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:42', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '76', NULL, 'http://0.0.0.0:8055'),
(328, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '57', NULL, 'http://0.0.0.0:8055'),
(329, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '76', NULL, 'http://0.0.0.0:8055'),
(330, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '75', NULL, 'http://0.0.0.0:8055'),
(331, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '58', NULL, 'http://0.0.0.0:8055'),
(332, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '59', NULL, 'http://0.0.0.0:8055'),
(333, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '60', NULL, 'http://0.0.0.0:8055'),
(334, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '61', NULL, 'http://0.0.0.0:8055'),
(335, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '62', NULL, 'http://0.0.0.0:8055'),
(336, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '63', NULL, 'http://0.0.0.0:8055'),
(337, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '77', NULL, 'http://0.0.0.0:8055'),
(338, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '78', NULL, 'http://0.0.0.0:8055'),
(339, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'user_course_course_1', NULL, 'http://0.0.0.0:8055'),
(340, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:09', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '79', NULL, 'http://0.0.0.0:8055'),
(341, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:09', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '80', NULL, 'http://0.0.0.0:8055'),
(342, 'delete', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'user_course_course', NULL, 'http://0.0.0.0:8055'),
(343, 'delete', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'user_course_course_1', NULL, 'http://0.0.0.0:8055'),
(344, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '81', NULL, 'http://0.0.0.0:8055'),
(345, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '82', NULL, 'http://0.0.0.0:8055'),
(346, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_collections', 'user_course_course', NULL, 'http://0.0.0.0:8055'),
(347, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:58', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '83', NULL, 'http://0.0.0.0:8055'),
(348, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:29:59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '84', NULL, 'http://0.0.0.0:8055'),
(349, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '57', NULL, 'http://0.0.0.0:8055'),
(350, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '76', NULL, 'http://0.0.0.0:8055'),
(351, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '81', NULL, 'http://0.0.0.0:8055'),
(352, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '58', NULL, 'http://0.0.0.0:8055'),
(353, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '59', NULL, 'http://0.0.0.0:8055'),
(354, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '60', NULL, 'http://0.0.0.0:8055'),
(355, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '61', NULL, 'http://0.0.0.0:8055'),
(356, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:07', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '62', NULL, 'http://0.0.0.0:8055'),
(357, 'update', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'directus_fields', '63', NULL, 'http://0.0.0.0:8055'),
(358, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'user_course_course', '1', NULL, 'http://0.0.0.0:8055'),
(359, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'user_course_course', '2', NULL, 'http://0.0.0.0:8055'),
(360, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 
'user_course', '1', NULL, 'http://0.0.0.0:8055'),
(361, 'login', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2023-01-03 15:25:03', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 
'directus_users', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', NULL, 'http://0.0.0.0:8055'),
(362, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2023-01-03 15:38:54', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 
'directus_files', '33417e15-9321-4202-843a-f8c827938ecf', NULL, 'http://0.0.0.0:8055'),
(363, 'create', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2023-01-03 15:39:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 
'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://0.0.0.0:8055'),
(364, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-03 15:39:54', '127.0.0.1', 'PostmanRuntime/7.29.0', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, NULL),
(365, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 10:12:49', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(366, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 10:15:18', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(367, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 10:34:36', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(368, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 10:36:18', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(369, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 10:38:07', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(370, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 12:51:04', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(371, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 12:51:12', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000');
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`, `origin`) VALUES
(372, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 12:52:02', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(373, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 12:53:53', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(374, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 12:54:41', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(375, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 12:55:56', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(376, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 12:56:22', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(377, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 12:57:26', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(378, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 13:03:11', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(379, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 13:21:49', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(380, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 14:20:17', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(381, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 14:47:48', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(382, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-04 14:50:52', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(383, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-05 09:45:22', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 
'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(384, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-05 10:11:44', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 
'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(385, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-05 10:36:46', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 
'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(386, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-05 10:37:20', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(387, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-05 10:38:37', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 
Mobile/15E148 Safari/604.1', 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(388, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-05 13:26:47', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 
'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(389, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-01-05 13:27:06', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 
'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000'),
(390, 'login', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2023-02-03 18:10:44', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 
'directus_users', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', NULL, 'http://0.0.0.0:8055'),
(391, 'login', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-02-03 18:11:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 
'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', NULL, 'http://localhost:3000');

-- --------------------------------------------------------

--
-- Structure de la table `directus_collections`
--

CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `note` text,
  `display_template` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `singleton` tinyint(1) NOT NULL DEFAULT '0',
  `translations` json DEFAULT NULL,
  `archive_field` varchar(64) DEFAULT NULL,
  `archive_app_filter` tinyint(1) NOT NULL DEFAULT '1',
  `archive_value` varchar(255) DEFAULT NULL,
  `unarchive_value` varchar(255) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `color` varchar(255) DEFAULT NULL,
  `item_duplication_fields` json DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `group` varchar(64) DEFAULT NULL,
  `collapse` varchar(255) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_collections`
--

INSERT INTO `directus_collections` (`collection`, `icon`, `note`, `display_template`, `hidden`, `singleton`, `translations`, `archive_field`, `archive_app_filter`, `archive_value`, `unarchive_value`, 
`sort_field`, `accountability`, `color`, `item_duplication_fields`, `sort`, `group`, `collapse`) VALUES
('category', 'density_medium', NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', NULL, 'all', '#FFFFFF', NULL, NULL, NULL, 'open'),
('course', 'chrome_reader_mode', NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', NULL, 'all', '#FF0000', NULL, NULL, NULL, 'open'),
('course_category', 'import_export', NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('course_video', 'import_export', NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('user_course', 'fastfood', 'TJ between user and course', NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', 'sort', 'all', '#03B53E', NULL, NULL, NULL, 'open'),
('user_course_course', 'import_export', NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('video', 'videocam', NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', NULL, 'all', '#7817D9', NULL, NULL, NULL, 'open');

-- --------------------------------------------------------

--
-- Structure de la table `directus_dashboards`
--

CREATE TABLE `directus_dashboards` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'dashboard',
  `note` text,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_created` char(36) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `directus_fields`
--

CREATE TABLE `directus_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `special` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` json DEFAULT NULL,
  `display` varchar(64) DEFAULT NULL,
  `display_options` json DEFAULT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `width` varchar(30) DEFAULT 'full',
  `translations` json DEFAULT NULL,
  `note` text,
  `conditions` json DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `group` varchar(64) DEFAULT NULL,
  `validation` json DEFAULT NULL,
  `validation_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_fields`
--

INSERT INTO `directus_fields` (`id`, `collection`, `field`, `special`, `interface`, `options`, `display`, `display_options`, `readonly`, `hidden`, `sort`, `width`, `translations`, `note`, `conditions`, 
`required`, `group`, `validation`, `validation_message`) VALUES
(12, 'video', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(13, 'video', 'status', NULL, 'select-dropdown', '{\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": 
\"archived\"}]}', 'labels', '{\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", 
\"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}', 0, 0, 5, 
'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(14, 'video', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 6, 'half', NULL, NULL, NULL, 0, NULL, NULL, 
NULL),
(15, 'video', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 7, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(16, 'video', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 8, 'half', NULL, NULL, NULL, 0, NULL, NULL, 
NULL),
(17, 'video', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 9, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(18, 'video', 'slug', NULL, 'input', '{\"placeholder\": \"Enter the video slug\"}', NULL, NULL, 0, 0, 3, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(19, 'video', 'name', NULL, 'input', '{\"placeholder\": \"Enter a significatif name for the video\"}', NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(20, 'course', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(21, 'course', 'status', NULL, 'select-dropdown', '{\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": 
\"archived\"}]}', 'labels', '{\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", 
\"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}', 0, 0, 9, 
'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(22, 'course', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 10, 'half', NULL, NULL, NULL, 0, NULL, NULL, 
NULL),
(23, 'course', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 11, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(24, 'course', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 12, 'half', NULL, NULL, NULL, 0, NULL, NULL, 
NULL),
(25, 'course', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 13, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(26, 'course', 'name', NULL, 'input', '{\"iconLeft\": null, \"placeholder\": \"Enter a significatif name for the course\"}', NULL, NULL, 0, 0, 4, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(27, 'course', 'slug', NULL, 'input', '{\"placeholder\": \"Enter the course slug\'s\"}', NULL, NULL, 0, 0, 3, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(34, 'category', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(35, 'category', 'status', NULL, 'select-dropdown', '{\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": 
\"archived\"}]}', 'labels', '{\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", 
\"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}', 0, 0, 5, 
'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(36, 'category', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 6, 'half', NULL, NULL, NULL, 0, NULL, NULL, 
NULL),
(37, 'category', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 7, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(38, 'category', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 8, 'half', NULL, NULL, NULL, 0, NULL, NULL, 
NULL),
(39, 'category', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 9, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(40, 'category', 'name', NULL, 'input', NULL, NULL, NULL, 0, 0, 4, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(41, 'category', 'slug', NULL, 'input', NULL, NULL, NULL, 0, 0, 3, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(43, 'course', 'description', NULL, 'input', NULL, NULL, NULL, 0, 0, 5, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(44, 'course', 'price', NULL, 'input', '{\"min\": 0}', NULL, NULL, 0, 0, 6, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(45, 'video', 'file', 'file', 'file', NULL, NULL, NULL, 0, 0, 4, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(46, 'course', 'categories_slug', 'm2m', 'list-m2m', NULL, NULL, NULL, 0, 0, 7, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(47, 'course_category', 'id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(48, 'course_category', 'course_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(49, 'course_category', 'category_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(53, 'course', 'videos', 'm2m', 'list-m2m', NULL, NULL, NULL, 0, 0, 8, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(54, 'course_video', 'id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(55, 'course_video', 'course_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(56, 'course_video', 'video_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(57, 'user_course', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(58, 'user_course', 'status', NULL, 'select-dropdown', '{\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", 
\"value\": \"archived\"}]}', 'labels', '{\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": 
\"draft\", \"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}', 
0, 0, 4, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(59, 'user_course', 'sort', NULL, 'input', NULL, NULL, NULL, 0, 1, 5, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(60, 'user_course', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 6, 'half', NULL, NULL, NULL, 0, NULL, NULL, 
NULL),
(61, 'user_course', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 7, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(62, 'user_course', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 8, 'half', NULL, NULL, NULL, 0, NULL, NULL, 
NULL),
(63, 'user_course', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 9, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(66, 'course', 'course_uuid', 'uuid', 'input', '{\"placeholder\": \"Course UUID\"}', NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(67, 'category', 'category_uuid', 'uuid', 'input', '{\"placeholder\": \"Category UUID\"}', NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(76, 'user_course', 'user_uuid', 'm2o', 'select-dropdown-m2o', NULL, NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(81, 'user_course', 'courses', 'm2m', 'list-m2m', NULL, NULL, NULL, 0, 0, 3, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(82, 'user_course_course', 'id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(83, 'user_course_course', 'user_course_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(84, 'user_course_course', 'course_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_files`
--

CREATE TABLE `directus_files` (
  `id` char(36) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `filename_disk` varchar(255) DEFAULT NULL,
  `filename_download` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `folder` char(36) DEFAULT NULL,
  `uploaded_by` char(36) DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` char(36) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `charset` varchar(50) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `description` text,
  `location` text,
  `tags` text,
  `metadata` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_files`
--

INSERT INTO `directus_files` (`id`, `storage`, `filename_disk`, `filename_download`, `title`, `type`, `folder`, `uploaded_by`, `uploaded_on`, `modified_by`, `modified_on`, `charset`, `filesize`, `width`, 
`height`, `duration`, `embed`, `description`, `location`, `tags`, `metadata`) VALUES
('33417e15-9321-4202-843a-f8c827938ecf', 'local', '33417e15-9321-4202-843a-f8c827938ecf.svg', 'icon color - no background.svg', 'Icon Color   No Background', 'image/svg+xml', NULL, 
'7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2023-01-03 16:38:54', NULL, '2023-01-03 15:38:55', NULL, 224889, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ade4a074-d9cb-414d-8acc-61369087f0e2', 'local', 'ade4a074-d9cb-414d-8acc-61369087f0e2.png', 'Capture d’écran 2022-11-22 à 14.41.04.png', 'Capture D’écran 2022 11 22 À 14.41.04', 'image/png', NULL, 
'7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 14:30:08', NULL, '2022-11-22 13:30:09', NULL, 336199, 1296, 846, NULL, NULL, NULL, NULL, NULL, '{}'),
('bbd3d2e3-238c-40ea-9b28-2bd1528e2e9e', 'local', 'bbd3d2e3-238c-40ea-9b28-2bd1528e2e9e.png', 'genesis-logo.png', 'Genesis Logo', 'image/png', NULL, '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 14:21:55', 
NULL, '2022-11-22 13:21:55', NULL, 248365, 1296, 846, NULL, NULL, NULL, NULL, NULL, '{}'),
('e2b26cff-04fc-4438-a453-0df8a022f5fd', 'local', 'e2b26cff-04fc-4438-a453-0df8a022f5fd.png', 'Capture d’écran 2022-11-22 à 14.41.04.png', 'Capture D’écran 2022 11 22 À 14.41.04', 'image/png', NULL, 
'7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 14:51:26', NULL, '2022-11-22 13:51:26', NULL, 336199, 1296, 846, NULL, NULL, NULL, NULL, NULL, '{}');

-- --------------------------------------------------------

--
-- Structure de la table `directus_flows`
--

CREATE TABLE `directus_flows` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` text,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `trigger` varchar(255) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `options` json DEFAULT NULL,
  `operation` char(36) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `directus_folders`
--

CREATE TABLE `directus_folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `directus_migrations`
--

CREATE TABLE `directus_migrations` (
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_migrations`
--

INSERT INTO `directus_migrations` (`version`, `name`, `timestamp`) VALUES
('20201028A', 'Remove Collection Foreign Keys', '2022-11-22 11:27:19'),
('20201029A', 'Remove System Relations', '2022-11-22 11:27:19'),
('20201029B', 'Remove System Collections', '2022-11-22 11:27:19'),
('20201029C', 'Remove System Fields', '2022-11-22 11:27:19'),
('20201105A', 'Add Cascade System Relations', '2022-11-22 11:27:20'),
('20201105B', 'Change Webhook URL Type', '2022-11-22 11:27:20'),
('20210225A', 'Add Relations Sort Field', '2022-11-22 11:27:20'),
('20210304A', 'Remove Locked Fields', '2022-11-22 11:27:20'),
('20210312A', 'Webhooks Collections Text', '2022-11-22 11:27:20'),
('20210331A', 'Add Refresh Interval', '2022-11-22 11:27:20'),
('20210415A', 'Make Filesize Nullable', '2022-11-22 11:27:20'),
('20210416A', 'Add Collections Accountability', '2022-11-22 11:27:20'),
('20210422A', 'Remove Files Interface', '2022-11-22 11:27:20'),
('20210506A', 'Rename Interfaces', '2022-11-22 11:27:20'),
('20210510A', 'Restructure Relations', '2022-11-22 11:27:20'),
('20210518A', 'Add Foreign Key Constraints', '2022-11-22 11:27:20'),
('20210519A', 'Add System Fk Triggers', '2022-11-22 11:27:21'),
('20210521A', 'Add Collections Icon Color', '2022-11-22 11:27:21'),
('20210525A', 'Add Insights', '2022-11-22 11:27:21'),
('20210608A', 'Add Deep Clone Config', '2022-11-22 11:27:21'),
('20210626A', 'Change Filesize Bigint', '2022-11-22 11:27:21'),
('20210716A', 'Add Conditions to Fields', '2022-11-22 11:27:21'),
('20210721A', 'Add Default Folder', '2022-11-22 11:27:21'),
('20210802A', 'Replace Groups', '2022-11-22 11:27:21'),
('20210803A', 'Add Required to Fields', '2022-11-22 11:27:21'),
('20210805A', 'Update Groups', '2022-11-22 11:27:21'),
('20210805B', 'Change Image Metadata Structure', '2022-11-22 11:27:21'),
('20210811A', 'Add Geometry Config', '2022-11-22 11:27:21'),
('20210831A', 'Remove Limit Column', '2022-11-22 11:27:21'),
('20210903A', 'Add Auth Provider', '2022-11-22 11:27:22'),
('20210907A', 'Webhooks Collections Not Null', '2022-11-22 11:27:22'),
('20210910A', 'Move Module Setup', '2022-11-22 11:27:22'),
('20210920A', 'Webhooks URL Not Null', '2022-11-22 11:27:22'),
('20210924A', 'Add Collection Organization', '2022-11-22 11:27:22'),
('20210927A', 'Replace Fields Group', '2022-11-22 11:27:22'),
('20210927B', 'Replace M2M Interface', '2022-11-22 11:27:22'),
('20210929A', 'Rename Login Action', '2022-11-22 11:27:22'),
('20211007A', 'Update Presets', '2022-11-22 11:27:22'),
('20211009A', 'Add Auth Data', '2022-11-22 11:27:22'),
('20211016A', 'Add Webhook Headers', '2022-11-22 11:27:22'),
('20211103A', 'Set Unique to User Token', '2022-11-22 11:27:22'),
('20211103B', 'Update Special Geometry', '2022-11-22 11:27:22'),
('20211104A', 'Remove Collections Listing', '2022-11-22 11:27:22'),
('20211118A', 'Add Notifications', '2022-11-22 11:27:22'),
('20211211A', 'Add Shares', '2022-11-22 11:27:22'),
('20211230A', 'Add Project Descriptor', '2022-11-22 11:27:23'),
('20220303A', 'Remove Default Project Color', '2022-11-22 11:27:23'),
('20220308A', 'Add Bookmark Icon and Color', '2022-11-22 11:27:23'),
('20220314A', 'Add Translation Strings', '2022-11-22 11:27:23'),
('20220322A', 'Rename Field Typecast Flags', '2022-11-22 11:27:23'),
('20220323A', 'Add Field Validation', '2022-11-22 11:27:23'),
('20220325A', 'Fix Typecast Flags', '2022-11-22 11:27:23'),
('20220325B', 'Add Default Language', '2022-11-22 11:27:23'),
('20220402A', 'Remove Default Value Panel Icon', '2022-11-22 11:27:23'),
('20220429A', 'Add Flows', '2022-11-22 11:27:23'),
('20220429B', 'Add Color to Insights Icon', '2022-11-22 11:27:23'),
('20220429C', 'Drop Non Null From IP of Activity', '2022-11-22 11:27:23'),
('20220429D', 'Drop Non Null From Sender of Notifications', '2022-11-22 11:27:23'),
('20220614A', 'Rename Hook Trigger to Event', '2022-11-22 11:27:23'),
('20220801A', 'Update Notifications Timestamp Column', '2022-11-22 11:27:23'),
('20220802A', 'Add Custom Aspect Ratios', '2022-11-22 11:27:23'),
('20220826A', 'Add Origin to Accountability', '2022-11-22 11:27:23');

-- --------------------------------------------------------

--
-- Structure de la table `directus_notifications`
--

CREATE TABLE `directus_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT 'inbox',
  `recipient` char(36) NOT NULL,
  `sender` char(36) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text,
  `collection` varchar(64) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `directus_operations`
--

CREATE TABLE `directus_operations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `options` json DEFAULT NULL,
  `resolve` char(36) DEFAULT NULL,
  `reject` char(36) DEFAULT NULL,
  `flow` char(36) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `directus_panels`
--

CREATE TABLE `directus_panels` (
  `id` char(36) NOT NULL,
  `dashboard` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `show_header` tinyint(1) NOT NULL DEFAULT '0',
  `note` text,
  `type` varchar(255) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `options` json DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `directus_permissions`
--

CREATE TABLE `directus_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `action` varchar(10) NOT NULL,
  `permissions` json DEFAULT NULL,
  `validation` json DEFAULT NULL,
  `presets` json DEFAULT NULL,
  `fields` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_permissions`
--

INSERT INTO `directus_permissions` (`id`, `role`, `collection`, `action`, `permissions`, `validation`, `presets`, `fields`) VALUES
(1, NULL, 'category', 'read', '{}', '{}', NULL, '*'),
(2, NULL, 'course', 'read', '{}', '{}', NULL, '*'),
(3, NULL, 'course_category', 'read', '{}', '{}', NULL, '*'),
(4, NULL, 'course_video', 'read', '{}', '{}', NULL, '*'),
(5, NULL, 'video', 'read', '{}', '{}', NULL, '*');

-- --------------------------------------------------------

--
-- Structure de la table `directus_presets`
--

CREATE TABLE `directus_presets` (
  `id` int(10) UNSIGNED NOT NULL,
  `bookmark` varchar(255) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `layout` varchar(100) DEFAULT 'tabular',
  `layout_query` json DEFAULT NULL,
  `layout_options` json DEFAULT NULL,
  `refresh_interval` int(11) DEFAULT NULL,
  `filter` json DEFAULT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'bookmark_outline',
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_presets`
--

INSERT INTO `directus_presets` (`id`, `bookmark`, `user`, `role`, `collection`, `search`, `layout`, `layout_query`, `layout_options`, `refresh_interval`, `filter`, `icon`, `color`) VALUES
(1, NULL, '7adc6b9b-3405-41b1-9214-acbc1ee277e7', NULL, 'course', NULL, NULL, '{\"tabular\": {\"fields\": [\"description\", \"name\", \"price\", \"slug\", \"id\", \"categories_slug\", \"videos\"]}}', NULL, NULL, 
NULL, 'bookmark_outline', NULL),
(2, NULL, '7adc6b9b-3405-41b1-9214-acbc1ee277e7', NULL, 'directus_users', NULL, 'cards', '{\"cards\": {\"page\": 1, \"sort\": [\"email\"]}}', '{\"cards\": {\"icon\": \"account_circle\", \"size\": 4, \"title\": 
\"{{ first_name }} {{ last_name }}\", \"subtitle\": \"{{ email }}\"}}', NULL, NULL, 'bookmark_outline', NULL),
(3, NULL, '7adc6b9b-3405-41b1-9214-acbc1ee277e7', NULL, 'user_course', NULL, NULL, '{\"tabular\": {\"fields\": [\"user_uuid\", \"courses\", \"status\"]}}', '{\"tabular\": {\"widths\": {}}}', NULL, NULL, 
'bookmark_outline', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_relations`
--

CREATE TABLE `directus_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `many_collection` varchar(64) NOT NULL,
  `many_field` varchar(64) NOT NULL,
  `one_collection` varchar(64) DEFAULT NULL,
  `one_field` varchar(64) DEFAULT NULL,
  `one_collection_field` varchar(64) DEFAULT NULL,
  `one_allowed_collections` text,
  `junction_field` varchar(64) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `one_deselect_action` varchar(255) NOT NULL DEFAULT 'nullify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_relations`
--

INSERT INTO `directus_relations` (`id`, `many_collection`, `many_field`, `one_collection`, `one_field`, `one_collection_field`, `one_allowed_collections`, `junction_field`, `sort_field`, `one_deselect_action`) 
VALUES
(5, 'video', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(6, 'video', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(7, 'course', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(8, 'course', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(11, 'category', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(12, 'category', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(13, 'video', 'file', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(14, 'course_category', 'category_id', 'category', NULL, NULL, NULL, 'course_id', NULL, 'nullify'),
(15, 'course_category', 'course_id', 'course', 'categories_slug', NULL, NULL, 'category_id', NULL, 'nullify'),
(17, 'course_video', 'video_id', 'video', NULL, NULL, NULL, 'course_id', NULL, 'nullify'),
(18, 'course_video', 'course_id', 'course', 'videos', NULL, NULL, 'video_id', NULL, 'nullify'),
(19, 'user_course', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(20, 'user_course', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(24, 'user_course', 'user_uuid', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(27, 'user_course_course', 'course_id', 'course', NULL, NULL, NULL, 'user_course_id', NULL, 'nullify'),
(28, 'user_course_course', 'user_course_id', 'user_course', 'courses', NULL, NULL, 'course_id', NULL, 'nullify');

-- --------------------------------------------------------

--
-- Structure de la table `directus_revisions`
--

CREATE TABLE `directus_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` json DEFAULT NULL,
  `delta` json DEFAULT NULL,
  `parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_revisions`
--

INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(1, 2, 'directus_fields', '1', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"videos\"}', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, 
\"interface\": \"input\", \"collection\": \"videos\"}', NULL),
(2, 3, 'directus_fields', '2', '{\"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", 
\"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"interface\": \"select-dropdown\", \"collection\": \"videos\", \"display_options\": {\"choices\": [{\"text\": \"$t:published\", 
\"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": 
\"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', '{\"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", 
\"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"interface\": 
\"select-dropdown\", \"collection\": \"videos\", \"display_options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, 
{\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": 
\"#FFFFFF\"}], \"showAsDot\": true}}', NULL),
(3, 4, 'directus_fields', '3', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"videos\"}', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"videos\"}', NULL),
(4, 5, 'directus_fields', '4', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"videos\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"videos\", \"display_options\": {\"relative\": true}}', NULL),
(5, 6, 'directus_fields', '5', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"videos\"}', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"videos\"}', NULL),
(6, 7, 'directus_fields', '6', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"videos\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"videos\", \"display_options\": {\"relative\": true}}', NULL),
(7, 8, 'directus_collections', 'videos', '{\"singleton\": false, \"collection\": \"videos\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', '{\"singleton\": 
false, \"collection\": \"videos\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', NULL),
(8, 10, 'directus_fields', '7', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"videos\"}', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, 
\"interface\": \"input\", \"collection\": \"videos\"}', NULL),
(9, 11, 'directus_fields', '8', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"videos\"}', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"videos\"}', NULL),
(10, 12, 'directus_fields', '9', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"videos\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"videos\", \"display_options\": {\"relative\": true}}', NULL),
(11, 13, 'directus_fields', '10', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"videos\"}', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"videos\"}', NULL),
(12, 14, 'directus_fields', '11', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"videos\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"videos\", \"display_options\": {\"relative\": true}}', NULL),
(13, 15, 'directus_collections', 'videos', '{\"singleton\": false, \"collection\": \"videos\"}', '{\"singleton\": false, \"collection\": \"videos\"}', NULL),
(14, 17, 'directus_fields', '12', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"video\"}', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, 
\"interface\": \"input\", \"collection\": \"video\"}', NULL),
(15, 18, 'directus_fields', '13', '{\"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": 
\"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"interface\": \"select-dropdown\", \"collection\": \"video\", \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', '{\"field\": \"status\", \"width\": \"full\", 
\"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, 
\"interface\": \"select-dropdown\", \"collection\": \"video\", \"display_options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": 
\"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", 
\"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', NULL),
(16, 19, 'directus_fields', '14', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"video\"}', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"video\"}', NULL),
(17, 20, 'directus_fields', '15', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"video\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"video\", \"display_options\": {\"relative\": true}}', NULL),
(18, 21, 'directus_fields', '16', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"video\"}', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"video\"}', NULL),
(19, 22, 'directus_fields', '17', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"video\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"video\", \"display_options\": {\"relative\": true}}', NULL),
(20, 23, 'directus_collections', 'video', '{\"singleton\": false, \"collection\": \"video\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', '{\"singleton\": 
false, \"collection\": \"video\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', NULL),
(21, 24, 'directus_fields', '18', '{\"field\": \"slug\", \"options\": {\"placeholder\": \"Enter the video slug\"}, \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"video\"}', 
'{\"field\": \"slug\", \"options\": {\"placeholder\": \"Enter the video slug\"}, \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"video\"}', NULL),
(22, 25, 'directus_fields', '12', '{\"id\": 12, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": 
null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"video\"}', NULL),
(23, 26, 'directus_fields', '18', '{\"id\": 18, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": \"Enter 
the video slug\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"video\"}', NULL),
(24, 27, 'directus_fields', '13', '{\"id\": 13, \"note\": null, \"sort\": 3, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 3, 
\"field\": \"status\", \"group\": null, \"collection\": \"video\"}', NULL),
(25, 28, 'directus_fields', '14', '{\"id\": 14, \"note\": null, \"sort\": 4, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"video\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 4, \"field\": \"user_created\", \"group\": null, \"collection\": 
\"video\"}', NULL),
(26, 29, 'directus_fields', '15', '{\"id\": 15, \"note\": null, \"sort\": 5, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 5, \"field\": \"date_created\", \"group\": null, \"collection\": \"video\"}', NULL),
(27, 30, 'directus_fields', '16', '{\"id\": 16, \"note\": null, \"sort\": 6, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"video\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"user_updated\", \"group\": null, \"collection\": 
\"video\"}', NULL),
(28, 31, 'directus_fields', '17', '{\"id\": 17, \"note\": null, \"sort\": 7, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"date_updated\", \"group\": null, \"collection\": \"video\"}', NULL),
(29, 32, 'directus_fields', '19', '{\"field\": \"name\", \"options\": {\"placeholder\": \"Enter a significatif name for the video\"}, \"special\": null, \"interface\": \"input\", \"collection\": \"video\"}', 
'{\"field\": \"name\", \"options\": {\"placeholder\": \"Enter a significatif name for the video\"}, \"special\": null, \"interface\": \"input\", \"collection\": \"video\"}', NULL),
(30, 33, 'directus_fields', '12', '{\"id\": 12, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": 
null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"video\"}', NULL),
(31, 34, 'directus_fields', '19', '{\"id\": 19, \"note\": null, \"sort\": 2, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": \"Enter 
a significatif name for the video\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, 
\"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"name\", \"group\": null, \"collection\": \"video\"}', NULL),
(32, 35, 'directus_fields', '18', '{\"id\": 18, \"note\": null, \"sort\": 3, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": \"Enter 
the video slug\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"slug\", \"group\": null, \"collection\": \"video\"}', NULL),
(33, 36, 'directus_fields', '13', '{\"id\": 13, \"note\": null, \"sort\": 4, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 4, 
\"field\": \"status\", \"group\": null, \"collection\": \"video\"}', NULL),
(34, 37, 'directus_fields', '14', '{\"id\": 14, \"note\": null, \"sort\": 5, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"video\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 5, \"field\": \"user_created\", \"group\": null, \"collection\": 
\"video\"}', NULL),
(35, 38, 'directus_fields', '15', '{\"id\": 15, \"note\": null, \"sort\": 6, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"date_created\", \"group\": null, \"collection\": \"video\"}', NULL),
(36, 39, 'directus_fields', '16', '{\"id\": 16, \"note\": null, \"sort\": 7, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"video\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"user_updated\", \"group\": null, \"collection\": 
\"video\"}', NULL),
(37, 40, 'directus_fields', '17', '{\"id\": 17, \"note\": null, \"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"collection\": \"video\"}', NULL),
(38, 41, 'directus_collections', 'video', '{\"icon\": \"videocam\", \"note\": null, \"sort\": null, \"color\": \"#7817D9\", \"group\": null, \"hidden\": false, \"collapse\": \"open\", \"singleton\": false, 
\"collection\": \"video\", \"sort_field\": null, \"translations\": null, \"archive_field\": \"status\", \"archive_value\": \"archived\", \"accountability\": \"all\", \"unarchive_value\": \"draft\", 
\"display_template\": null, \"archive_app_filter\": true, \"item_duplication_fields\": null}', '{\"icon\": \"videocam\", \"color\": \"#7817D9\"}', NULL),
(39, 42, 'directus_fields', '20', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"course\"}', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, 
\"interface\": \"input\", \"collection\": \"course\"}', NULL),
(40, 43, 'directus_fields', '21', '{\"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": 
\"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', '{\"field\": \"status\", \"width\": \"full\", 
\"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, 
\"interface\": \"select-dropdown\", \"collection\": \"course\", \"display_options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": 
\"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", 
\"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', NULL),
(41, 44, 'directus_fields', '22', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"course\"}', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\"}', NULL),
(42, 45, 'directus_fields', '23', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"course\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"course\", \"display_options\": {\"relative\": true}}', NULL),
(43, 46, 'directus_fields', '24', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"course\"}', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\"}', NULL),
(44, 47, 'directus_fields', '25', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"course\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"course\", \"display_options\": {\"relative\": true}}', NULL),
(45, 48, 'directus_collections', 'course', '{\"singleton\": false, \"collection\": \"course\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', '{\"singleton\": 
false, \"collection\": \"course\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', NULL),
(46, 49, 'directus_fields', '26', '{\"field\": \"name\", \"options\": {\"iconLeft\": null, \"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"interface\": \"input\", 
\"collection\": \"course\"}', '{\"field\": \"name\", \"options\": {\"iconLeft\": null, \"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"interface\": \"input\", \"collection\": 
\"course\"}', NULL),
(47, 50, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(48, 51, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 2, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(49, 52, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 3, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 3, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(50, 53, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 4, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"course\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 4, \"field\": \"user_created\", \"group\": null, \"collection\": 
\"course\"}', NULL),
(51, 54, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 5, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 5, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(52, 55, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 6, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"course\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"user_updated\", \"group\": null, \"collection\": 
\"course\"}', NULL),
(53, 56, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 7, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(54, 57, 'directus_fields', '27', '{\"field\": \"slug\", \"options\": {\"placeholder\": \"Enter the course slug\'s\"}, \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": 
\"course\"}', '{\"field\": \"slug\", \"options\": {\"placeholder\": \"Enter the course slug\'s\"}, \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"course\"}', NULL),
(55, 58, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(56, 59, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": \"Enter 
the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(57, 60, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(58, 61, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 4, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 4, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(59, 62, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 5, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"course\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 5, \"field\": \"user_created\", \"group\": null, \"collection\": 
\"course\"}', NULL),
(60, 63, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 6, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(61, 64, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 7, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"course\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"user_updated\", \"group\": null, \"collection\": 
\"course\"}', NULL),
(62, 65, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(63, 66, 'directus_collections', 'course', '{\"icon\": \"chrome_reader_mode\", \"note\": null, \"sort\": null, \"color\": null, \"group\": null, \"hidden\": false, \"collapse\": \"open\", \"singleton\": false, 
\"collection\": \"course\", \"sort_field\": null, \"translations\": null, \"archive_field\": \"status\", \"archive_value\": \"archived\", \"accountability\": \"all\", \"unarchive_value\": \"draft\", 
\"display_template\": null, \"archive_app_filter\": true, \"item_duplication_fields\": null}', '{\"icon\": \"chrome_reader_mode\"}', NULL),
(64, 67, 'directus_collections', 'course', '{\"icon\": \"chrome_reader_mode\", \"note\": null, \"sort\": null, \"color\": \"#FF0000\", \"group\": null, \"hidden\": false, \"collapse\": \"open\", \"singleton\": 
false, \"collection\": \"course\", \"sort_field\": null, \"translations\": null, \"archive_field\": \"status\", \"archive_value\": \"archived\", \"accountability\": \"all\", \"unarchive_value\": \"draft\", 
\"display_template\": null, \"archive_app_filter\": true, \"item_duplication_fields\": null}', '{\"color\": \"#FF0000\"}', NULL),
(65, 68, 'directus_fields', '28', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"categorie\"}', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, 
\"interface\": \"input\", \"collection\": \"categorie\"}', NULL),
(66, 69, 'directus_fields', '29', '{\"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": 
\"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"interface\": \"select-dropdown\", \"collection\": \"categorie\", \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', '{\"field\": \"status\", \"width\": \"full\", 
\"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, 
\"interface\": \"select-dropdown\", \"collection\": \"categorie\", \"display_options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": 
\"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", 
\"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', NULL),
(67, 70, 'directus_fields', '30', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"categorie\"}', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"categorie\"}', NULL),
(68, 71, 'directus_fields', '31', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"categorie\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"categorie\", \"display_options\": {\"relative\": true}}', NULL),
(69, 72, 'directus_fields', '32', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"categorie\"}', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"categorie\"}', NULL),
(70, 73, 'directus_fields', '33', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"categorie\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"categorie\", \"display_options\": {\"relative\": true}}', NULL),
(71, 74, 'directus_collections', 'categorie', '{\"singleton\": false, \"collection\": \"categorie\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', 
'{\"singleton\": false, \"collection\": \"categorie\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', NULL),
(72, 76, 'directus_fields', '34', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"category\"}', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, 
\"interface\": \"input\", \"collection\": \"category\"}', NULL),
(73, 77, 'directus_fields', '35', '{\"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": 
\"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"interface\": \"select-dropdown\", \"collection\": \"category\", \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', '{\"field\": \"status\", \"width\": \"full\", 
\"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, 
\"interface\": \"select-dropdown\", \"collection\": \"category\", \"display_options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": 
\"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", 
\"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', NULL),
(74, 78, 'directus_fields', '36', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"category\"}', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"category\"}', NULL),
(75, 79, 'directus_fields', '37', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"category\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"category\", \"display_options\": {\"relative\": true}}', NULL),
(76, 80, 'directus_fields', '38', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, 
\"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"category\"}', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": 
\"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"category\"}', NULL),
(77, 81, 'directus_fields', '39', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", 
\"collection\": \"category\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], 
\"readonly\": true, \"interface\": \"datetime\", \"collection\": \"category\", \"display_options\": {\"relative\": true}}', NULL),
(78, 82, 'directus_collections', 'category', '{\"singleton\": false, \"collection\": \"category\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', 
'{\"singleton\": false, \"collection\": \"category\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', NULL),
(79, 83, 'directus_fields', '40', '{\"field\": \"name\", \"special\": null, \"interface\": \"input\", \"collection\": \"category\"}', '{\"field\": \"name\", \"special\": null, \"interface\": \"input\", 
\"collection\": \"category\"}', NULL),
(80, 84, 'directus_fields', '41', '{\"field\": \"slug\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"category\"}', '{\"field\": \"slug\", \"special\": null, \"required\": 
true, \"interface\": \"input\", \"collection\": \"category\"}', NULL),
(81, 85, 'directus_fields', '34', '{\"id\": 34, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"category\"}', NULL),
(82, 86, 'directus_fields', '41', '{\"id\": 41, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"category\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(83, 87, 'directus_fields', '35', '{\"id\": 35, \"note\": null, \"sort\": 3, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 3, 
\"field\": \"status\", \"group\": null, \"collection\": \"category\"}', NULL),
(84, 88, 'directus_fields', '36', '{\"id\": 36, \"note\": null, \"sort\": 4, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"category\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 4, \"field\": \"user_created\", \"group\": null, \"collection\": 
\"category\"}', NULL),
(85, 89, 'directus_fields', '37', '{\"id\": 37, \"note\": null, \"sort\": 5, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 5, \"field\": \"date_created\", \"group\": null, \"collection\": \"category\"}', NULL),
(86, 90, 'directus_fields', '38', '{\"id\": 38, \"note\": null, \"sort\": 6, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"category\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"user_updated\", \"group\": null, \"collection\": 
\"category\"}', NULL),
(87, 91, 'directus_fields', '39', '{\"id\": 39, \"note\": null, \"sort\": 7, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"date_updated\", \"group\": null, \"collection\": \"category\"}', NULL),
(88, 92, 'directus_fields', '40', '{\"id\": 40, \"note\": null, \"sort\": 8, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 8, \"field\": \"name\", \"group\": null, \"collection\": \"category\"}', NULL),
(89, 93, 'directus_fields', '34', '{\"id\": 34, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"category\"}', NULL),
(90, 94, 'directus_fields', '41', '{\"id\": 41, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"category\"}', NULL),
(91, 95, 'directus_fields', '40', '{\"id\": 40, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"category\"}', NULL),
(92, 96, 'directus_fields', '35', '{\"id\": 35, \"note\": null, \"sort\": 4, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 4, 
\"field\": \"status\", \"group\": null, \"collection\": \"category\"}', NULL),
(93, 97, 'directus_fields', '36', '{\"id\": 36, \"note\": null, \"sort\": 5, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"category\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 5, \"field\": \"user_created\", \"group\": null, \"collection\": 
\"category\"}', NULL),
(94, 98, 'directus_fields', '37', '{\"id\": 37, \"note\": null, \"sort\": 6, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"date_created\", \"group\": null, \"collection\": \"category\"}', NULL),
(95, 99, 'directus_fields', '38', '{\"id\": 38, \"note\": null, \"sort\": 7, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": 
\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"category\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"user_updated\", \"group\": null, \"collection\": 
\"category\"}', NULL),
(96, 100, 'directus_fields', '39', '{\"id\": 39, \"note\": null, \"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"collection\": \"category\"}', NULL),
(97, 101, 'directus_collections', 'category', '{\"icon\": \"density_medium\", \"note\": null, \"sort\": null, \"color\": \"#FFFFFF\", \"group\": null, \"hidden\": false, \"collapse\": \"open\", \"singleton\": 
false, \"collection\": \"category\", \"sort_field\": null, \"translations\": null, \"archive_field\": \"status\", \"archive_value\": \"archived\", \"accountability\": \"all\", \"unarchive_value\": \"draft\", 
\"display_template\": null, \"archive_app_filter\": true, \"item_duplication_fields\": null}', '{\"icon\": \"density_medium\", \"color\": \"#FFFFFF\"}', NULL),
(98, 102, 'directus_fields', '42', '{\"field\": \"path\", \"special\": null, \"required\": true, \"interface\": \"input\", \"collection\": \"course\"}', '{\"field\": \"path\", \"special\": null, \"required\": 
true, \"interface\": \"input\", \"collection\": \"course\"}', NULL),
(99, 103, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(100, 104, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(101, 105, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(102, 106, 'directus_fields', '42', '{\"id\": 42, \"note\": null, \"sort\": 4, \"field\": \"path\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"path\", \"group\": null, \"collection\": \"course\"}', NULL),
(103, 107, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 5, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 5, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(104, 108, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 6, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(105, 109, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 7, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(106, 110, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 8, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(107, 111, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(108, 112, 'directus_fields', '43', '{\"field\": \"description\", \"special\": null, \"interface\": \"input\", \"collection\": \"course\"}', '{\"field\": \"description\", \"special\": null, \"interface\": 
\"input\", \"collection\": \"course\"}', NULL),
(109, 113, 'directus_fields', '44', '{\"field\": \"price\", \"options\": {\"min\": 0}, \"special\": null, \"required\": false, \"interface\": \"input\", \"collection\": \"course\"}', '{\"field\": \"price\", 
\"options\": {\"min\": 0}, \"special\": null, \"required\": false, \"interface\": \"input\", \"collection\": \"course\"}', NULL),
(110, 114, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(111, 115, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(112, 116, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(113, 117, 'directus_fields', '42', '{\"id\": 42, \"note\": null, \"sort\": 4, \"field\": \"path\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"path\", \"group\": null, \"collection\": \"course\"}', NULL),
(114, 118, 'directus_fields', '44', '{\"id\": 44, \"note\": null, \"sort\": 5, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"price\", \"group\": null, \"collection\": \"course\"}', NULL),
(115, 119, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 6, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 6, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(116, 120, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 7, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(117, 121, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 8, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(118, 122, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 9, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(119, 123, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 10, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 10, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(120, 124, 'directus_fields', '43', '{\"id\": 43, \"note\": null, \"sort\": 11, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 11, \"field\": \"description\", \"group\": null, \"collection\": \"course\"}', NULL),
(121, 125, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(122, 126, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(123, 127, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(124, 128, 'directus_fields', '42', '{\"id\": 42, \"note\": null, \"sort\": 4, \"field\": \"path\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"path\", \"group\": null, \"collection\": \"course\"}', NULL),
(125, 129, 'directus_fields', '43', '{\"id\": 43, \"note\": null, \"sort\": 5, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"description\", \"group\": null, \"collection\": \"course\"}', NULL),
(126, 130, 'directus_fields', '44', '{\"id\": 44, \"note\": null, \"sort\": 6, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 6, \"field\": \"price\", \"group\": null, \"collection\": \"course\"}', NULL),
(127, 131, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 7, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 7, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(128, 132, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 8, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(129, 133, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 9, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(130, 134, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 10, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 10, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(131, 135, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 11, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 11, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(132, 136, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(133, 137, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(134, 138, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(135, 139, 'directus_fields', '43', '{\"id\": 43, \"note\": null, \"sort\": 4, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"description\", \"group\": null, \"collection\": \"course\"}', NULL),
(136, 140, 'directus_fields', '42', '{\"id\": 42, \"note\": null, \"sort\": 5, \"field\": \"path\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"path\", \"group\": null, \"collection\": \"course\"}', NULL),
(137, 141, 'directus_fields', '44', '{\"id\": 44, \"note\": null, \"sort\": 6, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 6, \"field\": \"price\", \"group\": null, \"collection\": \"course\"}', NULL),
(138, 142, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 7, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 7, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(139, 143, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 8, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(140, 144, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 9, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(141, 145, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 10, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 10, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(142, 146, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 11, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 11, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(143, 147, 'directus_fields', '45', '{\"field\": \"file\", \"special\": [\"file\"], \"required\": true, \"interface\": \"file\", \"collection\": \"video\"}', '{\"field\": \"file\", \"special\": [\"file\"], 
\"required\": true, \"interface\": \"file\", \"collection\": \"video\"}', NULL),
(144, 148, 'directus_fields', '12', '{\"id\": 12, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": 
null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"video\"}', NULL),
(145, 149, 'directus_fields', '19', '{\"id\": 19, \"note\": null, \"sort\": 2, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter a significatif name for the video\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, 
\"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"name\", \"group\": null, \"collection\": \"video\"}', NULL),
(146, 150, 'directus_fields', '18', '{\"id\": 18, \"note\": null, \"sort\": 3, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the video slug\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"slug\", \"group\": null, \"collection\": \"video\"}', NULL),
(147, 151, 'directus_fields', '45', '{\"id\": 45, \"note\": null, \"sort\": 4, \"field\": \"file\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"file\"], \"readonly\": false, \"required\": true, \"interface\": \"file\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"file\", \"group\": null, \"collection\": \"video\"}', NULL),
(148, 152, 'directus_fields', '13', '{\"id\": 13, \"note\": null, \"sort\": 5, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 5, 
\"field\": \"status\", \"group\": null, \"collection\": \"video\"}', NULL),
(149, 153, 'directus_fields', '14', '{\"id\": 14, \"note\": null, \"sort\": 6, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"video\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"user_created\", \"group\": null, \"collection\": 
\"video\"}', NULL),
(150, 154, 'directus_fields', '15', '{\"id\": 15, \"note\": null, \"sort\": 7, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"date_created\", \"group\": null, \"collection\": \"video\"}', NULL),
(151, 155, 'directus_fields', '16', '{\"id\": 16, \"note\": null, \"sort\": 8, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"video\", 
\"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_updated\", \"group\": null, \"collection\": 
\"video\"}', NULL),
(152, 156, 'directus_fields', '17', '{\"id\": 17, \"note\": null, \"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"video\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"collection\": \"video\"}', NULL),
(153, 157, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(154, 158, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(155, 159, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(156, 160, 'directus_fields', '43', '{\"id\": 43, \"note\": null, \"sort\": 4, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"description\", \"group\": null, \"collection\": \"course\"}', NULL),
(157, 161, 'directus_fields', '44', '{\"id\": 44, \"note\": null, \"sort\": 5, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"price\", \"group\": null, \"collection\": \"course\"}', NULL),
(158, 162, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 6, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 6, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(159, 163, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 7, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(160, 164, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 8, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(161, 165, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 9, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(162, 166, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 10, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 10, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(163, 167, 'directus_fields', '42', '{\"id\": 42, \"note\": null, \"sort\": 11, \"field\": \"path\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 11, \"field\": \"path\", \"group\": null, \"collection\": \"course\"}', NULL),
(164, 168, 'directus_fields', '46', '{\"field\": \"categories_slug\", \"special\": [\"m2m\"], \"interface\": \"list-m2m\", \"collection\": \"course\"}', '{\"field\": \"categories_slug\", \"special\": [\"m2m\"], 
\"interface\": \"list-m2m\", \"collection\": \"course\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(165, 169, 'directus_fields', '47', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"course_category\"}', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"course_category\"}', NULL),
(166, 170, 'directus_collections', 'course_category', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"course_category\"}', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": 
\"course_category\"}', NULL),
(167, 171, 'directus_fields', '48', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": \"course_category\"}', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": \"course_category\"}', NULL),
(168, 172, 'directus_fields', '49', '{\"field\": \"category_id\", \"hidden\": true, \"collection\": \"course_category\"}', '{\"field\": \"category_id\", \"hidden\": true, \"collection\": \"course_category\"}', 
NULL),
(169, 173, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(170, 174, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(171, 175, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(172, 176, 'directus_fields', '46', '{\"id\": 46, \"note\": null, \"sort\": 4, \"field\": \"categories_slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": 
null, \"validation_message\": null}', '{\"sort\": 4, \"field\": \"categories_slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(173, 177, 'directus_fields', '43', '{\"id\": 43, \"note\": null, \"sort\": 5, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"description\", \"group\": null, \"collection\": \"course\"}', NULL),
(174, 178, 'directus_fields', '44', '{\"id\": 44, \"note\": null, \"sort\": 6, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 6, \"field\": \"price\", \"group\": null, \"collection\": \"course\"}', NULL),
(175, 179, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 7, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 7, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(176, 180, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 8, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(177, 181, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 9, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(178, 182, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 10, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 10, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(179, 183, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 11, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 11, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(180, 184, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(181, 185, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(182, 186, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(183, 187, 'directus_fields', '43', '{\"id\": 43, \"note\": null, \"sort\": 4, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"description\", \"group\": null, \"collection\": \"course\"}', NULL),
(184, 188, 'directus_fields', '44', '{\"id\": 44, \"note\": null, \"sort\": 5, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"price\", \"group\": null, \"collection\": \"course\"}', NULL),
(185, 189, 'directus_fields', '46', '{\"id\": 46, \"note\": null, \"sort\": 6, \"field\": \"categories_slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": 
null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"categories_slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(186, 190, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 7, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 7, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(187, 191, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 8, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(188, 192, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 9, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(189, 193, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 10, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 10, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(190, 194, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 11, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 11, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(191, 195, 'directus_files', 'bbd3d2e3-238c-40ea-9b28-2bd1528e2e9e', '{\"type\": \"image/png\", \"title\": \"Genesis Logo\", \"storage\": \"local\", \"filename_download\": \"genesis-logo.png\"}', '{\"type\": 
\"image/png\", \"title\": \"Genesis Logo\", \"storage\": \"local\", \"filename_download\": \"genesis-logo.png\"}', NULL),
(192, 196, 'directus_settings', '1', '{\"project_url\": \"https://bulllight.io\", \"project_logo\": \"bbd3d2e3-238c-40ea-9b28-2bd1528e2e9e\", \"project_name\": \"BullLight\", \"project_color\": \"#FCE997\", 
\"default_language\": \"fr-FR\", \"project_descriptor\": \"Trading learning platform\"}', '{\"project_url\": \"https://bulllight.io\", \"project_logo\": \"bbd3d2e3-238c-40ea-9b28-2bd1528e2e9e\", \"project_name\": 
\"BullLight\", \"project_color\": \"#FCE997\", \"default_language\": \"fr-FR\", \"project_descriptor\": \"Trading learning platform\"}', NULL),
(193, 197, 'directus_settings', '1', '{\"id\": 1, \"basemaps\": null, \"custom_css\": null, \"mapbox_key\": null, \"module_bar\": null, \"project_url\": \"https://bulllight.io\", \"public_note\": null, 
\"project_logo\": \"bbd3d2e3-238c-40ea-9b28-2bd1528e2e9e\", \"project_name\": \"BullLight\", \"project_color\": \"#FCE997\", \"default_language\": \"en-US\", \"public_background\": null, \"public_foreground\": 
null, \"project_descriptor\": \"Trading learning platform\", \"auth_login_attempts\": 25, \"translation_strings\": null, \"auth_password_policy\": null, \"custom_aspect_ratios\": null, \"storage_asset_presets\": 
null, \"storage_default_folder\": null, \"storage_asset_transform\": \"all\"}', '{\"default_language\": \"en-US\"}', NULL),
(194, 198, 'directus_fields', '50', '{\"field\": \"videos_slug\", \"special\": null, \"interface\": \"input\", \"collection\": \"course\"}', '{\"field\": \"videos_slug\", \"special\": null, \"interface\": 
\"input\", \"collection\": \"course\"}', NULL),
(195, 199, 'directus_fields', '51', '{\"field\": \"videos_slug\", \"options\": {\"template\": \"{{slug}}\"}, \"special\": [\"o2m\"], \"interface\": \"list-o2m\", \"collection\": \"course\"}', '{\"field\": 
\"videos_slug\", \"options\": {\"template\": \"{{slug}}\"}, \"special\": [\"o2m\"], \"interface\": \"list-o2m\", \"collection\": \"course\"}', NULL),
(196, 200, 'category', '1', '{\"name\": \"Test Yolo\", \"slug\": \"test\", \"status\": \"published\"}', '{\"name\": \"Test Yolo\", \"slug\": \"test\", \"status\": \"published\"}', NULL),
(197, 201, 'directus_files', 'ade4a074-d9cb-414d-8acc-61369087f0e2', '{\"type\": \"image/png\", \"title\": \"Capture D’écran 2022 11 22 À 14.41.04\", \"storage\": \"local\", \"filename_download\": \"Capture 
d’écran 2022-11-22 à 14.41.04.png\"}', '{\"type\": \"image/png\", \"title\": \"Capture D’écran 2022 11 22 À 14.41.04\", \"storage\": \"local\", \"filename_download\": \"Capture d’écran 2022-11-22 à 
14.41.04.png\"}', NULL),
(198, 202, 'video', '1', '{\"file\": \"ade4a074-d9cb-414d-8acc-61369087f0e2\", \"name\": \"Eheh O\", \"slug\": \"eheh_o\", \"status\": \"published\"}', '{\"file\": \"ade4a074-d9cb-414d-8acc-61369087f0e2\", 
\"name\": \"Eheh O\", \"slug\": \"eheh_o\", \"status\": \"published\"}', NULL),
(199, 203, 'course_category', '1', '{\"course_id\": 1, \"category_id\": {\"id\": 1}}', '{\"course_id\": 1, \"category_id\": {\"id\": 1}}', 200),
(200, 204, 'course', '1', '{\"name\": \"debutant yolo\", \"slug\": \"debutant\", \"price\": 500, \"status\": \"published\", \"description\": \"ddeededed\", \"categories_slug\": {\"create\": [{\"course_id\": 
\"+\", \"category_id\": {\"id\": 1}}], \"delete\": [], \"update\": []}}', '{\"name\": \"debutant yolo\", \"slug\": \"debutant\", \"price\": 500, \"status\": \"published\", \"description\": \"ddeededed\", 
\"categories_slug\": {\"create\": [{\"course_id\": \"+\", \"category_id\": {\"id\": 1}}], \"delete\": [], \"update\": []}}', NULL),
(201, 205, 'course_category', '2', '{\"course_id\": 2, \"category_id\": {\"id\": 1}}', '{\"course_id\": 2, \"category_id\": {\"id\": 1}}', 202),
(202, 206, 'course', '2', '{\"name\": \"debutant yolo\", \"slug\": \"debutant\", \"price\": 500, \"status\": \"published\", \"description\": \"ddeededed\", \"categories_slug\": {\"create\": [{\"course_id\": 
\"+\", \"category_id\": {\"id\": 1}}], \"delete\": [], \"update\": []}}', '{\"name\": \"debutant yolo\", \"slug\": \"debutant\", \"price\": 500, \"status\": \"published\", \"description\": \"ddeededed\", 
\"categories_slug\": {\"create\": [{\"course_id\": \"+\", \"category_id\": {\"id\": 1}}], \"delete\": [], \"update\": []}}', NULL),
(203, 209, 'directus_fields', '52', '{\"field\": \"videos\", \"options\": {\"template\": \"{{slug}}\"}, \"special\": [\"m2o\"], \"interface\": \"select-dropdown-m2o\", \"collection\": \"course\"}', '{\"field\": 
\"videos\", \"options\": {\"template\": \"{{slug}}\"}, \"special\": [\"m2o\"], \"interface\": \"select-dropdown-m2o\", \"collection\": \"course\"}', NULL),
(204, 210, 'directus_files', 'e2b26cff-04fc-4438-a453-0df8a022f5fd', '{\"type\": \"image/png\", \"title\": \"Capture D’écran 2022 11 22 À 14.41.04\", \"storage\": \"local\", \"filename_download\": \"Capture 
d’écran 2022-11-22 à 14.41.04.png\"}', '{\"type\": \"image/png\", \"title\": \"Capture D’écran 2022 11 22 À 14.41.04\", \"storage\": \"local\", \"filename_download\": \"Capture d’écran 2022-11-22 à 
14.41.04.png\"}', NULL),
(205, 211, 'video', '2', '{\"file\": \"e2b26cff-04fc-4438-a453-0df8a022f5fd\", \"name\": \"vvvv\", \"slug\": \"vvvv\", \"status\": \"published\"}', '{\"file\": \"e2b26cff-04fc-4438-a453-0df8a022f5fd\", \"name\": 
\"vvvv\", \"slug\": \"vvvv\", \"status\": \"published\"}', NULL),
(206, 212, 'directus_fields', '53', '{\"field\": \"videos\", \"special\": [\"m2m\"], \"interface\": \"list-m2m\", \"collection\": \"course\"}', '{\"field\": \"videos\", \"special\": [\"m2m\"], \"interface\": 
\"list-m2m\", \"collection\": \"course\"}', NULL),
(207, 213, 'directus_fields', '54', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"course_video\"}', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"course_video\"}', NULL),
(208, 214, 'directus_collections', 'course_video', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"course_video\"}', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": 
\"course_video\"}', NULL),
(209, 215, 'directus_fields', '55', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": \"course_video\"}', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": \"course_video\"}', NULL),
(210, 216, 'directus_fields', '56', '{\"field\": \"video_id\", \"hidden\": true, \"collection\": \"course_video\"}', '{\"field\": \"video_id\", \"hidden\": true, \"collection\": \"course_video\"}', NULL),
(211, 217, 'course_video', '1', '{\"video_id\": {\"id\": 2}, \"course_id\": 3}', '{\"video_id\": {\"id\": 2}, \"course_id\": 3}', 213),
(212, 218, 'course_video', '2', '{\"video_id\": {\"id\": 1}, \"course_id\": 3}', '{\"video_id\": {\"id\": 1}, \"course_id\": 3}', 213),
(213, 219, 'course', '3', '{\"name\": \"dededed\", \"slug\": \"ddede\", \"videos\": {\"create\": [{\"video_id\": {\"id\": 2}, \"course_id\": \"+\"}, {\"video_id\": {\"id\": 1}, \"course_id\": \"+\"}], \"delete\": 
[], \"update\": []}, \"description\": \"deded\"}', '{\"name\": \"dededed\", \"slug\": \"ddede\", \"videos\": {\"create\": [{\"video_id\": {\"id\": 2}, \"course_id\": \"+\"}, {\"video_id\": {\"id\": 1}, 
\"course_id\": \"+\"}], \"delete\": [], \"update\": []}, \"description\": \"deded\"}', NULL),
(214, 220, 'course_category', '3', '{\"course_id\": 4, \"category_id\": {\"id\": 1}}', '{\"course_id\": 4, \"category_id\": {\"id\": 1}}', 217),
(215, 221, 'course_video', '3', '{\"video_id\": {\"id\": 2}, \"course_id\": 4}', '{\"video_id\": {\"id\": 2}, \"course_id\": 4}', 217),
(216, 222, 'course_video', '4', '{\"video_id\": {\"id\": 1}, \"course_id\": 4}', '{\"video_id\": {\"id\": 1}, \"course_id\": 4}', 217),
(217, 223, 'course', '4', '{\"name\": \"bbbbb\", \"slug\": \"jjbbbj\", \"price\": 28, \"videos\": {\"create\": [{\"video_id\": {\"id\": 2}, \"course_id\": \"+\"}, {\"video_id\": {\"id\": 1}, \"course_id\": 
\"+\"}], \"delete\": [], \"update\": []}, \"description\": \"jjjj\", \"categories_slug\": {\"create\": [{\"course_id\": \"+\", \"category_id\": {\"id\": 1}}], \"delete\": [], \"update\": []}}', '{\"name\": 
\"bbbbb\", \"slug\": \"jjbbbj\", \"price\": 28, \"videos\": {\"create\": [{\"video_id\": {\"id\": 2}, \"course_id\": \"+\"}, {\"video_id\": {\"id\": 1}, \"course_id\": \"+\"}], \"delete\": [], \"update\": []}, 
\"description\": \"jjjj\", \"categories_slug\": {\"create\": [{\"course_id\": \"+\", \"category_id\": {\"id\": 1}}], \"delete\": [], \"update\": []}}', NULL),
(218, 225, 'directus_permissions', '1', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"category\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": 
\"read\", \"fields\": [\"*\"], \"collection\": \"category\", \"validation\": {}, \"permissions\": {}}', NULL),
(219, 226, 'directus_permissions', '2', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"course\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", 
\"fields\": [\"*\"], \"collection\": \"course\", \"validation\": {}, \"permissions\": {}}', NULL),
(220, 227, 'directus_permissions', '3', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"course_category\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": 
\"read\", \"fields\": [\"*\"], \"collection\": \"course_category\", \"validation\": {}, \"permissions\": {}}', NULL),
(221, 228, 'directus_permissions', '4', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"course_video\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": 
\"read\", \"fields\": [\"*\"], \"collection\": \"course_video\", \"validation\": {}, \"permissions\": {}}', NULL),
(222, 229, 'directus_permissions', '5', '{\"role\": null, \"action\": \"read\", \"fields\": [\"*\"], \"collection\": \"video\", \"validation\": {}, \"permissions\": {}}', '{\"role\": null, \"action\": \"read\", 
\"fields\": [\"*\"], \"collection\": \"video\", \"validation\": {}, \"permissions\": {}}', NULL),
(223, 230, 'directus_fields', '57', '{\"field\": \"id\", \"hidden\": true, \"readonly\": true, \"interface\": \"input\", \"collection\": \"user_course\"}', '{\"field\": \"id\", \"hidden\": true, \"readonly\": 
true, \"interface\": \"input\", \"collection\": \"user_course\"}', NULL),
(224, 231, 'directus_fields', '58', '{\"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": 
\"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"interface\": \"select-dropdown\", \"collection\": \"user_course\", \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', '{\"field\": \"status\", \"width\": \"full\", 
\"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, 
\"interface\": \"select-dropdown\", \"collection\": \"user_course\", \"display_options\": {\"choices\": [{\"text\": \"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": 
\"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": \"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", 
\"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}}', NULL),
(225, 232, 'directus_fields', '59', '{\"field\": \"sort\", \"hidden\": true, \"interface\": \"input\", \"collection\": \"user_course\"}', '{\"field\": \"sort\", \"hidden\": true, \"interface\": \"input\", 
\"collection\": \"user_course\"}', NULL),
(226, 233, 'directus_fields', '60', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} 
{{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', '{\"field\": \"user_created\", \"width\": \"half\", \"hidden\": 
true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", 
\"collection\": \"user_course\"}', NULL),
(227, 234, 'directus_fields', '61', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": 
\"datetime\", \"collection\": \"user_course\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": 
[\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"user_course\", \"display_options\": {\"relative\": true}}', NULL),
(228, 235, 'directus_fields', '62', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} 
{{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', '{\"field\": \"user_updated\", \"width\": \"half\", \"hidden\": 
true, \"display\": \"user\", \"options\": {\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"select-dropdown-m2o\", 
\"collection\": \"user_course\"}', NULL),
(229, 236, 'directus_fields', '63', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": 
\"datetime\", \"collection\": \"user_course\", \"display_options\": {\"relative\": true}}', '{\"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": 
[\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"user_course\", \"display_options\": {\"relative\": true}}', NULL),
(230, 237, 'directus_collections', 'user_course', '{\"singleton\": false, \"collection\": \"user_course\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", 
\"unarchive_value\": \"draft\"}', '{\"singleton\": false, \"collection\": \"user_course\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": 
\"draft\"}', NULL),
(231, 238, 'directus_fields', '64', '{\"field\": \"user_id\", \"options\": {\"placeholder\": \"User UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": 
\"user_course\"}', '{\"field\": \"user_id\", \"options\": {\"placeholder\": \"User UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": \"user_course\"}', NULL),
(232, 239, 'directus_fields', '65', '{\"field\": \"course_uuid\", \"options\": {\"placeholder\": \"Course UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": 
\"user_course\"}', '{\"field\": \"course_uuid\", \"options\": {\"placeholder\": \"Course UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": \"user_course\"}', NULL),
(233, 240, 'directus_collections', 'user_course', '{\"icon\": \"fastfood\", \"note\": \"TJ between user and course\", \"sort\": null, \"color\": \"#03B53E\", \"group\": null, \"hidden\": false, \"collapse\": 
\"open\", \"singleton\": false, \"collection\": \"user_course\", \"sort_field\": \"sort\", \"translations\": null, \"archive_field\": \"status\", \"archive_value\": \"archived\", \"accountability\": \"all\", 
\"unarchive_value\": \"draft\", \"display_template\": null, \"archive_app_filter\": true, \"item_duplication_fields\": null}', '{\"icon\": \"fastfood\", \"note\": \"TJ between user and course\", \"color\": 
\"#03B53E\"}', NULL),
(234, 241, 'directus_fields', '66', '{\"field\": \"course_uuid\", \"options\": {\"placeholder\": \"Course UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": 
\"course\"}', '{\"field\": \"course_uuid\", \"options\": {\"placeholder\": \"Course UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": \"course\"}', NULL),
(235, 242, 'directus_fields', '67', '{\"field\": \"category_uuid\", \"options\": {\"placeholder\": \"Category UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": 
\"category\"}', '{\"field\": \"category_uuid\", \"options\": {\"placeholder\": \"Category UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": \"category\"}', NULL),
(236, 243, 'directus_fields', '34', '{\"id\": 34, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"category\"}', NULL),
(237, 244, 'directus_fields', '67', '{\"id\": 67, \"note\": null, \"sort\": 2, \"field\": \"category_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": 
{\"placeholder\": \"Category UUID\"}, \"special\": [\"uuid\"], \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, 
\"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"category_uuid\", \"group\": null, \"collection\": \"category\"}', NULL),
(238, 245, 'directus_fields', '41', '{\"id\": 41, \"note\": null, \"sort\": 3, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 3, \"field\": \"slug\", \"group\": null, \"collection\": \"category\"}', NULL),
(239, 246, 'directus_fields', '40', '{\"id\": 40, \"note\": null, \"sort\": 4, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"name\", \"group\": null, \"collection\": \"category\"}', NULL),
(240, 247, 'directus_fields', '35', '{\"id\": 35, \"note\": null, \"sort\": 5, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 5, 
\"field\": \"status\", \"group\": null, \"collection\": \"category\"}', NULL),
(241, 248, 'directus_fields', '36', '{\"id\": 36, \"note\": null, \"sort\": 6, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"category\"}', NULL),
(242, 249, 'directus_fields', '37', '{\"id\": 37, \"note\": null, \"sort\": 7, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"date_created\", \"group\": null, \"collection\": \"category\"}', NULL),
(243, 250, 'directus_fields', '38', '{\"id\": 38, \"note\": null, \"sort\": 8, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"category\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"category\"}', NULL),
(244, 251, 'directus_fields', '39', '{\"id\": 39, \"note\": null, \"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"category\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"collection\": \"category\"}', NULL),
(245, 252, 'directus_fields', '68', '{\"field\": \"user_uuid\", \"options\": {\"placeholder\": \"User UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": 
\"user_course\"}', '{\"field\": \"user_uuid\", \"options\": {\"placeholder\": \"User UUID\"}, \"special\": [\"uuid\"], \"required\": true, \"interface\": \"input\", \"collection\": \"user_course\"}', NULL),
(246, 253, 'directus_fields', '57', '{\"id\": 57, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(247, 254, 'directus_fields', '65', '{\"id\": 65, \"note\": null, \"sort\": 2, \"field\": \"course_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": 
{\"placeholder\": \"Course UUID\"}, \"special\": [\"uuid\"], \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, 
\"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"course_uuid\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(248, 255, 'directus_fields', '58', '{\"id\": 58, \"note\": null, \"sort\": 3, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 3, 
\"field\": \"status\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(249, 256, 'directus_fields', '59', '{\"id\": 59, \"note\": null, \"sort\": 4, \"field\": \"sort\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"sort\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(250, 257, 'directus_fields', '60', '{\"id\": 60, \"note\": null, \"sort\": 5, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 5, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(251, 258, 'directus_fields', '61', '{\"id\": 61, \"note\": null, \"sort\": 6, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"date_created\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(252, 259, 'directus_fields', '62', '{\"id\": 62, \"note\": null, \"sort\": 7, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(253, 260, 'directus_fields', '63', '{\"id\": 63, \"note\": null, \"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(254, 261, 'directus_fields', '68', '{\"id\": 68, \"note\": null, \"sort\": 9, \"field\": \"user_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"User UUID\"}, \"special\": [\"uuid\"], \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"user_uuid\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(255, 262, 'directus_fields', '57', '{\"id\": 57, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(256, 263, 'directus_fields', '65', '{\"id\": 65, \"note\": null, \"sort\": 2, \"field\": \"course_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": 
{\"placeholder\": \"Course UUID\"}, \"special\": [\"uuid\"], \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, 
\"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"course_uuid\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(257, 264, 'directus_fields', '68', '{\"id\": 68, \"note\": null, \"sort\": 3, \"field\": \"user_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"User UUID\"}, \"special\": [\"uuid\"], \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"user_uuid\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(258, 265, 'directus_fields', '58', '{\"id\": 58, \"note\": null, \"sort\": 4, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 4, 
\"field\": \"status\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(259, 266, 'directus_fields', '59', '{\"id\": 59, \"note\": null, \"sort\": 5, \"field\": \"sort\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"sort\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(260, 267, 'directus_fields', '60', '{\"id\": 60, \"note\": null, \"sort\": 6, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(261, 268, 'directus_fields', '61', '{\"id\": 61, \"note\": null, \"sort\": 7, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"date_created\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(262, 269, 'directus_fields', '62', '{\"id\": 62, \"note\": null, \"sort\": 8, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(263, 270, 'directus_fields', '63', '{\"id\": 63, \"note\": null, \"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"collection\": \"user_course\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(264, 271, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(265, 272, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 2, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(266, 273, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 3, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(267, 274, 'directus_fields', '66', '{\"id\": 66, \"note\": null, \"sort\": 4, \"field\": \"course_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": 
{\"placeholder\": \"Course UUID\"}, \"special\": [\"uuid\"], \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, 
\"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 4, \"field\": \"course_uuid\", \"group\": null, \"collection\": \"course\"}', NULL),
(268, 275, 'directus_fields', '43', '{\"id\": 43, \"note\": null, \"sort\": 5, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"description\", \"group\": null, \"collection\": \"course\"}', NULL),
(269, 276, 'directus_fields', '44', '{\"id\": 44, \"note\": null, \"sort\": 6, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 6, \"field\": \"price\", \"group\": null, \"collection\": \"course\"}', NULL),
(270, 277, 'directus_fields', '46', '{\"id\": 46, \"note\": null, \"sort\": 7, \"field\": \"categories_slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": 
null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"categories_slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(271, 278, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 8, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 8, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(272, 279, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 9, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(273, 280, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 10, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 10, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(274, 281, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 11, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 11, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(275, 282, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 12, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 12, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(276, 283, 'directus_fields', '53', '{\"id\": 53, \"note\": null, \"sort\": 13, \"field\": \"videos\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 13, \"field\": \"videos\", \"group\": null, \"collection\": \"course\"}', NULL),
(277, 284, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(278, 285, 'directus_fields', '66', '{\"id\": 66, \"note\": null, \"sort\": 2, \"field\": \"course_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": 
{\"placeholder\": \"Course UUID\"}, \"special\": [\"uuid\"], \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, 
\"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"course_uuid\", \"group\": null, \"collection\": \"course\"}', NULL),
(279, 286, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 3, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(280, 287, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 4, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 4, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(281, 288, 'directus_fields', '43', '{\"id\": 43, \"note\": null, \"sort\": 5, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"description\", \"group\": null, \"collection\": \"course\"}', NULL),
(282, 289, 'directus_fields', '44', '{\"id\": 44, \"note\": null, \"sort\": 6, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 6, \"field\": \"price\", \"group\": null, \"collection\": \"course\"}', NULL),
(283, 290, 'directus_fields', '46', '{\"id\": 46, \"note\": null, \"sort\": 7, \"field\": \"categories_slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": 
null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"categories_slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(284, 291, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 8, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 8, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(285, 292, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 9, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(286, 293, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 10, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 10, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(287, 294, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 11, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 11, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(288, 295, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 12, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 12, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(289, 296, 'directus_fields', '53', '{\"id\": 53, \"note\": null, \"sort\": 13, \"field\": \"videos\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 13, \"field\": \"videos\", \"group\": null, \"collection\": \"course\"}', NULL),
(290, 297, 'directus_fields', '20', '{\"id\": 20, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"course\"}', NULL),
(291, 298, 'directus_fields', '66', '{\"id\": 66, \"note\": null, \"sort\": 2, \"field\": \"course_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": 
{\"placeholder\": \"Course UUID\"}, \"special\": [\"uuid\"], \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, 
\"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"course_uuid\", \"group\": null, \"collection\": \"course\"}', NULL),
(292, 299, 'directus_fields', '27', '{\"id\": 27, \"note\": null, \"sort\": 3, \"field\": \"slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"placeholder\": 
\"Enter the course slug\'s\"}, \"special\": null, \"readonly\": false, \"required\": true, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(293, 300, 'directus_fields', '26', '{\"id\": 26, \"note\": null, \"sort\": 4, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"iconLeft\": null, 
\"placeholder\": \"Enter a significatif name for the course\"}, \"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, 
\"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 4, \"field\": \"name\", \"group\": null, \"collection\": \"course\"}', NULL),
(294, 301, 'directus_fields', '43', '{\"id\": 43, \"note\": null, \"sort\": 5, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"description\", \"group\": null, \"collection\": \"course\"}', NULL),
(295, 302, 'directus_fields', '44', '{\"id\": 44, \"note\": null, \"sort\": 6, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": {\"min\": 0}, 
\"special\": null, \"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 6, \"field\": \"price\", \"group\": null, \"collection\": \"course\"}', NULL),
(296, 303, 'directus_fields', '46', '{\"id\": 46, \"note\": null, \"sort\": 7, \"field\": \"categories_slug\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, 
\"special\": [\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": 
null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"categories_slug\", \"group\": null, \"collection\": \"course\"}', NULL),
(297, 304, 'directus_fields', '53', '{\"id\": 53, \"note\": null, \"sort\": 8, \"field\": \"videos\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"m2m\"], \"readonly\": false, \"required\": false, \"interface\": \"list-m2m\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 8, \"field\": \"videos\", \"group\": null, \"collection\": \"course\"}', NULL),
(298, 305, 'directus_fields', '21', '{\"id\": 21, \"note\": null, \"sort\": 9, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 9, 
\"field\": \"status\", \"group\": null, \"collection\": \"course\"}', NULL),
(299, 306, 'directus_fields', '22', '{\"id\": 22, \"note\": null, \"sort\": 10, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 10, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(300, 307, 'directus_fields', '23', '{\"id\": 23, \"note\": null, \"sort\": 11, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 11, \"field\": \"date_created\", \"group\": null, \"collection\": \"course\"}', NULL),
(301, 308, 'directus_fields', '24', '{\"id\": 24, \"note\": null, \"sort\": 12, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 12, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"course\"}', NULL),
(302, 309, 'directus_fields', '25', '{\"id\": 25, \"note\": null, \"sort\": 13, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 13, \"field\": \"date_updated\", \"group\": null, \"collection\": \"course\"}', NULL),
(303, 310, 'directus_fields', '69', '{\"field\": \"course_uuid\", \"options\": {\"placeholder\": \"Course UUID\"}, \"special\": [\"o2m\"], \"required\": true, \"interface\": \"list-o2m\", \"collection\": 
\"user_course\"}', '{\"field\": \"course_uuid\", \"options\": {\"placeholder\": \"Course UUID\"}, \"special\": [\"o2m\"], \"required\": true, \"interface\": \"list-o2m\", \"collection\": \"user_course\"}', NULL),
(304, 311, 'directus_fields', '70', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"user_course_course\"}', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"user_course_course\"}', NULL),
(305, 312, 'directus_collections', 'user_course_course', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"user_course_course\"}', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": 
\"user_course_course\"}', NULL),
(306, 313, 'directus_fields', '71', '{\"field\": \"user_course_id\", \"hidden\": true, \"collection\": \"user_course_course\"}', '{\"field\": \"user_course_id\", \"hidden\": true, \"collection\": 
\"user_course_course\"}', NULL),
(307, 314, 'directus_fields', '72', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": \"user_course_course\"}', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": \"user_course_course\"}', 
NULL),
(308, 315, 'directus_fields', '73', '{\"field\": \"courses\", \"special\": [\"m2o\"], \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', '{\"field\": \"courses\", \"special\": [\"m2o\"], 
\"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', NULL),
(309, 316, 'directus_fields', '74', '{\"field\": \"user_uuid\", \"special\": [\"m2o\"], \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', '{\"field\": \"user_uuid\", \"special\": 
[\"m2o\"], \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', NULL),
(310, 317, 'directus_fields', '75', '{\"field\": \"courses\", \"special\": [\"m2o\"], \"required\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', '{\"field\": \"courses\", 
\"special\": [\"m2o\"], \"required\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', NULL),
(311, 318, 'directus_fields', '57', '{\"id\": 57, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(312, 319, 'directus_fields', '75', '{\"id\": 75, \"note\": null, \"sort\": 2, \"field\": \"courses\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"m2o\"], \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"courses\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(313, 320, 'directus_fields', '58', '{\"id\": 58, \"note\": null, \"sort\": 3, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 3, 
\"field\": \"status\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(314, 321, 'directus_fields', '59', '{\"id\": 59, \"note\": null, \"sort\": 4, \"field\": \"sort\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 4, \"field\": \"sort\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(315, 322, 'directus_fields', '60', '{\"id\": 60, \"note\": null, \"sort\": 5, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 5, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(316, 323, 'directus_fields', '61', '{\"id\": 61, \"note\": null, \"sort\": 6, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"date_created\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(317, 324, 'directus_fields', '62', '{\"id\": 62, \"note\": null, \"sort\": 7, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(318, 325, 'directus_fields', '63', '{\"id\": 63, \"note\": null, \"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"date_updated\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(319, 326, 'directus_fields', '74', '{\"id\": 74, \"note\": null, \"sort\": 9, \"field\": \"user_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"m2o\"], \"readonly\": false, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"user_uuid\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(320, 327, 'directus_fields', '76', '{\"field\": \"user_uuid\", \"special\": [\"m2o\"], \"required\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', '{\"field\": \"user_uuid\", 
\"special\": [\"m2o\"], \"required\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\"}', NULL),
(321, 328, 'directus_fields', '57', '{\"id\": 57, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(322, 329, 'directus_fields', '76', '{\"id\": 76, \"note\": null, \"sort\": 2, \"field\": \"user_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"m2o\"], \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"user_uuid\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(323, 330, 'directus_fields', '75', '{\"id\": 75, \"note\": null, \"sort\": 3, \"field\": \"courses\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"m2o\"], \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 3, \"field\": \"courses\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(324, 331, 'directus_fields', '58', '{\"id\": 58, \"note\": null, \"sort\": 4, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 4, 
\"field\": \"status\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(325, 332, 'directus_fields', '59', '{\"id\": 59, \"note\": null, \"sort\": 5, \"field\": \"sort\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"sort\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(326, 333, 'directus_fields', '60', '{\"id\": 60, \"note\": null, \"sort\": 6, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(327, 334, 'directus_fields', '61', '{\"id\": 61, \"note\": null, \"sort\": 7, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"date_created\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(328, 335, 'directus_fields', '62', '{\"id\": 62, \"note\": null, \"sort\": 8, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(329, 336, 'directus_fields', '63', '{\"id\": 63, \"note\": null, \"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(330, 337, 'directus_fields', '77', '{\"field\": \"courses\", \"special\": [\"m2m\"], \"required\": true, \"interface\": \"list-m2m\", \"collection\": \"user_course\"}', '{\"field\": \"courses\", \"special\": 
[\"m2m\"], \"required\": true, \"interface\": \"list-m2m\", \"collection\": \"user_course\"}', NULL),
(331, 338, 'directus_fields', '78', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"user_course_course_1\"}', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"user_course_course_1\"}', NULL),
(332, 339, 'directus_collections', 'user_course_course_1', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"user_course_course_1\"}', '{\"icon\": \"import_export\", \"hidden\": true, 
\"collection\": \"user_course_course_1\"}', NULL),
(333, 340, 'directus_fields', '79', '{\"field\": \"user_course_id\", \"hidden\": true, \"collection\": \"user_course_course_1\"}', '{\"field\": \"user_course_id\", \"hidden\": true, \"collection\": 
\"user_course_course_1\"}', NULL),
(334, 341, 'directus_fields', '80', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": \"user_course_course_1\"}', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": 
\"user_course_course_1\"}', NULL),
(335, 344, 'directus_fields', '81', '{\"field\": \"courses\", \"special\": [\"m2m\"], \"required\": true, \"interface\": \"list-m2m\", \"collection\": \"user_course\"}', '{\"field\": \"courses\", \"special\": 
[\"m2m\"], \"required\": true, \"interface\": \"list-m2m\", \"collection\": \"user_course\"}', NULL),
(336, 345, 'directus_fields', '82', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"user_course_course\"}', '{\"field\": \"id\", \"hidden\": true, \"collection\": \"user_course_course\"}', NULL),
(337, 346, 'directus_collections', 'user_course_course', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"user_course_course\"}', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": 
\"user_course_course\"}', NULL),
(338, 347, 'directus_fields', '83', '{\"field\": \"user_course_id\", \"hidden\": true, \"collection\": \"user_course_course\"}', '{\"field\": \"user_course_id\", \"hidden\": true, \"collection\": 
\"user_course_course\"}', NULL),
(339, 348, 'directus_fields', '84', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": \"user_course_course\"}', '{\"field\": \"course_id\", \"hidden\": true, \"collection\": \"user_course_course\"}', 
NULL),
(340, 349, 'directus_fields', '57', '{\"id\": 57, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": true, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 1, \"field\": \"id\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(341, 350, 'directus_fields', '76', '{\"id\": 76, \"note\": null, \"sort\": 2, \"field\": \"user_uuid\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"m2o\"], \"readonly\": false, \"required\": true, \"interface\": \"select-dropdown-m2o\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": null, \"validation_message\": null}', '{\"sort\": 2, \"field\": \"user_uuid\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(342, 351, 'directus_fields', '81', '{\"id\": 81, \"note\": null, \"sort\": 3, \"field\": \"courses\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": null, \"options\": null, \"special\": 
[\"m2m\"], \"readonly\": false, \"required\": true, \"interface\": \"list-m2m\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 3, \"field\": \"courses\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(343, 352, 'directus_fields', '58', '{\"id\": 58, \"note\": null, \"sort\": 4, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": 
[{\"text\": \"$t:published\", \"value\": \"published\"}, {\"text\": \"$t:draft\", \"value\": \"draft\"}, {\"text\": \"$t:archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, 
\"required\": false, \"interface\": \"select-dropdown\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": {\"choices\": [{\"text\": 
\"$t:published\", \"value\": \"published\", \"background\": \"var(--primary)\", \"foreground\": \"#FFFFFF\"}, {\"text\": \"$t:draft\", \"value\": \"draft\", \"background\": \"#D3DAE4\", \"foreground\": 
\"#18222F\"}, {\"text\": \"$t:archived\", \"value\": \"archived\", \"background\": \"var(--warning)\", \"foreground\": \"#FFFFFF\"}], \"showAsDot\": true}, \"validation_message\": null}', '{\"sort\": 4, 
\"field\": \"status\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(344, 353, 'directus_fields', '59', '{\"id\": 59, \"note\": null, \"sort\": 5, \"field\": \"sort\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, 
\"readonly\": false, \"required\": false, \"interface\": \"input\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, 
\"validation_message\": null}', '{\"sort\": 5, \"field\": \"sort\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(345, 354, 'directus_fields', '60', '{\"id\": 60, \"note\": null, \"sort\": 6, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-created\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 6, \"field\": \"user_created\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(346, 355, 'directus_fields', '61', '{\"id\": 61, \"note\": null, \"sort\": 7, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-created\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 7, \"field\": \"date_created\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(347, 356, 'directus_fields', '62', '{\"id\": 62, \"note\": null, \"sort\": 8, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": 
{\"template\": \"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"select-dropdown-m2o\", \"collection\": 
\"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, \"display_options\": null, \"validation_message\": null}', '{\"sort\": 8, \"field\": \"user_updated\", \"group\": null, 
\"collection\": \"user_course\"}', NULL),
(348, 357, 'directus_fields', '63', '{\"id\": 63, \"note\": null, \"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, 
\"special\": [\"date-updated\"], \"readonly\": true, \"required\": false, \"interface\": \"datetime\", \"collection\": \"user_course\", \"conditions\": null, \"validation\": null, \"translations\": null, 
\"display_options\": {\"relative\": true}, \"validation_message\": null}', '{\"sort\": 9, \"field\": \"date_updated\", \"group\": null, \"collection\": \"user_course\"}', NULL),
(349, 358, 'user_course_course', '1', '{\"course_id\": {\"id\": 4}, \"user_course_id\": 1}', '{\"course_id\": {\"id\": 4}, \"user_course_id\": 1}', 351),
(350, 359, 'user_course_course', '2', '{\"course_id\": {\"id\": 3}, \"user_course_id\": 1}', '{\"course_id\": {\"id\": 3}, \"user_course_id\": 1}', 351),
(351, 360, 'user_course', '1', '{\"courses\": {\"create\": [{\"course_id\": {\"id\": 4}, \"user_course_id\": \"+\"}, {\"course_id\": {\"id\": 3}, \"user_course_id\": \"+\"}], \"delete\": [], \"update\": []}, 
\"user_uuid\": \"7adc6b9b-3405-41b1-9214-acbc1ee277e7\"}', '{\"courses\": {\"create\": [{\"course_id\": {\"id\": 4}, \"user_course_id\": \"+\"}, {\"course_id\": {\"id\": 3}, \"user_course_id\": \"+\"}], 
\"delete\": [], \"update\": []}, \"user_uuid\": \"7adc6b9b-3405-41b1-9214-acbc1ee277e7\"}', NULL),
(352, 362, 'directus_files', '33417e15-9321-4202-843a-f8c827938ecf', '{\"type\": \"image/svg+xml\", \"title\": \"Icon Color   No Background\", \"storage\": \"local\", \"filename_download\": \"icon color - no 
background.svg\"}', '{\"type\": \"image/svg+xml\", \"title\": \"Icon Color   No Background\", \"storage\": \"local\", \"filename_download\": \"icon color - no background.svg\"}', NULL),
(353, 363, 'directus_users', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '{\"role\": \"b5b6f380-2dca-4f2f-b557-05e09360736e\", \"email\": \"cocod.tv@gmail.com\", \"title\": \"Mister\", \"avatar\": 
\"33417e15-9321-4202-843a-f8c827938ecf\", \"location\": \"Lyon\", \"password\": \"**********\", \"last_name\": \"clin\", \"first_name\": \"Lary\"}', '{\"role\": \"b5b6f380-2dca-4f2f-b557-05e09360736e\", 
\"email\": \"cocod.tv@gmail.com\", \"title\": \"Mister\", \"avatar\": \"33417e15-9321-4202-843a-f8c827938ecf\", \"location\": \"Lyon\", \"password\": \"**********\", \"last_name\": \"clin\", \"first_name\": 
\"Lary\"}', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_roles`
--

CREATE TABLE `directus_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'supervised_user_circle',
  `description` text,
  `ip_access` text,
  `enforce_tfa` tinyint(1) NOT NULL DEFAULT '0',
  `admin_access` tinyint(1) NOT NULL DEFAULT '0',
  `app_access` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_roles`
--

INSERT INTO `directus_roles` (`id`, `name`, `icon`, `description`, `ip_access`, `enforce_tfa`, `admin_access`, `app_access`) VALUES
('b5b6f380-2dca-4f2f-b557-05e09360736e', 'Administrator', 'verified', '$t:admin_description', NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `directus_sessions`
--

CREATE TABLE `directus_sessions` (
  `token` varchar(64) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `share` char(36) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_sessions`
--

INSERT INTO `directus_sessions` (`token`, `user`, `expires`, `ip`, `user_agent`, `share`, `origin`) VALUES
('8qgHbhSJtUT9UZOijjKxrYB7IJuHkmw4e99lt4wO8yDPLlkDuXXdVtWCw6Amhc83', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2023-02-10 20:28:21', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 
(KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, 'http://0.0.0.0:8055'),
('SjToTalABHb47-Owf73SauJXW4_--QZ7-zw293fRE3Tl2nhYzbmxyHi4oZKwbRB6', 'e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', '2023-02-10 19:11:17', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 
(KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, 'http://localhost:3000');

-- --------------------------------------------------------

--
-- Structure de la table `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL DEFAULT 'Directus',
  `project_url` varchar(255) DEFAULT NULL,
  `project_color` varchar(50) DEFAULT NULL,
  `project_logo` char(36) DEFAULT NULL,
  `public_foreground` char(36) DEFAULT NULL,
  `public_background` char(36) DEFAULT NULL,
  `public_note` text,
  `auth_login_attempts` int(10) UNSIGNED DEFAULT '25',
  `auth_password_policy` varchar(100) DEFAULT NULL,
  `storage_asset_transform` varchar(7) DEFAULT 'all',
  `storage_asset_presets` json DEFAULT NULL,
  `custom_css` text,
  `storage_default_folder` char(36) DEFAULT NULL,
  `basemaps` json DEFAULT NULL,
  `mapbox_key` varchar(255) DEFAULT NULL,
  `module_bar` json DEFAULT NULL,
  `project_descriptor` varchar(100) DEFAULT NULL,
  `translation_strings` json DEFAULT NULL,
  `default_language` varchar(255) NOT NULL DEFAULT 'en-US',
  `custom_aspect_ratios` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_settings`
--

INSERT INTO `directus_settings` (`id`, `project_name`, `project_url`, `project_color`, `project_logo`, `public_foreground`, `public_background`, `public_note`, `auth_login_attempts`, `auth_password_policy`, 
`storage_asset_transform`, `storage_asset_presets`, `custom_css`, `storage_default_folder`, `basemaps`, `mapbox_key`, `module_bar`, `project_descriptor`, `translation_strings`, `default_language`, 
`custom_aspect_ratios`) VALUES
(1, 'BullLight', 'https://bulllight.io', '#FCE997', 'bbd3d2e3-238c-40ea-9b28-2bd1528e2e9e', NULL, NULL, NULL, 25, NULL, 'all', NULL, NULL, NULL, NULL, NULL, NULL, 'Trading learning platform', NULL, 'en-US', 
NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_shares`
--

CREATE TABLE `directus_shares` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `times_used` int(11) DEFAULT '0',
  `max_uses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `directus_users`
--

CREATE TABLE `directus_users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `tags` json DEFAULT NULL,
  `avatar` char(36) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `theme` varchar(20) DEFAULT 'auto',
  `tfa_secret` varchar(255) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `role` char(36) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_page` varchar(255) DEFAULT NULL,
  `provider` varchar(128) NOT NULL DEFAULT 'default',
  `external_identifier` varchar(255) DEFAULT NULL,
  `auth_data` json DEFAULT NULL,
  `email_notifications` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directus_users`
--

INSERT INTO `directus_users` (`id`, `first_name`, `last_name`, `email`, `password`, `location`, `title`, `description`, `tags`, `avatar`, `language`, `theme`, `tfa_secret`, `status`, `role`, `token`, 
`last_access`, `last_page`, `provider`, `external_identifier`, `auth_data`, `email_notifications`) VALUES
('7adc6b9b-3405-41b1-9214-acbc1ee277e7', 'Admin', 'User', 'admin@example.com', '$argon2id$v=19$m=65536,t=3,p=4$S2z0Slp73YQs6+ENZ1KLVQ$Uvl0ZM+FvoBC16Av1d3WF8Q6JB/fGAgNMYvjJ73oEmc', NULL, NULL, NULL, NULL, NULL, 
NULL, 'auto', NULL, 'active', 'b5b6f380-2dca-4f2f-b557-05e09360736e', NULL, '2023-02-03 20:28:21', '/users/e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', 'default', NULL, NULL, 1),
('e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', 'Lary', 'clin', 'cocod.tv@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$8k3Oh8Z6JaVULKwqSkUc8g$8QJ014s01y5DaICmJrxIfVtZYy0FG4SwBgsKLVN5Mvw', 'Lyon', 'Mister', NULL, NULL, 
'33417e15-9321-4202-843a-f8c827938ecf', NULL, 'auto', NULL, 'active', 'b5b6f380-2dca-4f2f-b557-05e09360736e', NULL, '2023-02-03 19:11:17', NULL, 'default', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `directus_webhooks`
--

CREATE TABLE `directus_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL DEFAULT 'POST',
  `url` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `data` tinyint(1) NOT NULL DEFAULT '1',
  `actions` varchar(100) NOT NULL,
  `collections` varchar(255) NOT NULL,
  `headers` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user_course`
--

CREATE TABLE `user_course` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int(11) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `user_uuid` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user_course`
--

INSERT INTO `user_course` (`id`, `status`, `sort`, `user_created`, `date_created`, `user_updated`, `date_updated`, `user_uuid`) VALUES
(1, 'draft', NULL, '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-12-12 10:30:21', NULL, NULL, '7adc6b9b-3405-41b1-9214-acbc1ee277e7');

-- --------------------------------------------------------

--
-- Structure de la table `user_course_course`
--

CREATE TABLE `user_course_course` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_course_id` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user_course_course`
--

INSERT INTO `user_course_course` (`id`, `user_course_id`, `course_id`) VALUES
(1, 1, 4),
(2, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `status`, `user_created`, `date_created`, `user_updated`, `date_updated`, `slug`, `name`, `file`) VALUES
(1, 'published', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:30:16', NULL, NULL, 'eheh_o', 'Eheh O', 'ade4a074-d9cb-414d-8acc-61369087f0e2'),
(2, 'published', '7adc6b9b-3405-41b1-9214-acbc1ee277e7', '2022-11-22 13:51:32', NULL, NULL, 'vvvv', 'vvvv', 'e2b26cff-04fc-4438-a453-0df8a022f5fd');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_user_created_foreign` (`user_created`),
  ADD KEY `category_user_updated_foreign` (`user_updated`);

--
-- Index pour la table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_user_created_foreign` (`user_created`),
  ADD KEY `course_user_updated_foreign` (`user_updated`);

--
-- Index pour la table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_category_category_id_foreign` (`category_id`),
  ADD KEY `course_category_course_id_foreign` (`course_id`);

--
-- Index pour la table `course_video`
--
ALTER TABLE `course_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_video_video_id_foreign` (`video_id`),
  ADD KEY `course_video_course_id_foreign` (`course_id`);

--
-- Index pour la table `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_activity_collection_foreign` (`collection`);

--
-- Index pour la table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD PRIMARY KEY (`collection`),
  ADD KEY `directus_collections_group_foreign` (`group`);

--
-- Index pour la table `directus_dashboards`
--
ALTER TABLE `directus_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_dashboards_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_fields_collection_foreign` (`collection`);

--
-- Index pour la table `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_files_uploaded_by_foreign` (`uploaded_by`),
  ADD KEY `directus_files_modified_by_foreign` (`modified_by`),
  ADD KEY `directus_files_folder_foreign` (`folder`);

--
-- Index pour la table `directus_flows`
--
ALTER TABLE `directus_flows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_flows_operation_unique` (`operation`),
  ADD KEY `directus_flows_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_folders_parent_foreign` (`parent`);

--
-- Index pour la table `directus_migrations`
--
ALTER TABLE `directus_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_notifications_recipient_foreign` (`recipient`),
  ADD KEY `directus_notifications_sender_foreign` (`sender`);

--
-- Index pour la table `directus_operations`
--
ALTER TABLE `directus_operations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_operations_resolve_unique` (`resolve`),
  ADD UNIQUE KEY `directus_operations_reject_unique` (`reject`),
  ADD KEY `directus_operations_flow_foreign` (`flow`),
  ADD KEY `directus_operations_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_panels`
--
ALTER TABLE `directus_panels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_panels_dashboard_foreign` (`dashboard`),
  ADD KEY `directus_panels_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_permissions_collection_foreign` (`collection`),
  ADD KEY `directus_permissions_role_foreign` (`role`);

--
-- Index pour la table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_presets_collection_foreign` (`collection`),
  ADD KEY `directus_presets_user_foreign` (`user`),
  ADD KEY `directus_presets_role_foreign` (`role`);

--
-- Index pour la table `directus_relations`
--
ALTER TABLE `directus_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_relations_many_collection_foreign` (`many_collection`),
  ADD KEY `directus_relations_one_collection_foreign` (`one_collection`);

--
-- Index pour la table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_revisions_collection_foreign` (`collection`),
  ADD KEY `directus_revisions_parent_foreign` (`parent`),
  ADD KEY `directus_revisions_activity_foreign` (`activity`);

--
-- Index pour la table `directus_roles`
--
ALTER TABLE `directus_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `directus_sessions_user_foreign` (`user`),
  ADD KEY `directus_sessions_share_foreign` (`share`);

--
-- Index pour la table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_settings_project_logo_foreign` (`project_logo`),
  ADD KEY `directus_settings_public_foreground_foreign` (`public_foreground`),
  ADD KEY `directus_settings_public_background_foreign` (`public_background`),
  ADD KEY `directus_settings_storage_default_folder_foreign` (`storage_default_folder`);

--
-- Index pour la table `directus_shares`
--
ALTER TABLE `directus_shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_shares_collection_foreign` (`collection`),
  ADD KEY `directus_shares_role_foreign` (`role`),
  ADD KEY `directus_shares_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_external_identifier_unique` (`external_identifier`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD UNIQUE KEY `directus_users_token_unique` (`token`),
  ADD KEY `directus_users_role_foreign` (`role`);

--
-- Index pour la table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_course`
--
ALTER TABLE `user_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_course_user_uuid_unique` (`user_uuid`),
  ADD KEY `user_course_user_created_foreign` (`user_created`),
  ADD KEY `user_course_user_updated_foreign` (`user_updated`);

--
-- Index pour la table `user_course_course`
--
ALTER TABLE `user_course_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_course_course_course_id_foreign` (`course_id`),
  ADD KEY `user_course_course_user_course_id_foreign` (`user_course_id`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_user_created_foreign` (`user_created`),
  ADD KEY `video_user_updated_foreign` (`user_updated`),
  ADD KEY `video_file_foreign` (`file`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `course_video`
--
ALTER TABLE `course_video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- AUTO_INCREMENT pour la table `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `directus_presets`
--
ALTER TABLE `directus_presets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT pour la table `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_course`
--
ALTER TABLE `user_course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user_course_course`
--
ALTER TABLE `user_course_course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `category_user_updated_foreign` FOREIGN KEY (`user_updated`) REFERENCES `directus_users` (`id`);

--
-- Contraintes pour la table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `course_user_updated_foreign` FOREIGN KEY (`user_updated`) REFERENCES `directus_users` (`id`);

--
-- Contraintes pour la table `course_category`
--
ALTER TABLE `course_category`
  ADD CONSTRAINT `course_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `course_category_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `course_video`
--
ALTER TABLE `course_video`
  ADD CONSTRAINT `course_video_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `course_video_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD CONSTRAINT `directus_collections_group_foreign` FOREIGN KEY (`group`) REFERENCES `directus_collections` (`collection`);

--
-- Contraintes pour la table `directus_dashboards`
--
ALTER TABLE `directus_dashboards`
  ADD CONSTRAINT `directus_dashboards_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_files`
--
ALTER TABLE `directus_files`
  ADD CONSTRAINT `directus_files_folder_foreign` FOREIGN KEY (`folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `directus_files_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `directus_files_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `directus_users` (`id`);

--
-- Contraintes pour la table `directus_flows`
--
ALTER TABLE `directus_flows`
  ADD CONSTRAINT `directus_flows_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD CONSTRAINT `directus_folders_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_folders` (`id`);

--
-- Contraintes pour la table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  ADD CONSTRAINT `directus_notifications_recipient_foreign` FOREIGN KEY (`recipient`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_notifications_sender_foreign` FOREIGN KEY (`sender`) REFERENCES `directus_users` (`id`);

--
-- Contraintes pour la table `directus_operations`
--
ALTER TABLE `directus_operations`
  ADD CONSTRAINT `directus_operations_flow_foreign` FOREIGN KEY (`flow`) REFERENCES `directus_flows` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_operations_reject_foreign` FOREIGN KEY (`reject`) REFERENCES `directus_operations` (`id`),
  ADD CONSTRAINT `directus_operations_resolve_foreign` FOREIGN KEY (`resolve`) REFERENCES `directus_operations` (`id`),
  ADD CONSTRAINT `directus_operations_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_panels`
--
ALTER TABLE `directus_panels`
  ADD CONSTRAINT `directus_panels_dashboard_foreign` FOREIGN KEY (`dashboard`) REFERENCES `directus_dashboards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_panels_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD CONSTRAINT `directus_permissions_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD CONSTRAINT `directus_presets_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_presets_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD CONSTRAINT `directus_revisions_activity_foreign` FOREIGN KEY (`activity`) REFERENCES `directus_activity` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_revisions_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_revisions` (`id`);

--
-- Contraintes pour la table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD CONSTRAINT `directus_sessions_share_foreign` FOREIGN KEY (`share`) REFERENCES `directus_shares` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_sessions_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD CONSTRAINT `directus_settings_project_logo_foreign` FOREIGN KEY (`project_logo`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_background_foreign` FOREIGN KEY (`public_background`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_foreground_foreign` FOREIGN KEY (`public_foreground`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_storage_default_folder_foreign` FOREIGN KEY (`storage_default_folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_shares`
--
ALTER TABLE `directus_shares`
  ADD CONSTRAINT `directus_shares_collection_foreign` FOREIGN KEY (`collection`) REFERENCES `directus_collections` (`collection`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_shares_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_shares_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_users`
--
ALTER TABLE `directus_users`
  ADD CONSTRAINT `directus_users_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `user_course`
--
ALTER TABLE `user_course`
  ADD CONSTRAINT `user_course_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `user_course_user_updated_foreign` FOREIGN KEY (`user_updated`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `user_course_user_uuid_foreign` FOREIGN KEY (`user_uuid`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `user_course_course`
--
ALTER TABLE `user_course_course`
  ADD CONSTRAINT `user_course_course_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_course_course_user_course_id_foreign` FOREIGN KEY (`user_course_id`) REFERENCES `user_course` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_file_foreign` FOREIGN KEY (`file`) REFERENCES `directus_files` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `video_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `video_user_updated_foreign` FOREIGN KEY (`user_updated`) REFERENCES `directus_users` (`id`);

