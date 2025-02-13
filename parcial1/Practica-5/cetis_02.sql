-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2025 a las 01:23:13
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
-- Base de datos: `cetis_02`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `Materias_id` int(11) NOT NULL,
  `Maestro_id` int(11) NOT NULL,
  `Hora` time NOT NULL,
  `Aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `Materias_id`, `Maestro_id`, `Hora`, `Aula`) VALUES
(1, 7, 1, '17:00:00', 'CC1'),
(2, 8, 2, '13:00:00', 'CC1'),
(3, 9, 5, '15:00:00', '12'),
(4, 4, 4, '17:00:00', '12'),
(5, 3, 9, '16:00:00', '12'),
(6, 6, 10, '18:00:00', '12'),
(7, 2, 8, '17:00:00', '12'),
(8, 5, 3, '15:00:00', '12'),
(9, 1, 7, '15:00:00', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidadess`
--

CREATE TABLE `especialidadess` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidadess`
--

INSERT INTO `especialidadess` (`id`, `Nombre`, `Descripcion`) VALUES
(1, 'Programacion', 'organizar una secuencia de pasos ordenados a seguir para hacer cierta cosa.'),
(2, 'Contabilidad', 'registrar, clasificar, analizar, interpretar y comunicar la información financiera de una empresa'),
(3, 'ofimatica', 'elementos informáticos que se enfocan en automatizar y optimizar las tareas y funciones diarias en la oficina'),
(4, 'diseño grafico ', 'crean imágenes y diseños para algunos de los siguientes elementos: Identidad de marca de la empresa (logotipos, tipografía y paletas de colores) Interfaces de usuario en aplicaciones y sitios web'),
(5, 'electronica ', 'conocimientos matemáticos en el estudio de sistemas cuyo funcionamiento se basa en la conducción y el control del flujo de la electricidad'),
(6, 'construccion  ', 'obras duraderas, especialmente edificaciones, empleando para ello los saberes de la ingeniería, la arquitectura y el diseño');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`) VALUES
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Tutoria', 4),
(2, 'Recursos socioemocionales ', 4),
(3, 'Ingles ', 4),
(4, 'Conciencia Historica ', 4),
(5, 'Temas selectos de Matematicas', 4),
(6, 'Reacciones Quimicas ', 4),
(7, 'Base de datos relacionadas ', 4),
(8, 'Bases de datos no relacionadas ', 4),
(9, 'Ciencias sociales ', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Materias_id` (`Materias_id`),
  ADD KEY `Maestro_id` (`Maestro_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidadess`
--
ALTER TABLE `especialidadess`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especialidadess`
--
ALTER TABLE `especialidadess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`Materias_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`Maestro_id`) REFERENCES `maestros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
