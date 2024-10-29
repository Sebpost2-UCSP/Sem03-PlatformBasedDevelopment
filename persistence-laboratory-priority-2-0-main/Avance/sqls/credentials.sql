-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2021 a las 15:41:13
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
-- Estructura de tabla para la tabla `credentials`
--

CREATE TABLE `credentials` (
  `login_ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `credentials`
--

INSERT INTO `credentials` (`login_ID`, `username`, `password`, `role`, `nombre`) VALUES
(1, 'test', '$2y$10$wCbcCCFX9OJEKpruuFqTCuS7UGPvPcA9U6mkEA0ZaKj2w6N0hvnHW', 'contribuidor', 'la contra es test'),
(2, 'sebpost', '$2y$10$H6REneRNfpsdQDP.4qY1veHyq4jAiQaSAf/MqCEpfIyjSx91fJw1e', 'lider', 'Sebastian Postigo'),
(3, 'test2', '$2y$10$d76Spa6GdEOX/r0m3NNLAeOqWO4wXKWu1SXKQockNcZ5H.IR99Y7u', 'lider', 'testeo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`login_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `credentials`
--
ALTER TABLE `credentials`
  MODIFY `login_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
