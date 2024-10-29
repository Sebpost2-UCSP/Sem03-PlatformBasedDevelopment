-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2021 a las 15:42:40
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `demo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task`
--

CREATE TABLE `task` (
  `task_ID` bigint(20) UNSIGNED NOT NULL,
  `task_description` varchar(256) NOT NULL,
  `created_by_ID` int(11) NOT NULL,
  `created_for_ID` int(11) NOT NULL,
  `group_ID` int(11) NOT NULL,
  `priority_level` int(11) NOT NULL,
  `due_time` datetime NOT NULL,
  `public` tinyint(1) NOT NULL,
  `finished` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `task`
--

INSERT INTO `task` (`task_ID`, `task_description`, `created_by_ID`, `created_for_ID`, `group_ID`, `priority_level`, `due_time`, `public`, `finished`) VALUES
(11, 'Hello World', 1, 1, 1, 1, '2021-05-02 19:49:00', 0, 1),
(12, 'Say Hello', 1, 1, 1, 1, '2021-05-07 16:50:00', 1, 1),
(13, 'cook', 2, 3, 1, 2, '2021-05-13 07:52:00', 1, 0),
(14, 'parcial', 1, 2, 1, 2, '2021-05-08 07:58:00', 1, 0),
(15, 'parcial2', 2, 1, 1, 4, '2021-06-06 07:59:00', 1, 1),
(16, 'cook2', 1, 2, 1, 2, '2021-05-30 08:30:00', 1, 0),
(17, 'test', 1, 2, 1, 2, '2021-05-07 08:37:00', 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_ID`) USING BTREE,
  ADD KEY `group_ID` (`group_ID`),
  ADD KEY `group_ID_2` (`group_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `task`
--
ALTER TABLE `task`
  MODIFY `task_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
