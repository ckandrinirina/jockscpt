-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2020 at 08:52 PM
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
(5, 2, 'Réparateur qualié', 'radio', '5', 2),
(6, 2, 'Typage', 'radio', '14', 3),
(7, 2, 'Point conseil', 'radio', '3', 1),
(8, 3, 'Type de demande', 'libelle', NULL, 1),
(9, 3, 'Installation', 'radio', '4', 2),
(10, 3, 'SAV / Réparation', 'radio', '17', 3),
(11, 3, 'Autres ( hors bubendor)', 'radio', '23', 4),
(12, 4, 'Le point conseil est il à proximité du lieu d\'intervention ? ', 'libelle', NULL, 1),
(13, 4, 'Oui', 'radio', '6', 2),
(14, 4, ' Non', 'radio', '25', 3),
(15, 4, 'Pas de point conseil disponible', 'radio', '16', 4),
(16, 6, 'Coordonnées de l\'appelant', 'libelle', NULL, 1),
(18, 5, 'Avant toute transmission il faut s\\\'assurer que les vérications ont été faites :</br><ul><li>Une coupure / remise en service du secteur sur le disjoncteur du volet roulant n\\\'a pas permis de résoudre la panne.</li><li>La pile de l’émetteur dispose d\'un niveau de charge sufisant.</li><li>Le démontage du caisson est possible (Les vis sont apparentes et aucun obstacle ne se situe devant la trappe de visite).</li><li>Tous les composants du volet se trouvent sur le lieu de l\'intervention (notamment l’émetteur).</li></ul>', 'libelle', NULL, 3),
(19, 5, 'Demande', 'libelle', NULL, 4),
(20, 5, 'SAV – Volet Bubendor sous garantie (moins de 7 ans)', 'radio', '10', 5),
(21, 5, 'SAV – Volet Bubendor hors garantie (plus de 7 ans) ', 'radio', '12', 6),
(22, 5, 'SAV – Autres marques', 'radio', '13', 7),
(23, 6, 'Adresse', 'text', NULL, 1),
(24, 6, 'CP-Ville', 'libelle', NULL, 2),
(25, 6, 'Sélectionner ville', 'libelle', NULL, 3),
(26, 6, 'Nombre de volet à poser?', 'text', NULL, 4),
(28, 6, 'Type de travaux', 'libelle', NULL, 5),
(29, 6, 'Neuf', 'radio', '7', 6),
(30, 6, 'Rénovation', 'radio', '7', 7),
(31, 6, 'Autre (télécommande,....)', 'radio', '9', 9),
(32, 6, 'Extension', 'radio', '7', 8),
(33, 7, 'Type de bien', 'libelle', NULL, 1),
(34, 7, 'Appartement', 'radio', '8', 2),
(35, 7, 'Maison individuelle', 'radio', '8', 3),
(36, 7, 'Immeuble', 'radio', '8', 4),
(37, 7, 'Commerce', 'radio', '8', 5),
(38, 7, 'Bureaux', 'radio', '8', 6),
(39, 7, 'Usine', 'radio', '8', 7),
(40, 7, 'Hôtel', 'radio', '8', 8),
(41, 7, 'Autre', 'radio', '8', 9),
(42, 8, 'Envoyer un message et enregistrer les donnés du script', 'libelle', NULL, 0),
(43, 9, 'Commentaires', 'textarea', '', 1),
(44, 9, 'Envoyer un message et enregistrer les donnés du scrip', 'libelle', NULL, 2),
(45, 10, 'Renvoi du particulier  :1) Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N. OU 2) vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 11h et de 13h30 à 15h00', 'libelle', NULL, 1),
(46, 10, 'Enregistrer les donnés du script', 'libelle', NULL, 2),
(47, 12, 'Coordonnées de l\'appelant', 'libelle', NULL, 1),
(49, 12, 'Adresse', 'text', NULL, 1),
(50, 12, 'CP-ville ', 'libelle', NULL, 2),
(51, 12, 'Nombre de volets concernés par la demande de réparation', 'text', NULL, 4),
(52, 12, 'N°S/N ou NSP', 'text', NULL, 5),
(53, 12, 'Informations complémentaires', 'text', NULL, 6),
(54, 12, ' Envoyer un message et enregistrer les données du script', 'libelle', NULL, 7),
(55, 12, 'Selectionner une ville', 'libelle', NULL, 3),
(56, 13, 'Le point conseil est il réparateur qualié toutes marques', 'libelle', NULL, 1),
(57, 13, 'Oui', 'radio', '12', 2),
(58, 13, 'Non', 'radio', '10', 3),
(59, 25, 'Faire une recherche avec l\'adresse d\'intervention, code postal et ville.  Remplir la fiche de demande en ligne  sur le site bubendor en prenant toutes les informations communiquées par le client (ne pas lacher le client)', 'libelle', NULL, 1),
(60, 14, 'Typage', 'libelle', NULL, 2),
(61, 14, ' A raccroché', 'radio', '15', 3),
(62, 14, 'Redirection (Erreur de numéro)', 'radio', '15', 4),
(63, 14, 'Se déplace au point conseil ', 'radio', '15', 5),
(64, 14, ' Prospection Téléphonique ', 'radio', '15', 5),
(65, 14, 'Horaires / Livraison ', 'radio', '15', 7),
(66, 14, 'Autres', 'radio', '15', 8),
(67, 15, 'Enregistrer donné du script', 'libelle', '', 0),
(68, 16, 'Renvoyer vers le site ou le particulier fera sa demande en ligne, il sera recontacté par le Service Consommateur an de trouver une solution. Délai maximum 48h.', 'libelle', NULL, 1),
(69, 16, 'Enregistrer donné du script', 'libelle', NULL, 2),
(70, 17, 'SAV - Réparation', 'libelle', NULL, 1),
(71, 17, 'SAV - Volet marque Bubendor vendu par le point conseil', 'radio', '18', 2),
(72, 17, 'SAV - Volet non vendu par le point conseil', 'radio', '19', 3),
(73, 18, 'Transférez l\'appel vers le point conseil. S\'il n\'y a pas de réponse, lui communiquez les coordonnées téléphonique (à gauche de l\'écran sous le calendrier).', 'libelle', NULL, 1),
(74, 18, 'Enregistrer les donnés du script', 'libelle', NULL, 2),
(75, 19, 'Type de SAV', 'libelle', NULL, 1),
(76, 19, 'Volets de marque Bubendor (moins de 7 ans) – SOUS GARANTIE', 'radio', '10', 2),
(77, 19, 'Volets de marque Bubendor (plus de 7 ans) – HORS GARANTIE', 'radio', '20', 3),
(78, 19, 'Volets d\'autres marques', 'radio', '21', 4),
(79, 20, 'Adresse', 'text', NULL, 1),
(80, 20, 'CP-Ville', 'libelle', NULL, 2),
(81, 20, 'Sélectionner une ville', 'libelle', NULL, 3),
(82, 20, 'Nombre de volet', 'text', NULL, 4),
(83, 20, 'N° de serie', 'text', NULL, 5),
(84, 20, 'Informations complémentaires ', 'textarea', NULL, 6),
(85, 20, 'Envoye un message et enregistrer les donnés du script', 'libelle', NULL, 7),
(86, 21, 'Est ce que le point conseil est réparateur qualifié ?', 'libelle', NULL, 1),
(87, 21, 'oui', 'radio', '22', 2),
(88, 21, 'non', 'radio', '10', 3),
(89, 20, 'Coordonnées de l\'appelant', 'libelle', NULL, 0),
(90, 22, 'Coordonnées de l\'appelant', 'libelle', NULL, 1),
(91, 22, 'Adresse', 'text', NULL, 2),
(92, 22, 'CP - Ville', 'libelle', NULL, 3),
(93, 22, 'Sélectionner une ville', 'libelle', NULL, 4),
(94, 22, 'Nombre de volets concernés par la demande de réparation', 'text', NULL, 5),
(95, 22, 'N°S/N ou NSP', 'text', NULL, 6),
(96, 22, 'Informations complémentaires (si télécommande mettre la', 'text', NULL, 7),
(97, 22, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL, 8),
(98, 23, 'Appelez le point conseil, à défaut lui communiquez les coordonnées.', 'libelle', NULL, 1),
(99, 23, ' Enregistrer les données du script', 'libelle', NULL, 2),
(100, 25, 'Enregistrer donné du script', 'libelle', NULL, 2);

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
  MODIFY `champs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
