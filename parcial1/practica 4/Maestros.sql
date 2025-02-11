-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2025 a las 00:39:26
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107_02`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Maestros`
--

INSERT INTO `Maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`) VALUES
(1, 'luis carlos', 'luis.carlos23@cetis107.edu.mx', 1, '1986-02-20'),
(2, 'francisco rochin', 'francisco.rochin23@cetis107.edu.mx', 1, '1975-09-08'),
(3, 'rosa isela uriarte gonzales ', 'rosa.gonzales23@cetis107.edu.mx', 0, '1986-08-20'),
(4, 'bettina garcia ', 'bettina.garcia23@cetis107.edu.mx0', 0, '1985-08-19'),
(5, 'amparo german', 'amparo.german23@cetis107.edu.mx', 0, '1972-11-30'),
(6, 'jesus esparza', 'jesus.esparza23@cetis107.edu.mx', 1, '1982-02-06'),
(7, 'maria teresa', 'maria.teresa23@cetis107.edu.mx', 0, '1972-01-20'),
(8, 'bastian uriarte', 'bastian.uriarte23@cetis107.edu.mx', 1, '2014-12-11'),
(9, 'guadalupe silvas', 'guadalupe.silvas23@cetis107.edu.mx', 0, '1957-12-12'),
(10, 'ghost riley', 'ghost.riley@cetis107.edu.mx', 0, '1973-04-24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Maestros`
--
ALTER TABLE `Maestros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Maestros`
--
ALTER TABLE `Maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
