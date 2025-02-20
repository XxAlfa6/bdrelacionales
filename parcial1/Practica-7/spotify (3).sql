-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2025 a las 01:14:55
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artisacanciones`
--

CREATE TABLE `artisacanciones` (
  `id` int(11) NOT NULL,
  `asrtista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Maluma', 'Juan Luis Londoño Arias (28 de enero de 1994, Medellín), conocido universalmente como Maluma, es un cantante colombiano.'),
(2, 'Lana del Rey', 'Elizabeth Woolridge Grant (Nueva York, 21 de junio de 1985),​conocida artísticamente como Lana Del Rey, es una cantante, compositora, modelo, actriz, escritora, productora y poetisa estadounidense. Lana Del Rey en el Primavera Sound Festival, 2024.\r\n'),
(3, 'Jisso', 'Kim Ji-soo (nacida el 3 de enero de 1995), más conocida como Jisoo, es una cantante, letrista, actriz y modelo surcoreana bajo YG Entertainment. Es integrandel del grupo femenino Blackpink.'),
(4, 'Ariana Grande', 'Ariana Grande-Butera (Boca Ratón, 26 de junio de 1993) es una cantante y compositora norteamericana.'),
(5, 'The weeknd', 'The Weeknd es una de las mayores estrellas del pop del siglo XXI'),
(6, 'Billie Eilish', 'Billie Eilish Pirate Baird O\'Connell ( 18 de diciembre de 2001, Los Angeles) es una cantante pop norteamericana.'),
(7, 'Stray Kids', 'Stray Kids es una boy band surcoreana formada por JYP Entertainment en 2017'),
(8, 'Blackpink', 'Blackpink, la mayor girlband del planeta. Blackpink es una girlband coreana, formada por Jisoo , Jennie , Rosé y Lisa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Ultraviolence', 1, '00:04:11', '2014-06-13', 1, 'ultraviolence.jpg'),
(2, 'the boy is mine4', 1, '00:02:52', '2023-08-24', 1, 'the boy is mine.jpg'),
(3, 'Playing with fire', 3, '00:03:17', '2022-05-05', 1, 'Playing with fire.jpg'),
(4, 'Borro cassette', 5, '00:03:27', '2019-12-25', 1, 'Borro cassette.jpg'),
(5, 'Bad guy', 1, '00:03:14', '2014-11-02', 1, 'bad guy.jpg'),
(6, 'La Lampara', 8, '00:02:39', '2002-04-10', 1, 'la lampara.jpg'),
(7, 'LALALALA', 3, '00:03:02', '2023-02-12', 1, 'LALALALA.jpg'),
(8, 'El Color De Tus Ojos', 2, '00:03:22', '2008-12-30', 1, 'el color de tus ojos.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Pop'),
(2, 'Banda'),
(3, 'K-pop'),
(4, 'corridos'),
(5, 'Reguetton '),
(6, 'Metal'),
(7, 'Rock'),
(8, 'Rancheras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `drescripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id`, `drescripcion`, `precio`) VALUES
(1, 'Premium Individual 1 cuenta para una persona.', 129),
(2, 'Premium Duo 2 cuentas para parejas que viven en el mismo domicilio.', 169),
(3, 'Premium Familiar 6 cuentas para familiares que viven en el mismo domicilio', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistacanciones`
--

CREATE TABLE `playlistacanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_1`
--

CREATE TABLE `usuarios_1` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(300) NOT NULL,
  `Membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios_1`
--

INSERT INTO `usuarios_1` (`id`, `Nombre`, `Correo`, `Membresia_id`) VALUES
(1, 'Krisell Bettina Angulo Garcia', 'krisell.angulo@cetis107.edu.mx', 1),
(2, 'Rosselyn Esparza Uriarte', 'rosselyn.esparza23@cetis107.edu.mx', 1),
(3, 'Luis Angel perez lozano', 'mandilon.perez23@cetis107.edu.mx', 1),
(4, 'Ana Sofia  Delgado German ', 'ana.delgado23@cetis107.edu.mx', 3),
(5, 'Angel Gibran Loaiza Garcia ', 'angel.loaiza23@cetis107.edu.mx', 1),
(6, 'Bayron uriel Estrada Camacho', 'bayron.estrada23@cetis107.edu.mx', 3),
(7, 'Paolo Nicholas Valdez Bernal', 'paolo.valdez23@cetis107.edu.mx', 1),
(8, 'Diego Joan Dominguez Lizarraga ', 'diego.dominguez23@cetis107.edu.mx', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asrtista_id` (`asrtista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistacanciones`
--
ALTER TABLE `playlistacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_4` (`nombre`),
  ADD KEY `nombre` (`nombre`),
  ADD KEY `nombre_2` (`nombre`),
  ADD KEY `nombre_3` (`nombre`),
  ADD KEY `membresia_id` (`membresia_id`),
  ADD KEY `membresia_id_2` (`membresia_id`);

--
-- Indices de la tabla `usuarios_1`
--
ALTER TABLE `usuarios_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Membresia_id` (`Membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_1`
--
ALTER TABLE `usuarios_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD CONSTRAINT `artisacanciones_ibfk_1` FOREIGN KEY (`asrtista_id`) REFERENCES `artista` (`id`),
  ADD CONSTRAINT `artisacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistacanciones`
--
ALTER TABLE `playlistacanciones`
  ADD CONSTRAINT `playlistacanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistacanciones_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `playlistacanciones_ibfk_3` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`);

--
-- Filtros para la tabla `usuarios_1`
--
ALTER TABLE `usuarios_1`
  ADD CONSTRAINT `usuarios_1_ibfk_1` FOREIGN KEY (`Membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
