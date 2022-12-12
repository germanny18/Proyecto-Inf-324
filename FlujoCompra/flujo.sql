-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 20:41:19
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flujo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujo`
--
-- Creación: 31-10-2022 a las 16:33:08
-- Última actualización: 12-12-2022 a las 06:42:00
--

CREATE TABLE `flujo` (
  `flujo` varchar(3) DEFAULT NULL,
  `proceso` varchar(3) DEFAULT NULL,
  `proceso_siguiente` varchar(3) DEFAULT NULL,
  `tipo` varchar(3) DEFAULT NULL,
  `rol` varchar(10) DEFAULT NULL,
  `pantalla` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujo`
--

INSERT INTO `flujo` (`flujo`, `proceso`, `proceso_siguiente`, `tipo`, `rol`, `pantalla`) VALUES
('f1', 'P1', 'P2', 'I', 'usuario', 'inicial'),
('f1', 'P2', 'P3', 'P', 'evaluador', 'datos'),
('f1', 'P3', '', 'C', 'evaluador', 'revision'),
('f1', 'P4', '', 'F', 'evaluador', 'si'),
('f1', 'P5', '', 'F', 'evaluador', 'no'),
('f1', 'P6', 'P7', 'P', 'evaluador', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujocondicion`
--
-- Creación: 11-12-2022 a las 16:38:06
-- Última actualización: 12-12-2022 a las 06:30:53
--

CREATE TABLE `flujocondicion` (
  `flujo` varchar(3) DEFAULT NULL,
  `proceso` varchar(3) DEFAULT NULL,
  `procesoSI` varchar(3) DEFAULT NULL,
  `procesoNO` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujocondicion`
--

INSERT INTO `flujocondicion` (`flujo`, `proceso`, `procesoSI`, `procesoNO`) VALUES
('F1', 'P3', 'P4', 'P5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujotramite`
--
-- Creación: 09-11-2022 a las 19:01:07
--

CREATE TABLE `flujotramite` (
  `Flujo` varchar(3) DEFAULT NULL,
  `proceso` varchar(3) DEFAULT NULL,
  `nro_tramite` int(11) DEFAULT NULL,
  `fechaini` datetime DEFAULT NULL,
  `fechafin` datetime DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujotramite`
--

INSERT INTO `flujotramite` (`Flujo`, `proceso`, `nro_tramite`, `fechaini`, `fechafin`, `usuario`) VALUES
('F1', 'P1', 500, '2022-10-18 10:30:00', '2022-10-18 11:00:00', 'moises'),
('F1', 'P2', 500, '2022-10-18 11:00:00', NULL, 'moises'),
('F1', 'P1', 500, '2022-10-18 11:30:00', NULL, 'maria');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
