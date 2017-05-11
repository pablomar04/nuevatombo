-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2017 a las 00:03:07
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tombo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupones`
--

CREATE TABLE IF NOT EXISTS `cupones` (
  `id_cupon` int(11) NOT NULL,
  `jugador` text NOT NULL,
  `p1` text NOT NULL,
  `p2` text NOT NULL,
  `p3` text NOT NULL,
  `p4` text NOT NULL,
  `p5` text NOT NULL,
  `p6` text NOT NULL,
  `p7` text NOT NULL,
  `p8` text NOT NULL,
  `p9` text NOT NULL,
  `p10` text NOT NULL,
  `p11` text NOT NULL,
  `p12` text NOT NULL,
  `p13` text NOT NULL,
  `p14` text NOT NULL,
  `p15` text NOT NULL,
  `Estado` text NOT NULL,
  `Puntos` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cupones`
--

INSERT INTO `cupones` (`id_cupon`, `jugador`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `Estado`, `Puntos`) VALUES
(1, 'Juan Pablo', 'L', 'L', 'E', 'V', 'E', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'PENDIENTE', 11),
(2, 'Juan Pablo', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'PENDIENTE', 14),
(3, 'Juan Pablo', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'PENDIENTE', 14),
(4, 'Juan Pablo', 'L', 'L', 'E', 'V', 'E', 'L', 'E', 'V', 'E', 'L', 'E', 'V', 'E', 'L', 'E', 'PENDIENTE', 5),
(5, 'JP', 'L', 'E', 'V', 'E', 'L', 'E', 'V', 'E', 'L', 'E', 'V', 'E', 'L', 'E', 'V', 'PENDIENTE', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuponganador`
--

CREATE TABLE IF NOT EXISTS `cuponganador` (
  `id_cupon` int(11) NOT NULL,
  `p1` text NOT NULL,
  `p2` text NOT NULL,
  `p3` text NOT NULL,
  `p4` text NOT NULL,
  `p5` text NOT NULL,
  `p6` text NOT NULL,
  `p7` text NOT NULL,
  `p8` text NOT NULL,
  `p9` text NOT NULL,
  `p10` text NOT NULL,
  `p11` text NOT NULL,
  `p12` text NOT NULL,
  `p13` text NOT NULL,
  `p14` text NOT NULL,
  `p15` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuponganador`
--

INSERT INTO `cuponganador` (`id_cupon`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`) VALUES
(1, 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', 'L', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE IF NOT EXISTS `equipos` (
  `id_equipo` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_equipo`, `nombre`) VALUES
(1, 'Aldosivi'),
(2, 'Arsenal'),
(3, 'Atlético de Rafaela'),
(4, 'Atlético Tucumán'),
(5, 'Banfield'),
(6, 'Belgrano'),
(7, 'Boca Juniors'),
(8, 'Colon'),
(9, 'Defensa y Justicia'),
(10, 'Estudiantes de La Plata'),
(11, 'Gimnasia y Esgrima La Plata'),
(12, 'Godoy Cruz'),
(13, 'Huracán'),
(14, 'Independiente'),
(15, 'Lanús'),
(16, 'Newells Old Boys'),
(17, 'Olimpo'),
(18, 'Patronato'),
(19, 'Quilmes'),
(20, 'Racing Club'),
(21, 'River Plate'),
(22, 'Rosario Central'),
(23, 'San Lorenzo'),
(24, 'San Martín'),
(25, 'Sarmiento'),
(26, 'Talleres'),
(27, 'Temperley'),
(28, 'Tigre'),
(29, 'Unión'),
(30, 'Vélez Sarfield');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechaactual`
--

CREATE TABLE IF NOT EXISTS `fechaactual` (
  `id_partido` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `foreing_id_e1` int(11) NOT NULL,
  `foreing_id_e2` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fechaactual`
--

INSERT INTO `fechaactual` (`id_partido`, `numero`, `foreing_id_e1`, `foreing_id_e2`) VALUES
(3, 1, 24, 12),
(4, 2, 3, 4),
(5, 3, 5, 15),
(6, 4, 10, 11),
(7, 5, 13, 23),
(8, 6, 17, 1),
(9, 7, 26, 6),
(10, 8, 7, 21),
(11, 9, 8, 29),
(12, 10, 14, 20),
(13, 11, 16, 22),
(14, 12, 18, 25),
(15, 13, 2, 27),
(16, 14, 9, 19),
(17, 15, 30, 28);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD PRIMARY KEY (`id_cupon`);

--
-- Indices de la tabla `cuponganador`
--
ALTER TABLE `cuponganador`
  ADD PRIMARY KEY (`id_cupon`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `fechaactual`
--
ALTER TABLE `fechaactual`
  ADD PRIMARY KEY (`id_partido`), ADD KEY `foreing_id_e1` (`foreing_id_e1`), ADD KEY `foreing_id_e2` (`foreing_id_e2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cupones`
--
ALTER TABLE `cupones`
  MODIFY `id_cupon` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `cuponganador`
--
ALTER TABLE `cuponganador`
  MODIFY `id_cupon` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `fechaactual`
--
ALTER TABLE `fechaactual`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fechaactual`
--
ALTER TABLE `fechaactual`
ADD CONSTRAINT `fechaactual_ibfk_1` FOREIGN KEY (`foreing_id_e1`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fechaactual_ibfk_2` FOREIGN KEY (`foreing_id_e2`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
