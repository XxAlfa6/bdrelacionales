-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2025 a las 02:20:33
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
-- Base de datos: `spotify_4`
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

--
-- Volcado de datos para la tabla `artisacanciones`
--

INSERT INTO `artisacanciones` (`id`, `asrtista_id`, `canciones_id`) VALUES
(1, 8, 3),
(2, 8, 21),
(3, 8, 19),
(4, 4, 17),
(5, 4, 18),
(6, 4, 16),
(7, 6, 5),
(8, 6, 32),
(9, 6, 29),
(10, 5, 6),
(11, 5, 40);

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
(3, 'Banda MS', 'La Banda MS, de Sergio Lizárraga, es una agrupación de música regional mexicana'),
(4, 'Ariana Grande', 'Ariana Grande-Butera (Boca Ratón, 26 de junio de 1993) es una cantante y compositora norteamericana.'),
(5, 'La Chelo', 'Cantante, compositora y actriz'),
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
(8, 'El Color De Tus Ojos', 2, '00:03:22', '2008-12-30', 1, 'el color de tus ojos.jpg'),
(9, 'Art deco', 1, '00:04:55', '2015-09-02', 1, 'Art deco.jpg'),
(10, 'say yes to haven ', 1, '00:03:29', '2018-01-25', 1, 'say yes to haven.jpg'),
(11, 'Brooklyn Baby', 1, '00:05:51', '2020-12-04', 1, 'Brooklyn Baby.jpg'),
(12, 'Sad Girl', 1, '00:05:17', '2021-07-14', 1, 'sad girl.jpg'),
(13, 'West Coast ', 1, '00:04:16', '2026-03-20', 1, 'west coast.jpg'),
(14, 'Dangerous Woman ', 1, '00:03:55', '2020-04-09', 1, 'dangerous woman.jpg'),
(15, 'One Last Time', 1, '00:03:17', '2015-08-23', 1, 'one last time.jpg'),
(16, 'Problem ', 1, '00:03:13', '2010-07-24', 1, 'problem.jpg'),
(17, 'Into You', 1, '00:04:04', '2012-12-20', 1, 'into you.jpg'),
(18, 'Moonlight', 1, '00:03:22', '2014-07-26', 1, 'moonlight.jpg'),
(19, 'Tally', 3, '00:03:04', '2022-09-16', 1, 'tally.jpg'),
(20, 'Dont know What To Do', 3, '00:03:21', '2019-04-05', 1, 'dont know what to do.jpg'),
(21, 'Pink Venom', 3, '00:03:06', '2022-09-16', 1, 'pink venom.jpg'),
(22, 'As if its your last', 3, '00:03:33', '2017-06-22', 1, 'as if its your last.jpg'),
(23, 'Crazy Over You', 3, '00:02:03', '2020-10-02', 1, 'crazy over you.jpg'),
(24, 'El perdedor', 5, '00:03:26', '2015-10-16', 1, 'el perdedor.jpg'),
(25, 'Me gustas', 5, '00:03:36', '2015-10-16', 1, 'me gustas.jpg'),
(26, 'Pretextos', 5, '00:03:48', '2015-10-16', 1, 'pretextos.jpg'),
(27, 'Felices los 4', 5, '00:03:50', '2018-05-18', 1, 'felices los 4.jpg'),
(28, 'Prestamos', 5, '00:03:39', '2018-05-18', 1, 'prestamos.jpg'),
(29, 'NDA', 1, '00:03:15', '2021-07-30', 1, 'nda.jpg'),
(30, 'My future', 1, '00:03:30', '2021-07-30', 1, 'my future.jpg'),
(31, 'Oxytocin', 1, '00:03:30', '2021-07-30', 1, 'oxytocin.jpg'),
(32, 'GOLDWING', 1, '00:02:31', '2021-07-30', 1, 'golwing.jpg'),
(33, 'Lost Cause', 1, '00:03:32', '2021-07-30', 1, 'lost cause.jpg'),
(34, 'MOUNTAINS', 3, '00:03:07', '2024-07-19', 1, 'mountains.jpg'),
(35, 'l ike it', 3, '00:02:28', '2024-07-19', 1, 'i like it.jpg'),
(36, 'Stray Kids', 3, '00:03:09', '2024-07-19', 1, 'stray kids.jpg'),
(37, 'Runners', 3, '00:03:16', '2024-07-19', 1, 'runners.jpg'),
(38, 'JJAM', 3, '00:03:05', '2024-07-19', 1, 'jjam.jpg'),
(39, 'A cambio de que', 8, '00:03:15', '2004-02-20', 1, 'a cambio de que.jpg'),
(40, 'La mortaja', 8, '00:02:54', '2004-02-20', 1, 'la mortaja.jpg'),
(41, 'Ya Me Voy', 8, '00:03:52', '2004-02-20', 1, 'ya me voy.jpg'),
(42, 'Dos Gotas De Agua', 8, '00:02:31', '2004-02-20', 1, 'dos gotas de agua.jpg'),
(43, 'Que sacrificio ', 8, '00:02:54', '2004-02-20', 1, 'que sacrificio.jpg'),
(44, 'Tu Postura', 2, '00:04:41', '2017-04-21', 1, 'tu postura.jpg'),
(45, 'No Era Para Siempre ', 2, '00:03:33', '2017-04-21', 1, 'no era para siempre.jpg'),
(46, 'A Mi Tambien Me Vale', 2, '00:03:18', '2017-04-21', 1, 'a mi tambien me vale.jpg'),
(47, 'La Mejor Version De Mi', 2, '00:02:48', '2017-04-21', 1, 'la mejor version de mi.jpg'),
(48, 'No Es Por Presumido', 2, '00:02:22', '2017-04-21', 1, 'no es por presumido.jpg');

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
-- Estructura de tabla para la tabla `playlist_1`
--

CREATE TABLE `playlist_1` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `decripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist_1`
--

INSERT INTO `playlist_1` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `decripcion`, `publico`) VALUES
(1, 'Dormir', 2, '02:00:00', 34, 'Dormir ', 1),
(2, 'Estudiar', 5, '02:00:00', 34, 'Estudiar', 0),
(3, 'Limpiar', 1, '01:00:00', 20, 'Para limpiar la casa', 1),
(4, 'Llorar ', 6, '04:00:00', 50, 'Para dar una lloradita ', 0),
(5, 'Viajes', 3, '10:00:00', 121, 'Para cuando vallamos de viaje', 1);

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
-- Indices de la tabla `playlistacanciones`
--
ALTER TABLE `playlistacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist_1`
--
ALTER TABLE `playlist_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
-- AUTO_INCREMENT de la tabla `playlist_1`
--
ALTER TABLE `playlist_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_1` (`id`);

--
-- Filtros para la tabla `playlistacanciones`
--
ALTER TABLE `playlistacanciones`
  ADD CONSTRAINT `playlistacanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistacanciones_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_1` (`id`),
  ADD CONSTRAINT `playlistacanciones_ibfk_3` FOREIGN KEY (`playlist_id`) REFERENCES `playlist_1` (`id`);

--
-- Filtros para la tabla `playlist_1`
--
ALTER TABLE `playlist_1`
  ADD CONSTRAINT `playlist_1_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_1` (`id`);

--
-- Filtros para la tabla `usuarios_1`
--
ALTER TABLE `usuarios_1`
  ADD CONSTRAINT `usuarios_1_ibfk_1` FOREIGN KEY (`Membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
