-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 27 nov. 2019 à 11:04
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ebref_app2`
--
CREATE DATABASE IF NOT EXISTS `ebref_app2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ebref_app2`;

-- --------------------------------------------------------

--
-- Structure de la table `actus_article`
--

CREATE TABLE `actus_article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `actus_grid`
--

CREATE TABLE `actus_grid` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `actus_article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `aidants_article`
--

CREATE TABLE `aidants_article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `aidants_grid`
--

CREATE TABLE `aidants_grid` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `aidants_article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `patients_article`
--

CREATE TABLE `patients_article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `patients_grid`
--

CREATE TABLE `patients_grid` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `patients_article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actus_article`
--
ALTER TABLE `actus_article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `actus_grid`
--
ALTER TABLE `actus_grid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_169AFBE155451F1C` (`actus_article_id`);

--
-- Index pour la table `aidants_article`
--
ALTER TABLE `aidants_article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aidants_grid`
--
ALTER TABLE `aidants_grid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_957818B77FE36593` (`aidants_article_id`);

--
-- Index pour la table `patients_article`
--
ALTER TABLE `patients_article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patients_grid`
--
ALTER TABLE `patients_grid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_965DB7AE3CE7DFD2` (`patients_article_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actus_article`
--
ALTER TABLE `actus_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `actus_grid`
--
ALTER TABLE `actus_grid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `aidants_article`
--
ALTER TABLE `aidants_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `aidants_grid`
--
ALTER TABLE `aidants_grid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `patients_article`
--
ALTER TABLE `patients_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `patients_grid`
--
ALTER TABLE `patients_grid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actus_grid`
--
ALTER TABLE `actus_grid`
  ADD CONSTRAINT `FK_169AFBE155451F1C` FOREIGN KEY (`actus_article_id`) REFERENCES `actus_article` (`id`);

--
-- Contraintes pour la table `aidants_grid`
--
ALTER TABLE `aidants_grid`
  ADD CONSTRAINT `FK_957818B77FE36593` FOREIGN KEY (`aidants_article_id`) REFERENCES `aidants_article` (`id`);

--
-- Contraintes pour la table `patients_grid`
--
ALTER TABLE `patients_grid`
  ADD CONSTRAINT `FK_965DB7AE3CE7DFD2` FOREIGN KEY (`patients_article_id`) REFERENCES `patients_article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
