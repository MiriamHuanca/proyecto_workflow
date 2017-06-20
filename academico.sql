-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 20, 2017 at 05:47 PM
-- Server version: 5.6.36
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `academico`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `coddepartamento` varchar(2) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `unidEducaProced` varchar(30) DEFAULT NULL,
  `fechaNacimiento` varchar(30) DEFAULT NULL,
  `municipio` varchar(30) DEFAULT NULL

	
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumno`
--

INSERT INTO `alumno` (`codigo`, `nombre`, `coddepartamento`, `sexo`) VALUES
('001', 'Juan', '01', 'M'),
('002', 'Maria', '01', 'F'),
('003', 'Ana', '01', 'F'),
('004', 'Luis', '01', 'M'),
('005', 'Rene', '01', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `flujoproceso`
--

CREATE TABLE IF NOT EXISTS `flujoproceso` (
  `codflujo` varchar(10) DEFAULT NULL,
  `codproceso` varchar(10) DEFAULT NULL,
  `tipo` varchar(1) DEFAULT NULL,
  `codprocesonext` varchar(10) DEFAULT NULL,
  `forumlario` varchar(50) DEFAULT NULL,
  `codrol` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flujoproceso`
--

INSERT INTO `flujoproceso` (`codflujo`, `codproceso`, `tipo`, `codprocesonext`, `forumlario`, `codrol`) VALUES
('F1', 'P1', 'I', 'P2', 'index.php', 'E'),
('F1', 'P2', 'Q', NULL, 'elige.php', 'E'),
('F1', 'P3', 'P', 'P5', 'registraD.php', 'E'),
('F1', 'P4', 'P', 'P5', 'registraP.php', 'E'),
('F1', 'P5', 'Q', NULL, 'verificaNota.php', 'K'),
('F1', 'P6', 'P', 'P7', 'solCertNota.php', 'E'),
('F1', 'P7', 'P', 'P8', 'rececpcionaDocs.php', 'K'),
('F1', 'P8', 'Q', NULL, 'verificaDocs.php', 'K'),
('F1', 'P9', 'P', 'P10', 'registraEst.php', 'K'),
('F1', 'P10', 'P', 'P11', 'pagarMatricula.php', 'E'),
('F1', 'P11', 'F', NULL, 'recojeMatricula.php', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `flujoprocesousuario`
--

CREATE TABLE IF NOT EXISTS `flujoprocesousuario` (
  `codtramite` varchar(10) DEFAULT NULL,
  `codflujo` varchar(10) DEFAULT NULL,
  `codproceso` varchar(10) DEFAULT NULL,
  `codusuario` varchar(10) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flujoprocesousuario`
--

INSERT INTO `flujoprocesousuario` (`codtramite`, `codflujo`, `codproceso`, `codusuario`, `estado`) VALUES
('02', 'F2', 'P1', 'JJJ', 'P'),
('01', 'F1', 'P2', 'JJJ', 'F'),
('01', 'F1', 'P4', 'JJJ', 'F'),
('03', 'F1', 'P3', 'KKK', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proceso` varchar(5) NOT NULL,
  `falso` varchar(5) NOT NULL,
  `verdad` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `proceso`, `falso`, `verdad`) VALUES
(1, 'P2', 'P3', 'P4'),
(2, 'P5', 'P1', 'P6'),
(3, 'P8', 'P7', 'P9');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(20) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `rol` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`usuario`, `clave`, `rol`) VALUES
('Juan', '123456', 'E'),
('Maria', '123456', 'E'),
('Ana', '123456', 'E'),
('Luis', '123456', 'E'),
('Rene', '123456', 'E'),
('Roberto', '123456', 'K'),
('Virginia', '123456', 'K');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
