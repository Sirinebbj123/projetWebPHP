-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2022 at 10:04 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd2`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `commentaire` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `nom`, `commentaire`) VALUES
(1, 'oumaima', 'hello everyone'),
(2, 'gghghhggh', 'kjbjjkbjj');

-- --------------------------------------------------------

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cin` varchar(8) NOT NULL,
  `nom` varchar(10) NOT NULL,
  `prenom` varchar(10) NOT NULL,
  `tel` int(8) NOT NULL,
  `sexe` enum('homme','femme') NOT NULL,
  `formation` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formation`
--

INSERT INTO `formation` (`id`, `cin`, `nom`, `prenom`, `tel`, `sexe`, `formation`) VALUES
(1, '14513011', 'bejaoui', 'sirine', 52232157, 'femme', 'inf'),
(2, '00000000', 'othmani', 'hamza', 7777778, 'homme', 'ps'),
(3, '3333333', 'tizaoui', 'yassmine', 53292222, 'femme', 'mk'),
(30, '14513006', 'yamni', 'yama', 45677654, 'homme', 'mk'),
(27, '14513', 'bejaoui', 'sirine', 77775656, 'homme', 'inf'),
(28, '14', 'bejaoui', 'sirine', 77775656, 'homme', 'inf'),
(29, '54547887', 'gasmi', 'nadia', 5679898, 'femme', 'inf'),
(16, '14513011', 'hh', 'hh', 52232157, 'femme', 'ps'),
(26, '14331567', 'bejaoui', 'Wael', 77775656, 'homme', 'inf'),
(19, '76764546', 'OPO', 'OPO', 67891234, 'homme', 'ps'),
(20, '1222222', 'AAA', 'AA', 67891234, 'femme', 'mk'),
(21, '99998888', 'gasmi', 'takwa', 20004000, 'femme', 'sm'),
(22, '1456789', 'khlifi', 'Rania', 34346666, 'femme', 'inf'),
(23, '44444444', 'trabelsi', 'mounira ', 88888888, 'femme', 'sm'),
(25, '33333333', 'jbeli', 'maryem', 24123321, 'homme', 'sm');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `email` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `utlisateur2`
--

DROP TABLE IF EXISTS `utlisateur2`;
CREATE TABLE IF NOT EXISTS `utlisateur2` (
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `mdp_utilisateur` varchar(10) NOT NULL,
  `sexe` enum('Homme','Femme') NOT NULL,
  `date_naissance` date NOT NULL,
  `age` int(12) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` int(10) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
