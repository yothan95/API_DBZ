-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 12 juin 2022 à 21:03
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp_api`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(3) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `race` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  `technique` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `race`, `description`, `technique`) VALUES
(1, 'Son Goku', 'Saiyan', 'Son Goku, de son nom de naissance Kakarot, est un personnage de fiction créé par Akira Toriyama et le principal héros du manga Dragon Ball. Il apparaît pour la première fois le 20 novembre 1984 dans le Weekly Shonen Jump.', 'Kamehameha'),
(2, 'Piccolo', 'Namek', 'Piccolo, également connu sous le nom de Satan Petit-Cœur, est un personnage de fiction créé par Akira Toriyama dans le manga Dragon Ball en 1984. Il apparaît pour la première fois le 9 février 1988 dans le Weekly Shonen Jump. ', 'Makankô Sappô'),
(3, 'Krilin', 'Terrien', 'Krilin, également typographié Kulilin, est un personnage de fiction créé par Akira Toriyama dans le manga Dragon Ball en 1984. Il apparaît pour la première fois le 21 mai 1985 dans le Weekly Shonen Jump. ', 'Kienzan'),
(4, 'Son Gohan', 'Saiyan de Sang-Mêlé', 'Son Gohan est un personnage de fiction du manga Dragon Ball créé par Akira Toriyama. Il apparaît pour la première fois dans le magazine Weekly Shonen Jump, le 24 octobre 1988. Il est le fils de Chichi et de Son Goku.', 'Masenko');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
