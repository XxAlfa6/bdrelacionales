-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:21:35
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
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `Genero` tinyint(1) NOT NULL,
  `Correo` varchar(80) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `Nombre`, `Apellido`, `numero_control`, `fecha_nacimiento`, `Genero`, `Correo`, `Telefono`) VALUES
(1, 'rosselyn', 'esparza uriarte', '233250661070528', '2008-12-20', 0, 'rosselyn.esparza23@cetis107.edu.mx', '6674093254'),
(2, 'krisell bettina', 'angulo garcia', '23325061070627', '2008-05-30', 0, 'krisell.angulo23@cetis107.edu.mx', '6674093256'),
(3, 'ana sofia', 'delgado german', '233250661070323', '2008-08-20', 0, 'ana.german23@cetis107.edu.mx', '6674259845'),
(4, 'diego joan', 'domingues lizarraga', '23325061070579', '2008-12-10', 1, 'diego.domingues23@cetis107.edu.mx', '6645792157'),
(5, 'victor manuel ', 'diaz gastelum ', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '6647851258'),
(6, 'angel daniel ', 'gastelum rocha', '23325051070380', '2008-01-05', 1, 'angel.gastelum23@cetis107.edu.mx', ''),
(7, 'paolo nicholas', 'valdez bernal', '23325052240460', '2008-10-27', 1, 'paolo.valdez23@cetis107.edu.mx', '6648924569'),
(8, 'chistopher israel ', 'martinez valenzuela', '23325052240480', '2008-03-04', 1, 'chistopher.martinez23@cetis107.edu.mx', '6648924586'),
(9, 'jonathan horus ', 'zazueta hernandez ', '23325061070413', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6648523648'),
(10, 'frida sofia', 'sanchez valenzuela ', '23325061070611', '2008-01-10', 0, 'frida.sanchez23@cetis107.edu.mx', '6658741259');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
