-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2017 a las 05:21:57
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `workflow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `coddepartamento` varchar(2) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`codigo`, `nombre`, `coddepartamento`, `sexo`) VALUES
('0200', 'MM', '01', 'F'),
('0300', 'FC', '03', 'M'),
('100', 'MS', '01', 'M'),
('123', '123', '01', NULL),
('2222', '2222', '01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujoproceso`
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
-- Volcado de datos para la tabla `flujoproceso`
--

INSERT INTO `flujoproceso` (`codflujo`, `codproceso`, `tipo`, `codprocesonext`, `forumlario`, `codrol`) VALUES
('F1', 'P1', 'I', 'P2', 'inicio.php', 'A'),
('F1', 'P2', 'P', 'P3', 'solicita.php', 'A'),
('F1', 'P3', 'P', 'P4', 'registra.php', 'K'),
('F1', 'P4', 'Q', NULL, 'pregunta.php', 'K'),
('F1', 'P5', 'P', 'P6', 'control.php', 'D'),
('F1', 'P6', 'F', NULL, 'fin.php', 'D'),
('F2', 'P1', 'I', 'P2', 'inicio.php', 'A'),
('F3', 'P1', 'I', 'P2', 'inicio.php', 'S'),
('F4', 'P1', 'I', 'P2', 'inicio.php', 'K');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujoprocesousuario`
--

CREATE TABLE IF NOT EXISTS `flujoprocesousuario` (
  `codtramite` varchar(10) DEFAULT NULL,
  `codflujo` varchar(10) DEFAULT NULL,
  `codproceso` varchar(10) DEFAULT NULL,
  `codusuario` varchar(10) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `flujoprocesousuario`
--

INSERT INTO `flujoprocesousuario` (`codtramite`, `codflujo`, `codproceso`, `codusuario`, `estado`) VALUES
('02', 'F2', 'P1', 'moi', 'P'),
('01', 'F1', 'P1', 'moi', 'F'),
('01', 'F1', 'P2', 'moi', 'F'),
('01', 'F1', 'P3', 'marco', 'P'),
('05', 'F1', 'P1', 'moi', 'P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(20) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `rol` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `clave`, `rol`) VALUES
('moi', '123456', 'A'),
('anita', '123456', 'S'),
('marco', '123456', 'K');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
