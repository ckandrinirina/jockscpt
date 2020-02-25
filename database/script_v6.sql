-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 06:06 AM
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
  `champs_next_step` int(11) DEFAULT NULL,
  `champs_order` int(11) NOT NULL,
  `script_reference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `champs`
--

INSERT INTO `champs` (`champs_id`, `champs_num_step`, `champs_libelle`, `champs_type`, `champs_next_step`, `champs_order`, `script_reference`) VALUES
(1, 1, 'Choix type', 'libelle', 2, 1, ''),
(2, 1, 'Mini-site', 'radio', 2, 2, ''),
(3, 1, 'Page jaune', 'radio', 2, 3, ''),
(4, 2, 'Appel sur ?', 'libelle', 0, 0, ''),
(5, 2, 'Réparateur qualié', 'radio', 5, 2, ''),
(6, 2, 'Typage', 'radio', 14, 3, ''),
(7, 2, 'Point conseil', 'radio', 3, 1, ''),
(8, 3, 'Type de demande', 'libelle', NULL, 1, ''),
(9, 3, 'Installation', 'radio', 4, 2, ''),
(10, 3, 'SAV / Réparation', 'radio', 17, 3, ''),
(11, 3, 'Autres ( hors bubendor)', 'radio', 23, 4, ''),
(12, 4, 'Le point conseil est il à proximité du lieu d\'intervention ? ', 'libelle', NULL, 1, ''),
(13, 4, 'Oui', 'radio', 6, 2, ''),
(14, 4, ' Non', 'radio', 25, 3, ''),
(15, 4, 'Pas de point conseil disponible', 'radio', 16, 4, ''),
(16, 6, 'Coordonnées de l\'appelant', 'libelle', NULL, 1, ''),
(18, 5, 'Avant toute transmission il faut s\\\'assurer que les vérications ont été faites :</br><ul><li>Une coupure / remise en service du secteur sur le disjoncteur du volet roulant n\\\'a pas permis de résoudre la panne.</li><li>La pile de l’émetteur dispose d\'un niveau de charge sufisant.</li><li>Le démontage du caisson est possible (Les vis sont apparentes et aucun obstacle ne se situe devant la trappe de visite).</li><li>Tous les composants du volet se trouvent sur le lieu de l\'intervention (notamment l’émetteur).</li></ul>', 'libelle', NULL, 3, ''),
(19, 5, 'Demande', 'libelle', NULL, 4, ''),
(20, 5, 'SAV – Volet Bubendor sous garantie (moins de 7 ans)', 'radio', 10, 5, ''),
(21, 5, 'SAV – Volet Bubendor hors garantie (plus de 7 ans) ', 'radio', 12, 6, ''),
(22, 5, 'SAV – Autres marques', 'radio', 13, 7, ''),
(23, 6, 'Adresse', 'text', NULL, 1, ''),
(24, 6, 'CP-Ville', 'libelle', NULL, 2, ''),
(25, 6, 'Sélectionner ville', 'libelle', NULL, 3, ''),
(26, 6, 'Nombre de volet à poser?', 'text', NULL, 4, ''),
(28, 6, 'Type de travaux', 'libelle', NULL, 5, ''),
(29, 6, 'Neuf', 'radio', 7, 6, ''),
(30, 6, 'Rénovation', 'radio', 7, 7, ''),
(31, 6, 'Autre (télécommande,....)', 'radio', 9, 9, ''),
(32, 6, 'Extension', 'radio', 7, 8, ''),
(33, 7, 'Type de bien', 'libelle', NULL, 1, ''),
(34, 7, 'Appartement', 'radio', 8, 2, ''),
(35, 7, 'Maison individuelle', 'radio', 8, 3, ''),
(36, 7, 'Immeuble', 'radio', 8, 4, ''),
(37, 7, 'Commerce', 'radio', 8, 5, ''),
(38, 7, 'Bureaux', 'radio', 8, 6, ''),
(39, 7, 'Usine', 'radio', 8, 7, ''),
(40, 7, 'Hôtel', 'radio', 8, 8, ''),
(41, 7, 'Autre', 'radio', 8, 9, ''),
(42, 8, 'Envoyer un message et enregistrer les donnés du script', 'libelle', NULL, 0, ''),
(43, 9, 'Commentaires', 'textarea', 0, 1, ''),
(44, 9, 'Envoyer un message et enregistrer les donnés du scrip', 'libelle', NULL, 2, ''),
(45, 10, 'Renvoi du particulier  :1) Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N. OU 2) vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 11h et de 13h30 à 15h00', 'libelle', NULL, 1, ''),
(46, 10, 'Enregistrer les donnés du script', 'libelle', NULL, 2, ''),
(47, 12, 'Coordonnées de l\'appelant', 'libelle', NULL, 1, ''),
(49, 12, 'Adresse', 'text', NULL, 1, ''),
(50, 12, 'CP-ville ', 'libelle', NULL, 2, ''),
(51, 12, 'Nombre de volets concernés par la demande de réparation', 'text', NULL, 4, ''),
(52, 12, 'N°S/N ou NSP', 'text', NULL, 5, ''),
(53, 12, 'Informations complémentaires', 'text', NULL, 6, ''),
(54, 12, ' Envoyer un message et enregistrer les données du script', 'libelle', NULL, 7, ''),
(55, 12, 'Selectionner une ville', 'libelle', NULL, 3, ''),
(56, 13, 'Le point conseil est il réparateur qualié toutes marques', 'libelle', NULL, 1, ''),
(57, 13, 'Oui', 'radio', 12, 2, ''),
(58, 13, 'Non', 'radio', 10, 3, ''),
(59, 25, 'Faire une recherche avec l\'adresse d\'intervention, code postal et ville.  Remplir la fiche de demande en ligne  sur le site bubendor en prenant toutes les informations communiquées par le client (ne pas lacher le client)', 'libelle', NULL, 1, ''),
(60, 14, 'Typage', 'libelle', NULL, 2, ''),
(61, 14, ' A raccroché', 'radio', 15, 3, ''),
(62, 14, 'Redirection (Erreur de numéro)', 'radio', 15, 4, ''),
(63, 14, 'Se déplace au point conseil ', 'radio', 15, 5, ''),
(64, 14, ' Prospection Téléphonique ', 'radio', 15, 5, ''),
(65, 14, 'Horaires / Livraison ', 'radio', 15, 7, ''),
(66, 14, 'Autres', 'radio', 15, 8, ''),
(67, 15, 'Enregistrer donné du script', 'libelle', 0, 0, ''),
(68, 16, 'Renvoyer vers le site ou le particulier fera sa demande en ligne, il sera recontacté par le Service Consommateur an de trouver une solution. Délai maximum 48h.', 'libelle', NULL, 1, ''),
(69, 16, 'Enregistrer donné du script', 'libelle', NULL, 2, ''),
(70, 17, 'SAV - Réparation', 'libelle', NULL, 1, ''),
(71, 17, 'SAV - Volet marque Bubendor vendu par le point conseil', 'radio', 18, 2, ''),
(72, 17, 'SAV - Volet non vendu par le point conseil', 'radio', 19, 3, ''),
(73, 18, 'Transférez l\'appel vers le point conseil. S\'il n\'y a pas de réponse, lui communiquez les coordonnées téléphonique (à gauche de l\'écran sous le calendrier).', 'libelle', NULL, 1, ''),
(74, 18, 'Enregistrer les donnés du script', 'libelle', NULL, 2, ''),
(75, 19, 'Type de SAV', 'libelle', NULL, 1, ''),
(76, 19, 'Volets de marque Bubendor (moins de 7 ans) – SOUS GARANTIE', 'radio', 10, 2, ''),
(77, 19, 'Volets de marque Bubendor (plus de 7 ans) – HORS GARANTIE', 'radio', 20, 3, ''),
(78, 19, 'Volets d\'autres marques', 'radio', 21, 4, ''),
(79, 20, 'Adresse', 'text', NULL, 1, ''),
(80, 20, 'CP-Ville', 'libelle', NULL, 2, ''),
(81, 20, 'Sélectionner une ville', 'libelle', NULL, 3, ''),
(82, 20, 'Nombre de volet', 'text', NULL, 4, ''),
(83, 20, 'N° de serie', 'text', NULL, 5, ''),
(84, 20, 'Informations complémentaires ', 'textarea', NULL, 6, ''),
(85, 20, 'Envoye un message et enregistrer les donnés du script', 'libelle', NULL, 7, ''),
(86, 21, 'Est ce que le point conseil est réparateur qualifié ?', 'libelle', NULL, 1, ''),
(87, 21, 'oui', 'radio', 22, 2, ''),
(88, 21, 'non', 'radio', 10, 3, ''),
(89, 20, 'Coordonnées de l\'appelant', 'libelle', NULL, 0, ''),
(90, 22, 'Coordonnées de l\'appelant', 'libelle', NULL, 1, ''),
(91, 22, 'Adresse', 'text', NULL, 2, ''),
(92, 22, 'CP - Ville', 'libelle', NULL, 3, ''),
(93, 22, 'Sélectionner une ville', 'libelle', NULL, 4, ''),
(94, 22, 'Nombre de volets concernés par la demande de réparation', 'text', NULL, 5, ''),
(95, 22, 'N°S/N ou NSP', 'text', NULL, 6, ''),
(96, 22, 'Informations complémentaires (si télécommande mettre la', 'text', NULL, 7, ''),
(97, 22, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL, 8, ''),
(98, 23, 'Appelez le point conseil, à défaut lui communiquez les coordonnées.', 'libelle', NULL, 1, ''),
(99, 23, ' Enregistrer les données du script', 'libelle', NULL, 2, ''),
(100, 25, 'Enregistrer donné du script', 'libelle', NULL, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `point_conseils`
--

CREATE TABLE `point_conseils` (
  `point_conseils_id` int(11) NOT NULL,
  `point_conseils_adresse` varchar(255) NOT NULL,
  `point_conseils_email` varchar(255) NOT NULL,
  `point_conseils_rep_toute_marque` tinyint(1) NOT NULL,
  `point_conseils_tel` varchar(255) NOT NULL,
  `point_conseils_mail_sav` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `point_conseils`
--

INSERT INTO `point_conseils` (`point_conseils_id`, `point_conseils_adresse`, `point_conseils_email`, `point_conseils_rep_toute_marque`, `point_conseils_tel`, `point_conseils_mail_sav`) VALUES
(1, '75 Quai Gorin 85800 ST GILLES CROIX DE VIE', 'abc.fermetures85@orange.fr', 0, '251549601', 'abc.fermetures85@orange.fr'),
(2, '13 Rue Comboire 38130 ECHIROLLES', 'j.coniglio@ac-fermetures.com', 0, '476239630', ''),
(3, 'Avenue Lavoisier 01600 MASSIEUX', 'l.eynac@accescreationfermetures.fr', 0, '478983780', ''),
(4, '9 Impasse Ampère 85000 LA ROCHE SUR YON', 'contact@acf-artetfenetres.fr', 0, '251403888', 'contact@acf-artetfenetres.fr'),
(5, '10 rue St Exupéry 44115 HAUTE GOULAINE', 'alumatic@orange.fr', 1, '228211010', 'alumatic@alumatic.fr'),
(6, '36 Avenue Georges Clemenceau 77400 LAGNY SUR MARNE', 'aramysfermetures@yahoo.fr', 0, '160079816', ''),
(7, '13 Boulevard Rabelais 94100 ST MAUR DES FOSSES', 'aramysfermetures@yahoo.fr', 0, '142831287', ''),
(8, 'Rue du Bois Prevost – Z.I Sud 60130 ST JUST EN CHAUSSEE', 'sbp.secreteriat4@orange.fr', 0, '344192121', ''),
(9, '6 Avenue Doc. Schweitzer 69330 MEYZIEU', 'dmf-@wanadoo.fr', 1, '478043664', 'dmf-jsaetero@orange.fr'),
(10, '582 Route de Lyon 01360 BALAN', 'dmf-veranda@orange.fr', 0, '474981691', ''),
(11, '57 Rue de la République 38300 BOURGOIN JALLIEU', 'dmf-bourgoin@orange.fr', 0, '474936204', ''),
(12, '1 Impasse Cricket 74330 LA BALME DE SILLINGY', 'p.laurent@elmpropose.fr', 0, '450689979', ''),
(13, '81 Avenue Charles Rouxel 77340 PONTAULT COMBAULT', 'pfranca-fm77@orange.fr', 0, '160180564', ''),
(14, '53 Avenue Pierre Curie 78210 ST CYR L ECOLE', 'gaelle.cadoret-bertin@france-fenetres.fr', 0, '130070630', ''),
(15, '4 Allée des vergers 78240 AIGREMONT', 'gaelle.cadoret-bertin@france-fenetres.fr', 0, '139118567', ''),
(16, '4 Avenue du Maréchal Foch 78400 CHATOU', 'gaelle.cadoret-bertin@france-fenetres.fr', 0, '130780066', ''),
(17, '65 Boulevard Henri Barbusse 78800 HOUILLES', 'gaelle.cadoret-bertin@france-fenetres.fr', 0, '130403538', ''),
(18, '47 Avenue de Verdun 92320 CHATILLON', 'gaelle.cadoret-bertin@france-fenetres.fr', 0, '155581606', ''),
(19, '61 Chaussée Jules César 95130 FRANCONVILLE LA GARENNE', 'gaelle.cadoret-bertin@france-fenetres.fr', 0, '130720258', ''),
(20, '189 Boulevard Victor Bordier 95370 MONTIGNY LES CORMEILLES', 'gaelle.cadoret-bertin@france-fenetres.fr', 0, '130403540', ''),
(21, '3 Rue de la Barrade 74000 ANNECY', 'contact@atrio.fr', 0, '450670669', ''),
(22, '11 Rue Marcel Paul 38120 ST EGREVE', 'contact@atrio.fr', 0, '476269800', ''),
(23, '49 Avenue d\'Argenteuil 92600 ASNIERE SUR SEINE', 'contact.client@iris-fenetres.com', 0, '141720620', ''),
(24, '41 Rue Douy Delcupe 93100 MONTREUIL', 'contact.client@iris-fenetres.fr', 0, '141720620', ''),
(25, '49 avenue d\'Argenteuil 92600 ASNIERES SUR SEINE', 'contact.client@iris-fenetres.com', 0, '141720620', ''),
(26, '6 Rue de Melleville 27930 ANGERVILLE LA CAMPAGNE', 'isoleure@orange.fr', 0, '683899532', ''),
(27, '13 Rue des 3 Frontières – Carrefour des 3 frontières 68110 ILLZACH', 'selestat@linea.fr', 1, '389618888', 'marc.ciotta@bubendorff.comthierry.faizon@bubendorff.com/'),
(28, '32 Rue dHegenhiem 68300 ST LOUIS', 'selestat@linea.fr', 1, '389618888', 'thierry.faizon@bubendorff.com'),
(29, '6 Rue de Walkrich – Z.I NORD 67600 SELESTAT', 'selestat@linea.fr', 1, '390588550', 'marc.ciotta@bubendorff.com/ thierry.faizon@bubendorff.com'),
(30, '2 Rue Henri Millet 10100 ROMILLY SUR SEINE', 'direction@ltdrenovation.fr', 0, '325241260', ''),
(31, '10 Rue de la Haute Charme 10000 TROYES', 'direction@ltdrenovation.fr', 0, '325742302', ''),
(32, '5 Rue Lavoisier – Z.A du Haut Coin 44140 AIGREFEUILLE SUR MAINE', 'yvonnick@mca-menuiserie.fr', 0, '240335800', ''),
(33, '6 Bis Rue de Fresnes 53200 AZE', 'ob.mainemenuiseries@gmail.com', 0, '243706761', ''),
(34, '250 Rue du Général de Gaulle 69530 BRIGNAIS', 'cv@maison-veyret.com', 0, '478732711', 'sav@maison-veyret.com'),
(35, 'Zone artisanale de Graveron 26220 DIEULEFIT', 'menuiserie.desgranges@wanadoo.fr', 0, '475464261', ''),
(36, '181C Rue du Général de Gaulle 67190 DINSHEIM SUR BRUCHE', 'contact@oxygenfermetures.fr', 0, '388044595', ''),
(37, '4 Rue Georges Colnot 88220 XERTIGNY', 'oxygen.ouvertures@orange.fr', 0, '329367016', ''),
(38, '29 Rue Poussin 75016 PARIS', 'paris-est-services@laposte.net', 0, '143603333', ''),
(39, '105 Rue Sadi Carnot 93170 BAGNOLET', 'paris-est.services@laposte.net', 0, '143603333', ''),
(40, 'Zone industrielle des alouettes 71300 MONTCEAU LES MINES', 'benjamin@radenne.fr', 0, '385771823', ''),
(41, 'Zone artisanale les Bruyères 71130 NEUVY GRANDCHAMP', 'katy@radenne.fr', 1, '385842805', 'nelly@radenne.fr'),
(42, 'Route nationale 6 71240 VARENNES LE GRAND', 'benjamin@radenne.fr', 0, '385941396', ''),
(43, '16 Avenue Domaine Romain Banquet 81110 DOURGNE', 'etsrey@orange.fr', 0, '563733020', 'etsrey@orange.fr'),
(44, '58 Rue Garibaldi 69006 LYON', 'francoise@storema.fr', 0, '478932957', ''),
(45, 'Route de Périgueux 47500 FUMEL', 'd.gabarre@wanadoo.fr', 0, '553409231', ''),
(46, '26 Avenue Victoria 73100 AIX LES BAINS', 'storaix@wanadoo.fr', 0, '479612408', 'storaix@wanadoo.fr'),
(47, '35 boulevard Daguerre 42100 SAINT ETIENNE', 'stores-isolation@wanadoo.fr', 0, '477333520', 'stores-isolation@wanadoo.fr'),
(48, '27 Rue Sainte Colette 54500 VANDOEUVRE LES NANCY', 'upas_63@hotmail.com', 1, '383544027', 'etsulrich54@gmail.com'),
(49, '64 Avenue Louis Debray – ZA Baclair 76210 BOLBEC', 'fabrice.vigreux@vigreux.net', 0, '232840303', 'stephanie.vigreux@vigreux.net');

-- --------------------------------------------------------

--
-- Table structure for table `reparateur_qualifie`
--

CREATE TABLE `reparateur_qualifie` (
  `reparateur_qualifie_id` int(11) NOT NULL,
  `reparateur_qualifie_nom` varchar(255) NOT NULL,
  `reparateur_qualifie_adresse` varchar(255) NOT NULL,
  `reparateur_qualifie_tel` varchar(255) NOT NULL,
  `reparateur_qualifie_mail` varchar(255) NOT NULL,
  `reparateur_qualifie_mail_resp` varchar(255) NOT NULL,
  `reparateur_qualifie_rep_tout_marque` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reparateur_qualifie`
--

INSERT INTO `reparateur_qualifie` (`reparateur_qualifie_id`, `reparateur_qualifie_nom`, `reparateur_qualifie_adresse`, `reparateur_qualifie_tel`, `reparateur_qualifie_mail`, `reparateur_qualifie_mail_resp`, `reparateur_qualifie_rep_tout_marque`) VALUES
(1, 'LINEA POSE ILLZACH', '13 Rue des 3 Frontières – Carrefour des 3 frontières 68110 ILLZACH', '389618888', 'selestat@linea.fr', 'philippe.roschitz@linea.fr', 1),
(2, 'LINEA POSE SELESTAT', '6 Rue de Walkrich – Z.I NORD 67600 SELESTAT', '390588550', 'selestat@linea.fr', 'philippe.roschitz@linea.fr', 1),
(3, 'MAISON VEYRET', '250 Rue du Général de Gaulle 69530 BRIGNAIS', '478732711', 'cv@maison-veyret.com', 'cv@maison-veyret.com', 0),
(4, 'STOR\'AIX', '26 Avenue Victoria 73100 AIX LES BAINS', '479612408', 'storaix@wanadoo.fr', 'storaix@wanadoo.fr', 0);

-- --------------------------------------------------------

--
-- Table structure for table `script_data`
--

CREATE TABLE `script_data` (
  `script_data_id` int(11) NOT NULL,
  `script_data_point_conseils_fk` int(11) DEFAULT NULL,
  `script_data_reparateur_qualifie_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `script_data_child`
--

CREATE TABLE `script_data_child` (
  `script_data_child_id` int(11) NOT NULL,
  `script_data_child_num_step` int(11) NOT NULL,
  `script_data_child_champs_fk` int(11) NOT NULL,
  `script_data_child_next` int(11) NOT NULL,
  `script_data_child_parent_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `point_conseils`
--
ALTER TABLE `point_conseils`
  ADD PRIMARY KEY (`point_conseils_id`);

--
-- Indexes for table `reparateur_qualifie`
--
ALTER TABLE `reparateur_qualifie`
  ADD PRIMARY KEY (`reparateur_qualifie_id`);

--
-- Indexes for table `script_data`
--
ALTER TABLE `script_data`
  ADD PRIMARY KEY (`script_data_id`),
  ADD KEY `script_data_point_conseils_fk` (`script_data_point_conseils_fk`,`script_data_reparateur_qualifie_fk`),
  ADD KEY `script_data_reparateur_qualifie_fk` (`script_data_reparateur_qualifie_fk`);

--
-- Indexes for table `script_data_child`
--
ALTER TABLE `script_data_child`
  ADD PRIMARY KEY (`script_data_child_id`),
  ADD KEY `script_data_child_champs_fk` (`script_data_child_champs_fk`,`script_data_child_parent_fk`),
  ADD KEY `script_data_child_parent_fk` (`script_data_child_parent_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `champs`
--
ALTER TABLE `champs`
  MODIFY `champs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `point_conseils`
--
ALTER TABLE `point_conseils`
  MODIFY `point_conseils_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `reparateur_qualifie`
--
ALTER TABLE `reparateur_qualifie`
  MODIFY `reparateur_qualifie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `script_data`
--
ALTER TABLE `script_data`
  MODIFY `script_data_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `script_data_child`
--
ALTER TABLE `script_data_child`
  MODIFY `script_data_child_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `script_data`
--
ALTER TABLE `script_data`
  ADD CONSTRAINT `script_data_ibfk_1` FOREIGN KEY (`script_data_point_conseils_fk`) REFERENCES `point_conseils` (`point_conseils_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `script_data_ibfk_2` FOREIGN KEY (`script_data_reparateur_qualifie_fk`) REFERENCES `reparateur_qualifie` (`reparateur_qualifie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `script_data_child`
--
ALTER TABLE `script_data_child`
  ADD CONSTRAINT `script_data_child_ibfk_1` FOREIGN KEY (`script_data_child_parent_fk`) REFERENCES `script_data` (`script_data_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `script_data_child_ibfk_2` FOREIGN KEY (`script_data_child_champs_fk`) REFERENCES `champs` (`champs_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
