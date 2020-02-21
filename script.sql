-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2020 at 12:14 PM
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
  `champs_next_step` int(11) DEFAULT NULL,
  `champs_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `champs`
--


INSERT INTO `champs` (`champs_id`, `champs_num_step`, `champs_libelle`, `champs_type`, `champs_next_step`, `champs_order`) VALUES
(67, 0, 'Service d\'accueil Bubendorff, Elisé Bonjour.', 'libelle', 2, 1),
(68, 2, 'Appel sur ?', 'libelle', NULL, 1),
(69, 2, 'Point Conseil', 'radio', 3, 2),
(70, 2, 'Réparateur qualié', 'radio', 46, 3),
(71, 2, 'Typage', 'radio', 67, 4),
(72, 3, 'Type de demande', 'libelle', NULL, 1),
(73, 3, 'Installation', 'radio', NULL, 2),
(74, 3, 'SAV / Réparation', 'radio', 20, 3),
(75, 3, 'Autres ( hors bubendorff)', 'radio', 18, 4),
(76, 4, 'Le point conseil est il à proximité du lieu d\'intervention ? ', 'libelle', NULL, 1),
(77, 4, 'Oui', 'radio', NULL, 2),
(78, 4, 'Non', 'radio', 14, 3),
(79, 4, 'Pas de point conseil disponible', 'radio', 16, 4),
(80, 5, 'Coordonnées de l\'appelant', 'libelle', NULL, 1),
(81, 5, 'Ouvrir la fiche contact', 'button', 6, 2),
(82, 6, 'Adresse', 'text', 7, 1),
(83, 7, 'CP', 'text', 8, 1),
(84, 7, 'Ville', 'text', 8, 2),
(85, 8, 'Nombre de volet à poser ?', 'text', 9, 1),
(86, 9, 'Type de travaux', 'libelle', NULL, 1),
(87, 9, 'Neuf', 'radio', NULL, 2),
(88, 9, 'Rénovation', 'radio', NULL, 3),
(89, 9, 'Extension', 'radio', NULL, 4),
(90, 9, 'Autre (télécommande,....)', 'radio', 12, 5),
(91, 10, 'Type de bien', 'libelle', 11, 1),
(92, 10, 'Appartement', 'radio', NULL, 2),
(93, 10, 'Maison individuelle', 'radio', NULL, 3),
(94, 10, 'Immeuble', 'radio', NULL, 4),
(95, 10, 'Commerce', 'radio', NULL, 5),
(96, 10, 'Bureaux', 'radio', NULL, 6),
(97, 10, 'Usine', 'radio', NULL, 7),
(98, 10, 'Hôtel', 'radio', NULL, 8),
(99, 10, 'Autre', 'radio', NULL, 9),
(100, 11, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL, 1),
(101, 12, 'Commentaires', 'textarea', 13, 1),
(102, 13, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL, 1),
(103, 14, 'Faire une recherche avec l\'adresse d\'intervention, code postal et ville.Remplir la fiche de demande en ligne  sur le site bubendorff en prenant toutes les informations communiquées par le client (ne pas lacher le client)', 'libelle', 15, 1),
(104, 15, 'Enregistrer les données du script', 'libelle', NULL, 1),
(105, 16, 'Renvoyer vers le site ou le particulier fera sa demande en ligne, il sera recontacté par le Service Consommateur an de trouver une solution. Délai maximum 48h.', 'libelle', 17, 1),
(106, 17, 'Enregistrer les données du script', 'libelle', NULL, 1),
(107, 18, 'Appelez le point conseil, à défaut lui communiquez les coordonnées.', 'libelle', 19, 1),
(108, 19, 'Enregistrer les données du script', 'libelle', NULL, 1),
(109, 20, ' SAV - Réparation', 'libelle', NULL, 1),
(110, 20, 'SAV - Volet marque Bubendorff vendu par le point conseil(garanti ou non)', 'radio', 21, 2),
(111, 20, 'SAV - Volet non vendu par le point conseil', 'radio', 23, 3),
(112, 21, 'Transférez l\'appel vers le point conseil. S\'il n\'y a pas de réponse, lui communiquez les coordonnées téléphonique (à gauche de l\'écran sous le calendrier).', 'libelle', 22, 1),
(113, 22, 'Enregistrer les données du script', 'libelle', NULL, 1),
(114, 23, 'Type de SAV', 'libelle', NULL, 1),
(115, 23, 'Volets de marque Bubendorff (moins de 7 ans) – SOUS GARANTIE', 'radio', NULL, 2),
(116, 23, 'Volets de marque Bubendorff (plus de 7 ans) – HORS GARANTIE', 'radio', 26, 3),
(117, 23, 'Volets d\'autres marques', 'radio', 36, 4),
(118, 24, 'Renvoi du particulier  :1) Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N. OU 2) vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 11h et de 13h30 à 15h00', 'libelle', 25, 1),
(119, 25, 'Enregistrer les données du script', 'libelle', NULL, 1),
(120, 26, 'Le point conseil est il réparateur qualié toutes marques ?', 'libelle', NULL, 1),
(121, 26, 'Oui', 'radio', NULL, 2),
(122, 26, 'Non', 'radio', 34, 3),
(123, 27, 'Coordonnées de l\'appelant', 'libelle', NULL, 1),
(124, 27, 'Ouvrir la fiche contact', 'button', 28, 2),
(125, 28, 'Adresse', 'text', 29, 1),
(126, 29, 'CP', 'text', 30, 1),
(127, 29, 'Ville', 'text', 30, 2),
(128, 30, 'Nombre de volet', 'text', 31, 1),
(129, 31, 'N° de serie', 'text', 32, 1),
(130, 32, 'Informations complémentaires', 'textarea', 33, 1),
(131, 33, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL, 1),
(132, 34, 'Renvoi du particulier  : 1) Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N. OU 2) vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 11h et de 13h30 à 15 00', 'libelle', NULL, 1),
(133, 36, 'Est ce que le point conseil est réparateur qualié ?', 'libelle', NULL, 1),
(134, 36, 'Oui', 'radio', NULL, 2),
(135, 36, 'Non', 'radio', 44, 3),
(136, 35, 'Enregistrer les données du script', 'libelle', NULL, 1),
(137, 37, 'Coordonnées de l\'appelant', 'libelle', NULL, 1),
(138, 37, 'Ouvrir la fiche contact', 'button', 38, 2),
(139, 38, 'Adresse', 'text', 39, 1),
(140, 39, 'CP', 'text', 40, 1),
(141, 39, 'Ville', 'text', 40, 2),
(142, 40, 'Nombre de volets concernés par la demande de réparation', 'text', 41, 1),
(143, 41, 'N°S/N ou NSP', 'text', 42, 1),
(144, 43, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL, 1),
(145, 44, 'Renvoi du particulier  : 1) Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N. OU 2) vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 11h et de 13h30 à 15 00', 'libelle', 45, 1),
(146, 45, 'Enregistrer les données du script', 'libelle', NULL, 1),
(147, 46, 'Avant toute transmission il faut s\'assurer que les vérications ont été faites :</br><ul><li>Une coupure / remise en service du secteur sur le disjoncteur du volet roulant n\'a pas permis de résoudre la panne.</li><li>La pile de l’émetteur dispose d\'un nive', 'libelle', 47, 1),
(148, 47, 'Demande', 'libelle', NULL, 1),
(149, 47, 'SAV – Volet Bubendorff sous garantie (moins de 7 ans)', 'radio', NULL, 2),
(150, 47, 'SAV – Volet Bubendorff hors garantie (plus de 7 ans)', 'radio', 50, 3),
(151, 47, 'SAV – Autres marques', 'radio', 57, 4),
(152, 48, '<u><strong>Renvoi du particulier  :</strong></u><ol type=\"1\"><li>Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N.</li> OU <li>vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 1', 'libelle', 49, 1),
(153, 49, 'Enregistrer les données du script', 'libelle', NULL, 1),
(154, 50, 'Coordonnées de l\'appelant', 'libelle', NULL, 1),
(155, 50, 'Ouvrir la fiche contact', 'button', 51, 1),
(156, 51, 'Adresse', 'text', 52, 1),
(157, 52, 'CP', 'text', 53, 1),
(158, 52, 'Ville', 'text', 53, 2),
(159, 53, 'Nombre de volets concernés par la demande de réparation', 'text', 54, 1),
(160, 54, 'N°S/N ou NSP', 'text', 55, 1),
(161, 55, 'Informations complémentaires', 'textarea', 56, 1),
(162, 56, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL, 1),
(163, 57, 'Le point conseil est il réparateur qualié toutes marques', 'libelle', NULL, 1),
(164, 57, 'Oui', 'radio', NULL, 2),
(165, 57, 'Non', 'radio', 65, 3),
(166, 58, 'Coordonnées de l\'appelant', 'libelle', NULL, 1),
(167, 58, 'Ouvrir la fiche contact', 'button', 59, 2),
(168, 59, 'Adresse', 'text', 60, 1),
(169, 60, 'CP', 'text', 61, 1),
(170, 60, 'Ville', 'text', 61, 2),
(171, 61, 'Nombre de volets concernés par la demande de réparation', 'text', 62, 1),
(172, 63, 'Informations complémentaires', 'textarea', 64, 1),
(173, 64, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL, 1),
(174, 65, '<u><strong>Renvoi du particulier  :</strong></u><ol type=\"1\"><li>Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N.</li> <u><strong>OU</strong></u> <li>vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi', 'libelle', 66, 1),
(175, 66, 'Enregistrer les données du script', 'libelle', NULL, 1),
(176, 67, 'Typage', 'libelle', NULL, 1),
(177, 67, 'A raccroché', 'radio', 66, 2),
(178, 67, 'Redirection (Erreur de numéro)', 'radio', 66, 3),
(179, 67, 'Se déplace au point conseil', 'radio', 66, 4),
(180, 67, 'Prospection Téléphonique', 'radio', 66, 5),
(181, 67, 'Horaires / Livraison', 'radio', 66, 6),
(182, 67, 'Autres', 'radio', 66, 7),
(183, 1, 'Mini-site', 'radio', 2, 2),
(184, 1, 'Page jaune', 'radio', 2, 3),
(185, 1, 'Choix de type', 'libelle', 2, 1);

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
  MODIFY `champs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
