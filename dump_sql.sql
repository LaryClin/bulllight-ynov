-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 20 avr. 2023 à 09:18
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données : `directus`
--

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

INSERT INTO `directus_users` (`id`, `first_name`, `last_name`, `email`, `password`, `location`, `title`, `description`, `tags`, `avatar`, `language`, `theme`, `tfa_secret`, `status`, `role`, `token`, `last_access`, `last_page`, `provider`, `external_identifier`, `auth_data`, `email_notifications`) VALUES
('7adc6b9b-3405-41b1-9214-acbc1ee277e7', 'Admin', 'User', 'admin@example.com', '$argon2id$v=19$m=16,t=2,p=1$czRkbnFFVWNHZWVkbTdkUg$9WgN+gfbm3yZ1+1pV+6BCg', NULL, NULL, NULL, NULL, NULL, NULL, 'auto', NULL, 'active', 'b5b6f380-2dca-4f2f-b557-05e09360736e', NULL, '2023-04-20 09:18:13', '/users/e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', 'default', NULL, NULL, 1),
('e326b9cb-7d6c-4bd7-b6af-0839badbb4c0', 'Lary', 'clin', 'cocod.tv@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$8k3Oh8Z6JaVULKwqSkUc8g$8QJ014s01y5DaICmJrxIfVtZYy0FG4SwBgsKLVN5Mvw', 'Lyon', 'Mister', NULL, NULL, '33417e15-9321-4202-843a-f8c827938ecf', NULL, 'auto', NULL, 'active', 'b5b6f380-2dca-4f2f-b557-05e09360736e', NULL, '2023-02-03 19:11:17', NULL, 'default', NULL, NULL, 1);

--
-- Index pour les tables déchargées
--

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
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `directus_users`
--
ALTER TABLE `directus_users`
  ADD CONSTRAINT `directus_users_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE SET NULL;
