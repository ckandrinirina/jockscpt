-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2020 at 01:28 PM
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
  `champs_choix` varchar(255) NOT NULL,
  `champs_type` varchar(10) NOT NULL,
  `champs_next_step` int(11) DEFAULT NULL,
  `champs_order` int(11) NOT NULL,
  `champs_reference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `champs`
--

INSERT INTO `champs` (`champs_id`, `champs_num_step`, `champs_libelle`, `champs_choix`, `champs_type`, `champs_next_step`, `champs_order`, `champs_reference`) VALUES
(1, 1, 'Choix type', '', 'libelle', 2, 1, ''),
(2, 1, 'Mini-site', 'Choix', 'radio', 0, 2, ''),
(3, 1, 'Page jaunes', 'Choix', 'radio', 0, 3, ''),
(4, 2, 'Appel sur ?', '', 'libelle', 0, 0, ''),
(5, 2, 'Réparateur qualifié', 'Appel sur', 'radio', 5, 2, ''),
(6, 2, 'Typage', 'Appel sur', 'radio', 14, 3, ''),
(7, 2, 'Point conseil', 'Appel sur', 'radio', 3, 1, ''),
(8, 3, 'Type de demande', '', 'libelle', NULL, 1, ''),
(9, 3, 'Installation', 'Type de demande', 'radio', 4, 2, ''),
(10, 3, 'SAV / Réparation', 'Type de demande', 'radio', 17, 3, ''),
(11, 3, 'Autres ( hors bubendorff)', 'Type de demande', 'radio', 23, 4, ''),
(12, 4, 'Le point conseil est il à proximité du lieu d\'intervention ? ', '', 'libelle', NULL, 1, ''),
(13, 4, 'Oui', 'Le point conseil est il à proximité du lieu d\'intervention ?', 'radio', 6, 2, ''),
(14, 4, ' Non', 'Le point conseil est il à proximité du lieu d\'intervention ?', 'radio', 25, 3, ''),
(15, 4, 'Pas de point conseil disponible', 'Le point conseil est il à proximité du lieu d\'intervention ?', 'radio', 16, 4, ''),
(16, 6, '', '', 'none', NULL, 1, 'contact'),
(18, 5, 'Avant toute transmission il faut s\\\'assurer que les vérifications ont été faites :</br><ul><li>Une coupure / remise en service du secteur sur le disjoncteur du volet roulant n\\\'a pas permis de résoudre la panne.</li><li>La pile de l’émetteur dispose d\'un niveau de charge sufisant.</li><li>Le démontage du caisson est possible (Les vis sont apparentes et aucun obstacle ne se situe devant la trappe de visite).</li><li>Tous les composants du volet se trouvent sur le lieu de l\'intervention (notamment l’émetteur).</li></ul>', '', 'none', NULL, 3, 'message'),
(19, 5, 'Demande', '', 'libelle', NULL, 4, ''),
(20, 5, 'SAV – Volet Bubendorff sous garantie (moins de 7 ans)', 'Demande', 'radio', 10, 5, ''),
(21, 5, 'SAV – Volet Bubendorff hors garantie (plus de 7 ans) ', 'Demande', 'radio', 12, 6, ''),
(22, 5, 'SAV – Autres marques', 'Demande', 'radio', 13, 7, ''),
(26, 6, '', '', 'none', NULL, 4, 'nbr_volet'),
(28, 6, 'Type de travaux', '', 'libelle', NULL, 5, ''),
(29, 6, 'Neuf', 'Type de travaux', 'radio', 7, 6, ''),
(30, 6, 'Rénovation', 'Type de travaux', 'radio', 7, 7, ''),
(31, 6, 'Autre (télécommande,....)', 'Type de travaux', 'radio', 9, 9, ''),
(32, 6, 'Extension', 'Type de travaux', 'radio', 7, 8, ''),
(33, 7, 'Type de bien', '', 'libelle', NULL, 1, ''),
(34, 7, 'Appartement', 'Type de bien', 'radio', 8, 2, ''),
(35, 7, 'Maison individuelle', 'Type de bien', 'radio', 8, 3, ''),
(36, 7, 'Immeuble', 'Type de bien', 'radio', 8, 4, ''),
(37, 7, 'Commerce', 'Type de bien', 'radio', 8, 5, ''),
(38, 7, 'Bureaux', 'Type de bien', 'radio', 8, 6, ''),
(39, 7, 'Usine', 'Type de bien', 'radio', 8, 7, ''),
(40, 7, 'Hôtel', 'Type de bien', 'radio', 8, 8, ''),
(41, 7, 'Autre', 'Type de bien', 'radio', 8, 9, ''),
(42, 8, 'Envoyer un message et enregistrer les donnés du script', '', 'none', NULL, 0, 'send_save'),
(43, 9, 'Commentaires', '', 'textarea', 0, 1, ''),
(44, 9, '', '', 'none', NULL, 0, 'save'),
(45, 10, 'Renvoi du particulier  :1) Vers la demande en ligne, sur le site Bubendorff où il devra se munir de son numéro S/N. OU 2) vers le Service Consommateur au 03 89 69 63 63 (horaires du lundi au vendredi de 8h30 à 11h et de 13h30 à 15h00', '', 'none', NULL, 1, 'message'),
(46, 10, 'Enregistrer les donnés du script', '', 'none', NULL, 2, 'save'),
(47, 12, '', '', 'none', NULL, 1, 'contact'),
(51, 12, 'Nombre de volets concernés par la demande de réparation', '', 'text', NULL, 4, ''),
(52, 12, 'N°S/N ou NSP', '', 'text', NULL, 5, ''),
(53, 12, 'Informations complémentaires', '', 'text', NULL, 6, ''),
(54, 12, ' Envoyer un message et enregistrer les données du script', '', 'none', NULL, 7, 'send_save'),
(56, 13, 'Le point conseil est il réparateur qualifié toutes marques', '', 'libelle', NULL, 1, ''),
(57, 13, 'Oui', 'Le point conseil est il réparateur qualié toutes marques', 'radio', 12, 2, ''),
(58, 13, 'Non', 'Le point conseil est il réparateur qualié toutes marques', 'radio', 10, 3, ''),
(59, 25, 'Faire une recherche avec l\'adresse d\'intervention, code postal et ville.  Remplir la fiche de demande en ligne  sur le site bubendorff en prenant toutes les informations communiquées par le client (ne pas lacher le client)', '', 'none', NULL, 1, 'message'),
(60, 14, 'Typage', '', 'libelle', NULL, 2, ''),
(61, 14, ' A raccroché', 'Typage', 'radio', 15, 3, ''),
(62, 14, 'Redirection (Erreur de numéro)', 'Typage', 'radio', 15, 4, ''),
(63, 14, 'Se déplace au point conseil ', 'Typage', 'radio', 15, 5, ''),
(64, 14, ' Prospection Téléphonique ', 'Typage', 'radio', 15, 5, ''),
(65, 14, 'Horaires / Livraison ', 'Typage', 'radio', 15, 7, ''),
(66, 14, 'Autres', 'Typage', 'radio', 15, 8, ''),
(67, 15, 'Enregistrer donné du script', '', 'none', 0, 0, 'save'),
(68, 16, '<p>Remplir la fiche pour le client sur le site de bundendorff.com je veux reparer/ moderniser<p><br><p style=\"color:red\">L’enregistrement se fera impérativement après la saisie sur site internet bubendorff </p>', '', 'none', NULL, 1, 'message'),
(69, 16, 'Enregistrer donné du script', '', 'none', NULL, 2, 'save'),
(70, 17, 'SAV - Réparation', '', 'libelle', NULL, 1, ''),
(71, 17, 'SAV - Volet marque Bubendorff vendu par le point conseil', 'SAV - Réparation', 'radio', 18, 2, ''),
(72, 17, 'SAV - Volet non vendu par le point conseil', 'SAV - Réparation', 'radio', 19, 3, ''),
(73, 18, 'Transférez l\'appel vers le point conseil. S\'il n\'y a pas de réponse, lui communiquez les coordonnées téléphonique (à gauche de l\'écran sous le calendrier).', '', 'none', NULL, 1, 'message'),
(74, 18, 'Enregistrer les donnés du script', '', 'none', NULL, 2, 'save'),
(75, 19, 'Type de SAV', '', 'libelle', NULL, 1, ''),
(76, 19, 'Volets de marque Bubendorff (moins de 7 ans) – SOUS GARANTIE', 'Type de SAV', 'radio', 10, 2, ''),
(77, 19, 'Volets de marque Bubendorff (plus de 7 ans) – HORS GARANTIE', 'Type de SAV', 'radio', 21, 3, ''),
(78, 19, 'Volets d\'autres marques', 'Type de SAV', 'radio', 21, 4, ''),
(82, 20, 'Nombre de volet', '', 'text', NULL, 4, ''),
(83, 20, 'N° de serie', '', 'text', NULL, 5, ''),
(84, 20, 'Informations complémentaires', '', 'textarea', NULL, 6, ''),
(85, 20, 'Envoye un message et enregistrer les donnés du script', '', 'none', NULL, 7, 'send_save'),
(86, 21, 'Est ce que le point conseil est réparateur qualifié ?', '', 'libelle', NULL, 1, ''),
(87, 21, 'oui', 'Est ce que le point conseil est réparateur qualifié ?', 'radio', 22, 2, ''),
(88, 21, 'non', 'Est ce que le point conseil est réparateur qualifié ?', 'radio', 10, 3, ''),
(89, 20, '', '', 'none', NULL, 0, 'contact'),
(90, 22, '', '', 'none', NULL, 1, 'contact'),
(94, 22, 'Nombre de volets concernés par la demande de réparation', '', 'text', NULL, 5, ''),
(95, 22, 'N°S/N ou NSP', '', 'text', NULL, 6, ''),
(96, 22, 'Informations complémentaires', '', 'textarea', NULL, 7, ''),
(97, 22, 'Envoyer un message et enregistrer les données du script', '', 'none', NULL, 8, 'send_save'),
(98, 23, 'Appelez le point conseil, à défaut lui communiquez les coordonnées.', '', 'none', NULL, 1, 'message'),
(99, 23, ' Enregistrer les données du script', '', 'none', NULL, 2, 'save'),
(100, 25, 'Enregistrer donné du script', '', 'none', NULL, 2, 'save'),
(101, 1, 'Numero client', '', 'text', NULL, 0, ''),
(102, 5, 'Demande d’installation', 'Demande', 'radio', 26, 8, ''),
(103, 26, 'Si le particulier veut effectuer une demande d\'installation,alors qu\'il appelle un réparateur,il faut lui communiquez un des numeros des SDA commençant par 09 correspondant du point conseil appelé', '', 'none', NULL, 1, 'message'),
(104, 26, '', 'rq_dem', 'none', NULL, 0, 'rq_dem'),
(105, 15, 'Informations complémentaires', '', 'textarea', NULL, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_adresse` varchar(255) NOT NULL,
  `client_fonction` varchar(255) NOT NULL,
  `client_mail` varchar(255) NOT NULL,
  `client_tel` varchar(255) NOT NULL,
  `client_code_poste` int(11) NOT NULL,
  `client_complement` varchar(255) NOT NULL,
  `client_site` varchar(255) NOT NULL,
  `client_horaires` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_name`, `client_adresse`, `client_fonction`, `client_mail`, `client_tel`, `client_code_poste`, `client_complement`, `client_site`, `client_horaires`) VALUES
(1, 'Bundendorff', 'Adresse', 'Fonction', 'nomcontact@bundendorff', '03000000', 54000, 'NANCY', 'http://bundendorff.com', 'de 9h30 à 17:30');

-- --------------------------------------------------------

--
-- Table structure for table `reparateur_qualifie`
--

CREATE TABLE `reparateur_qualifie` (
  `reparateur_qualifie_id` int(11) NOT NULL,
  `reparateur_qualifie_nom` varchar(255) NOT NULL,
  `reparateur_qualifie_num_adresse` varchar(255) NOT NULL,
  `reparateur_qualifie_adresse_complement` varchar(255) DEFAULT NULL,
  `reparateur_qualifie_rue` varchar(255) NOT NULL,
  `reparateur_qualifie_localite` varchar(255) DEFAULT NULL,
  `reparateur_qualifie_code_postal` int(11) NOT NULL,
  `reparateur_qualifie_ville` varchar(255) NOT NULL,
  `reparateur_qualifie_tel` varchar(255) NOT NULL,
  `reparateur_qualifie_tel_mini_site` varchar(255) NOT NULL,
  `reparateur_qualifie_tel_page_jaune` varchar(255) NOT NULL,
  `reparateur_qualifie_mail_sav` varchar(255) NOT NULL,
  `reparateur_qualifie_mail_resp` varchar(255) NOT NULL,
  `reparateur_qualifie_mail_com_bvr` varchar(255) NOT NULL,
  `reparateur_qualifie_code_sect` int(11) NOT NULL,
  `reparateur_qualifie_client_fk` int(11) NOT NULL,
  `reparateur_qualifie_numero` int(11) NOT NULL,
  `reparateur_qualifie_is_rep_q` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reparateur_qualifie`
--

INSERT INTO `reparateur_qualifie` (`reparateur_qualifie_id`, `reparateur_qualifie_nom`, `reparateur_qualifie_num_adresse`, `reparateur_qualifie_adresse_complement`, `reparateur_qualifie_rue`, `reparateur_qualifie_localite`, `reparateur_qualifie_code_postal`, `reparateur_qualifie_ville`, `reparateur_qualifie_tel`, `reparateur_qualifie_tel_mini_site`, `reparateur_qualifie_tel_page_jaune`, `reparateur_qualifie_mail_sav`, `reparateur_qualifie_mail_resp`, `reparateur_qualifie_mail_com_bvr`, `reparateur_qualifie_code_sect`, `reparateur_qualifie_client_fk`, `reparateur_qualifie_numero`, `reparateur_qualifie_is_rep_q`) VALUES
(169, ' ABEL ALU ', '  4BIS ', '  ', ' RUE CARDAN ', ' ZONE ARTISANALE ', 66350, ' TOULOUGES ', ' 0468550680 ', ' 33367471005 ', ' 33367471171 ', ' sylvie@abelalu.com ', ' olivier@abelalu.com ', ' alexis.morgante@bubendorff.com ', 905, 1, 10017, 1),
(170, ' A.F.D. ', '  - ', ' ROUTE DE GUERET ', ' BELLE PLACE ', '  ', 36400, ' LA CHATRE ', ' 0254484180 ', ' 33367471006 ', ' 33367471172 ', '  ', ' lachatre@afd-verandas.com ', ' antonio.goncalves@bubendorff.com ', 304, 1, 10059, 1),
(171, ' ALU CATALAN ', '  - ', ' ESPACE ROUSSILLON EST ', ' ROUTE DU BARCARES ', '  ', 66530, ' CLAIRA ', ' 0468646838 ', ' 33367471007 ', ' 33367471173 ', ' sophie.banuls@alucatalan.fr ', ' banulsc@alucatalan.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 10074, 1),
(172, ' ACF ', '  9 ', '  ', ' IMPASSE AMPERE ', '  ', 85000, ' LA ROCHE SUR YON ', ' 0251403888 ', ' 33367471008 ', ' 33367471174 ', '  ', ' conseil@acf-artetfenetres.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 10186, 1),
(173, ' ALUMATIC ', '  10 ', '  ', ' RUE SAINT EXUPERY ', '  ', 44115, ' HAUTE GOULAINE ', ' 0228211010 ', ' 33367471009 ', ' 33367471175 ', ' alumatic@orange.fr ', ' alumatic@orange.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 10207, 1),
(174, ' AURORE MENUISERIES ', '  41 ', '  ', ' RUE DU MOULIN AUX MOINES ', '  ', 72650, ' LA CHAPELLE ST AUBIN ', ' 0243854242 ', ' 33367471011 ', ' 33367471176 ', ' auroremenuiseries@orange.fr ', ' auroremenuiseries@orange.fr ', ' thierry.touchard@bubendorff.com ', 305, 1, 10230, 1),
(175, ' ART & FENETRES ', '  9 ', '  ', ' RUE DES COMPAGNONS ', '  ', 51350, ' CORMONTREUIL ', ' 0326780000 ', ' 33367471012 ', ' 33367471177 ', ' julien.renault@aefreims.com ', ' julien.renault@aefreims.com ', ' fabien.balny@bubendorff.com ', 104, 1, 10275, 1),
(176, ' ARTISTORE ', '  183 ', '  ', ' RUE DE LA PORTE DE TRIVAUX ', '  ', 92140, ' CLAMART ', ' 0146308764 ', ' 33367471013 ', ' 33367471178 ', ' artistore@orange.fr ', ' artistore@orange.fr ', ' philippe.delacourt@bubendorff.com ', 106, 1, 10285, 1),
(177, ' ABC FERMETURES ', '  75 ', '  ', ' QUAI GORIN ', '  ', 85800, ' ST GILLES CROIX DE VIE ', ' 0251549601 ', ' 33367471014 ', ' 33367471179 ', ' abc.fermetures85@orange.fr ', ' abc.fermetures85@orange.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 10289, 1),
(178, ' A.B.S. FERMETURES ', '  337 ', '  ', ' VIEILLE ROUTE DE LA FARLEDE ', ' RN97 ', 83130, ' LA GARDE ', ' 0494003434 ', ' 33367471015 ', ' 33367471180 ', ' accueil@abs-fermetures.com ', ' accueil@abs-fermetures.com ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 10380, 1),
(179, ' ALU CERDAGNE CAPCIR ', '  6 ', '  ', ' RUE DES ISARDS ', ' ZONE ARTISANALE DU SEGRE ', 66800, ' SAILLAGOUSE ', ' 0614479092 ', ' 33367471016 ', ' 33367471181 ', '  ', ' alu.cerdagne.capcir@orange.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 10381, 1),
(180, ' ALU REFERENCE ', '  4 ', '  ', ' RUE DENIS PAPIN ', ' Z A ', 66280, ' SALEILLES ', ' 0468224155 ', ' 33367471017 ', ' 33367471182 ', ' alu-reference@orange.fr ', ' alu-reference@orange.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 10472, 1),
(181, ' ABATIS ', '  17 ', ' ZA DU PINET ', ' IMPASSE DE CASTELVIEL ', '  ', 31180, ' ROUFFIAC TOLOSAN ', ' 0534254444 ', ' 33367471018 ', ' 33367471183 ', '  ', ' abatissud@abatis.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 10508, 1),
(182, ' ALUCONFORT ', '  63 ', '  ', ' RUE DE HYERES ', ' ZA LES MILLONNE ', 83140, ' SIX FOURS LES PLAGES ', ' 0494102400 ', ' 33367471019 ', ' 33367471184 ', ' infos@aluconfort.com ', ' pascalperez@aluconfort.com ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 10694, 1),
(183, ' A.E.V ', '  77 ', '  ', ' ROUTE DE MONTCENIS ', '  ', 71200, ' LE CREUSOT ', ' 0385562322 ', ' 33367471020 ', ' 33367471185 ', ' michel.balaguer71@orange.fr ', ' michel.balaguer71@orange.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 10762, 1),
(184, ' ALU LEZE ', '  - ', '  ', ' ROUTE DU MAS D AZIL ', '  ', 9350, ' SABARAT ', ' 0561699787 ', ' 33367471021 ', ' 33367471186 ', '  ', ' alu-leze@wanadoo.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 10781, 1),
(185, ' ACECAM ', '  - ', '  ', ' ZAE DE FAREINS ', '  ', 1480, ' FAREINS ', ' 0474608749 ', ' 33367471022 ', ' 33367471187 ', ' adavid-livet@acecam.fr ', ' ccr@acecam.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 10856, 1),
(186, ' AUVERGNE ECO HABITAT ', '  67 ', '  ', ' AVENUE JEAN JAURES ', '  ', 63200, ' MOZAC ', ' 0473643871 ', ' 33367471023 ', ' 33367471188 ', ' auvergne-eco-habitat@orange.fr ', ' auvergne-eco-habitat@orange.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 10892, 1),
(187, ' BALLAT ', '  677 ', '  ', ' AVENUE DE RODEZ ', '  ', 12160, ' BARAQUEVILLE ', ' 0565690198 ', ' 33367471024 ', ' 33367471189 ', ' ballat-sae@wanadoo.fr ', ' ballat-sae@wanadoo.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 20133, 1),
(188, ' GUY BONNET ', '  25 ', '  ', ' RUE EDOUARD BRANLY ', '  ', 85500, ' LES HERBIERS ', ' 0251669327 ', ' 33367471025 ', ' 33367471190 ', ' laurent@bonnet-menuiseries.fr ', ' laurent@bonnet-menuiseries.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 20190, 1),
(189, ' BOZONNET PERE & FILS ', '  202 ', '  ', ' CHEMIN DE LA VEYLE ', '  ZA LE CHATELARD ', 1310, ' ST REMY ', ' 0474243711 ', ' 33367471026 ', ' 33367471191 ', ' bozonnet.didier@orange.fr ', ' bozonnet.didier@orange.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 20194, 1),
(190, ' BOURDEAU ', '  15 TER ', ' LES SALVAGES ', ' AVENUE DU SIDOBRE ', '  ', 81100, ' BURLATS ', ' 0563353175 ', ' 33367471027 ', ' 33367471192 ', ' sarl.bourdeau@libertysurf.fr ', ' sarl.bourdeau@libertysurf.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 20250, 1),
(191, ' B\'MIX TECHNOSTOR ', '  184 ', '  ', ' AVENUE DU MARECHAL LECLERC ', '  ', 33130, ' BEGLES ', ' 0556869603 ', ' 33367471028 ', ' 33367471193 ', ' contact@bmix.fr ', ' contact@bmix.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 20441, 1),
(192, ' BOISSON ', '  14 ', '  ', ' RUE JACQUELINE AURIOL ', '  ', 63170, ' AUBIERE ', ' 0473286350 ', ' 33367471029 ', ' 33367471194 ', ' s.deblois@boissonstores.fr ', ' d.goutaland@boissonstores.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 22474, 1),
(193, ' SARL BARRE OLIVIER ', '  38 ', '  ', ' RUE LINOT COLLOT ', '  ', 51120, ' SEZANNE ', ' 0326813530 ', ' 33367471030 ', ' 33367471195 ', ' olivier.barre.sarl@wanadoo.fr ', ' olivier.barre.sarl@wanadoo.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 22489, 1),
(194, ' SARL CIVEL ', '  - ', ' ZA ', ' RUE DE LA PREE ', '  ', 44770, ' PREFAILLES ', ' 0240216830 ', ' 33367471031 ', ' 33367471196 ', '  ', ' adm@civel.net ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 30239, 1),
(195, ' FERMETURES MUST SARL CD DIFFUSION ', '   ', '  ', ' RUE ARTHUR BRUNET ', '  ', 59220, ' DENAIN ', ' 0327442618 ', ' 33367471032 ', ' 33367471197 ', ' d.cumenal@fermetures-must.fr ', ' d.cumenal@fermetures-must.fr ', ' cedric.carlier@bubendorff.com ', 105, 1, 30256, 1),
(196, ' CLARTE ', '  - ', '  ', ' ZONE ARTISANALE LA CIGALIERE ', '  ', 84250, ' LE THOR ', ' 0432405353 ', ' 33367471033 ', ' 33367471198 ', ' sarl.clarte@orange.fr ', ' sarl.clarte@orange.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 30268, 1),
(197, ' CUNHA & CASTERA ', '  - ', '  ', ' RUE CLAUDE MONET ', ' ZI ENGACHIES ', 32000, ' AUCH ', ' 0562618339 ', ' 33367471034 ', ' 33367471199 ', ' fabrice.lalanne@cunha-castera.fr ', ' cunha.castera@wanadoo.fr ', ' michel.gaillet@bubendorff.com ', 902, 1, 30286, 1),
(198, ' CHAPUIS MENUISERIE ', '  - ', '  ', ' CHEMIN DE FARNIER ', '  ', 43000, ' LE PUY EN VELAY ', ' 0471045512 ', ' 33367471035 ', ' 33367471200 ', '  ', ' alexis.chapuis@menuiseriechapuis.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 30394, 1),
(199, ' SOS VITRINE PAR CZERNIK ', '  8 ', ' ZAC LE PERGET ', ' AVENUE ANDRE MARIE AMPERE ', ' COLOMIERS ', 31772, ' COLOMIERS CEDEX ', ' 0582080031 ', ' 33367471036 ', ' 33367471201 ', ' b.juliac@sos-vitrine.fr ', ' b.juliac@sos-vitrine.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 30416, 1),
(200, ' CLOS ET COUVERT ', '  20 ', '  ', ' RUE DU TROU GRILLON ', '  ', 91280, ' ST PIERRE DU PERRAY ', ' 0164960703 ', ' 33367471037 ', ' 33367471202 ', ' clos3@wanadoo.fr ', ' clos3@wanadoo.fr ', ' philippe.delacourt@bubendorff.com ', 106, 1, 30766, 1),
(201, ' COMTE ET MARCELINO ', '  7 ', '  ', ' BOULEVARD HENRI DE REGNIER ', '  ', 71600, ' PARAY LE MONIAL ', ' 0385814729 ', ' 33367471038 ', ' 33367471203 ', ' jean-michel@comte-marcelino.fr ', ' contact@comte-marcelino.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 30996, 1),
(202, ' OMER CROEN ', '  - ', '  ', ' RUE HENRY POTEZ ', '  ', 80300, ' ALBERT ', ' 0322752022 ', ' 33367471039 ', ' 33367471204 ', '  ', ' virginie@omercroen.fr ', ' cedric.carlier@bubendorff.com ', 105, 1, 31301, 1),
(203, ' D.M.F. ', '  6 ', ' MEYZIEU ', ' AVENUE DOCTEUR SCHWEITZER ', '  ', 69330, ' MEYZIEU ', ' 0478043664 ', ' 33367471040 ', ' 33367471205 ', '  ', ' dmf-audrey.dp@orange.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 40106, 1),
(204, ' MENUISERIE DANIEL ', '  128 ', '  ', ' AVENUE DE CONTHE ', '  ', 15000, ' AURILLAC ', ' 0471642900 ', ' 33367471041 ', ' 33367471206 ', '  ', ' contact@menuiseries-daniel.fr ', ' julien.desavoye@bubendorff.com ', 906, 1, 40277, 1),
(205, ' DEFACHE FERMETURES ', '  208 ', '  ', ' RUE DES ARAMONS ', '  ', 34130, ' MAUGUIO ', ' 0467293966 ', ' 33367471042 ', ' 33367471207 ', ' defachefermetures@wanadoo.fr ', ' defachefermetures@wanadoo.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 40366, 1),
(206, ' DOS SANTOS ', '  10 ', ' LA VALINIERE ', ' RUE DES ROSES ', '  ', 17310, ' ST PIERRE D OLERON ', ' 0638844125 ', ' 33367471043 ', ' 33367471208 ', ' idealmenuiserie@aliceadsl.fr ', ' idealmenuiserie@aliceadsl.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 40475, 1),
(207, ' DULIN ISOLATION ', '  39 ', '  ', ' BOULEVARD DU GENERAL LECLERC ', '  ', 77300, ' FONTAINEBLEAU ', ' 0164220637 ', ' 33367471044 ', ' 33367471209 ', ' fenetres.dulin@orange.fr ', ' fenetres.dulin@orange.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 40708, 1),
(208, ' DUTERTRE MICHEL ', '  - ', '  ', ' ROUTE DE CRAON ', ' Z A ', 49420, ' POUANCE ', ' 0241926123 ', ' 33367471045 ', ' 33367471210 ', ' contact@dutertre.fr ', ' contact@dutertre.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 40824, 1),
(209, ' EUROPE FERMETURES ', '  34 ', '  ', ' RUE PAUL FRAENCKEL ', '  ', 76500, ' ELBEUF ', ' 0235874587 ', ' 33367471046 ', ' 33367471211 ', '  ', ' europe.fermeture@wanadoo.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 50397, 1),
(210, ' FALLIERO ALUMINIUM ', '  11 ', '  ', ' RUE DU TROUMOUSE ', ' ZAC DU PARC DES PYRENEES ', 65420, ' IBOS ', ' 0562339111 ', ' 33367471047 ', ' 33367471213 ', ' sav@falliero.fr ', ' sa-falliero@falliero.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 60044, 1),
(211, ' FENETRES CONSULTING ', '  21 ', '  ', ' AVENUE JOFFRE ', '  ', 92380, ' GARCHES ', ' 0147012589 ', ' 33367471048 ', ' 33367471214 ', ' fc.garches@icloud.com ', ' anthony.goube@me.com ', ' philippe.delacourt@bubendorff.com ', 106, 1, 60158, 1),
(212, ' FMB ', '  7 ', '  ', ' MOULIN DE LA BRUYERE ', '  ', 39700, ' RANS ', ' 0384813322 ', ' 33367471049 ', ' 33367471215 ', ' fmb39@orange.fr ', ' fmb39@orange.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 60174, 1),
(213, ' FERMOTHERM ', '  78B ', '  ', ' RUE PIERRE CURIE ', '  ', 62217, ' BEAURAINS ', ' 0321712772 ', ' 33367471050 ', ' 33367471216 ', '  ', ' fermotherm.becart@libertysurf.fr ', ' cedric.carlier@bubendorff.com ', 105, 1, 60298, 1),
(214, ' FERMETURES ET SECURITE ', '  14 ', '  ', ' AVENUE JEAN JAURES ', '  ', 69007, ' LYON ', ' 0478725859 ', ' 33367471051 ', ' 33367471217 ', ' fermeturesecurite@gmail.com ', ' fermeturesecurite@gmail.com ', ' nathalie.tixier@bubendorff.com ', 203, 1, 60315, 1),
(215, ' G P A L ', '  201 ', '  ', ' RUE DE FALAISE ', '  ', 14000, ' CAEN ', ' 0231524958 ', ' 33367471052 ', ' 33367471218 ', ' philippe.viget@gpal.fr ', ' Info@gpal.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 70008, 1),
(216, ' FERMETURES MENUISERIES AUDOISES ', '  - ', '  ', ' ROUTE DE CAUX ', '  ', 11170, ' PEZENS ', ' 0468248887 ', ' 33367471053 ', ' 33367471219 ', ' contact@fma11.fr ', ' contact@fma11.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 70131, 1),
(217, ' VERANDAS GUILLET ', '  11 ', '  ', ' RUE DE LA GARENNE ', '  ', 85540, ' MOUTIERS LES MAUXFAITS ', ' 0251989682 ', ' 33367471054 ', ' 33367471220 ', ' verandas.guillet@wanadoo.fr ', ' verandas.guillet@wanadoo.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 70141, 1),
(218, ' GAUTHIER ', '  - ', '  ', ' LE FANGEAS ', '  ', 43370, ' SOLIGNAC SUR LOIRE ', ' 0471015154 ', ' 33367471055 ', ' 33367471221 ', '  ', ' Dominique.gauthier@gauthiersa.fr ', ' dominique.rabaud@bubendorff.com ', 503, 1, 70145, 1),
(219, ' DENIS GUILLOPE ', '  19 ', '  ', ' RUE DE LA RAVINE ', '  ', 27400, ' LOUVIERS ', ' 0232504761 ', ' 33367471056 ', ' 33367471222 ', '  ', ' contact@guillope.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 70196, 1),
(220, ' ENTREPRISE GRANGE ', '  42 ', '  ', ' RUE DE NAVARRE ', '  ', 3700, ' BELLERIVE SUR ALLIER ', ' 0470324258 ', ' 33367471057 ', ' 33367471223 ', '  ', ' compta@entreprisegrange.com ', ' christophe.beau@bubendorff.com ', 201, 1, 70236, 1),
(221, ' GALIGNE FERMETURES/M2V ', '  4 ', ' ZONE ECONOMIQUE LOS PALAUS ', ' AVENUE HERMES ', '  ', 66170, ' MILLAS ', ' 0468572414 ', ' 33367471058 ', ' 33367471224 ', ' galigne.fermeture@wanadoo.fr ', ' galigne.fermeture@wanadoo.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 70270, 1),
(222, ' GUILLERME ', '  9 ', '  ', ' RUE MARCEL SEMBAT ', '  ', 21000, ' DIJON ', ' 0380525659 ', ' 33367471059 ', ' 33367471225 ', ' planning.guillerme@orange.fr ', ' ruinet.guillerme@orange.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 71020, 1),
(223, ' ID BAIES ', '  21 ', '  ', ' RUE DU PRE DROUE ', '  ', 88150, ' CHAVELOT ', ' 0329350191 ', ' 33367471060 ', ' 33367471226 ', ' idbaies@wanadoo.fr ', ' idbaies@wanadoo.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 90091, 1),
(224, ' LINEA REP 68 ', '  13 ', '  ', ' RUE DES 3 FRONTIERES ', '  ', 68110, ' ILLZACH ', ' 0389897280 ', ' 33367471061 ', ' 33367471227 ', '  ', ' thierry.faizon@bubendorff.com ', ' christian.stamm@bubendorff.com ', 4, 1, 120121, 1),
(225, ' LINEA REP 67 ', '  6 ', ' ZI NORD ', ' RUE DE WALDKIRCH ', '  ', 67600, ' SELESTAT ', ' 0389897272 ', ' 33367471062 ', ' 33367471228 ', '  ', ' thierry.faizon@bubendorff.com ', ' christian.stamm@bubendorff.com ', 4, 1, 120131, 1),
(226, ' LAINE ', '  - ', ' ZONE INDUSTRIELLE ', ' RUE DES GRANDS MOULINS ', '  ', 85600, ' ST GEORGES DE MONTAIGU ', ' 0251420454 ', ' 33367471063 ', ' 33367471229 ', ' contact@laine-sarl.com ', ' contact@laine-sarl.com ', ' cyril.menon@bubendorff.com ', 904, 1, 120201, 1),
(227, ' SERRURERIE LIONNET ', '  7 ', '  ', ' BOULEVARD DE PERPIGNA ', '  ', 17200, ' ROYAN ', ' 0546383079 ', ' 33367471064 ', ' 33367471230 ', ' lionnet.serrurerie@laposte.net ', ' lionnet.serrurerie@laposte.net ', ' cyril.menon@bubendorff.com ', 904, 1, 120207, 1),
(228, ' MENUISERIE LUDOLUX ', '  26 ', '  ', ' RUE DES PAQUERETTES ', ' ZI GUILLAUME HORY ', 70300, ' LUXEUIL LES BAINS ', ' 0384402941 ', ' 33367471065 ', ' 33367471231 ', '  ', ' menuiserie.quentin@orange.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 120256, 1),
(229, ' LERAY MENUISERIE ', '  3 ', '  ', ' CITE NOUVELLE ', '  ', 44570, ' TRIGNAC ', ' 0240534012 ', ' 33367471066 ', ' 33367471232 ', '  ', ' patrice@leray-menuiserie.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 120625, 1),
(230, ' LOISIRS VERANDA ', '  46B ', '  ', ' AVENUE DE LA LOGE ', ' ZONE ARTISANALE ', 86440, ' MIGNE AUXANCES ', ' 0549516787 ', ' 33367471067 ', ' 33367471233 ', ' info@loisirs-veranda.fr ', ' info@loisirs-veranda.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 120794, 1),
(231, ' MIRALUVER ', '  23 ', '  ', ' AVENUE MARCEL DASSAULT ', '  ', 64140, ' LONS ', ' 0559721220 ', ' 33367471068 ', ' 33367471234 ', '  ', ' direction@miraluver-pau.fr ', ' michel.gaillet@bubendorff.com ', 902, 1, 130136, 1),
(232, ' MENUISERIE MOREAU ', '  - ', '  ', ' LA GRANDE JUSTICE ', '  ', 36340, ' CLUIS ', ' 0254312042 ', ' 33367471069 ', ' 33367471235 ', '  ', ' sa.moreau@wanadoo.fr ', ' jean-luc.bruere@bubendorff.com ', 505, 1, 130225, 1),
(233, ' M\'CEHES ', '  1 ', '  ', ' SQUARE LOUIS BLERIOT ', ' ZA LA PETITE BOITIERE ', 49124, ' LE PLESSIS GRAMMOIRE ', ' 0241955301 ', ' 33367471070 ', ' 33367471236 ', ' contact@mcehes.fr ', ' contact@mcehes.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 130233, 1),
(234, ' MAUREL DIFFUSION ', '  191 ', '  ', ' ROUTE DE MILLAU ', '  ', 81000, ' ALBI ', ' 0563460010 ', ' 33367471071 ', ' 33367471237 ', ' maurel.diffusion@wanadoo.fr ', ' maurel.diffusion@wanadoo.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 130318, 1),
(235, ' MIROITERIE MARTINEZ ', '  204 ', '  ', ' RUE EDOUARD DALADIER ', ' ROUTE DE PERNES ', 84200, ' CARPENTRAS ', ' 0490631314 ', ' 33367471072 ', ' 33367471238 ', ' contact@miroiteriemartinez.fr ', ' contact@miroiteriemartinez.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 130321, 1),
(236, ' LES MASTERS MENUISIERS ', '  133 ', '  ', ' BOULEVARD DU GENERAL BROSSET ', '  ', 83200, ' TOULON ', ' 0494220174 ', ' 33367471073 ', ' 33367471239 ', ' contacts@lesmastersmenuisiers.fr ', ' fournisseurs@lesmastersmenuisiers.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 130404, 1),
(237, ' MENUISOL ', '  - ', '  ', ' CORON ', ' ZI ', 1300, ' BELLEY ', ' 0479420466 ', ' 33367471074 ', ' 33367471240 ', ' menuisol01300@gmail.com ', ' menuisol01300@gmail.com ', ' christophe.beau@bubendorff.com ', 201, 1, 130446, 1),
(238, ' MIROITERIE D\'ISTRES ', '  5 ', '  ', ' AVENUE DU TUBE ', '  ', 13800, ' ISTRES ', ' 0442550494 ', ' 33367471075 ', ' 33367471241 ', ' miroiterieistres@wanadoo.fr ', ' miroiterieistres@wanadoo.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 130459, 1),
(239, ' VERANDAS MENUISERIES DE MONTGAILLARD ', '  9 ', '  ', ' AVENUE D AZEREIX ', '  ', 65000, ' TARBES ', ' 0562340555 ', ' 33367471076 ', ' 33367471242 ', '  ', ' ebaledent@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 132306, 1),
(240, ' FERMETURES MUST SARL OJC DIFFUSION ', '  - ', '  ', ' AVENUE ARCHIMEDE ', ' ZA BOIS DE LA CHOQUE ', 2100, ' ST QUENTIN ', ' 0323647894 ', ' 33367471077 ', ' 33367471243 ', ' ojc.accueil@orange.fr ', ' ojc.accueil@orange.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 150009, 1),
(241, ' OMOIS ISOLATION CONFORT ', '  - ', '  ', ' ZI DE L\'OMOIS ', '  ', 2406, ' CHATEAU THIERRY CEDEX ', ' 0323694939 ', ' 33367471078 ', ' 33367471244 ', ' contact@omoisisolationconfort.fr ', ' f.leroy@omoisisolationconfort.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 150015, 1),
(242, ' PASCAL VOLET ROULANT ', '  76 ', '  ', ' RUE DU VAUGUEUX ', '  ', 14000, ' CAEN ', ' 0231722697 ', ' 33367471079 ', ' 33367471245 ', ' pascal.volet.roulant@orange.fr ', ' pascal.volet.roulant@orange.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 160503, 1),
(243, ' PONTACQ LARREGAIN ', '  3 ', '  ', ' RUE FARADAY ', '  ', 64000, ' PAU ', ' 0559024642 ', ' 33367471080 ', ' 33367471246 ', ' contact@pontacqlarregain.com ', ' contact@pontacqlarregain.com ', ' michel.gaillet@bubendorff.com ', 902, 1, 160801, 1),
(244, ' 2 PL ', '  - ', ' BP 11 ZA DE KERLAUDY ', ' RUE DE KERLAUDY ', '  ', 29420, ' PLOUENAN ', ' 0298296027 ', ' 33367471081 ', ' 33367471247 ', ' info@2pl.bzh ', ' patrice.leblevenec@omni-metal.bzh ', ' michel.legall@bubendorff.com ', 306, 1, 161137, 1),
(245, ' RADENNE ET FILS ', '  - ', '  ', ' ZONE ARTISANALE LES BRUYERES ', '  ', 71130, ' NEUVY GRANDCHAMP ', ' 0385842805 ', ' 33367471082 ', ' 33367471248 ', '  ', ' benjamin@radenne.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 180034, 1),
(246, ' ROLLET ', '  - ', '  ', ' ZONE INDUSTRIELLE DES MOLLARDS ', '  ', 71680, ' CRECHES SUR SAONE ', ' 0385238030 ', ' 33367471083 ', ' 33367471249 ', '  ', ' direction@rolletsas.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 180076, 1),
(247, ' FERM\'STOR ', '  83 ', '  ', ' IMPASSE DES MURIERS ', '  ', 38110, ' DOLOMIEU ', ' 0476874363 ', ' 33367471084 ', ' 33367471250 ', '  ', ' contact@ferm-stor.com ', ' david.sacilotto@bubendorff.com ', 205, 1, 180113, 1),
(248, ' R.C. FERMETURE ', '  - ', '  ', ' ROUTE DE BEAUCAIRE ', '  ', 30129, ' MANDUEL ', ' 0466020465 ', ' 33367471085 ', ' 33367471251 ', ' isabelle.rcfermeture@sfr.fr ', ' isabelle.rcfermeture@sfr.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 180122, 1),
(249, ' REY ALU ', '  16 ', '  ', ' AVENUE DOM ROMAIN BANQUET ', '  ', 81110, ' DOURGNE ', ' 0563733020 ', ' 33367471086 ', ' 33367471252 ', ' jeanpierre@rey-alu.fr ', ' etsrey@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 180161, 1),
(250, ' MIROITERIE ROQUES DAVID ', '  - ', '  ', ' ROUTE DE BORDEAUX ', ' LA CAVAILLE ', 24100, ' BERGERAC ', ' 0553583387 ', ' 33367471087 ', ' 33367471253 ', '  ', ' contact@miroiterieroques.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 180170, 1),
(251, ' RICHARD AUTOMATISMES ', '  11 ', '  ', ' RUE PASTEUR ', '  ', 66450, ' POLLESTRES ', ' 0468980162 ', ' 33367471088 ', ' 33367471254 ', ' richardautomatismes@wanadoo.fr ', ' richardautomatismes@wanadoo.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 180178, 1),
(252, ' ROLLANDE GUY ', '  13 ', '  ', ' BOULEVARD FRANCOIS BLANCHO ', '  ', 44220, ' COUERON ', ' 0240862327 ', ' 33367471089 ', ' 33367471255 ', ' contact@menuiserie-guy-rollande.com ', ' contact@menuiserie-guy-rollande.com ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 181074, 1),
(253, ' MIROITERIE RUTHENOISE ', '  77 ', '  ', ' RUE THOMAS EDISON ', ' PA BEL AIR ', 12000, ' RODEZ ', ' 0565771025 ', ' 33367471090 ', ' 33367471256 ', ' miroit.ruthenoise@orange.fr ', ' miroit.ruthenoise@orange.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 181150, 1),
(254, ' SAUNIER ', '  50 ', ' ESPACE LEMAN 1 ', ' ROUTE DU CRET GOJON ', '  ', 74200, ' MARGENCEL ', ' 0450703217 ', ' 33367471091 ', ' 33367471257 ', ' saunier.thonon@gmail.com ', ' saunier.thonon@gmail.com ', ' christophe.beau@bubendorff.com ', 201, 1, 190037, 1),
(255, ' SAMG ', '  - ', '  ', ' CHEMIN DE PEYREPLANTADE ', '  ', 9100, ' PAMIERS ', ' 0534013655 ', ' 33367471092 ', ' 33367471258 ', ' samg@samg.fr ', ' jl.guillem@samg.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 190135, 1),
(256, ' SARL SIM ALU ', '  - ', '  ', ' RN 193 ', '  ', 20600, ' FURIANI ', ' 0495303687 ', ' 33367471093 ', ' 33367471259 ', '  ', ' simalu.bastia@wanadoo.fr ', ' lionel.sorrentino@bubendorff.com ', 733, 1, 190863, 1),
(257, ' S.M.D. DELAPLANCHE ', '  112 ', '  ', ' AVENUE DU CAPITAINE JEAN ', '  ', 45800, ' ST JEAN DE BRAYE ', ' 0238320001 ', ' 33367471094 ', ' 33367471260 ', ' contact@smd-veranda.com ', ' contact@smd-veranda.com ', ' antonio.goncalves@bubendorff.com ', 304, 1, 190988, 1),
(258, ' STORES FERMETURES ', '  54BIS ', '  ', ' RUE DU GENERAL LECLERC ', ' B.P. 111 ', 88190, ' GOLBEY ', ' 0329340102 ', ' 33367471095 ', ' 33367471261 ', ' contact@stores-fermetures.fr ', ' contact@stores-fermetures.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 200666, 1),
(259, ' SOCOREVE ', '  535 ', '  ', ' ROUTE DE LONGEAULT ', '  ', 21110, ' GENLIS ', ' 0380479700 ', ' 33367471096 ', ' 33367471262 ', ' socoreve@wanadoo.fr ', ' socoreve@wanadoo.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 210021, 1),
(260, ' MENUISERIE DU SOLEIL ', '  15 ', '  ', ' ROUTE D EPERNAY ', '  ', 51510, ' ST GIBRIEN ', ' 0326652020 ', ' 33367471097 ', ' 33367471263 ', ' contact@menuiseriedusoleil.fr ', ' contact@menuiseriedusoleil.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 210069, 1),
(261, ' STORES ISOLATION ', '  35 ', '  ', ' BOULEVARD DAGUERRE ', '  ', 42100, ' ST ETIENNE ', ' 0477333520 ', ' 33367471098 ', ' 33367471264 ', ' stores-isolation@wanadoo.fr ', ' stores-isolation@wanadoo.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 210483, 1),
(262, ' SARL S.T.K. ', '  144 ', '  ', ' RUE DU VALLAT ', '  ', 13400, ' AUBAGNE ', ' 0442737995 ', ' 33367471099 ', ' 33367471265 ', '  ', ' stkalu@wanadoo.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 210656, 1),
(263, ' STOR\'AIX ', '  26 ', '  ', ' AVENUE VICTORIA ', '  ', 73100, ' AIX LES BAINS ', ' 0479612408 ', ' 33367471100 ', ' 33367471266 ', ' storaix@wanadoo.fr ', ' storaix@wanadoo.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 210752, 1),
(264, ' TECNI-LOGIS / FOUGERES ', '  73 ', ' BP 70246 ', ' RUE DE BRETAGNE ', '  ', 35302, ' FOUGERES CEDEX ', ' 0299170497 ', ' 33367471101 ', ' 33367471267 ', '  ', ' contactfougeres@tecnilogis.fr ', ' michel.legall@bubendorff.com ', 306, 1, 220021, 1),
(265, ' TARAVELLO ', '  6 ET 8 ', '  ', ' RUE ALPHONSE GELIBERT ', '  ', 26100, ' ROMANS SUR ISERE ', ' 0475057993 ', ' 33367471102 ', ' 33367471268 ', ' guillaume.rousseau@taravello-sa.fr ', ' guillaume.rousseau@taravello-sa.fr ', ' david.sacilotto@bubendorff.com ', 205, 1, 220026, 1),
(266, ' TECNI-LOGIS / AVRANCHES ', '   ', ' ZA MONCRETON ', ' PLACE DE LA GARE ', '  ', 50300, ' AVRANCHES ', ' 0233515484 ', ' 33367471103 ', ' 33367471269 ', '  ', ' contactavranches@tecnilogis.fr ', ' michel.legall@bubendorff.com ', 306, 1, 220131, 1),
(267, ' TECHNIQUE POSE FERMETURE ', '  17 ', '  ', ' BOULEVARD DE FONTAINEBLEAU ', '  ', 91550, ' PARAY VIEILLE POSTE ', ' 0169388957 ', ' 33367471104 ', ' 33367471270 ', ' contact.tpf@orange.fr ', ' contact@tpf-menuiserie.com ', ' philippe.delacourt@bubendorff.com ', 106, 1, 220183, 1),
(268, ' USIMIX ', '  92 ', '  ', ' CHEMIN SAINTE CHRISTINE ', '  ', 83210, ' SOLLIES PONT ', ' 0494234755 ', ' 33367471105 ', ' 33367471271 ', ' cboucly@usimix.com ', ' s.chalouin@usimix.com ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 230007, 1),
(269, ' ULRICH ', '  27 ', '  ', ' RUE SAINTE COLETTE ', '  ', 54500, ' VANDOEUVRE LES NANCY ', ' 0383544027 ', ' 33367471106 ', ' 33367471272 ', ' ets.ulrich@gmail.com ', ' upas_63@hotmail.com ', ' christophe.jully@bubendorff.com ', 101, 1, 230073, 1),
(270, ' MIROITERIE VIVARAISE ', '  23 ', '  ', ' CHEMIN DE HAUT RIPOTIER ', ' ZI RIPOTIER ', 7200, ' AUBENAS ', ' 0475350631 ', ' 33367471107 ', ' 33367471273 ', ' mv07@orange.fr ', ' mv07@orange.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 240048, 1),
(271, ' MIROITERIE DE LA VOGE ', '  - ', '  ', ' ALLEE DE L AN 2000 ', '  ', 88300, ' MONT LES NEUFCHATEAU ', ' 0329943136 ', ' 33367471108 ', ' 33367471274 ', ' miroiteriedelavoge@wanadoo.fr ', ' miroiteriedelavoge@wanadoo.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 240086, 1),
(272, ' VIGREUX ', '  64 ', '  ', ' AVENUE LOUIS DEBRAY ', ' ZA DE BACLAIR ', 76210, ' BOLBEC ', ' 0232840303 ', ' 33367471109 ', ' 33367471275 ', ' fabrice.vigreux@vigreux.net ', ' fabrice.vigreux@vigreux.net ', ' frederic.bouchet@bubendorff.com ', 301, 1, 240106, 1),
(273, ' MAISON VEYRET ', '  250 ', '  ', ' RUE DU GENERAL DE GAULLE ', '  ', 69530, ' BRIGNAIS ', ' 0478732711 ', ' 33367471110 ', ' 33367471276 ', ' sav@maison-veyret.com ', ' cv@maison-veyret.com ', ' nathalie.tixier@bubendorff.com ', 203, 1, 240109, 1),
(274, ' ZEBLOUN GUY ', '  226 ', '  ', ' RUE DES MIROITIERS ', ' ZA BEL AIR ', 12000, ' RODEZ ', ' 0565422009 ', ' 33367471112 ', ' 33367471277 ', ' azebloun@wanadoo.fr ', ' alu.zebloun@wanadoo.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 280031, 1),
(275, ' REGNIER FERMETURES ', '   ', '  ', ' LA MARCHE ', ' ZA LA MARCHE ', 81440, ' VENES ', ' 0563714980 ', ' 33367471113 ', ' 33367471278 ', ' regnier-fermetures@orange.fr ', ' regnier-fermetures@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 400042, 1),
(276, ' JOULAIN GICQUEAU ', '  5 ', ' PA DE L ABBAYE III ', ' RUE PIERRE ET MARIE CURIE ', '  ', 44160, ' PONTCHATEAU ', ' 0240011910 ', ' 33367471114 ', ' 33367471279 ', ' pro@sarljoulain-gicqueau.com ', ' pro@sarljoulain-gicqueau.com ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 400174, 1),
(277, ' AU\'THOMAS\'TISME SERVICES ', '  . ', ' ZA ', ' LA GROLLE ', '  ', 85150, ' LANDERONDE ', ' 0251439960 ', ' 33367471115 ', ' 33367471280 ', ' contact@authomastisme.com ', ' contact@authomastisme.com ', ' cyril.menon@bubendorff.com ', 904, 1, 400175, 1),
(278, ' BVRM ', '  4 ', '  ', ' RUE LEON BOURGEOIS ', '  ', 56890, ' ST AVE ', ' 0679272370 ', ' 33367471116 ', ' 33367471281 ', ' contact@bvrm.fr ', ' contact@bvrm.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 400402, 1),
(279, ' DE A  Z FERMETURES ', '  - ', ' P.T LA VAUR LA BECHADE ', ' RUE ALBERT DE DION ', '  ', 63500, ' ISSOIRE ', ' 0473893684 ', ' 33367471117 ', ' 33367471282 ', ' a-z.fermetures@wanadoo.fr ', ' a-z.fermetures@wanadoo.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 400438, 1),
(280, ' GERBODIN ', '  52 BIS ', '  ', ' AVENUE DU GENERAL DE GAULLE ', '  ', 85120, ' LA CHATAIGNERAIE ', ' 0251879113 ', ' 33367471118 ', ' 33367471283 ', ' gerbodin.sarl@gmail.com ', ' gerbodin.sarl@gmail.com ', ' cyril.menon@bubendorff.com ', 904, 1, 400516, 1),
(281, ' BATISMAC ', '  5 ', '  ', ' LE CERISIER ', ' STE FLORENCE ', 85140, ' ESSARTS EN BOCAGE ', ' 0251578394 ', ' 33367471119 ', ' 33367471284 ', '  ', ' olivier@batismac.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 400605, 1),
(282, ' ENERGIE STORES ', '  2 ', '  ', ' ALLEE DES TILLEULS ', '  ', 54180, ' HEILLECOURT ', ' 0383965466 ', ' 33367471120 ', ' 33367471285 ', ' fabien.aubert@energie-stores.fr ', ' fabien.aubert@energie-stores.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 400620, 1),
(283, ' ATG ', '  9 ', '  ', ' AVENUE CHARLES SABATIE ', '  ', 81200, ' MAZAMET ', ' 0563983031 ', ' 33367471121 ', ' 33367471286 ', ' jean-marie.mikailoff0976@orange.fr ', ' jean-marie.mikailoff0976@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 400698, 1),
(284, ' L\'EXPERT MENUISERIE ', '  45BIS ', '  ', ' RUE DE LA CHEVALERIE ', '  ', 37100, ' TOURS ', ' 0247416192 ', ' 33367471122 ', ' 33367471287 ', ' jp.bonnaud@expertmenuiserie.fr ', ' jp.bonnaud@expertmenuiserie.fr ', ' antonio.goncalves@bubendorff.com ', 304, 1, 400705, 1),
(285, ' PROVENCE ALUMINIUM ', '  61 ', ' ZAC DE LA PALUD ', ' RUE ALBERT EINSTEIN ', '  ', 83600, ' FREJUS ', ' 0494814305 ', ' 33367471123 ', ' 33367471288 ', ' provencealu@orange.fr ', ' provencealu@orange.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 400720, 1),
(286, ' AUTOMATISMES CONFORT SYSTEMES ', '  103 ', '  ', ' RUE DE L INDUSTRIE ', '  ', 69800, ' ST PRIEST ', ' 0478405163 ', ' 33367471124 ', ' 33367471289 ', ' info@acs69.fr ', ' info@acs69.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 400971, 1),
(287, ' DECOSTORE F.P.H ', '  17/19 ', '  ', ' RUE DE LA LIBERATION ', '  ', 78140, ' VELIZY VILLACOUBLAY ', ' 0139468558 ', ' 33367471125 ', ' 33367471290 ', '  ', ' contact@deco-store.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 401084, 1),
(288, ' ART FERMETURES 52 ', '  13 ', '  ', ' IMPASSE DU MENNETRIERS ', '  ', 52200, ' SAINTS GEOSMES ', ' 0325885751 ', ' 33367471126 ', ' 33367471291 ', ' contact@artfermetures52.fr ', ' contact@artfermetures52.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 401165, 1),
(289, ' ALU BELLA STORES ', '  142 ', '  ', ' AVENUE DU 8 MAI 1945 ', '  ', 13240, ' SEPTEMES LES VALLONS ', ' 0491519215 ', ' 33367471127 ', ' 33367471292 ', ' contact@alubellastores.fr ', ' contact@alubellastores.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 401266, 1),
(290, ' BUCA-BASTIDE ', '  - ', ' ZA ', ' ROUTE DE LAUTREC ', '  ', 81570, ' VIELMUR SUR AGOUT ', ' 0563743278 ', ' 33367471128 ', ' 33367471293 ', ' bucasas@wanadoo.fr ', ' bucasas@wanadoo.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 401455, 1),
(291, ' CPMM ', '  RD 817 ', '  ', ' ZAC DU BEL AIR ', '  ', 64420, ' NOUSTY ', ' 0559046786 ', ' 33367471129 ', ' 33367471294 ', ' contact@cpmm.fr ', ' contact@cpmm.fr ', ' michel.gaillet@bubendorff.com ', 902, 1, 405619, 1),
(292, ' STORE VOLET SERVICE ', '  13B ', ' IMMEUBLE JB SAY  ', ' CHEMIN DU LEVANT ', '  ', 1210, ' FERNEY VOLTAIRE ', ' 0485930030 ', ' 33367471130 ', ' 33367471295 ', ' contact@store-volet-service.com ', ' contact@store-volet-service.com ', ' christophe.beau@bubendorff.com ', 201, 1, 406032, 1),
(293, ' DNS FENETRES ', '  - ', '  ', ' ZONE D ACTIVITE DU PRE ROND ', ' CUSE ET ADRISANS ', 25680, ' CUSE ET ADRISANS ', ' 0381625537 ', ' 33367471131 ', ' 33367471296 ', '  ', ' dns-fenetres@orange.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 406062, 1),
(294, ' CLINIQUE DU STORE ', '  79 ', '  ', ' GRANDE RUE SAINT CLAIR ', '  ', 69300, ' CALUIRE ET CUIRE ', ' 0478239082 ', ' 33367471132 ', ' 33367471297 ', ' clinique-du-store@orange.fr ', ' Contact@cliniquedustore.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 406413, 1),
(295, ' TD FERMETURES ', '  4 BIS ', '  ', ' AVENUE DU GENERAL DE GAULLE ', '  ', 36130, ' DEOLS ', ' 0254260753 ', ' 33367471133 ', ' 33367471298 ', ' td-fermetures@outlook.fr ', ' td-fermetures@outlook.fr ', ' antonio.goncalves@bubendorff.com ', 304, 1, 406428, 1),
(296, ' VERANDAS MONNET ROYAN ', '  1 ', '  ', ' RUE FRANCOIS ARAGO ', '  ', 17200, ' ROYAN ', ' 0546050275 ', ' 33367471134 ', ' 33367471299 ', '  ', ' VERANDAS.monnet@wanadoo.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 406433, 1),
(297, ' ART ET HABITAT SARL ', '  63 ', '  ', ' AVENUE MICHEL GRANDOU ', '  ', 24750, ' TRELISSAC ', ' 0553042674 ', ' 33367471135 ', ' 33367471300 ', ' art.habitat24@orange.fr ', ' art.habitat24@orange.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 406467, 1),
(298, ' MENUISERIE 2000 ', '  1371 ', '  ', ' RUE DES PLATANES ', '  ', 16430, ' CHAMPNIERS ', ' 0545396248 ', ' 33367471136 ', ' 33367471301 ', ' menuiserie2000@orange.fr ', ' menuiserie2000@orange.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 406778, 1),
(299, ' FERMHABITAT ', '   ', ' ROUTE DE MANTES ', ' ROUTE NATIONALE 190 ', '  ', 78440, ' GUITRANCOURT ', ' 0130924826 ', ' 33367471137 ', ' 33367471302 ', '  ', ' contact@fermhabitat.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 407006, 1),
(300, ' ALU BAIE PROVENCE ', '  31 ', '  ', ' BOULEVARD DES VENTADOUIRO ', '  ', 13300, ' SALON DE PROVENCE ', ' 0490451212 ', ' 33367471138 ', ' 33367471303 ', ' info@abpro.fr ', ' info@abpro.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 407312, 1),
(301, ' ADDENET ET LAMORLETTE ', '  - ', '  ', ' ZONE WAMEAU ', '  ', 55430, ' BELLEVILLE SUR MEUSE ', ' 0329847676 ', ' 33367471139 ', ' 33367471304 ', '  ', ' frederic-del@addenet-lamorlette.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 407656, 1),
(302, ' AMELIORATION FERMETURE PETITRENAUD ', '  35 ', '  ', ' RUE DES EPOUX CONTOUX ', '  ', 3400, ' YZEURE ', ' 0470205199 ', ' 33367471140 ', ' 33367471305 ', '  ', ' petitrenaud.yves@orange.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 407983, 1),
(303, ' ECM FERMETURES ', '  2 ', '  ', ' RESIDENCE DES COUDRAYS ', '  ', 78990, ' ELANCOURT ', ' 0616942065 ', ' 33367471141 ', ' 33367471306 ', '  ', ' madeira.anthony@gmail.com ', ' frederic.bouchet@bubendorff.com ', 301, 1, 408225, 1),
(304, ' ATLANTIC VOLET ROULANT ', '   ', '  ', ' LA BAZILLAIS ', '  ', 44260, ' BOUEE ', ' 0663300805 ', ' 33367471142 ', ' 33367471307 ', '  ', ' atlanticvoletroulant@orange.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 408403, 1),
(305, ' STORES ET DESIGN ROWASTORES ', '  6 ', ' ZONE COMMERCIALE ', ' RUE DU COMMERCE ', '  ', 67550, ' VENDENHEIM ', ' 0388818152 ', ' 33367471143 ', ' 33367471308 ', ' planning@rowastores.com ', ' sonia.baleige@rowastores.com ', ' laurent.ducret@bubendorff.com ', 102, 1, 409077, 1),
(306, '  VITRALU LAURAGUAIS ', '  140 ', '  ', ' CHEMIN DE BARRIE ', '  ', 11400, ' MAS SAINTES PUELLES ', ' 0616207607 ', ' 33367471144 ', ' 33367471309 ', '  ', ' vitralu-lauragais@orange.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 409118, 1),
(307, ' 2 MN MENUISERIE ', '  561 ', ' QUARTIER GAVARRY ', ' CHEMIN LONG ', '  ', 83260, ' LA CRAU ', ' 0422448474 ', ' 33367471145 ', ' 33367471310 ', ' contact@cconfort.com ', ' contact@cconfort.com ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 409156, 1),
(308, ' FAVERIAL ', '   ', '  ', ' CHEMIN DES PETITES CHAMPAGNES ', '  ', 71150, ' CHAGNY ', ' 0385872219 ', ' 33367471146 ', ' 33367471311 ', ' contact@faverial.fr ', ' contact@faverial.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 409648, 1),
(309, ' FERMETURES GENERALES ET SERVICES ', '  1 ', '  ', ' RUE EDMOND MICHELET ', '  ', 89100, ' SENS ', ' 0677355340 ', ' 33367471147 ', ' 33367471312 ', ' fermetures.gs@gmail.com ', ' fermetures.gs@gmail.com ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 409848, 1),
(310, ' ENTREPRISE FAMILIALE DU BATIMENT ', '  28 ', '  ', ' BOULEVARD DE LA REPUBLIQUE ', '  ', 78440, ' PORCHEVILLE ', ' 0951068970 ', ' 33367471148 ', ' 33367471314 ', '  ', ' entreprise.familiale.batiment@gmail.com ', ' frederic.bouchet@bubendorff.com ', 301, 1, 409888, 1),
(311, ' A.H FERMETURES ', '  50 ', '  ', ' ROUTE DE MONTIVILLIERS ', '  ', 76930, ' OCTEVILLE SUR MER ', ' 0235432393 ', ' 33367471149 ', ' 33367471315 ', ' ahfermetures@gmail.com ', ' ahfermetures@gmail.com ', ' frederic.bouchet@bubendorff.com ', 301, 1, 409910, 1),
(312, ' MCP ', '  9 ', '  ', ' ALLEE DE LA COTONNIERE ', '  ', 76570, ' PAVILLY ', ' 0235910726 ', ' 33367471150 ', ' 33367471316 ', '  ', ' m.anquetil@mcp-menuiserie.com ', ' frederic.bouchet@bubendorff.com ', 301, 1, 409937, 1),
(313, ' DHOMEN ', '   ', '  ', ' LE PIGEON BLANC ', '  ', 44119, ' TREILLIERES ', ' 0251123318 ', ' 33367471151 ', ' 33367471317 ', '  ', ' loic.raguin@loradis.com ', ' yvan.tortet@bubendorff.com ', 724, 1, 409986, 1),
(314, ' ESPI BATIMENT ', '  12 ', '  ', ' RUE JACQUES BEAUMONT ', '  ', 17130, ' MONTENDRE ', ' 0546492682 ', ' 33367471152 ', ' 33367471318 ', ' espi-batiment@orange.fr ', ' espi-batiment@orange.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 410357, 1),
(315, ' SOMIR ARES ', '  51 ', '  ', ' AVENUE DE LA LIBERATION ', '  ', 33740, ' ARES ', ' 0556603956 ', ' 33367471153 ', ' 33367471319 ', '  ', ' ares.miroiterie@wanadoo.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 411025, 1),
(316, ' AUDEBERT SOLUTION DEPANNAGE ', '  32 ', '  ', ' RUE DU CARTERON ', '  ', 49300, ' CHOLET ', ' 0641736207 ', ' 33367471154 ', ' 33367471320 ', '  ', ' audebert.asd@gmail.com ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 411034, 1),
(317, ' DUMAS ET LOZES SARL ', '  16 ', '  ', ' LA LUSTRE ', '  ', 33710, ' BOURG SUR GIRONDE ', ' 0557684663 ', ' 33367471155 ', ' 33367471321 ', ' dumas.lozes@orange.fr ', ' dumas.lozes@orange.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 411429, 1),
(318, ' BATAN MENUISERIES ', '  27 ', '  ', ' ROUTE DE PAU ', '  ', 65270, ' ST PE DE BIGORRE ', ' 0680200459 ', ' 33367471156 ', ' 33367471322 ', ' deolfr@orange.fr ', ' deolfr@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 411436, 1),
(319, ' PRADES THIERRY ', '  6 ', '  ', ' AVENUE YVAN PELISSIER ', '  ', 11110, ' COURSAN ', ' 0468336818 ', ' 33367471157 ', ' 33367471323 ', '  ', ' thierry.prades@wanadoo.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 411622, 1),
(320, ' MENUISERIE SERVICES ', '  3 ', '  ', ' RUE LA FONTAINE ', '  ', 10440, ' LA RIVIERE DE CORPS ', ' 0325795630 ', ' 33367471158 ', ' 33367471324 ', '  ', ' menuiserieservices-aube@orange.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 412623, 1),
(321, ' MICKAEL BOURDOLLE MENUISERIES ', '   ', '  ', ' LA TERRADE ', '  ', 87230, ' FLAVIGNAC ', ' 0771701596 ', ' 33367471159 ', ' 33367471325 ', ' mbmenuiseries87@gmail.com ', ' mbmenuiseries87@gmail.com ', ' julien.desavoye@bubendorff.com ', 906, 1, 412725, 1),
(322, ' LD DEPANNAGE ', '   ', '  ', ' LIEU DIT LA FONT SAINT MAUR ', '  ', 3410, ' DOMERAT ', ' 0666775301 ', ' 33367471160 ', ' 33367471326 ', '  ', ' lddepannage03@gmail.com ', ' christophe.beau@bubendorff.com ', 201, 1, 413808, 1),
(323, ' LA MENUISERIE POUR L\'HABITAT ', '  11 ', '  ', ' RUE GENERAL DE GAULLE ', '  ', 27380, ' FLEURY SUR ANDELLE ', ' 0660591854 ', ' 33367471161 ', ' 33367471327 ', '  ', ' marc@lm-h.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 414051, 1),
(324, ' PIERRE FOURCADE MENUISERIES  ', '  3 ', '  ', ' CHEMIN DU HERRE ', '  ', 65500, ' CAMALES ', ' 0679660028 ', ' 33367471162 ', ' 33367471328 ', '  ', ' conseil-fourcade@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 414094, 1),
(325, ' MONSIEUR MARC-OLIVIER DUCREUX ', '  301 ', '  ', ' CHEMIN DE VALENTIN ', '  ', 42540, ' ST JUST LA PENDUE ', ' 0668137932 ', ' 33367471163 ', ' 33367471329 ', '  ', ' mo.ducreux@gmail.com ', ' nathalie.tixier@bubendorff.com ', 203, 1, 414280, 1),
(326, ' FDL ', '  50 ', '  ', ' AVENUE CARNOT ', '  ', 11100, ' NARBONNE ', ' 0972435866 ', ' 33367471164 ', ' 33367471330 ', '  ', ' contact@fdl-menuiserie.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 414328, 1),
(327, ' MENUISERIE POUX ', '  11 ', '  ', ' AVENUE DE LA GARE ', '  ', 39800, ' POLIGNY ', ' 0384372796 ', ' 33367471165 ', ' 33367471331 ', '  ', ' menuiserie.poux@wanadoo.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 414622, 1),
(328, ' AAVS RHONES ALPES ', '  71 ', '  ', ' AVENUE DU GRAND CHARRAN ', '  ', 26000, ' VALENCE ', ' 0475838070 ', ' 33367471166 ', ' 33367471332 ', '  ', ' aavs26@gmail.com ', ' david.sacilotto@bubendorff.com ', 205, 1, 414898, 1),
(329, ' FERMETURES DE LA BRIE SERVICES ', '  2 ', '  ', ' RUE DE LA NOUE GUIMANTE ', '  ', 77400, ' ST THIBAULT DES VIGNES ', ' 0160075811 ', ' 33367471167 ', ' 33367471333 ', '  ', ' contact@fbrie.com ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 414975, 1),
(330, ' STORES ET VOLETS VALLADE 78 ', '  6 ', '  ', ' ALLEE DES SOURCES ', '  ', 78620, ' L ETANG LA VILLE ', ' 0139587696 ', ' 33367471168 ', ' 33367471334 ', '  ', ' stores.volets.vallade78@gmail.com ', ' frederic.bouchet@bubendorff.com ', 301, 1, 415018, 1),
(331, ' WILL DEPANNAGE 76 ', '  186 ', '  ', ' IMPASSE DES MARES ', '  ', 76970, ' GREMONVILLE ', ' 0666288571 ', ' 33367471169 ', ' 33367471335 ', '  ', ' willdepannage76@gmail.com ', ' frederic.bouchet@bubendorff.com ', 301, 1, 415171, 1),
(332, ' FDO.BAT ', '  27 ', '  ', ' ROUTE DE PAU ', '  ', 65270, ' ST PE DE BIGORRE ', ' 0680200459 ', ' 33367471170 ', ' 33367471336 ', '  ', ' deolfr@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 415186, 1),
(333, ' M.C.A./ SEVRE ET MAINE ', '  5 ', ' ZA DU HAUT COIN ', ' RUE LAVOISIER ', '  ', 44140, ' AIGREFEUILLE SUR MAINE ', ' 2 40 33 58 00 ', ' 33367470154 ', ' 33367470759 ', ' yvonnick@mca-menuiserie.fr ', ' yvonnick@mca-menuiserie.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 131378, 0),
(334, ' FRANCE FENETRES ', '  4 ', '  ', ' ALLEE DES VERGERS ', '  ', 78240, ' AIGREMONT ', ' 1 39 11 85 67 ', ' 33367470186 ', ' 33367470760 ', ' gaelle.cadoret-bertin@france-fenetres.fr ', ' remy.poncton@france-fenetres.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 414158, 0),
(335, ' OMER CROEN ', '  - ', '  ', ' RUE HENRY POTEZ ', '  ', 80300, ' ALBERT ', ' 3 22 75 20 22 ', ' 33367470303 ', ' 33367470762 ', ' virginie@omercroen.fr ', ' virginie@omercroen.fr ', ' cedric.carlier@bubendorff.com ', 105, 1, 31301, 0),
(336, ' RD FERMETURES ', '  531 ', '  ', ' ROUTE DEPARTEMENTALE 820 ', '  ', 82350, ' ALBIAS ', ' 5 63 30 70 95 ', ' 33367470333 ', ' 33367470763 ', ' julienredon.artetfenetres@orange.fr ', ' rdfermetures82@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 406629, 0),
(337, ' CHANOT ', '  8 ', '  ', ' BOULEVARD DU PORT ', '  ', 80000, ' AMIENS ', ' 3 22 92 91 98 ', ' 33367470347 ', ' 33367470764 ', ' ets.chanot@wanadoo.fr ', ' ets.chanot@wanadoo.fr ', ' cedric.carlier@bubendorff.com ', 105, 1, 30262, 0),
(338, ' ISOL\'EURE ', '  . ', '  ', ' RUE DE MELLEVILLE ', '  ', 27930, ' ANGERVILLE LA CAMPAGNE ', ' 6 83 89 95 32 ', ' 33367470367 ', ' 33367470765 ', ' isoleure@orange.fr ', ' isoleure@orange.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 400548, 0),
(339, ' GLASS 74 ', '  3 ', '  ', ' RUE DE LA BARRADE ', ' CRAN GEVRIER ', 74960, ' ANNECY ', ' 4 50 67 06 69 ', ' 33367470418 ', ' 33367470766 ', ' contact@atrio.fr ', ' contact@atrio.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 414237, 0),
(340, ' SARL COTE FERMETURES ', '  77 ', '  ', ' AVENUE DE LA DIVISION LECLERC ', '  ', 92160, ' ANTONY ', ' 1 40 96 87 03 ', ' 33367470470 ', ' 33367470767 ', ' cote.fermetures@orange.fr ', ' cote.fermetures@orange.fr ', ' philippe.delacourt@bubendorff.com ', 106, 1, 30304, 0),
(341, ' SOMIR ARES ', '  51 ', '  ', ' AVENUE DE LA LIBERATION ', '  ', 33740, ' ARES ', ' 5 56 60 39 56 ', ' 33367470471 ', ' 33367470768 ', ' ares.miroiterie@wanadoo.fr ', ' ares.miroiterie@wanadoo.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 411025, 0),
(342, ' FENETRE SUR LES ALPILLES ', '  89 ', '  ', ' AVENUE DE STALINGRAD ', '  ', 13200, ' ARLES ', ' 4 90 97 75 60 ', ' 33367470480 ', ' 33367470769 ', ' contact@fenetrealpilles.fr ', ' contact@fenetrealpilles.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 60183, 0),
(343, ' A.V.I. ', '  8 ', '  ', ' GRANDE RUE ', '  ', 95270, ' ASNIERES SUR OISE ', ' 1 41 72 06 20 ', ' 33367470516 ', ' 33367470770 ', ' philippe@avi.fr ', ' yvan@avi.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 10663, 0),
(344, ' IRIS / ASNIERES ', '  49 ', '  ', ' AVENUE D ARGENTEUIL ', '  ', 92600, ' ASNIERES SUR SEINE ', ' 1 41 11 99 38 ', ' 33367470520 ', ' 33367470771 ', ' contact.client@iris-fenetres.com ', ' Contact.client@iris-fenetres.com ', ' philippe.delacourt@bubendorff.com ', 106, 1, 90066, 0),
(345, ' MIROITERIE VIVARAISE ', '  23 ', '  ', ' CHEMIN DE HAUT RIPOTIER ', ' ZI RIPOTIER ', 7200, ' AUBENAS ', ' 4 75 35 06 31 ', ' 33367470523 ', ' 33367470772 ', ' mv07@orange.fr ', ' mv07@orange.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 240048, 0),
(346, ' BOISSON ', '  14 ', '  ', ' RUE JACQUELINE AURIOL ', '  ', 63170, ' AUBIERE ', ' 4 73 28 63 50 ', ' 33367470524 ', ' 33367470773 ', ' n.pradier@boissonstore.fr ', ' d.goutaland@boissonstores.fr ', ' aurelie.markowicz@bubendorff.com ', 204, 1, 22474, 0),
(347, ' CUNHA & CASTERA ', '  - ', '  ', ' RUE CLAUDE MONET ', ' ZI ENGACHIES ', 32000, ' AUCH ', ' 5 62 61 83 39 ', ' 33367470525 ', ' 33367470774 ', ' cunha.castera@wanadoo.fr ', ' cunha.castera@wanadoo.fr ', ' michel.gaillet@bubendorff.com ', 902, 1, 30286, 0),
(348, ' GAUTHIER ', '  27 ', '  ', ' RUE DU PONT ', '  ', 89000, ' AUXERRE ', ' 03 86 48 99 46 ', ' 33367470526 ', ' 33367470775 ', '  ', '  ', '  ', 0, 1, 413101, 0),
(349, ' MAINE MENUISERIES ', '  14 ', '  ', ' ROUTE DE LAVAL ', '  ', 53200, ' AZE ', ' 2 43 70 67 61 ', ' 33367470529 ', ' 33367470776 ', ' ob.mainemenuiseries@gmail.com ', ' ob.mainemenuiseries@gmail.com ', ' thierry.touchard@bubendorff.com ', 305, 1, 130497, 0),
(350, ' PARIS EST SERVICES ', '  105 ', '  ', ' RUE SADI CARNOT ', '  ', 93170, ' BAGNOLET ', ' 1 43 63 16 17 ', ' 33367470531 ', ' 33367470777 ', ' paris-est.services@laposte.net ', ' rachidkebir@gmail.com ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 407122, 0),
(351, ' ALU CARMIGNANAIS ', '  - ', '  ', ' ROUTE D AVIGNON ', ' ZA DE L\'EUZE ', 30200, ' BAGNOLS SUR CEZE ', ' 4 66 89 14 68 ', ' 33367470532 ', ' 33367470778 ', ' alu.carmignanais@wanadoo.fr ', ' alu.carmignanais@wanadoo.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 10414, 0),
(352, ' DMF/BALAN ', '  582 ', '  ', ' ROUTE DE LYON ', '  ', 1360, ' BALAN ', ' 4 74 98 16 91 ', ' 33367470533 ', ' 33367470779 ', ' dmf-veranda@orange.fr ', ' dmf-veranda@orange.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 406743, 0),
(353, ' PSM-VERRE ET FERMETURES ', '  45 ', '  ', ' RUE LOUIS DESPREZ ', '  ', 10200, ' BAR SUR AUBE ', ' 3 25 57 23 78 ', ' 33367470534 ', ' 33367470780 ', ' nicolas.pecquet@verreetfermetures.fr ', ' nicolas.pecquet@verreetfermetures.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 409047, 0),
(354, ' BALLAT ', '  677 ', '  ', ' AVENUE DE RODEZ ', '  ', 12160, ' BARAQUEVILLE ', ' 5 65 69 01 98 ', ' 33367470535 ', ' 33367470781 ', ' ballat-sae@wanadoo.fr ', ' ballat-sae@wanadoo.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 20133, 0),
(355, ' FERMOTHERM ', '  78B ', '  ', ' RUE PIERRE CURIE ', '  ', 62217, ' BEAURAINS ', ' 3 21 71 27 72 ', ' 33367470536 ', ' 33367470782 ', ' fermotherm.becart@libertysurf.fr ', ' fermotherm.becart@libertysurf.fr ', ' cedric.carlier@bubendorff.com ', 105, 1, 60298, 0),
(356, ' B\'MIX TECHNOSTOR ', '  184 ', '  ', ' AVENUE DU MARECHAL LECLERC ', '  ', 33130, ' BEGLES ', ' 5 56 86 96 03 ', ' 33367470537 ', ' 33367470783 ', ' contact@bmix.fr ', ' s.boucherie@bmix.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 20441, 0),
(357, ' ADDENET ET LAMORLETTE ', '  - ', '  ', ' ZONE WAMEAU ', '  ', 55430, ' BELLEVILLE SUR MEUSE ', ' 3 29 84 76 76 ', ' 33367470538 ', ' 33367470784 ', ' frederic-del@addenet-lamorlette.fr ', ' frederic-del@addenet-lamorlette.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 407656, 0),
(358, ' MENUISOL ', '  - ', '  ', ' CORON ', ' ZI ', 1300, ' BELLEY ', ' 4 79 42 04 66 ', ' 33367470539 ', ' 33367470785 ', ' menuisol01300@gmail.com ', ' menuisol01300@gmail.com ', ' christophe.beau@bubendorff.com ', 201, 1, 130446, 0),
(359, ' ELBY ', '  28 ', '  ', ' AVENUE JEAN JAURES ', '  ', 78390, ' BOIS D ARCY ', ' 1 30 45 52 51 ', ' 33367470540 ', ' 33367470786 ', ' contact@habitatrenov-ouvertures.fr ', ' contact@habitatrenov-ouvertures.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 50047, 0),
(360, ' LA FERMETURE PARISIENNE ', '  9 ', ' ZAC DE LA CROIX BONNET ', ' RUE RENE CLAIR ', '  ', 78390, ' BOIS D ARCY ', ' 1 30 80 51 05 ', ' 33367470541 ', ' 33367470787 ', ' s.sallaz@lestoreparisien.fr ', ' s.sallaz@lestoreparisien.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 160388, 0),
(361, ' B.D.S. ', '  - ', '  ', ' RUE AMBROISE PARE ', '  ', 59280, ' BOIS GRENIER ', ' 3 20 17 08 40 ', ' 33367470542 ', ' 33367470788 ', ' bdsverandas@wanadoo.fr ', ' bdsverandas@wanadoo.fr ', ' cedric.carlier@bubendorff.com ', 105, 1, 20011, 0);
INSERT INTO `reparateur_qualifie` (`reparateur_qualifie_id`, `reparateur_qualifie_nom`, `reparateur_qualifie_num_adresse`, `reparateur_qualifie_adresse_complement`, `reparateur_qualifie_rue`, `reparateur_qualifie_localite`, `reparateur_qualifie_code_postal`, `reparateur_qualifie_ville`, `reparateur_qualifie_tel`, `reparateur_qualifie_tel_mini_site`, `reparateur_qualifie_tel_page_jaune`, `reparateur_qualifie_mail_sav`, `reparateur_qualifie_mail_resp`, `reparateur_qualifie_mail_com_bvr`, `reparateur_qualifie_code_sect`, `reparateur_qualifie_client_fk`, `reparateur_qualifie_numero`, `reparateur_qualifie_is_rep_q`) VALUES
(362, ' TAVENAUX FERMETURES ', '  100BIS ', '  ', ' AVENUE CHARLES DE GAULLE ', '  ', 77169, ' BOISSY LE CHATEL ', ' 1 64 20 12 12 ', ' 33367470543 ', ' 33367470789 ', ' tavenauxfermetures@orange.fr ', ' tavenauxfermetures@orange.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 411133, 0),
(363, ' VIGREUX ', '  64 ', '  ', ' AVENUE LOUIS DEBRAY ', ' ZA DE BACLAIR ', 76210, ' BOLBEC ', ' 2 32 84 03 03 ', ' 33367470544 ', ' 33367470790 ', ' fabrice.vigreux@vigreux.net ', ' fabrice.vigreux@vigreux.net ', ' frederic.bouchet@bubendorff.com ', 301, 1, 240106, 0),
(364, ' MENUISERIE ALUMINIUM PVC ', '  - ', '  ', ' AVENUE JEAN MOULIN ', '  ', 84500, ' BOLLENE ', ' 4 90 40 14 85 ', ' 33367470545 ', ' 33367470791 ', ' map.bollene@orange.fr ', ' map.bollene@orange.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 130385, 0),
(365, ' ETS MAYGNAN FERMETURES        MR MAYGNAN CHRISTIAN ', '   ', ' PARC D\'ACTIVITE DE LA GARE LOT 5 BIS ', ' RUE LOUISE MICHEL ', '  ', 95570, ' BOUFFEMONT ', ' 1 34 39 08 08 ', ' 33367470546 ', ' 33367470792 ', ' accueil@maygnan-fermetures.com ', ' accueil@maygnan-fermetures.com ', ' fabien.balny@bubendorff.com ', 104, 1, 130493, 0),
(366, ' FENETRES ETOILES ', '  49 ', '  ', ' RUE DU DOME ', '  ', 92100, ' BOULOGNE BILLANCOURT ', ' 01 46 89 15 84 ', ' 33367470547 ', ' 33367470793 ', '  ', '  ', '  ', 0, 1, 407534, 0),
(367, ' DUMAS ET LOZES SARL ', '  16 ', '  ', ' LA LUSTRE ', '  ', 33710, ' BOURG SUR GIRONDE ', ' 5 57 68 46 63 ', ' 33367470548 ', ' 33367470794 ', ' dumas.lozes@orange.fr ', ' dumas.lozes@orange.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 411429, 0),
(368, ' DMF/BOURGOIN ', '  57 ', '  ', ' RUE DE LA REPUBLIQUE ', '  ', 38300, ' BOURGOIN JALLIEU ', ' 4 74 93 62 04 ', ' 33367470549 ', ' 33367470795 ', ' dmf-bourgoin@orange.fr ', ' dmf-bourgoin@orange.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 405579, 0),
(369, ' 2 PL ', '  9 ', '  ', ' RUE CHARLES JOURDE ', '  ', 29200, ' BREST ', ' 2 98 41 71 09 ', ' 33367470550 ', ' 33367470796 ', ' info@2pl.bzh ', ' Patrice.leblevenec@omni-metal.bzh ', ' kevin.bouedec@bubendorff.com ', 306, 1, 405775, 0),
(370, ' LEFER DENIS ', '   ', ' ZA LE LONG BOSC ', ' ROUTE DE PORTBAIL ', '  ', 50260, ' BRICQUEBEC ', ' 2 33 10 07 90 ', ' 33367470551 ', ' 33367470797 ', ' info@menuiserie-lefer.fr ', ' info@menuiserie-lefer.fr ', ' thierry.touchard@bubendorff.com ', 305, 1, 120975, 0),
(371, ' CIZERON ', '  - ', '  ', ' LIEU DIT LA CROIX SAINT PAUL ', '  ', 42720, ' BRIENNON ', ' 4 77 60 80 29 ', ' 33367470552 ', ' 33367470798 ', ' Info@cizeron.com ', ' thierry-cizeron@cizeron.com ', ' nathalie.tixier@bubendorff.com ', 203, 1, 31474, 0),
(372, ' MAISON VEYRET ', '  250 ', '  ', ' RUE DU GENERAL DE GAULLE ', '  ', 69530, ' BRIGNAIS ', ' 4 78 73 27 11 ', ' 33367470553 ', ' 33367470799 ', ' jytempion@maison-veyret.com ', ' cv@maison-veyret.com ', ' nathalie.tixier@bubendorff.com ', 203, 1, 240109, 0),
(373, ' WILCO BUCHELAY ', '  1 ', '  ', ' RUE DU TARN ', '  ', 78200, ' BUCHELAY ', ' 1 39 65 84 84 ', ' 33367470554 ', ' 33367470800 ', '  ', ' jcwhite@wilco.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 414159, 0),
(374, ' G P A L ', '  201 ', '  ', ' RUE DE FALAISE ', '  ', 14000, ' CAEN ', ' 2 31 52 49 58 ', ' 33367470555 ', ' 33367470801 ', ' Info@gpal.fr ', ' Info@gpal.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 70008, 0),
(375, ' PASCAL VOLET ROULANT ', '  76 ', '  ', ' RUE DU VAUGUEUX ', '  ', 14000, ' CAEN ', ' 2 31 72 26 97 ', ' 33367470556 ', ' 33367470802 ', ' pascal.volet.roulant@orange.fr ', ' pascal.volet.roulant@orange.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 160503, 0),
(376, ' F.ABM ', '  144 ', '  ', ' LIEU DIT LAMOTHE ', '  ', 33880, ' CAMBES ', ' 5 57 34 50 08 ', ' 33367470557 ', ' 33367470803 ', ' info@f-abm.fr ', ' t.fabard@orange.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 60184, 0),
(377, ' ALU HABITAT 66 ', '   ', '  ', ' LIEU DIT LA COBA ', '  ', 66680, ' CANHOES ', ' 04 68 21 70 86 ', ' 33367470558 ', ' 33367470804 ', '  ', '  ', '  ', 0, 1, 409103, 0),
(378, ' BATI FENETRES ', '  20 ', '  ', ' ROUTE DE SAINT COME ', '  ', 50500, ' CARENTAN LES MARAIS ', ' 2 33 42 23 82 ', ' 33367470559 ', ' 33367470805 ', ' bati-fenetres@wanadoo.fr ', ' bati-fenetres@wanadoo.fr ', ' thierry.touchard@bubendorff.com ', 305, 1, 20550, 0),
(379, ' SARL ALTOMARE ALTALU ', '   ', ' ZAC DE LA PORTE DE CAREMBAULT ', ' ROUTE DE MEURCHIN ', '  ', 62220, ' CARVIN ', ' 3 21 37 18 64 ', ' 33367470560 ', ' 33367470806 ', ' ab@altomare.fr ', ' jm@altomare.fr ', ' cedric.carlier@bubendorff.com ', 105, 1, 10549, 0),
(380, ' ARMOR PVC ', '  617 ', ' ZI LANN SEVELIN ', ' RUE JEAN BAPTISTE MARTENOT ', '  ', 56850, ' CAUDAN ', ' 2 97 76 24 85 ', ' 33367470561 ', ' 33367470807 ', ' armor.pvc@wanadoo.fr ', ' armor.pvc@wanadoo.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 10188, 0),
(381, ' L.I.M MENUISERIES ', '  16 ', '  ', ' RUE DU CLOS GERMAIN ', '  ', 60290, ' CAUFFRY ', ' 3 44 31 59 25 ', ' 33367470562 ', ' 33367470808 ', ' lim.menuiseries60290@gmail.com ', ' lim.menuiseries60290@gmail.com ', ' fabien.balny@bubendorff.com ', 104, 1, 120103, 0),
(382, ' ALU D\'OC ', '   ', '  ', ' CHEMIN DU MOULIN ', '  ', 34420, ' CERS ', ' 04 67 39 88 51 ', ' 33367470563 ', ' 33367470809 ', '  ', '  ', '  ', 0, 1, 401696, 0),
(383, ' GILMAR ', '  5 ', '  ', ' RUE DES SABLONS ', ' ZAC DE L\'ARTOUILLAT ', 41120, ' CHAILLES ', ' 2 54 56 06 89 ', ' 33367470564 ', ' 33367470810 ', ' contact@gilmar41.com ', ' contact@gilmar41.com ', ' antonio.goncalves@bubendorff.com ', 304, 1, 70001, 0),
(384, ' SN SERRUR.CHALLANDAISE ', '  - ', '  ', ' PARC D ACTIVITE DE LA BLOIRE ', ' ROUTE DE LA ROCHE ', 85300, ' CHALLANS ', ' 2 51 93 16 68 ', ' 33367470565 ', ' 33367470811 ', ' atessier@serrureriechallandaise.com ', ' contact@serrureriechallandaise.com ', ' cyril.menon@bubendorff.com ', 904, 1, 190985, 0),
(385, ' MENUISERIE 2000 ', '  1371 ', '  ', ' RUE DES PLATANES ', '  ', 16430, ' CHAMPNIERS ', ' 5 45 39 62 48 ', ' 33367470566 ', ' 33367470812 ', ' menuiserie2000@orange.fr ', ' menuiserie2000@orange.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 406778, 0),
(386, ' ALU BERTRON ', '  15 ', '  ', ' RUE DU VILLAGE DE LA METAIRIE ', '  ', 35131, ' CHARTRES DE BRETAGNE ', ' 2 99 96 42 29 ', ' 33367470567 ', ' 33367470813 ', ' drubin@alubertron.fr ', ' drubin@alubertron.fr ', ' kevin.bouedec@bubendorff.com ', 306, 1, 405796, 0),
(387, ' OMOIS ISOLATION CONFORT ', '  - ', '  ', ' ZI DE L\'OMOIS ', '  ', 2406, ' CHATEAU THIERRY CEDEX ', ' 3 23 69 49 39 ', ' 33367470568 ', ' 33367470814 ', ' f.leroy@omoisisolationconfort.fr ', ' f.leroy@omoisisolationconfort.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 150015, 0),
(388, ' MENUISERIE ROCHEGUE ', '  20 ', '  ', ' RUE DES AIRS ', '  ', 26330, ' CHATEAUNEUF DE GALAURE ', ' 04 75 68 62 70 ', ' 33367470569 ', ' 33367470815 ', '  ', '  ', '  ', 0, 1, 180095, 0),
(389, ' FRANCE FENETRES ', '  47 ', '  ', ' AVENUE DE VERDUN ', '  ', 92320, ' CHATILLON ', ' 1 55 58 16 06 ', ' 33367470570 ', ' 33367470816 ', ' gaelle.cadoret-bertin@france-fenetres.fr ', ' remy.poncton@france-fenetres.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 408158, 0),
(390, ' FRANCE FENETRES ', '  43923 ', '  ', ' AVENUE DU MARECHAL FOCH ', '  ', 78400, ' CHATOU ', ' 1 30 78 00 66 ', ' 33367470571 ', ' 33367470817 ', ' gaelle.cadoret-bertin@france-fenetres.fr ', ' remy.poncton@france-fenetres.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 410585, 0),
(391, ' WILCO CHATOU ', '  101 ', '  ', ' AVENUE DU MARECHAL FOCH ', '  ', 78400, ' CHATOU ', ' 1 39 65 84 84 ', ' 33367470572 ', ' 33367470818 ', ' jcwhite@wilco.fr ', ' jcwhite@wilco.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 414160, 0),
(392, ' LES FERMETURES DU BRIONNAIS ', '  19 ', '  ', ' RUE DU 11 NOVEMBRE ', '  ', 71170, ' CHAUFFAILLES ', ' 3 85 25 94 69 ', ' 33367470573 ', ' 33367470819 ', ' Fermeturesbrionnais@free.fr ', ' lfb-contact@orange.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 407754, 0),
(393, ' MERIEAU ', '  43954 ', '  ', ' RUE XAVIER BLANCHARD ', ' CHEMERE ', 44680, ' CHAUMES EN RETZ ', ' 2 40 21 30 20 ', ' 33367470574 ', ' 33367470820 ', ' pierrick.lairys@merieau.eu ', ' pierrick.lairys@merieau.eu ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 130694, 0),
(394, ' ATAM ', '  11 ', '  ', ' ROUTE DE NEUILLY ', '  ', 52000, ' CHAUMONT ', ' 3 25 01 39 36 ', ' 33367470575 ', ' 33367470821 ', ' atam-veranco@orange.fr ', ' atam-veranco@wanadoo.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 10315, 0),
(395, ' SARENO ', '  10 ', '  ', ' AVENUE ANATOLE MANCEAU ', '  ', 49300, ' CHOLET ', ' 2 53 69 10 05 ', ' 33367470576 ', ' 33367470822 ', ' sareno@sfr.fr ', ' sareno@sfr.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 408115, 0),
(396, ' ALP\'HABITAT ', '  - ', '  ', ' LE PRE DE LA GARE ', '  ', 5230, ' CHORGES ', ' 4 92 50 26 43 ', ' 33367470577 ', ' 33367470823 ', ' alphabitat@orange.fr ', ' alphabitat@orange.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 10582, 0),
(397, ' ALU MEDOC ', '  6 ', ' ZA BEAUCHENE ', ' CHEMIN DE BEAUCHENE ', '  ', 33250, ' CISSAC MEDOC ', ' 6 70 82 66 98 ', ' 33367470578 ', ' 33367470824 ', ' alumedoc@orange.fr ', ' alumedoc@orange.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 10498, 0),
(398, ' ALU CATALAN ', '  - ', ' ESPACE ROUSSILLON EST ', ' ROUTE DU BARCARES ', '  ', 66530, ' CLAIRA ', ' 4 68 64 68 38 ', ' 33367470579 ', ' 33367470825 ', ' banulsc@alucatalan.fr ', ' banulsc@alucatalan.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 10074, 0),
(399, ' ARTISTORE ', '  183 ', '  ', ' RUE DE LA PORTE DE TRIVAUX ', '  ', 92140, ' CLAMART ', ' 1 46 30 87 64 ', ' 33367470580 ', ' 33367470826 ', ' artistore@orange.fr ', ' artistore@orange.fr ', ' philippe.delacourt@bubendorff.com ', 106, 1, 10285, 0),
(400, ' LE RABOT DES BOIS ', '  40 ', ' STE LE RABOT DES BOIS ', ' RUE NATIONALE ', '  ', 28220, ' CLOYES SUR LE LOIR ', ' 2 37 98 30 33 ', ' 33367470581 ', ' 33367470827 ', ' lerabotdesbois@orange.fr ', ' lerabotdesbois@orange.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 408922, 0),
(401, ' MENUILAND ', '  - ', '  ', ' ROUTE DE VIRE ', ' CONDE SUR NOIREAU ', 14110, ' CONDE EN NORMANDIE ', ' 2 31 69 88 40 ', ' 33367470582 ', ' 33367470828 ', '  ', ' philippe.rouf@menuiland.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 130043, 0),
(402, ' ART & FENETRES ', '  9 ', '  ', ' RUE DES COMPAGNONS ', '  ', 51350, ' CORMONTREUIL ', ' 3 26 78 00 00 ', ' 33367470583 ', ' 33367470829 ', ' julien.renault@aefreims.com ', ' julien.renault@aefreims.com ', ' fabien.balny@bubendorff.com ', 104, 1, 10275, 0),
(403, ' ROLLANDE GUY ', '  13 ', '  ', ' BOULEVARD FRANCOIS BLANCHO ', '  ', 44220, ' COUERON ', ' 2 40 86 23 27 ', ' 33367470584 ', ' 33367470830 ', ' contact@menuiserie-Guy-rollande.com ', ' contact@menuiserie-guy-rollande.com ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 181074, 0),
(404, ' A.F.D. ', '  20 ', '  ', ' RUE DE LA REGALE ', '  ', 77181, ' COURTRY ', ' 1 64 21 58 19 ', ' 33367470585 ', ' 33367470831 ', ' developpement@afd-verandas.com ', ' franckluquet@afd-verandas.com ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 10446, 0),
(405, ' ESPACE ET OUVERTURE ', '  101 ', '  ', ' AVENUE DIVISION LECLERC ', '  ', 50200, ' COUTANCES ', ' 6 74 10 60 94 ', ' 33367470586 ', ' 33367470832 ', ' espaceetouverture@gmail.com ', ' espaceetouverture@gmail.com ', ' thierry.touchard@bubendorff.com ', 305, 1, 408893, 0),
(406, ' DNS FENETRES ', '  - ', '  ', ' ZONE D ACTIVITE DU PRE ROND ', ' CUSE ET ADRISANS ', 25680, ' CUSE ET ADRISANS ', ' 3 81 62 55 37 ', ' 33367470587 ', ' 33367470833 ', ' dns-fenetres@orange.fr ', ' dns-fenetres@orange.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 406062, 0),
(407, ' MENUISERIE COMBE/07 ', '   ', '  ', ' RUE DE LA REPUBLIQUE ', '  ', 7430, ' DAVEZIEUX ', ' 4 75 31 00 67 ', ' 33367470588 ', ' 33367470834 ', ' info@menuiserie-combe.fr ', ' info@menuiserie-combe.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 405604, 0),
(408, ' FERMETURES MUST SARL CD DIFFUSION ', '   ', '  ', ' RUE ARTHUR BRUNET ', '  ', 59220, ' DENAIN ', ' 3 27 44 26 18 ', ' 33367470589 ', ' 33367470835 ', ' d.cumenal@fermetures-must.fr ', ' d.cumenal@fermetures-must.fr ', ' cedric.carlier@bubendorff.com ', 105, 1, 30256, 0),
(409, ' MENUISERIE DESGRANGES ', '   ', '  ', ' ZONE ARTISANALE DE GRAVERON ', '  ', 26220, ' DIEULEFIT ', ' 4 75 46 42 61 ', ' 33367470590 ', ' 33367470836 ', ' menuiserie.desgranges@wanadoo.fr ', ' menuiserie.desgranges@wanadoo.fr ', ' david.sacilotto@bubendorff.com ', 205, 1, 40585, 0),
(410, ' GUILLERME ', '  9 ', '  ', ' RUE MARCEL SEMBAT ', '  ', 21000, ' DIJON ', ' 3 80 52 56 59 ', ' 33367470591 ', ' 33367470837 ', ' commercial1.guillerme@orange.fr ', ' ruinet.guillerme@orange.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 71020, 0),
(411, ' OXYGEN FERMETURES ', '  181 ', '  ', ' RUE DU GENERAL DE GAULLE ', '  ', 67190, ' DINSHEIM SUR BRUCHE ', ' 3 88 04 45 95 ', ' 33367470592 ', ' 33367470838 ', ' contact@oxygenfermetures.fr ', ' contact@oxygenfermetures.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 400263, 0),
(412, ' REY ALU ', '  16 ', '  ', ' AVENUE DOM ROMAIN BANQUET ', '  ', 81110, ' DOURGNE ', ' 5 63 73 30 20 ', ' 33367470593 ', ' 33367470839 ', ' etsrey@orange.fr ', ' etsrey@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 180161, 0),
(413, ' AC FERMETURES ', '  92 ', '  ', ' BLD DE LA REPUBLIQUE ', '  ', 38190, ' FROGES ', ' 4 76 23 96 30 ', ' 33367470594 ', ' 33367470840 ', ' j.coniglio@ac-fermetures.com ', ' j.coniglio@ac-fermetures.com ', ' christophe.beau@bubendorff.com ', 201, 1, 10346, 0),
(414, ' FB CONCEPT ', '   ', ' ZA DES 4 ARBRES ', ' RUE DE LA HAIE A SOREL ', '  ', 78990, ' ELANCOURT ', ' 1 30 69 01 01 ', ' 33367470595 ', ' 33367470841 ', ' info@fbconcept.fr ', ' info@fbconcept.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 60190, 0),
(415, ' VASSEUR FERMETURES ', '  135B ', '  ', ' AVENUE DE TOULOUSE ', ' ZA BOGUE  ', 31750, ' ESCALQUENS ', ' 5 62 18 44 47 ', ' 33367470596 ', ' 33367470842 ', ' agence-escalquens@vasseur-fermetures.com ', ' agence-escalquens@vasseur-fermetures.com ', ' arnaud.certain@bubendorff.com ', 901, 1, 408978, 0),
(416, ' ART FERMETURES ', '  - ', ' ZA ', ' CROIX DE PIERRE ', '  ', 25580, ' ETALANS ', ' 3 81 53 17 42 ', ' 33367470597 ', ' 33367470843 ', ' olivier25.simon@gmail.com ', ' olivier25.simon@gmail.com ', ' laurent.ducret@bubendorff.com ', 102, 1, 400841, 0),
(417, ' CONCEPT ALUMINIUM ', '  44081 ', '  ', ' RUE DU PETIT SAINT MARS ', '  ', 91150, ' ETAMPES ', ' 1 69 26 91 50 ', ' 33367470598 ', ' 33367470844 ', ' conceptaluminium@wanadoo.fr ', ' J.bost@conceptaluminium.fr ', ' philippe.delacourt@bubendorff.com ', 106, 1, 30475, 0),
(418, ' GOURDON JACQUES ', '  4835 ', '  ', ' ROUTE NATIONALE 7 ', ' ZA LA PAILLASSE ', 26800, ' ETOILE SUR RHONE ', ' 4 75 60 70 75 ', ' 33367470599 ', ' 33367470845 ', ' gourdon.alu@wanadoo.fr ', ' gourdon.alu@wanadoo.fr ', ' david.sacilotto@bubendorff.com ', 205, 1, 70375, 0),
(419, ' D&D AQUITALU SARL ', '   ', '  ', ' AVENUE DE MAGUDAS ', '  ', 33320, ' EYSINES ', ' 5 56 34 40 92 ', ' 33367470600 ', ' 33367470846 ', ' j.sorel@aquitalu.fr ', ' s.duriez@aquitalu.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 406293, 0),
(420, ' BORIES DANIEL ', '  224 ', '  ', ' RUE DES CREISSES ', ' PARC D\'ACTIV.DES 3 PONTS ', 34690, ' FABREGUES ', ' 4 67 85 31 31 ', ' 33367470601 ', ' 33367470847 ', ' n.lovergne@danielbories.com ', ' info@danielbories.com ', ' alexis.morgante@bubendorff.com ', 905, 1, 20789, 0),
(421, ' ACECAM ', '  - ', '  ', ' ZAE DE FAREINS ', '  ', 1480, ' FAREINS ', ' 4 74 60 87 49 ', ' 33367470602 ', ' 33367470848 ', ' fgoncalves@acecam.fr ', ' ccr@acecam.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 10856, 0),
(422, ' DULIN ISOLATION ', '  39 ', '  ', ' BOULEVARD DU GENERAL LECLERC ', '  ', 77300, ' FONTAINEBLEAU ', ' 1 64 22 06 37 ', ' 33367470603 ', ' 33367470849 ', ' fenetres.dulin@orange.fr ', ' fenetres.dulin@orange.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 40708, 0),
(423, ' ACMB II ', '  8  ', '  ', ' SQUARE LEONARD DE VINCI ', '  ', 77610, ' FONTENAY TRESIGNY ', ' 6 09 22 15 20 ', ' 33367470604 ', ' 33367470850 ', ' acmb2@free.fr ', ' acmb2@free.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 405721, 0),
(424, ' FRANCE FENETRES ', '  61 ', '  ', ' CHAUSSEE JULES CESAR ', '  ', 95130, ' FRANCONVILLE LA GARENNE ', ' 1 30 72 02 58 ', ' 33367470605 ', ' 33367470851 ', ' gaelle.cadoret-bertin@france-fenetres.fr ', ' remy.poncton@france-fenetres.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 408157, 0),
(425, ' PROVENCE ALUMINIUM ', '  61 ', ' ZAC DE LA PALUD ', ' RUE ALBERT EINSTEIN ', '  ', 83600, ' FREJUS ', ' 4 94 81 43 05 ', ' 33367470606 ', ' 33367470852 ', ' provencealu@orange.fr ', ' provencealu@orange.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 400720, 0),
(426, ' ATELIERS HALIMI ', '  9 ', '  ', ' RUE DE CHEVILLY ', ' ZA LA CERISAIE NORD ', 94260, ' FRESNES ', ' 1 46 66 70 10 ', ' 33367470607 ', ' 33367470853 ', ' m.heubert@ateliers-Halimi.fr ', ' contact@ateliers-Halimi.fr ', ' philippe.delacourt@bubendorff.com ', 106, 1, 70722, 0),
(427, ' SAS GABARRE JEAN MARC ', '   ', '  ', ' ROUTE DE PERIGUEUX ', '  ', 47500, ' FUMEL ', ' 5 53 40 92 31 ', ' 33367470608 ', ' 33367470854 ', ' d.gabarre@wanadoo.fr ', ' d.gabarre@wanadoo.fr ', ' michel.gaillet@bubendorff.com ', 902, 1, 407012, 0),
(428, ' ALU TARN ', '  2 ', '  ', ' RUE DE BEZELLES ', ' ZAC DE ROUMAGNAC ', 81600, ' GAILLAC ', ' 5 63 57 96 46 ', ' 33367470609 ', ' 33367470855 ', ' alutarn.gisele@orange.fr ', ' alutarn@wanadoo.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 10450, 0),
(429, ' FENETRES CONSULTING ', '  21 ', '  ', ' AVENUE JOFFRE ', '  ', 92380, ' GARCHES ', ' 1 47 01 25 89 ', ' 33367470610 ', ' 33367470856 ', ' anthony.goube@me.com ', ' anthony.goube@me.com ', ' philippe.delacourt@bubendorff.com ', 106, 1, 60158, 0),
(430, ' HARMONIE DE L\'HABITAT ', '  1 ', '  ', ' ZONE D ACTIVITE BOMPERTUIS ', '  ', 13120, ' GARDANNE ', ' 4 42 65 91 30 ', ' 33367470611 ', ' 33367470857 ', ' clement.long@harmonie-habitat.fr ', ' contact@harmonie-habitat.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 200087, 0),
(431, ' SOCOREVE ', '  535 ', '  ', ' ROUTE DE LONGEAULT ', '  ', 21110, ' GENLIS ', ' 3 80 47 97 00 ', ' 33367470612 ', ' 33367470858 ', ' patrice.marion@socoreve.fr ', ' socoreve@wanadoo.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 210021, 0),
(432, ' KIRCHE ', '   ', '  ', ' ZONE ARTISANALE LAFOURCADE ', '  ', 32200, ' GIMONT ', ' 5 62 65 52 07 ', ' 33367470613 ', ' 33367470859 ', ' ets.kirche@wanadoo.fr ', ' ets.kirche@wanadoo.fr ', ' michel.gaillet@bubendorff.com ', 902, 1, 406283, 0),
(433, ' STORES FERMETURES ', '  54BIS ', '  ', ' RUE DU GENERAL LECLERC ', ' B.P. 111 ', 88190, ' GOLBEY ', ' 3 29 34 01 02 ', ' 33367470614 ', ' 33367470860 ', ' contact@stores-fermetures.fr ', ' contact@stores-fermetures.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 200666, 0),
(434, ' FERMHABITAT ', '   ', ' ROUTE DE MANTES ', ' ROUTE NATIONALE 190 ', '  ', 78440, ' GUITRANCOURT ', ' 1 30 92 48 26 ', ' 33367470615 ', ' 33367470861 ', ' contact@fermhabitat.fr ', ' contact@fermhabitat.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 407006, 0),
(435, ' ALUMATIC ', '  26 ', '  ', ' 10 RUE ST EXUPERY ', '  ', 44115, ' HAUTE GOULAINE ', ' 2 28 21 10 10 ', ' 33367470616 ', ' 33367470862 ', ' alumatic@orange.fr ', ' alumatic@orange.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 10207, 0),
(436, ' ENERGIE STORES ', '  2 ', '  ', ' ALLEE DES TILLEULS ', '  ', 54180, ' HEILLECOURT ', ' 3 83 96 54 66 ', ' 33367470617 ', ' 33367470863 ', ' fabien.aubert@energie-stores.fr ', ' fabien.aubert@energie-stores.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 400620, 0),
(437, ' FRANCE FENETRES ', '  65 ', '  ', ' BOULEVARD HENRI BARBUSSE ', '  ', 78800, ' HOUILLES ', ' 1 30 40 35 38 ', ' 33367470618 ', ' 33367470864 ', ' gaelle.cadoret-bertin@france-fenetres.fr ', ' remy.poncton@france-fenetres.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 61050, 0),
(438, ' M.A.P ', '  14 ', '  ', ' RUE JEAN AICARD ', '  ', 83400, ' HYERES ', ' 4 94 65 96 76 ', ' 33367470619 ', ' 33367470865 ', ' didier.map@wanadoo.fr ', ' didier.map@wanadoo.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 400765, 0),
(439, ' FALLIERO ALUMINIUM ', '  11 ', '  ', ' RUE DU TROUMOUSE ', ' ZAC DU PARC DES PYRENEES ', 65420, ' IBOS ', ' 5 62 33 91 11 ', ' 33367470620 ', ' 33367470866 ', ' julien.guerif@falliero.fr ', ' sa-falliero@falliero.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 60044, 0),
(440, ' LINEA POSE ILLZACH ', '  13 ', ' CARREFOUR DES TROIS FRONTIERES ', ' RUE DES 3 FRONTIERES ', '  ', 68110, ' ILLZACH ', ' 3 89 61 88 88 ', ' 33367470621 ', ' 33367470867 ', ' selestat@linea.fr ', ' philippe.roschitz@linea.fr ', ' christian.stamm@bubendorff.com ', 4, 1, 120126, 0),
(441, ' SCOP NOUVELLE MIROITERIE GBM ', '  - ', '  ', ' ZI LES COURRIERES ', '  ', 87170, ' ISLE ', ' 5 55 43 99 99 ', ' 33367470622 ', ' 33367470868 ', ' jf-bureau@miroiteriegbm.com ', ' jf-bureau@miroiteriegbm.com ', ' julien.desavoye@bubendorff.com ', 906, 1, 400835, 0),
(442, ' DE A  Z FERMETURES ', '  - ', ' P.T LA VAUR LA BECHADE ', ' RUE ALBERT DE DION ', '  ', 63500, ' ISSOIRE ', ' 4 73 89 36 84 ', ' 33367470623 ', ' 33367470869 ', ' a-z.fermetures@wanadoo.fr ', ' a-z.fermetures@wanadoo.fr ', ' aurelie.markowicz@bubendorff.com ', 204, 1, 400438, 0),
(443, ' MIROITERIE D\'ISTRES ', '  5 ', '  ', ' AVENUE DU TUBE ', '  ', 13800, ' ISTRES ', ' 4 42 55 04 94 ', ' 33367470624 ', ' 33367470870 ', ' miroiterieistres@wanadoo.fr ', ' miroiterieistres@wanadoo.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 130459, 0),
(444, ' A.P. DIFFUSION ', '  45 ', '  ', ' ROUTE DE BESSIERES ', '  ', 31240, ' L UNION ', ' 5 61 35 81 81 ', ' 33367470625 ', ' 33367470871 ', ' ap.diffusion@wanadoo.fr ', ' ap.diffusion@wanadoo.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 10312, 0),
(445, ' AURORE MENUISERIES ', '  41 ', '  ', ' RUE DU MOULIN AUX MOINES ', '  ', 72650, ' LA CHAPELLE ST AUBIN ', ' 2 43 85 42 42 ', ' 33367470626 ', ' 33367470872 ', ' auroremenuiseries@orange.fr ', ' auroremenuiseries@orange.fr ', ' thierry.touchard@bubendorff.com ', 305, 1, 10230, 0),
(446, ' GERBODIN ', '  52 BIS ', '  ', ' AVENUE DU GENERAL DE GAULLE ', '  ', 85120, ' LA CHATAIGNERAIE ', ' 2 51 87 91 13 ', ' 33367470627 ', ' 33367470873 ', ' gerbodin.sarl@gmail.com ', ' gerbodin.sarl@gmail.com ', ' cyril.menon@bubendorff.com ', 904, 1, 400516, 0),
(447, ' A.F.D. ', '  - ', ' ROUTE DE GUERET ', ' BELLE PLACE ', '  ', 36400, ' LA CHATRE ', ' 2 54 48 41 80 ', ' 33367470628 ', ' 33367470874 ', ' lachatre@afd-verandas.com ', ' lachatre@afd-verandas.com ', ' antonio.goncalves@bubendorff.com ', 304, 1, 10059, 0),
(448, ' MENUISERIE CALVO ', '  131 ', '  ', ' AVENUE DE LA PLAINE BRUNETTE ', '  ', 13600, ' LA CIOTAT ', ' 4 42 83 08 82 ', ' 33367470629 ', ' 33367470875 ', ' ycalvo@wanadoo.fr ', ' ycalvo@wanadoo.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 30191, 0),
(449, ' ALU BERTRON ', '  - ', '  ', ' ROUTE DE VITRE ', ' B.P. 06 ', 35130, ' LA GUERCHE DE BRETAGNE ', ' 2 99 96 42 29 ', ' 33367470630 ', ' 33367470876 ', ' drubin@alubertron.fr ', ' drubin@alubertron.fr ', ' kevin.bouedec@bubendorff.com ', 306, 1, 20645, 0),
(450, ' CONFORT PLUS ', '  18 ', '  ', ' AVENUE DU DOCTEUR ALFRED HENRY ', '  ', 83250, ' LA LONDE LES MAURES ', ' 4 94 27 26 80 ', ' 33367470631 ', ' 33367470877 ', ' ltricquet@confortplus83.com ', ' ltricquet@confortplus83.com ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 406751, 0),
(451, ' ACF ', '  9 ', '  ', ' IMPASSE AMPERE ', '  ', 85000, ' LA ROCHE SUR YON ', ' 2 51 40 38 88 ', ' 33367470632 ', ' 33367470878 ', ' contact@acf-artetfenetres.fr ', ' contact@acf-artetfenetres.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 10186, 0),
(452, ' ARAMYS FERMETURES ', '  36 ', '  ', ' AVENUE GEORGES CLEMENCEAU ', '  ', 77400, ' LAGNY SUR MARNE ', ' 1 60 07 98 16 ', ' 33367470633 ', ' 33367470879 ', ' aramysfermetures@yahoo.fr ', ' aramysfermetures@yahoo.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 407989, 0),
(453, ' 2 PL ', '  1 ', '  ', ' RUE CONVENANT LE SAUX ', '  ', 22300, ' LANNION ', ' 2 98 95 33 40 ', ' 33367470634 ', ' 33367470880 ', ' info@2pl.bzh ', ' Patrice.leblevenec@omni-metal.bzh ', ' kevin.bouedec@bubendorff.com ', 306, 1, 405776, 0),
(454, ' MAURIES MENUISERIES ', '   ', ' ZAC LES CAUQUILLOUS ', ' RUE LEONARD DE VINCI ', '  ', 81500, ' LAVAUR ', ' 5 63 83 08 94 ', ' 33367470635 ', ' 33367470881 ', ' artetfenetres@orange.fr ', ' artetfenetres@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 10325, 0),
(455, ' S.E.E. RIVAS ', '  155 ', '  ', ' RUE DES MEDARDS ', ' Z A  PORT DE PECHE ', 30240, ' LE GRAU DU ROI ', ' 4 66 51 75 64 ', ' 33367470636 ', ' 33367470882 ', ' contact@rivas-menuiserie.com ', ' contact@rivas-menuiserie.com ', ' franck.deharo@bubendorff.com ', 206, 1, 180659, 0),
(456, ' M\'CEHES ', '  1 ', '  ', ' SQUARE LOUIS BLERIOT ', ' ZA LA PETITE BOITIERE ', 49124, ' LE PLESSIS GRAMMOIRE ', ' 2 41 95 53 01 ', ' 33367470637 ', ' 33367470883 ', ' contact@mcehes.fr ', ' contact@mcehes.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 130233, 0),
(457, ' CHAPUIS MENUISERIE ', '  - ', '  ', ' CHEMIN DE FARNIER ', '  ', 43000, ' LE PUY EN VELAY ', ' 4 71 04 55 12 ', ' 33367470638 ', ' 33367470884 ', ' yannick.reymond@menuiseriechapuis.fr ', ' thierry.chapuis@menuiseriechapuis.fr ', ' aurelie.markowicz@bubendorff.com ', 204, 1, 30394, 0),
(458, ' LE VERRE ET L OUVERTURE SAS  ', '  23 ', '  ', ' RUE DE MILAN ', '  ', 63370, ' LEMPDES ', ' 4 73 61 72 22 ', ' 33367470639 ', ' 33367470885 ', ' leverreetlouverture@orange.fr ', ' leverreetlouverture@orange.fr ', ' aurelie.markowicz@bubendorff.com ', 204, 1, 407605, 0),
(459, ' HOME FERMETURES ', '  5 ', '  ', ' RUE DE L ORMETEAU ', '  ', 28300, ' LEVES ', ' 2 37 36 76 43 ', ' 33367470640 ', ' 33367470886 ', ' homefermetures@orange.fr ', ' homefermetures@orange.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 400302, 0),
(460, ' QUALI-RENOV ', '  190 ', '  ', ' ROUTE DE TOULOUSE ', '  ', 87000, ' LIMOGES ', ' 05 55 37 30 77 ', ' 33367470641 ', ' 33367470887 ', ' innovalu@orange.fr ', ' innovalu@orange.fr ', ' julien.desavoye@bubendorff.com ', 906, 1, 401150, 0),
(461, ' INNOV-ALU ', '  384 ', '  ', ' ROUTE DE TOULOUSE ', '  ', 87000, ' LIMOGES ', ' 05 55 31 15 14 ', ' 33367470642 ', ' 33367470888 ', ' contact@innovalu.fr ', ' contact@innovalu.fr ', ' julien.desavoye@bubendorff.com ', 906, 1, 90071, 0),
(462, ' DENIS GUILLOPE ', '  19 ', '  ', ' RUE DE LA RAVINE ', '  ', 27400, ' LOUVIERS ', ' 2 32 50 47 61 ', ' 33367470643 ', ' 33367470889 ', ' denis.guillope@wanadoo.fr ', ' denis.guillope@wanadoo.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 70196, 0),
(463, ' SARL STOREMA ', '  58 ', '  ', ' RUE GARIBALDI ', ' LYON 06 ', 69006, ' LYON ', ' 4 78 93 29 57 ', ' 33367470644 ', ' 33367470890 ', ' francoise@storema.fr ', ' francoise@storema.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 401684, 0),
(464, ' MILLET ', '  26 ', '  ', ' RUE DU PAVE DU ROY ', '  ', 77370, ' MAISON ROUGE ', ' 1 64 01 61 19 ', ' 33367470645 ', ' 33367470891 ', ' pascal.millet492@orange.fr ', ' pascal.millet492@orange.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 130873, 0),
(465, ' R.C. FERMETURE ', '  - ', '  ', ' ROUTE DE BEAUCAIRE ', '  ', 30129, ' MANDUEL ', ' 4 66 02 04 65 ', ' 33367470646 ', ' 33367470892 ', ' isabelle.rcfermetures@sfr.fr ', ' isabelle.rcfermeture@sfr.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 180122, 0),
(466, ' SAUNIER ', '  50 ', ' ESPACE LEMAN 1 ', ' ROUTE DU CRET GOJON ', '  ', 74200, ' MARGENCEL ', ' 4 50 70 32 17 ', ' 33367470647 ', ' 33367470893 ', ' saunier.thonon@gmail.com ', ' saunier.thonon@gmail.com ', ' christophe.beau@bubendorff.com ', 201, 1, 190037, 0),
(467, ' STE MARTEGALE D\'ALUMINIUM ', '  4 ', '  ', ' ALLEE DES BRUYERES ', ' ZAC CROIX SAINTE ', 13500, ' MARTIGUES ', ' 4 42 80 37 54 ', ' 33367470648 ', ' 33367470894 ', ' lionel.frizzas@wanadoo.fr ', ' lionel.frizzas@wanadoo.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 130020, 0),
(468, ' ACCES CREATION FERMETURES ', '  - ', '  ', ' AVENUE LAVOISIER ', '  ', 1600, ' MASSIEUX ', ' 4 78 98 37 80 ', ' 33367470649 ', ' 33367470895 ', ' l.eynac@accescreationfermetures.fr ', ' f.morel@accescreationfermetures.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 10435, 0),
(469, ' ATG ', '  9 ', '  ', ' AVENUE CHARLES SABATIE ', '  ', 81200, ' MAZAMET ', ' 5 63 98 30 31 ', ' 33367470650 ', ' 33367470896 ', ' jean-marie.mikailoff0976@orange.fr ', ' jean-marie.mikailoff0976@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 400698, 0),
(470, ' DULIN ISOLATION ', '  28 ', '  ', ' AVENUE THIERS ', '  ', 77000, ' MELUN ', ' 6 89 74 40 58 ', ' 33367470651 ', ' 33367470897 ', ' fenetres.dulin@orange.fr ', ' fenetres.dulin@orange.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 408837, 0),
(471, ' ETS CANAC MENUISERIES ', '  6 ', ' ZAE ROUTE DU CAUSSE D AUGE ', ' RUE DES TOURDRES ', '  ', 48000, ' MENDE ', ' 4 66 47 38 57 ', ' 33367470652 ', ' 33367470898 ', ' menuiseries@canacentreprises.fr ', ' menuiseries@canacentreprises.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 21645, 0),
(472, ' KISSENBERGER ', '  2 ', ' ZAC DU BREUIL ', ' RUE ROBERT SCHUMAN ', '  ', 54850, ' MESSEIN ', ' 3 83 47 70 03 ', ' 33367470653 ', ' 33367470899 ', ' kissenberger@wanadoo.fr ', ' kissenberger@wanadoo.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 110006, 0),
(473, ' D.M.F. ', '  6 ', ' MEYZIEU ', ' AVENUE DOCTEUR SCHWEITZER ', '  ', 69330, ' MEYZIEU ', ' 4 78 04 36 64 ', ' 33367470654 ', ' 33367470900 ', ' dmf-@wanadoo.fr ', ' dmf-langer@wanadoo.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 40106, 0),
(474, ' LOISIRS VERANDA ', '  46B ', '  ', ' AVENUE DE LA LOGE ', ' ZONE ARTISANALE ', 86440, ' MIGNE AUXANCES ', ' 5 49 51 67 87 ', ' 33367470655 ', ' 33367470901 ', ' info@loisirs-veranda.fr ', ' info@loisirs-veranda.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 120794, 0),
(475, ' GALIGNE FERMETURES/M2V ', '  4 ', ' ZONE ECONOMIQUE LOS PALAUS ', ' AVENUE HERMES ', '  ', 66170, ' MILLAS ', ' 4 68 57 24 14 ', ' 33367470656 ', ' 33367470902 ', ' lossois.galignefermetures@gmail.com ', ' galigne.fermeture@wanadoo.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 70270, 0),
(476, ' ALUCREATION ', '  635 ', '  ', ' AVENUE BLAISE PASCAL ', ' ANACONDA 3 ', 77550, ' MOISSY CRAMAYEL ', ' 1 60 60 55 86 ', ' 33367470657 ', ' 33367470903 ', ' alucreation77@orange.fr ', ' alucreation77@orange.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 10794, 0),
(477, ' LA NOUVELLE MIROITERIE LANDAISE ', '  1084 ', ' Z.I DU CONTE ', ' RUE DE LA FERME DU CARBOUE ', '  ', 40000, ' MONT DE MARSAN ', ' 5 33 94 00 60 ', ' 33367470658 ', ' 33367470904 ', ' fdantoni@nouvelle-miroiterie.fr ', ' fdantoni@nouvelle-miroiterie.fr ', ' michel.gaillet@bubendorff.com ', 902, 1, 411440, 0),
(478, ' MIROITERIE DE LA VOGE ', '  - ', '  ', ' ALLEE DE L AN 2000 ', '  ', 88300, ' MONT LES NEUFCHATEAU ', ' 3 29 94 31 36 ', ' 33367470659 ', ' 33367470905 ', ' miroiteriedelavoge@wanadoo.fr ', ' miroiteriedelavoge@wanadoo.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 240086, 0),
(479, ' RADENNE ', '   ', '  ', ' ZONE INDUSTRIELLE DES ALOUETTES ', '  ', 71300, ' MONTCEAU LES MINES ', ' 3 85 77 18 23 ', ' 33367470660 ', ' 33367470906 ', '  ', ' benjamin@radenne.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 414188, 0),
(480, ' ESPI BATIMENT ', '  12 ', '  ', ' RUE JACQUES BEAUMONT ', '  ', 17130, ' MONTENDRE ', ' 05 46 49 26 82 ', ' 33367470661 ', ' 33367470907 ', '  ', '  ', '  ', 0, 1, 410357, 0),
(481, ' RIEU DIDIER ', '  - ', '  ', ' ZONE ARTISANALE LE COULOUME ', '  ', 32390, ' MONTESTRUC SUR GERS ', ' 5 62 62 25 11 ', ' 33367470662 ', ' 33367470908 ', ' sarl.rieu@wanadoo.fr ', ' sarl.rieu@wanadoo.fr ', ' michel.gaillet@bubendorff.com ', 902, 1, 400199, 0),
(482, ' FRANCE FENETRES ', '  151/153  ', '  ', ' BOULEVARD VICTOR BORDIER ', '  ', 95370, ' MONTIGNY LES CORMEILLES ', ' 1 30 40 35 40 ', ' 33367470663 ', ' 33367470909 ', ' gaelle.cadoret-bertin@france-fenetres.fr ', ' remy.poncton@france-fenetres.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 408159, 0),
(483, ' FENETRES PLUS ', '  14 ', '  ', ' RUE DU LYONNAIS ', '  ', 1460, ' MONTREAL LA CLUSE ', ' 4 74 76 22 65 ', ' 33367470664 ', ' 33367470910 ', ' fenetresplus@orange.fr ', ' fenetresplus@orange.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 401653, 0),
(484, ' IRIS / MONTREUIL ', '  41 ', '  ', ' RUE DOUY DELCUPE ', '  ', 93100, ' MONTREUIL ', ' 1 41 72 06 20 ', ' 33367470665 ', ' 33367470911 ', ' contact.client@iris-fenetres.fr ', ' contact.client@iris-fenetres.com ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 90154, 0),
(485, ' VERANDAS GUILLET ', '  11 ', '  ', ' RUE DE LA GARENNE ', '  ', 85540, ' MOUTIERS LES MAUXFAITS ', ' 2 51 98 96 82 ', ' 33367470666 ', ' 33367470912 ', ' verandas.guillet@wanadoo.fr ', ' verandas.guillet@wanadoo.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 70141, 0),
(486, ' AUVERGNE ECO HABITAT ', '  67 ', '  ', ' AVENUE JEAN JAURES ', '  ', 63200, ' MOZAC ', ' 4 73 64 38 71 ', ' 33367470667 ', ' 33367470913 ', ' auvergne-eco-habitat@orange.fr ', ' auvergne-eco-habitat@orange.fr ', ' aurelie.markowicz@bubendorff.com ', 204, 1, 10892, 0),
(487, ' POZZA FERMETURES ', '  4BIS ', '  ', ' BOULEVARD DE JOFFRERY ', '  ', 31600, ' MURET ', ' 05 61 41 14 21 ', ' 33367470668 ', ' 33367470914 ', ' contact@pozzafermetures.fr ', ' contact@pozzafermetures.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 409537, 0),
(488, ' ALU SUD ', '  4 ', '  ', ' AVENUE DU CHAMP DE MARS ', '  ', 11100, ' NARBONNE ', ' 4 68 65 15 11 ', ' 33367470669 ', ' 33367470915 ', ' amielalu@orange.fr ', ' amielalu@orange.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 10206, 0),
(489, ' LC DIFFUS./DH CONFORT ', '  166 ', '  ', ' RUE DE LILLE ', ' BP 6 ', 59554, ' NEUVILLE ST REMY ', ' 3 27 83 16 16 ', ' 33367470670 ', ' 33367470916 ', ' ludovic.cotton@me.com ', ' ludovic.cotton@me.com ', ' cedric.carlier@bubendorff.com ', 105, 1, 120191, 0),
(490, ' RADENNE ET FILS ', '  - ', '  ', ' ZONE ARTISANALE LES BRUYERES ', '  ', 71130, ' NEUVY GRANDCHAMP ', ' 3 85 84 28 05 ', ' 33367470671 ', ' 33367470917 ', ' thierry.duverne@radenne.fr ', ' benjamin@radenne.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 180034, 0),
(491, ' FENETRES CHALLENGER ', '  27 ', '  ', ' ROUTE DE TURIN ', '  ', 6300, ' NICE ', ' 4 93 55 55 58 ', ' 33367470672 ', ' 33367470918 ', ' fenetreschallenger@wanadoo.fr ', ' fenetreschallenger@wanadoo.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 30207, 0),
(492, ' VERANDAS DIJONNAISES ', '  1 ', '  ', ' RUE DU MODANT ', '  ', 52300, ' NOMECOURT ', ' 6 79 91 90 10 ', ' 33367470673 ', ' 33367470919 ', ' Internorm.dijon@gmail.com ', ' contact.verandarideaudijon@gmail.com ', ' laurent.ducret@bubendorff.com ', 102, 1, 409054, 0),
(493, ' MHM ', '   ', '  ', ' LE PRE MARTINOT ', '  ', 52300, ' NOMECOURT ', ' 3 25 94 16 55 ', ' 33367470674 ', ' 33367470920 ', ' MHM.verandas@wanadoo.fr ', ' MHM.verandas@wanadoo.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 411723, 0),
(494, ' CPMM ', '  RD 817 ', '  ', ' ZAC DU BEL AIR ', '  ', 64420, ' NOUSTY ', ' 5 59 04 67 86 ', ' 33367470675 ', ' 33367470921 ', ' contact@cpmm.fr ', ' contact@cpmm.fr ', ' michel.gaillet@bubendorff.com ', 902, 1, 405619, 0),
(495, ' VASSEUR ', '  74 ', '  ', ' RUE DE BLOIS ', '  ', 41140, ' NOYERS SUR CHER ', ' 02 54 75 36 55 ', ' 33367470676 ', ' 33367470922 ', '  ', '  ', '  ', 0, 1, 409931, 0),
(496, ' ROLLANDE GUY ', '  18 ', '  ', ' BOULEVARD HILLEREAU ', '  ', 44170, ' NOZAY ', ' 2 40 86 23 27 ', ' 33367470677 ', ' 33367470923 ', ' contact@menuiserie-guy-rollande.com ', ' contact@menuiserie-guy-rollande.com ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 405880, 0),
(497, ' A.H FERMETURES ', '  50 ', '  ', ' ROUTE DE MONTIVILLIERS ', '  ', 76930, ' OCTEVILLE SUR MER ', ' 2 35 43 23 93 ', ' 33367470678 ', ' 33367470924 ', ' ahfermetures@gmail.com ', ' ahfermetures@gmail.com ', ' frederic.bouchet@bubendorff.com ', 301, 1, 409910, 0),
(498, ' WILCO ', '  2103 ', '  ', ' ROUTE DES 40 SOUS ', '  ', 78630, ' ORGEVAL ', ' 1 39 65 84 84 ', ' 33367470679 ', ' 33367470925 ', ' corinnewhite@wilco.fr ', ' jcwhite@wilco.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 250008, 0),
(499, ' SAMG ', '   ', '  ', ' CHEMIN DE PEYREPLANTADE ', '  ', 9100, ' PAMIERS ', ' 05 34 01 36 55 ', ' 33367470680 ', ' 33367470926 ', '  ', '  ', '  ', 0, 1, 190135, 0),
(500, ' COMTE ET MARCELINO ', '  7 ', '  ', ' BOULEVARD HENRI DE REGNIER ', '  ', 71600, ' PARAY LE MONIAL ', ' 3 85 81 47 29 ', ' 33367470681 ', ' 33367470927 ', ' contact@comte-marcelino.fr ', ' contact@comte-marcelino.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 30996, 0),
(501, ' TECHNIQUE POSE FERMETURE ', '  17 ', '  ', ' BOULEVARD DE FONTAINEBLEAU ', '  ', 91550, ' PARAY VIEILLE POSTE ', ' 1 69 38 89 57 ', ' 33367470682 ', ' 33367470928 ', '  ', ' contact@tpf-menuiserie.com ', ' philippe.delacourt@bubendorff.com ', 106, 1, 220183, 0),
(502, ' PARIS EST SERVICE ', '  29 ', '  ', ' RUE POUSSIN ', '  ', 75016, ' PARIS ', ' 1 43 60 33 33 ', ' 33367470683 ', ' 33367470929 ', ' paris-est-services@laposte.net ', ' paris-est-services@laposte.net ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 411790, 0),
(503, ' PONTACQ LARREGAIN ', '  3 ', '  ', ' RUE FARADAY ', '  ', 64000, ' PAU ', ' 5 59 02 46 42 ', ' 33367470684 ', ' 33367470930 ', ' contact@pontacqlarregain.com ', ' contact@pontacqlarregain.com ', ' michel.gaillet@bubendorff.com ', 902, 1, 160801, 0),
(504, ' FERMETURES MENUISERIES AUDOISES ', '  - ', '  ', ' ROUTE DE CAUX ', '  ', 11170, ' PEZENS ', ' 4 68 24 88 87 ', ' 33367470685 ', ' 33367470931 ', '  ', ' contact@fma11.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 70131, 0),
(505, ' SUD OUEST PVC ', '  95 ', '  ', ' ROUTE DE LOMBEZ ', '  ', 31830, ' PLAISANCE DU TOUCH ', ' 5 61 07 51 61 ', ' 33367470686 ', ' 33367470932 ', ' service.technique@sopvc.com ', ' service.technique@sopvc.com ', ' arnaud.certain@bubendorff.com ', 901, 1, 210626, 0),
(506, ' ACM FERMETURES ', '  2048 ', '  ', ' RUE JULES REGNIER ', '  ', 78370, ' PLAISIR ', ' 1 30 55 16 61 ', ' 33367470687 ', ' 33367470933 ', ' fwarchall@acmfermetures.fr ', ' acmf@acmfermetures.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 10389, 0),
(507, ' COSTA MENUISERIES ', '  - ', '  ', ' ZONE ARTISANALE DES LONGS REAGES ', '  ', 22190, ' PLERIN ', ' 2 96 74 54 30 ', ' 33367470688 ', ' 33367470934 ', ' costa.menuiserie@wanadoo.fr ', ' costa.menuiserie@wanadoo.fr ', ' kevin.bouedec@bubendorff.com ', 306, 1, 30179, 0),
(508, ' 2 PL ', '  - ', ' BP 11 ZA DE KERLAUDY ', ' RUE DE KERLAUDY ', '  ', 29420, ' PLOUENAN ', ' 2 98 29 60 27 ', ' 33367470689 ', ' 33367470935 ', ' info@2pl.bzh ', ' patrice.leblevenec@omni-metal.bzh ', ' kevin.bouedec@bubendorff.com ', 306, 1, 161137, 0),
(509, ' MENUISERIE POUX ', '  11 ', '  ', ' AVENUE DE LA GARE ', '  ', 39800, ' POLIGNY ', ' 03 84 37 27 96 ', ' 33367470690 ', ' 33367470936 ', ' david@menuiseriepoux.fr ', ' menuiserie.poux@wanadoo.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 414622, 0),
(510, ' TAJETTI ', '  10 ', '  ', ' RUE XAVIER ROGE ', '  ', 54700, ' PONT A MOUSSON ', ' 03 83 81 88 62 ', ' 33367470691 ', ' 33367470937 ', '  ', '  ', '  ', 0, 1, 220106, 0),
(511, ' FM 77/PVC AND CO ', '  81 ', '  ', ' AVENUE CHARLES ROUXEL ', '  ', 77340, ' PONTAULT COMBAULT ', ' 1 60 18 05 64 ', ' 33367470692 ', ' 33367470938 ', ' pfranca-fm77@orange.fr ', ' pfranca-fm77@orange.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 400750, 0),
(512, ' JOULAIN GICQUEAU ', '  5 ', ' PA DE L ABBAYE III ', ' RUE PIERRE ET MARIE CURIE ', '  ', 44160, ' PONTCHATEAU ', ' 2 40 01 19 10 ', ' 33367470693 ', ' 33367470939 ', ' ggicqueau@yahoo.com ', ' ggicqueau@yahoo.com ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 400174, 0),
(513, ' ALU HABITAT 11 ', '  256 ', '  ', ' RUE JEAN JAURES ', '  ', 11210, ' PORT LA NOUVELLE ', ' 04 68 21 70 86 ', ' 33367470694 ', ' 33367470940 ', '  ', '  ', '  ', 0, 1, 413766, 0),
(514, ' FILBET ', '  1 ', '  ', ' AVENUE DE LA MONGIE ', '  ', 65200, ' POUZAC ', ' 6 82 21 20 50 ', ' 33367470695 ', ' 33367470941 ', ' pascal609@msn.com ', ' pascal609@msn.com ', ' arnaud.certain@bubendorff.com ', 901, 1, 410510, 0),
(515, ' PVC 46 ', '   ', ' ZA ', ' LA RIVIERE DE MEYMES ', '  ', 46220, ' PRAYSSAC ', ' 5 65 31 69 39 ', ' 33367470696 ', ' 33367470942 ', ' pvc46@orange.fr ', ' pvc46@orange.fr ', ' julien.desavoye@bubendorff.com ', 906, 1, 411474, 0),
(516, ' ROCH FERMETURES ', '  140 ', '  ', ' RUE DU PONT DE DRANSE ', '  ', 74500, ' PUBLIER ', ' 4 50 04 29 77 ', ' 33367470697 ', ' 33367470943 ', ' roch-fermetures@orange.fr ', ' roch-fermetures@orange.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 409307, 0),
(517, ' 2 PL ', '  331 ', '  ', ' RUE JACQUES ANQUETIL ', '  ', 29000, ' QUIMPER ', ' 2 98 95 33 40 ', ' 33367470698 ', ' 33367470944 ', ' info@2pl.bzh ', ' Patrice.leblevenec@omni-metal.bzh ', ' kevin.bouedec@bubendorff.com ', 306, 1, 405774, 0),
(518, ' MIROITERIE RUTHENOISE ', '  77 ', '  ', ' RUE THOMAS EDISON ', ' PA BEL AIR ', 12000, ' RODEZ ', ' 5 65 77 10 25 ', ' 33367470699 ', ' 33367470945 ', ' miroit.ruthenoise@orange.fr ', ' miroit.ruthenoise@orange.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 181150, 0),
(519, ' LTD RENOVATION/ROMILLY ', '  2 ', '  ', ' RUE HENRI MILLET ', '  ', 10100, ' ROMILLY SUR SEINE ', ' 3 25 24 12 60 ', ' 33367470700 ', ' 33367470946 ', ' direction@ltdrenovation.fr ', ' direction@ltdrenovation.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 120198, 0),
(520, ' VERANDAS MONNET ROYAN ', '  1 ', '  ', ' RUE FRANCOIS ARAGO ', '  ', 17200, ' ROYAN ', ' 5 46 05 02 75 ', ' 33367470701 ', ' 33367470947 ', ' verandas.monnet@wanadoo.fr ', ' VERANDAS.monnet@wanadoo.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 406433, 0),
(521, ' A.C.M.B. ', '  61 ', '  ', ' RUE DU GENERAL LECLERC ', '  ', 77540, ' ROZAY EN BRIE ', ' 1 64 25 78 87 ', ' 33367470702 ', ' 33367470948 ', ' acmb.daniel@orange.fr ', ' acmb.daniel@orange.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 10326, 0),
(522, ' JMB ALU ', '  16 BIS ', '  ', ' CHEMIN DU TUCOL ', '  ', 31790, ' SAINT JORY ', ' 05 61 09 97 62 ', ' 33367470703 ', ' 33367470949 ', ' jmb.alu@wanadoo.fr ', ' jmb.alu@wanadoo.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 100066, 0),
(523, ' ART FERMETURES 52 ', '  13 ', '  ', ' IMPASSE DU MENNETRIERS ', '  ', 52200, ' SAINTS GEOSMES ', ' 3 25 88 57 51 ', ' 33367470704 ', ' 33367470950 ', ' contact@artfermetures52.fr ', ' contact@artfermetures52.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 401165, 0),
(524, ' MENUISERIE COMBE ', '  2 ', '  ', ' IMPASSE DU RENIVET ', '  ', 38150, ' SALAISE SUR SANNE ', ' 4 75 31 00 67 ', ' 33367470705 ', ' 33367470951 ', ' jlguerri@menuiseriecombe.com ', ' jlguerri@menuiseriecombe.com ', ' david.sacilotto@bubendorff.com ', 205, 1, 30211, 0),
(525, ' ALU REFERENCE ', '  4 ', '  ', ' RUE DENIS PAPIN ', ' Z A ', 66280, ' SALEILLES ', ' 4 68 22 41 55 ', ' 33367470706 ', ' 33367470952 ', ' ferrazeric@orange.fr ', ' alu-reference@orange.fr ', ' alexis.morgante@bubendorff.com ', 905, 1, 10472, 0),
(526, ' ALU BAIE PROVENCE ', '  31 ', '  ', ' BOULEVARD DES VENTADOUIRO ', '  ', 13300, ' SALON DE PROVENCE ', ' 4 90 45 12 12 ', ' 33367470707 ', ' 33367470953 ', ' info@abpro.fr ', ' info@abpro.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 407312, 0),
(527, ' OXYGEN 57 ', '  6 ', '  ', ' PORTE LUPIN ', '  ', 57400, ' SARREBOURG ', ' 3 87 07 04 40 ', ' 33367470708 ', ' 33367470954 ', ' oxygen57@orange.fr ', ' oxygen57@orange.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 410731, 0),
(528, ' SARL ETIENNE / LOG\'ISOL ', '   ', '  ', ' GRANDE RUE ', '  ', 55500, ' SAULVAUX ', ' 3 29 78 35 35 ', ' 33367470709 ', ' 33367470955 ', ' contact@logisol55.fr ', ' contact@logisol55.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 405586, 0),
(529, ' E.D.S. FERMETURES ', '  70 ', '  ', ' RUE JEAN JAURES ', '  ', 8200, ' SEDAN ', ' 3 24 22 56 21 ', ' 33367470710 ', ' 33367470956 ', ' secreteriat@edsfermetures.fr ', ' direction@edsfermetures.fr ', ' christophe.jully@bubendorff.com ', 101, 1, 50124, 0),
(530, ' PVC SYSTEM ', '  - ', ' ROND POINT GIMENELLS ', ' CHEMIN BEL AIR ', '  ', 31840, ' SEILH ', ' 5 62 21 47 00 ', ' 33367470711 ', ' 33367470957 ', ' pvc-system@wanadoo.fr ', ' pvc-system@wanadoo.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 160069, 0),
(531, ' LINEA POSE SELESTAT ', '  6 ', ' ZI NORD ', ' RUE DE WALDKIRCH ', '  ', 67600, ' SELESTAT ', ' 3 90 58 85 50 ', ' 33367470712 ', ' 33367470958 ', ' selestat@linea.fr ', ' philippe.roschitz@linea.fr ', ' christian.stamm@bubendorff.com ', 4, 1, 120123, 0),
(532, ' A.F.D. ', '  8 ', '  ', ' RUE PAUL VALERIEN PERRIN ', '  ', 38170, ' SEYSSINET PARISET ', ' 4 76 15 31 17 ', ' 33367470713 ', ' 33367470959 ', ' developpement@afd-verandas.com ', ' developpement@afd-verandas.com ', ' christophe.beau@bubendorff.com ', 201, 1, 10445, 0),
(533, ' SARL BARRE OLIVIER ', '  38 ', '  ', ' RUE LINOT COLLOT ', '  ', 51120, ' SEZANNE ', ' 3 26 81 35 30 ', ' 33367470714 ', ' 33367470960 ', ' olivier.barre.sarl@wanadoo.fr ', ' olivier.barre.sarl@wanadoo.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 22489, 0),
(534, ' ISOLATION CONFORT ', '  - ', '  ', ' CHEMIN DEPARTEMENTAL 12 ', '  ', 69360, ' SOLAIZE ', ' 4 78 02 95 29 ', ' 33367470715 ', ' 33367470961 ', ' w.giner@isolationconfort.com ', ' w.giner@isolationconfort.com ', ' nathalie.tixier@bubendorff.com ', 203, 1, 90209, 0),
(535, ' USIMIX ', '  92 ', '  ', ' CHEMIN SAINTE CHRISTINE ', '  ', 83210, ' SOLLIES PONT ', ' 4 94 23 47 55 ', ' 33367470716 ', ' 33367470962 ', ' cboucly@usimix.com ', ' cboucly@usimix.com ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 230007, 0),
(536, ' FRANCE FENETRES ', '  53/57 ', '  ', ' AVENUE PIERRE CURIE ', '  ', 78210, ' ST CYR L ECOLE ', ' 1 30 07 06 30 ', ' 33367470717 ', ' 33367470963 ', ' gaelle.cadoret-bertin@france-fenetres.fr ', ' remy.poncton@france-fenetres.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 408156, 0),
(537, ' GLASS38 ', '  11 ', '  ', ' RUE MARCEL PAUL ', '  ', 38120, ' ST EGREVE ', ' 4 76 26 98 00 ', ' 33367470718 ', ' 33367470964 ', ' contact@atrio.fr ', ' contact@atrio.fr ', ' christophe.beau@bubendorff.com ', 201, 1, 407344, 0),
(538, ' STORES ISOLATION ', '  35 ', '  ', ' BOULEVARD DAGUERRE ', '  ', 42100, ' ST ETIENNE ', ' 4 77 33 35 20 ', ' 33367470719 ', ' 33367470965 ', ' stores-isolation@wanadoo.fr ', ' stores-isolation@wanadoo.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 210483, 0),
(539, ' MENUISERIE DU SOLEIL ', '  15 ', '  ', ' ROUTE D EPERNAY ', '  ', 51510, ' ST GIBRIEN ', ' 3 26 65 20 20 ', ' 33367470720 ', ' 33367470966 ', ' contact@menuiseriedusoleil.fr ', ' contact@menuiseriedusoleil.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 210069, 0),
(540, ' ABC FERMETURES ', '  75 ', '  ', ' QUAI GORIN ', '  ', 85800, ' ST GILLES CROIX DE VIE ', ' 2 51 54 96 01 ', ' 33367470721 ', ' 33367470967 ', ' abc.fermetures85@orange.fr ', ' abc.fermetures85@orange.fr ', ' cyril.menon@bubendorff.com ', 904, 1, 10289, 0),
(541, ' S.M.D. DELAPLANCHE ', '  112 ', '  ', ' AVENUE DU CAPITAINE JEAN ', '  ', 45800, ' ST JEAN DE BRAYE ', ' 2 38 32 00 01 ', ' 33367470722 ', ' 33367470968 ', ' contact@smd-veranda.com ', ' contact@smd-veranda.com ', ' antonio.goncalves@bubendorff.com ', 304, 1, 190988, 0),
(542, ' BERNARDI ', '  39 ', '  ', ' RUE BERNARD MILLION ', ' ST JEAN DE LA RUELLE ', 45142, ' ST JEAN DE LA RUELLE CEDEX ', ' 2 38 88 27 09 ', ' 33367470723 ', ' 33367470969 ', ' jonathan.girault@bernardi-sas.fr ', ' bernardi@bernardi-sas.fr ', ' antonio.goncalves@bubendorff.com ', 304, 1, 20412, 0),
(543, ' BEAUVAISIENNE DE PVC ', '  - ', '  ', ' RUE DU BOIS PREVOST ', ' ZI SUD ', 60130, ' ST JUST EN CHAUSSEE ', ' 3 44 19 21 21 ', ' 33367470724 ', ' 33367470970 ', ' sbp.secreteriat4@orange.fr ', ' sbp.secretariat4@orange.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 20053, 0),
(544, ' SVF FRITSCH & FILS ', '  531 ', '  ', ' RUE DE L EGLISE ', '  ', 88650, ' ST LEONARD ', ' 3 29 50 00 48 ', ' 33367470725 ', ' 33367470971 ', ' fritsch@akeonet.com ', ' fritsch@akeonet.com ', ' laurent.ducret@bubendorff.com ', 102, 1, 60814, 0),
(545, ' LINEA POSE SAINT LOUIS ', '  32A  ', '  ', ' RUE D HEGENHEIM ', '  ', 68300, ' ST LOUIS ', ' 3 89 61 88 88 ', ' 33367470726 ', ' 33367470972 ', ' selestat@linea.fr ', ' philippe.roschitz@bubendorff.com ', ' christian.stamm@bubendorff.com ', 4, 1, 410644, 0),
(546, ' GUILLHARD CONFORT ', '  37 ', '  ', ' RUE DU PRESIDENT ROBERT SCHUMAN ', '  ', 35400, ' ST MALO ', ' 2 23 17 53 50 ', ' 33367470727 ', ' 33367470973 ', ' mickael@guillhard.fr ', ' mickael@guillhard.fr ', ' kevin.bouedec@bubendorff.com ', 306, 1, 411439, 0),
(547, ' ARAMYS FERMETURES ', '  13 ', '  ', ' BOULEVARD RABELAIS ', '  ', 94100, ' ST MAUR DES FOSSES ', '     0 ', ' 33367470728 ', ' 33367470974 ', ' aramysfermetures@yahoo.fr ', ' aramysfermetures@yahoo.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 411286, 0),
(548, ' ETS CHATRON ', '  300 ', '  ', ' ROUTE DE VERLIEU ', '  ', 42410, ' ST MICHEL SUR RHONE ', ' 4 74 56 62 14 ', ' 33367470729 ', ' 33367470975 ', ' ets.chatron@gmail.com ', ' ets.chatron@gmail.com ', ' nathalie.tixier@bubendorff.com ', 203, 1, 413537, 0),
(549, ' CLOS ET COUVERT ', '  20 ', '  ', ' RUE DU TROU GRILLON ', '  ', 91280, ' ST PIERRE DU PERRAY ', ' 1 64 96 07 03 ', ' 33367470730 ', ' 33367470976 ', ' closetcouvert@wanadoo.fr ', ' clos3@wanadoo.fr ', ' philippe.delacourt@bubendorff.com ', 106, 1, 30766, 0);
INSERT INTO `reparateur_qualifie` (`reparateur_qualifie_id`, `reparateur_qualifie_nom`, `reparateur_qualifie_num_adresse`, `reparateur_qualifie_adresse_complement`, `reparateur_qualifie_rue`, `reparateur_qualifie_localite`, `reparateur_qualifie_code_postal`, `reparateur_qualifie_ville`, `reparateur_qualifie_tel`, `reparateur_qualifie_tel_mini_site`, `reparateur_qualifie_tel_page_jaune`, `reparateur_qualifie_mail_sav`, `reparateur_qualifie_mail_resp`, `reparateur_qualifie_mail_com_bvr`, `reparateur_qualifie_code_sect`, `reparateur_qualifie_client_fk`, `reparateur_qualifie_numero`, `reparateur_qualifie_is_rep_q`) VALUES
(550, ' FERMETURES MUST SARL OJC DIFFUSION ', '  - ', '  ', ' AVENUE ARCHIMEDE ', ' ZA BOIS DE LA CHOQUE ', 2100, ' ST QUENTIN ', ' 3 23 64 78 94 ', ' 33367470731 ', ' 33367470977 ', ' ojc.accueil@orange.fr ', ' ojc.accueil@orange.fr ', ' fabien.balny@bubendorff.com ', 104, 1, 150009, 0),
(551, ' G1 FERMETURES ', '  11 ', '  ', ' ROUTE DE LYON ', '  ', 71100, ' ST REMY ', ' 3 85 87 84 84 ', ' 33367470732 ', ' 33367470978 ', ' contact@g1-fermetures.com ', ' contact@g1-fermetures.com ', ' nathalie.tixier@bubendorff.com ', 203, 1, 70146, 0),
(552, ' IRIS FERMETURES / MONTREUIL ', '  3 ', '  ', ' RUE DE LA REPUBLIQUE ', ' RHODON ', 78470, ' ST REMY LES CHEVREUSE ', ' 1 41 72 06 20 ', ' 33367470733 ', ' 33367470979 ', ' contact.client@iris-fenetres.com ', ' iris.sa@wanadoo.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 400276, 0),
(553, ' FM77 / PVC AND CO ', '  14 ', '  ', ' ROUTE DE LIBOURNE ', '  ', 33450, ' ST SULPICE ET CAMEYRAC ', ' 5 56 06 95 31 ', ' 33367470734 ', ' 33367470980 ', ' pfranca-fm77@orange.fr ', ' pfranca-fm77@orange.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 411219, 0),
(554, ' HABICONFORT ', '  1 ', ' ZAC DU PONT DES NAUTES ', ' RUE DU COMMERCE ', '  ', 3410, ' ST VICTOR ', ' 4 70 28 86 48 ', ' 33367470735 ', ' 33367470981 ', ' lorenovemontlucon@orange.fr ', ' lorenovemontlucon@orange.fr ', ' aurelie.markowicz@bubendorff.com ', 204, 1, 401214, 0),
(555, ' ACM MARIE ', '  164 ', '  ', ' AVENUE GABRIEL PERI ', '  ', 91700, ' STE GENEVIEVE DES BOIS ', ' 1 69 04 36 70 ', ' 33367470736 ', ' 33367470982 ', ' acm-marie@orange.fr ', ' acm-marie@orange.fr ', ' philippe.delacourt@bubendorff.com ', 106, 1, 10036, 0),
(556, ' LES MASTERS MENUISIERS ', '  133 ', '  ', ' BOULEVARD DU GENERAL BROSSET ', '  ', 83200, ' TOULON ', ' 4 94 22 01 74 ', ' 33367470737 ', ' 33367470983 ', ' contacts@lesmastersmenuisiers.fr ', ' fournisseurs@lesmastersmenuisiers.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 130404, 0),
(557, ' ABEL ALU ', '  4BIS ', '  ', ' RUE CARDAN ', ' ZONE ARTISANALE ', 66350, ' TOULOUGES ', ' 4 68 55 06 80 ', ' 33367470738 ', ' 33367470984 ', ' olivier@abelalu.com ', ' olivier@abelalu.com ', ' alexis.morgante@bubendorff.com ', 905, 1, 10017, 0),
(558, ' L\'EXPERT MENUISERIE ', '  45BIS ', '  ', ' RUE DE LA CHEVALERIE ', '  ', 37100, ' TOURS ', ' 2 47 41 61 92 ', ' 33367470739 ', ' 33367470985 ', ' jp.bonnaud@expertmenuiserie.fr ', ' jp.bonnaud@expertmenuiserie.fr ', ' antonio.goncalves@bubendorff.com ', 304, 1, 400705, 0),
(559, ' ART ET HABITAT SARL ', '  63 ', '  ', ' AVENUE MICHEL GRANDOU ', '  ', 24750, ' TRELISSAC ', ' 5 53 04 26 74 ', ' 33367470740 ', ' 33367470986 ', ' art.habitat24@orange.fr ', ' art.habitat24@orange.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 406467, 0),
(560, ' LERAY MENUISERIE ', '  3 ', '  ', ' CITE NOUVELLE ', '  ', 44570, ' TRIGNAC ', ' 2 40 53 40 12 ', ' 33367470741 ', ' 33367470987 ', ' patrice@leray-menuiserie.fr ', ' patrice@leray-menuiserie.fr ', ' aurelien.bousseau@bubendorff.com ', 302, 1, 120625, 0),
(561, ' LTD RENOVATION/TROYES ', '  10 ', '  ', ' RUE DE LA HAUTE CHARME ', '  ', 10000, ' TROYES ', ' 3 25 74 23 02 ', ' 33367470742 ', ' 33367470988 ', ' direction@ltdrenovation.fr ', ' direction@ltdrenovation.fr ', ' jean-paul.rodrigues@bubendorff.com ', 103, 1, 120331, 0),
(562, ' RIOUX ', '  3 ', '  ', ' RUE DU DR AIME AUDUBERT ', '  ', 19000, ' TULLE ', ' 5 55 20 14 07 ', ' 33367470743 ', ' 33367470989 ', ' h.monteil@rioux-sas.eu ', ' jm.roux@rixou-sas.eu ', ' julien.desavoye@bubendorff.com ', 906, 1, 180602, 0),
(563, ' ULRICH ', '  27 ', '  ', ' RUE SAINTE COLETTE ', '  ', 54500, ' VANDOEUVRE LES NANCY ', ' 3 83 54 40 27 ', ' 33367470744 ', ' 33367470990 ', ' upas_63@hotmail.com ', ' upas_63@hotmail.com ', ' christophe.jully@bubendorff.com ', 101, 1, 230073, 0),
(564, ' RADENNE ET FILS  ', '   ', '  ', ' ROUTE NATIONALE 6 ', '  ', 71240, ' VARENNES LE GRAND ', ' 3 85 94 13 96 ', ' 33367470745 ', ' 33367470991 ', ' benjamin@radenne.fr ', ' benjamin@radenne.fr ', ' nathalie.tixier@bubendorff.com ', 203, 1, 413828, 0),
(565, ' VEDEN\'ALU ', '  80 ', '  ', ' CHEMIN DE SAINT MONTANGE ', ' ZI CHALANCON II ', 84270, ' VEDENE ', ' 4 32 40 97 48 ', ' 33367470746 ', ' 33367470992 ', ' alain.vedenalu@wanadoo.fr ', ' alain.vedenalu@wanadoo.fr ', ' franck.deharo@bubendorff.com ', 206, 1, 240128, 0),
(566, ' DECOSTORE ', '  17/19 ', '  ', ' RUE DE LA LIBERATION ', '  ', 78140, ' VELIZY VILLACOUBLAY ', ' 01 39 46 85 58 ', ' 33367470747 ', ' 33367470993 ', ' contact@deco-store.fr ', ' contact@decostore.fr ', ' frederic.bouchet@bubendorff.com ', 301, 1, 401084, 0),
(567, ' MORVANT ENTREPRISE ', '  28 ', '  ', ' RUE SAINT EXUPERY ', '  ', 18100, ' VIERZON ', ' 2 48 75 96 89 ', ' 33367470748 ', ' 33367470994 ', ' morvant-entreprise@wanadoo.fr ', ' morvant-entreprise@wanadoo.fr ', ' antonio.goncalves@bubendorff.com ', 304, 1, 130319, 0),
(568, ' LES VERANDAS DU PERIGORD ', '   ', '  ', ' ROUTE DE MILHAC DE NOTRON ', ' TERRES DE PIEBILLON ', 24530, ' VILLARS ', ' 5 53 04 35 59 ', ' 33367470749 ', ' 33367470995 ', ' verandas.du.perigord@wanadoo.fr ', ' verandas.du.perigord@wanadoo.fr ', ' jerome.alins@bubendorff.com ', 903, 1, 160252, 0),
(569, ' EXPOBAIE ', '  2 ', '  ', ' RUE DE L\'ARTISANAT ', '  ', 42390, ' VILLARS ', ' 4 77 46 50 05 ', ' 33367470750 ', ' 33367470996 ', ' a.verdier@expobaie.fr ', ' a.verdier@expobaie.fr ', ' manuel.rodriguez@bubendorff.com ', 203, 1, 407292, 0),
(570, ' ISO CONSEIL HABITATION ', '   ', '  ', ' ZAC DU TRERY SUD ', ' ZAC DU TRERY SUD ', 38470, ' VINAY ', ' 4 76 64 93 02 ', ' 33367470751 ', ' 33367470997 ', '  ', ' ich038@gmail.com ', ' christophe.beau@bubendorff.com ', 201, 1, 90063, 0),
(571, ' ISOPROTECT ', '  21 ', '  ', ' AVENUE DU GENERAL LECLERC ', '  ', 78220, ' VIROFLAY ', ' 1 30 49 14 46 ', ' 33367470752 ', ' 33367470998 ', ' info@artetfenetres78.fr ', ' info@artetfenetres78.fr ', ' manuel.rodriguez@bubendorff.com ', 303, 1, 407565, 0),
(572, ' WEIGERDING ', '  53 ', '  ', ' RUE DE THIONVILLE ', '  ', 57185, ' VITRY SUR ORNE ', ' 03 87 67 74 26 ', ' 33367470753 ', ' 33367470999 ', ' commande@weigerding.com ', ' commande@weigerding.com ', ' christophe.jully@bubendorff.com ', 101, 1, 250020, 0),
(573, ' ISOL CONFORT ', '  18 ', '  ', ' ZONE D ACTIVITE LA CARRETIERE ', '  ', 4130, ' VOLX ', ' 4 92 79 33 55 ', ' 33367470754 ', ' 33367471000 ', ' isolconfort@wanadoo.fr ', ' isolconfort@wanadoo.fr ', ' navid.hakim-afzal@bubendorff.com ', 202, 1, 90068, 0),
(574, ' OXYGEN OUVERTURES ', '  4 ', '  ', ' RUE GEORGES COLNOT ', '  ', 88220, ' XERTIGNY ', ' 3 29 36 70 16 ', ' 33367470755 ', ' 33367471001 ', ' oxygen.ouvertures@orange.fr ', ' oxygen.ouvertures@orange.fr ', ' laurent.ducret@bubendorff.com ', 102, 1, 400510, 0),
(575, ' AMELIORATION FERMETURE PETITRENAUD ', '  35 ', '  ', ' RUE DES EPOUX CONTOUX ', '  ', 3400, ' YZEURE ', ' 4 70 20 51 99 ', ' 33367470756 ', ' 33367471002 ', ' petitrenaud.yves@orange.fr ', ' petitrenaud.yves@orange.fr ', ' aurelie.markowicz@bubendorff.com ', 204, 1, 407983, 0),
(576, ' BPA CONCEPT ', '  15 ', '  ', ' AVENUE DE LA DEPORTATION ', '  ', 26100, ' ROMANS SUR ISERE ', ' 04 75 48 82 09 ', ' 33367470757 ', ' 33367471003 ', ' contact@bpaconcept.fr ', ' contact@bpaconcept.fr ', ' david.sacilotto@bdubendorff.com ', 205, 1, 400154, 0),
(577, ' TESSON VAUCLUSE AUTOMATISMES ', '  245 ', ' QUARTIER BEL AIR ', ' ROUTE DE ROBION ', '  ', 84300, ' TAILLADES ', ' 04 90 78 15 31 ', ' 33367470758 ', ' 33367471004 ', ' vaucluseautomatismes@gmail.com ', ' vaucluseautomatismes@gmail.com ', ' franck.deharo@bubendorff.com ', 206, 1, 411118, 0),
(578, 'ERICK', 'ipoi', 'iopo', 'iop', 'oip', 131, 'poi', 'poi', 'opi', 'ipo', 'ckandrinirina@gmail.com', 'ckandrinirina@gmail.com', 'oi', 1263, 1, 123123123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `script_data`
--

CREATE TABLE `script_data` (
  `script_data_id` int(11) NOT NULL,
  `script_data_numero_client` int(11) NOT NULL,
  `script_data_c_app_nom` varchar(255) DEFAULT NULL,
  `script_data_c_app_prenom` varchar(255) DEFAULT NULL,
  `script_data_c_app_tel` varchar(255) DEFAULT NULL,
  `script_data_c_app_adresse` varchar(255) DEFAULT NULL,
  `script_data_c_app_cp` int(11) DEFAULT NULL,
  `script_data_c_app_ville` varchar(255) DEFAULT NULL,
  `script_data_nbr_volet` int(11) DEFAULT NULL,
  `script_data_n_serie` varchar(255) DEFAULT NULL,
  `script_data_is_mini_site` tinyint(1) NOT NULL,
  `script_data_is_pq` int(3) NOT NULL,
  `script_data_info_comp` text DEFAULT NULL,
  `script_data_commentaires` text NOT NULL,
  `script_data_date_creation` date DEFAULT NULL,
  `script_data_reparateur_qualifie_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `script_data`
--

INSERT INTO `script_data` (`script_data_id`, `script_data_numero_client`, `script_data_c_app_nom`, `script_data_c_app_prenom`, `script_data_c_app_tel`, `script_data_c_app_adresse`, `script_data_c_app_cp`, `script_data_c_app_ville`, `script_data_nbr_volet`, `script_data_n_serie`, `script_data_is_mini_site`, `script_data_is_pq`, `script_data_info_comp`, `script_data_commentaires`, `script_data_date_creation`, `script_data_reparateur_qualifie_fk`) VALUES
(55, 10230, '', '', '', '', 0, '', 0, '', 1, 2, 'azet', '', '2020-03-02', 174),
(56, 10206, '', '', '', '', 0, '', 0, '', 1, 1, '', '', '2020-03-02', 488),
(57, 10230, '', '', '', '', 0, '', 0, '', 0, 0, '', '', '2020-03-02', 174);

-- --------------------------------------------------------

--
-- Table structure for table `script_data_child`
--

CREATE TABLE `script_data_child` (
  `script_data_child_id` int(11) NOT NULL,
  `script_data_child_num_step` int(11) NOT NULL,
  `script_data_child_champs_fk` int(11) NOT NULL,
  `script_data_child_next` int(11) NOT NULL,
  `script_data_child_libelle` varchar(255) NOT NULL,
  `script_data_child_choix` varchar(255) NOT NULL,
  `script_data_child_parent_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `script_data_child`
--

INSERT INTO `script_data_child` (`script_data_child_id`, `script_data_child_num_step`, `script_data_child_champs_fk`, `script_data_child_next`, `script_data_child_libelle`, `script_data_child_choix`, `script_data_child_parent_fk`) VALUES
(235, 1, 2, 0, 'Mini-site', 'Choix', 55),
(236, 2, 6, 14, 'Typage', 'Appel sur', 55),
(237, 14, 66, 15, 'Autres', 'Typage', 55),
(238, 2, 5, 5, 'Réparateur qualifié', 'Appel sur', 56),
(239, 5, 102, 26, 'Demande d’installation', 'Demande', 56),
(240, 2, 5, 5, 'Réparateur qualifié', 'Appel sur', 57),
(241, 1, 2, 0, 'Mini-site', 'Choix', 57),
(242, 5, 102, 26, 'Demande d’installation', 'Demande', 57);

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
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `reparateur_qualifie`
--
ALTER TABLE `reparateur_qualifie`
  ADD PRIMARY KEY (`reparateur_qualifie_id`),
  ADD KEY `reparateur_qualifie_client_fk` (`reparateur_qualifie_client_fk`),
  ADD KEY `reparateur_qualifie_numero` (`reparateur_qualifie_numero`);

--
-- Indexes for table `script_data`
--
ALTER TABLE `script_data`
  ADD PRIMARY KEY (`script_data_id`),
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
  MODIFY `champs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reparateur_qualifie`
--
ALTER TABLE `reparateur_qualifie`
  MODIFY `reparateur_qualifie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=579;

--
-- AUTO_INCREMENT for table `script_data`
--
ALTER TABLE `script_data`
  MODIFY `script_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `script_data_child`
--
ALTER TABLE `script_data_child`
  MODIFY `script_data_child_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reparateur_qualifie`
--
ALTER TABLE `reparateur_qualifie`
  ADD CONSTRAINT `reparateur_qualifie_ibfk_1` FOREIGN KEY (`reparateur_qualifie_client_fk`) REFERENCES `client` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `script_data`
--
ALTER TABLE `script_data`
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
