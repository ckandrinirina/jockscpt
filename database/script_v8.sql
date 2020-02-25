-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 05:22 PM
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
  `champs_reference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `champs`
--

INSERT INTO `champs` (`champs_id`, `champs_num_step`, `champs_libelle`, `champs_type`, `champs_next_step`, `champs_order`, `champs_reference`) VALUES
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
(11, 3, 'Autres ( hors bubendorff)', 'radio', 23, 4, ''),
(12, 4, 'Le point conseil est il à proximité du lieu d\'intervention ? ', 'libelle', NULL, 1, ''),
(13, 4, 'Oui', 'radio', 6, 2, ''),
(14, 4, ' Non', 'radio', 25, 3, ''),
(15, 4, 'Pas de point conseil disponible', 'radio', 16, 4, ''),
(16, 6, '', 'none', NULL, 1, 'contact'),
(18, 5, 'Avant toute transmission il faut s\\\'assurer que les vérications ont été faites :</br><ul><li>Une coupure / remise en service du secteur sur le disjoncteur du volet roulant n\\\'a pas permis de résoudre la panne.</li><li>La pile de l’émetteur dispose d\'un niveau de charge sufisant.</li><li>Le démontage du caisson est possible (Les vis sont apparentes et aucun obstacle ne se situe devant la trappe de visite).</li><li>Tous les composants du volet se trouvent sur le lieu de l\'intervention (notamment l’émetteur).</li></ul>', 'libelle', NULL, 3, ''),
(19, 5, 'Demande', 'libelle', NULL, 4, ''),
(20, 5, 'SAV – Volet Bubendorff sous garantie (moins de 7 ans)', 'radio', 10, 5, ''),
(21, 5, 'SAV – Volet Bubendorff hors garantie (plus de 7 ans) ', 'radio', 12, 6, ''),
(22, 5, 'SAV – Autres marques', 'radio', 13, 7, ''),
(26, 6, '', 'none', NULL, 4, 'nbr_volet'),
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
(47, 12, '', 'none', NULL, 1, 'contact'),
(51, 12, 'Nombre de volets concernés par la demande de réparation', 'text', NULL, 4, ''),
(52, 12, 'N°S/N ou NSP', 'text', NULL, 5, ''),
(53, 12, 'Informations complémentaires', 'text', NULL, 6, ''),
(54, 12, ' Envoyer un message et enregistrer les données du script', 'libelle', NULL, 7, ''),
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
(76, 19, 'Volets de marque Bubendorff (moins de 7 ans) – SOUS GARANTIE', 'radio', 10, 2, ''),
(77, 19, 'Volets de marque Bubendorff (plus de 7 ans) – HORS GARANTIE', 'radio', 20, 3, ''),
(78, 19, 'Volets d\'autres marques', 'radio', 21, 4, ''),
(82, 20, 'Nombre de volet', 'text', NULL, 4, ''),
(83, 20, 'N° de serie', 'text', NULL, 5, ''),
(84, 20, 'Informations complémentaires ', 'textarea', NULL, 6, ''),
(85, 20, 'Envoye un message et enregistrer les donnés du script', 'libelle', NULL, 7, ''),
(86, 21, 'Est ce que le point conseil est réparateur qualifié ?', 'libelle', NULL, 1, ''),
(87, 21, 'oui', 'radio', 22, 2, ''),
(88, 21, 'non', 'radio', 10, 3, ''),
(89, 20, '', 'none', NULL, 0, 'contact'),
(90, 22, '', 'none', NULL, 1, 'contact'),
(94, 22, 'Nombre de volets concernés par la demande de réparation', 'text', NULL, 5, ''),
(95, 22, 'N°S/N ou NSP', 'text', NULL, 6, ''),
(96, 22, 'Informations complémentaires (si télécommande mettre la', 'text', NULL, 7, ''),
(97, 22, 'Envoyer un message et enregistrer les données du script', 'libelle', NULL, 8, ''),
(98, 23, 'Appelez le point conseil, à défaut lui communiquez les coordonnées.', 'libelle', NULL, 1, ''),
(99, 23, ' Enregistrer les données du script', 'libelle', NULL, 2, ''),
(100, 25, 'Enregistrer donné du script', 'libelle', NULL, 2, ''),
(101, 1, 'Numero client', 'text', NULL, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_name`, `client_adresse`) VALUES
(1, 'Bundendorff', 'Adresse');

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
  `point_conseils_mail_sav` varchar(255) NOT NULL,
  `point_conseils_client_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(332, ' FDO.BAT ', '  27 ', '  ', ' ROUTE DE PAU ', '  ', 65270, ' ST PE DE BIGORRE ', ' 0680200459 ', ' 33367471170 ', ' 33367471336 ', '  ', ' deolfr@orange.fr ', ' arnaud.certain@bubendorff.com ', 901, 1, 415186, 1);

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
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `point_conseils`
--
ALTER TABLE `point_conseils`
  ADD PRIMARY KEY (`point_conseils_id`),
  ADD KEY `point_conseils_client_fk` (`point_conseils_client_fk`);

--
-- Indexes for table `reparateur_qualifie`
--
ALTER TABLE `reparateur_qualifie`
  ADD PRIMARY KEY (`reparateur_qualifie_id`),
  ADD UNIQUE KEY `reparateur_qualifie_numero` (`reparateur_qualifie_numero`),
  ADD KEY `reparateur_qualifie_client_fk` (`reparateur_qualifie_client_fk`);

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
  MODIFY `champs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `point_conseils`
--
ALTER TABLE `point_conseils`
  MODIFY `point_conseils_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `reparateur_qualifie`
--
ALTER TABLE `reparateur_qualifie`
  MODIFY `reparateur_qualifie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

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
-- Constraints for table `point_conseils`
--
ALTER TABLE `point_conseils`
  ADD CONSTRAINT `point_conseils_ibfk_1` FOREIGN KEY (`point_conseils_client_fk`) REFERENCES `client` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reparateur_qualifie`
--
ALTER TABLE `reparateur_qualifie`
  ADD CONSTRAINT `reparateur_qualifie_ibfk_1` FOREIGN KEY (`reparateur_qualifie_client_fk`) REFERENCES `client` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
