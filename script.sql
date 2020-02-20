-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 02:51 PM
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
  `champs_libelle` varchar(255) NOT NULL,
  `champs_type` varchar(10) NOT NULL,
  `champs_next_step` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `champs`
--

INSERT INTO `champs` (`champs_id`, `champs_num_step`, `champs_libelle`, `champs_type`, `champs_next_step`) VALUES
(67, 1, 'Service d\'accueil Bubendorff, $nameUser Bonjour.', 'libelle', 2),
(68, 2, 'Appel sur ?', 'libelle', NULL),
(69, 2, 'Point Conseil', 'radio', 3),
(70, 2, 'Réparateur qualié', 'radio', 46),
(71, 2, 'Typage', 'radio', 67),
(72, 3, 'Type de demande', 'libelle', NULL),
(73, 3, 'Installation', 'radio', NULL),
(74, 3, 'SAV / Réparation', 'radio', 20),
(75, 3, 'Autres ( hors bubendorff)', 'radio', 18),
(76, 4, 'Le point conseil est il à proximité du lieu d\'intervention ? ', 'libelle', NULL),
(77, 4, 'Oui', 'radio', NULL),
(78, 4, 'Non', 'radio', 14),
(79, 4, 'Pas de point conseil disponible', 'radio', 16),
(80, 5, 'Coordonnées de l\'appelant', 'libelle', NULL),
(81, 5, 'Ouvrir la fiche contact', 'button', 6),
(82, 6, 'Adresse', 'text', 7),
(83, 7, 'CP', 'text', 8),
(84, 7, 'Ville', 'text', 8),
(85, 8, 'Nombre de volet à poser ?', 'text', 9),
(86, 9, 'Type de travaux', 'libelle', NULL),
(87, 9, 'Neuf', 'radio', NULL),
(88, 9, 'Rénovation', 'radio', NULL),
(89, 9, 'Extension', 'radio', NULL),
(90, 9, 'Autre (télécommande,....)', 'radio', 12),
(91, 10, 'Type de bien', 'libelle', 11),
(92, 10, 'Appartement', 'radio', NULL),
(93, 10, 'Maison individuelle', 'radio', NULL),
(94, 10, 'Immeuble', 'radio', NULL),
(95, 10, 'Commerce', 'radio', NULL),
(96, 10, 'Bureaux', 'radio', NULL),
(97, 10, 'Usine', 'radio', NULL),
(98, 10, 'Hôtel', 'radio', NULL),
(99, 10, 'Autre', 'radio', NULL),
(100, 11, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL),
(101, 12, 'Commentaires', 'textarea', 13),
(102, 13, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL),
(103, 14, 'Faire une recherche avec l\'adresse d\'intervention, code postal et ville.Remplir la fiche de demande en ligne  sur le site bubendorff en prenant toutes les informations communiquées par le client (ne pas lacher le client)', 'libelle', 15),
(104, 15, 'Enregistrer les données du script', 'libelle', NULL),
(105, 16, 'Renvoyer vers le site ou le particulier fera sa demande en ligne, il sera recontacté par le Service Consommateur an de trouver une solution. Délai maximum 48h.', 'libelle', 17),
(106, 17, 'Enregistrer les données du script', 'libelle', NULL),
(107, 18, 'Appelez le point conseil, à défaut lui communiquez les coordonnées.', 'libelle', 19),
(108, 19, 'Enregistrer les données du script', 'libelle', NULL),
(109, 20, ' SAV - Réparation', 'libelle', NULL),
(110, 20, 'SAV - Volet marque Bubendorff vendu par le point conseil(garanti ou non)', 'radio', 21),
(111, 20, 'SAV - Volet non vendu par le point conseil', 'radio', 23),
(112, 21, 'Transférez l\'appel vers le point conseil. S\'il n\'y a pas de réponse, lui communiquez les coordonnées téléphonique (à gauche de l\'écran sous le calendrier).', 'libelle', 22),
(113, 22, 'Enregistrer les données du script', 'libelle', NULL),
(114, 23, 'Type de SAV', 'libelle', NULL),
(115, 23, 'Volets de marque Bubendorff (moins de 7 ans) – SOUS GARANTIE', 'radio', NULL),
(116, 23, 'Volets de marque Bubendorff (plus de 7 ans) – HORS GARANTIE', 'radio', 26),
(117, 23, 'Volets d\'autres marques', 'radio', 36),
(118, 24, 'Renvoi du particulier  :1) Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N. OU 2) vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 11h et de 13h30 à 15h00', 'libelle', 25),
(119, 25, 'Enregistrer les données du script', 'libelle', NULL),
(120, 26, 'Le point conseil est il réparateur qualié toutes marques ?', 'libelle', NULL),
(121, 26, 'Oui', 'radio', NULL),
(122, 26, 'Non', 'radio', 34),
(123, 27, 'Coordonnées de l\'appelant', 'libelle', NULL),
(124, 27, 'Ouvrir la fiche contact', 'button', 28),
(125, 28, 'Adresse', 'text', 29),
(126, 29, 'CP', 'text', 30),
(127, 29, 'Ville', 'text', 30),
(128, 30, 'Nombre de volet', 'text', 31),
(129, 31, 'N° de serie', 'text', 32),
(130, 32, 'Informations complémentaires', 'textarea', 33),
(131, 33, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL),
(132, 34, 'Renvoi du particulier  : 1) Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N. OU 2) vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 11h et de 13h30 à 15 00', 'libelle', NULL),
(133, 36, 'Est ce que le point conseil est réparateur qualié ?', 'libelle', NULL),
(134, 36, 'Oui', 'radio', NULL),
(135, 36, 'Non', 'radio', 44),
(136, 35, 'Enregistrer les données du script', 'libelle', NULL),
(137, 37, 'Coordonnées de l\'appelant', 'libelle', NULL),
(138, 37, 'Ouvrir la fiche contact', 'button', 38),
(139, 38, 'Adresse', 'text', 39),
(140, 39, 'CP', 'text', 40),
(141, 39, 'Ville', 'text', 40),
(142, 40, 'Nombre de volets concernés par la demande de réparation', 'text', 41),
(143, 41, 'N°S/N ou NSP', 'text', 42),
(144, 43, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL),
(145, 44, 'Renvoi du particulier  : 1) Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N. OU 2) vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 11h et de 13h30 à 15 00', 'libelle', 45),
(146, 45, 'Enregistrer les données du script', 'libelle', NULL),
(147, 46, 'Avant toute transmission il faut s\'assurer que les vérications ont été faites :</br><ul><li>Une coupure / remise en service du secteur sur le disjoncteur du volet roulant n\'a pas permis de résoudre la panne.</li><li>La pile de l’émetteur dispose d\'un nive', 'libelle', 47),
(148, 47, 'Demande', 'libelle', NULL),
(149, 47, 'SAV – Volet Bubendorff sous garantie (moins de 7 ans)', 'radio', NULL),
(150, 47, 'SAV – Volet Bubendorff hors garantie (plus de 7 ans)', 'radio', 50),
(151, 47, 'SAV – Autres marques', 'radio', 57),
(152, 48, '<u><strong>Renvoi du particulier  :</strong></u><ol type=\"1\"><li>Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N.</li> OU <li>vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 1', 'libelle', 49),
(153, 49, 'Enregistrer les données du script', 'libelle', NULL),
(154, 50, 'Coordonnées de l\'appelant', 'libelle', NULL),
(155, 50, 'Ouvrir la fiche contact', 'button', 51),
(156, 51, 'Adresse', 'text', 52),
(157, 52, 'CP', 'text', 53),
(158, 52, 'Ville', 'text', 53),
(159, 53, 'Nombre de volets concernés par la demande de réparation', 'text', 54),
(160, 54, 'N°S/N ou NSP', 'text', 55),
(161, 55, 'Informations complémentaires', 'textarea', 56),
(162, 56, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL),
(163, 57, 'Le point conseil est il réparateur qualié toutes marques', 'libelle', NULL),
(164, 57, 'Oui', 'radio', NULL),
(165, 57, 'Non', 'radio', 65),
(166, 58, 'Coordonnées de l\'appelant', 'libelle', NULL),
(167, 58, 'Ouvrir la fiche contact', 'button', 59),
(168, 59, 'Adresse', 'text', 60),
(169, 60, 'CP', 'text', 61),
(170, 60, 'Ville', 'text', 61),
(171, 61, 'Nombre de volets concernés par la demande de réparation', 'text', 62),
(172, 63, 'Informations complémentaires', 'textarea', 64),
(173, 64, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL),
(174, 65, '<u><strong>Renvoi du particulier  :</strong></u><ol type=\"1\"><li>Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N.</li> <u><strong>OU</strong></u> <li>vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi', 'libelle', 66),
(175, 66, 'Enregistrer les données du script', 'libelle', NULL),
(176, 67, 'Typage', 'libelle', NULL),
(177, 67, 'A raccroché', 'radio', 66),
(178, 67, 'Redirection (Erreur de numéro)', 'radio', 66),
(179, 67, 'Se déplace au point conseil', 'radio', 66),
(180, 67, 'Prospection Téléphonique', 'radio', 66),
(181, 67, 'Horaires / Livraison', 'radio', 66),
(182, 67, 'Autres', 'radio', 66);

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
  MODIFY `champs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
