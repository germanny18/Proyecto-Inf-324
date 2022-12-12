-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 11:16:44
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico_3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `cod` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `hora_inicio` varchar(6) DEFAULT NULL,
  `hora_fin` varchar(6) DEFAULT NULL,
  `ingreso` double(6,2) DEFAULT NULL,
  `egreso` double(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`cod`, `descripcion`, `fecha_inicio`, `fecha_fin`, `hora_inicio`, `hora_fin`, `ingreso`, `egreso`) VALUES
('C1', 'caja1', '2022-10-12', '2022-10-12', '08:00', '16:00', 120.00, 80.00),
('C2', 'caja2', '2022-10-12', '2022-10-12', '08:00', '16:00', 107.00, 95.00),
('C3', 'caja3', '2022-10-12', '2022-10-12', '08:00', '16:00', 175.00, 120.00),
('C4', 'caja4', '2022-10-12', '2022-10-12', '08:00', '16:00', 152.00, 96.00),
('C5', 'caja5', '2022-10-12', '2022-10-12', '08:00', '16:00', 128.00, 100.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajacierre`
--

CREATE TABLE `cajacierre` (
  `ci` varchar(50) DEFAULT NULL,
  `cod` varchar(100) DEFAULT NULL,
  `saldo` double(6,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `obs` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cajacierre`
--

INSERT INTO `cajacierre` (`ci`, `cod`, `saldo`, `fecha`, `obs`) VALUES
('11', 'C1', 50.00, '2022-12-12', 'Saldo ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronograma`
--

CREATE TABLE `cronograma` (
  `facultad` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `hora_inicio` varchar(6) DEFAULT NULL,
  `hora_fin` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cronograma`
--

INSERT INTO `cronograma` (`facultad`, `fecha_inicio`, `fecha_fin`, `hora_inicio`, `hora_fin`) VALUES
('Agronomia', '2020-08-01', '2020-08-22', '09:00', '18:30'),
('Ciencias Geologicas', '2020-08-25', '2020-09-10', '09:00', '18:30'),
('Ciencias Puras y Naturales', '2020-09-11', '2020-09-18', '09:00', '18:30'),
('Ciencias Farmaceuticas y Bioquimica', '2020-09-19', '2020-09-25', '09:00', '18:30'),
('Ciencias Economicas y Finanacieras', '2020-09-26', '2020-10-07', '09:00', '18:30'),
('Medicina, Nutricion, Enfermeria, Tecnologia Medica y Programas', '2020-10-08', '2020-10-19', '09:00', '18:30'),
('Odontologia', '2020-10-22', '2020-10-25', '09:00', '18:30'),
('Arquitectura y Artes', '2020-08-11', '2020-08-13', '09:00', '18:30'),
('Ciencias Sociales', '2020-08-14', '2020-08-28', '09:00', '18:30'),
('Derecho', '2020-08-29', '2020-09-13', '09:00', '18:30'),
('Humanidades y Ciencias de la Educacion', '2020-09-17', '0000-00-00', '09:00', '18:30'),
('Ingenieria', '2020-10-01', '2020-10-14', '09:00', '18:30'),
('Tecnologia', '2020-10-15', '2020-10-24', '09:00', '18:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `ci_estudiante` varchar(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `facultad` varchar(100) DEFAULT NULL,
  `carrera` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`ci_estudiante`, `nombre`, `apellidos`, `facultad`, `carrera`) VALUES
('1', 'Alvaro', 'Mamani', 'Agronomia', 'Ambiental');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `ci_estudiante` varchar(10) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `peso` double(6,2) DEFAULT NULL,
  `talla` double(3,2) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`ci_estudiante`, `nombre`, `apellidos`, `peso`, `talla`, `estado`) VALUES
('1', 'Alvaro', 'Mamani', 70.00, 1.65, 'Normal'),
('1', '', '', 79.00, 1.65, 'Normal'),
('1', '', '', 2.00, 5.00, 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicecorporal`
--

CREATE TABLE `indicecorporal` (
  `masainf` double(6,2) DEFAULT NULL,
  `masaext` double(6,2) DEFAULT NULL,
  `clasificacion` varchar(100) DEFAULT NULL,
  `riesgo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `indicecorporal`
--

INSERT INTO `indicecorporal` (`masainf`, `masaext`, `clasificacion`, `riesgo`) VALUES
(10.00, 18.50, 'Deficit de masa corporal', 'Bajo (riesgo de enfermedades)'),
(18.50, 24.90, 'Masa corporal normal', 'Normal'),
(25.00, 29.90, 'Sobrepeso', 'Elevado'),
(30.00, 34.90, 'Obesidad leve', 'Alto'),
(35.00, 39.90, 'Obesidad media', 'Muy alto'),
(39.90, 50.00, 'Obesidad morbida', 'Inminente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `ci` varchar(10) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`ci`, `clave`) VALUES
('11', 'aa'),
('12', 'ab'),
('1', 'holabb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nutriologo`
--

CREATE TABLE `nutriologo` (
  `ci_nutriologo` varchar(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nutriologo`
--

INSERT INTO `nutriologo` (`ci_nutriologo`, `nombre`, `apellidos`) VALUES
('11', 'Angela', 'Arenas'),
('12', 'Lourdes', 'Quenta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoracion`
--

CREATE TABLE `valoracion` (
  `ci_estudiante` varchar(10) DEFAULT NULL,
  `peso` double(6,2) DEFAULT NULL,
  `talla` double(3,2) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `valoracion`
--

INSERT INTO `valoracion` (`ci_estudiante`, `peso`, `talla`, `estado`) VALUES
('1', 70.00, 1.65, 'Normal'),
('1', 2.00, 5.00, 'Normal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`ci_estudiante`);

--
-- Indices de la tabla `nutriologo`
--
ALTER TABLE `nutriologo`
  ADD PRIMARY KEY (`ci_nutriologo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
