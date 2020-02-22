-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 09:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `script`
--

-- --------------------------------------------------------

--
-- Table structure for table `champs`
--

CREATE TABLE `champs` (
  `champs_id` int(11) NOT NULL,
  `champs_num_step` int(11) NOT NULL,
  `champs_libelle` text NOT NULL,
  `champs_type` varchar(10) NOT NULL,
  `champs_next_step` varchar(20) DEFAULT NULL,
  `champs_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `champs`
--

INSERT INTO `champs` (`champs_id`, `champs_num_step`, `champs_libelle`, `champs_type`, `champs_next_step`, `champs_order`) VALUES
(1, 1, 'Choix type', 'libelle', '2', 1),
(2, 1, 'Mini-site', 'radio', '2', 2),
(3, 1, 'Page jaune', 'radio', '2', 3),
(4, 2, 'Appel sur ?', 'libelle', '0', 0),
(5, 2, 'Réparateur qualié', 'radio', NULL, 2),
(6, 2, 'Typage', 'radio', NULL, 3),
(7, 2, 'Point conseil', 'radio', '3', 1),
(8, 3, 'Type de demande', 'libelle', NULL, 1),
(9, 3, 'Installation', 'radio', '4', 2),
(10, 3, 'SAV / Réparation', 'radio', NULL, 3),
(11, 3, 'Autres ( hors bubendor)', 'radio', NULL, 4),
(12, 4, 'Le point conseil est il à proximité du lieu d\'intervention ? ', 'libelle', NULL, 1),
(13, 4, 'Oui', 'radio', '5', 2),
(14, 4, ' Non', 'radio', NULL, 3),
(15, 4, 'Pas de point conseil disponible', 'radio', NULL, 4),
(16, 5, 'Coordonnées de l\'appelant', 'libelle', NULL, 1),
(17, 5, 'Ouvrir la fiche contact', 'button', NULL, 2),
(18, 5, 'Avant toute transmission il faut s\\\'assurer que les vérications ont été faites :</br><ul><li>Une coupure / remise en service du secteur sur le disjoncteur du volet roulant n\\\'a pas permis de résoudre la panne.</li><li>La pile de l’émetteur dispose d\'un niveau de charge sufisant.</li><li>Le démontage du caisson est possible (Les vis sont apparentes et aucun obstacle ne se situe devant la trappe de visite).</li><li>Tous les composants du volet se trouvent sur le lieu de l\'intervention (notamment l’émetteur).</li></ul>', 'libelle', NULL, 1),
(19, 5, 'Demande', 'libelle', NULL, 2),
(20, 5, 'SAV – Volet Bubendor sous garantie (moins de 7 ans)', 'radio', NULL, 3),
(21, 5, 'SAV – Volet Bubendor hors garantie (plus de 7 ans) ', 'radio', NULL, 4),
(22, 5, 'SAV – Autres marques', 'radio', NULL, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `champs`
--
ALTER TABLE `champs`
  ADD PRIMARY KEY (`champs_id`),
  ADD KEY `champs_next_step` (`champs_next_step`),
  ADD KEY `champs_num_step` (`champs_num_step`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `champs`
--
ALTER TABLE `champs`
  MODIFY `champs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
