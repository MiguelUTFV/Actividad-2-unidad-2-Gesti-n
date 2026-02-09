  -- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2025 a las 23:53:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `videojuegos1`

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `compatibilidad` varchar(255) NOT NULL,
  `fisico_o_digital` enum('Fisico','Digital') NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `impuestos` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id`, `nombre`, `compatibilidad`, `fisico_o_digital`, `precio`, `impuestos`) VALUES
(1, 'God Of War', 'con todos', 'Digital', 8000.00, 900.00),
(2, 'Blasphemous', 'Compatible con Todas la plataformas', 'Digital', 1350.00, 135.00),
(3, 'Holow Ninght', 'Compatible con Todas la  plataformas', 'Fisico', 900.00, 90.00),
(4, 'Call Of Duty', 'Compatible con Todas la  plataformas', 'Digital', 1900.00, 190.00),
(5, 'Eldenring', 'Compatible con Todas la  plataformas', 'Fisico', 1500.00, 150.00),
(6, 'Fifa 23', 'Compatible con Todas la  plataformas', 'Digital', 2000.00, 200.00),
(7, 'Forza Horizon', 'Compatible con Todas la  plataformas', 'Fisico', 1140.00, 140.00),
(8, 'Grand theft auto', 'Compatible con Todas la  plataformas', 'Digital', 550.00, 50.00),
(9, 'Ray May', 'Compatible con XBOX', 'Fisico', 1300.00, 300.00),
(10, 'The Walking Dead', 'Compatible con XBOX', 'Digital', 1800.00, 280.00),
(11, 'Recore', 'Compatible con XBOX', 'Digital', 500.00, 50.00),
(12, 'FarCry', 'Compatible con XBOX', 'Fisico', 999.00, 99.00),
(13, 'The Division', 'Compatible con XBOX', 'Digital', 429.00, 75.00),
(14, 'Quantum break', 'Compatible con XBOX', 'Fisico', 402.00, 85.00),
(15, 'Need For Speed', 'Compatible con XBOX', 'Digital', 630.00, 66.00),
(16, 'Fallout', 'Compatible con XBOX', 'Fisico', 666.00, 66.00),
(17, 'Tomb Raider', 'Compatible con XBOX', 'Digital', 1799.00, 299.00),
(18, 'Dels ex', 'Compatible con XBOX', 'Fisico', 1499.00, 125.00),
(19, 'Killzone: Shadow Fall', 'Compatible con Play station 4,5', 'Fisico', 299.99, 99.00),
(20, 'Infamous: Second Son', 'Compatible con Play station 4,5', 'Digital', 729.00, 229.00),
(21, 'Until Dawn', 'Compatible con Play station 4,5', 'Fisico', 599.99, 199.00),
(22, 'Bloodborne', 'Compatible con Play station 4,5', 'Digital', 2198.00, 198.00),
(23, 'Horizon: Zero Dawn', 'Compatible con Play station 4,5', 'Fisico', 749.99, 129.00),
(24, 'Marvels Spider-Man', 'Compatible con Play station 4,5', 'Digital', 704.00, 107.00),
(25, 'Gravity Rush 2', 'Compatible con Play station 4,5', 'Fisico', 2996.00, 196.00),
(26, 'Shadow of the Colossus', 'Compatible con Play station 4,5', 'Digital', 972.00, 172.00),
(27, 'God of War 2018', 'Compatible con Play station 4,5', 'Fisico', 748.00, 148.00),
(28, 'Detroit: Become Human', 'Compatible con Play station 4,5', 'Digital', 2843.00, 284.00),
(29, 'Age Empires', 'Compatible con PC', 'Fisico', 560.99, 169.00),
(30, 'Anno 1800', 'Compatible con PC', 'Digital', 700.00, 170.00),
(31, 'Battletech', 'Compatible con PC', 'Fisico', 1200.00, 200.00),
(32, 'Black Mesa', 'Compatible con PC', 'Digital', 200.00, 120.00),
(33, 'Crusader Kings', 'Compatible con PC', 'Fisico', 700.00, 170.00),
(34, 'Dota 2', 'Compatible con PC', 'Digital', 800.00, 180.00),
(35, 'Escape from Tarkov', 'Compatible con PC', 'Fisico', 1300.00, 130.00),
(36, 'Europa Universalis IV', 'Compatible con PC', 'Digital', 900.00, 190.00),
(37, 'EVE Online', 'Compatible con PC', 'Fisico', 750.00, 150.00),
(38, 'Garry s Mod', 'Compatible con PC', 'Digital', 200.00, 75.00),
(39, 'Super Smash Bros', 'Compatible con Nintendo', 'Fisico', 2100.00, 210.00),
(40, 'Mario Kart 8 Deluxe', 'Compatible con Nintendo', 'Digital', 2000.00, 200.00),
(41, 'The Legend of Zelda: Breath of the Wild', 'Compatible con Nintendo', 'Fisico', 1345.00, 134.00),
(42, 'Marvel Ultimate Alliance 3: The Black Order', 'Compatible con Nintendo', 'Digital', 1750.00, 175.00),
(43, 'Nino kuni 2', 'Compatible con Nintendo', 'Fisico', 900.00, 90.00),
(44, 'Wario ware nintendo switch', 'Compatible con Nintendo', 'Digital', 1200.00, 120.00),
(45, 'hyrule warriors age of calamity', 'Compatible con Nintendo', 'Fisico', 2454.00, 245.00),
(46, 'kirby y la tierra olvidada', 'Compatible con Nintendo', 'Digital', 2200.00, 200.00),
(47, 'Xenoblade chronicles 2', 'Compatible con Nintendo', 'Fisico', 1500.00, 150.00),
(48, 'Snipperclips switch', 'Compatible con Nintendo', 'Digital', 800.00, 180.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `videoJuegoNombre` varchar(255) NOT NULL,
  `numeroJuego` int(11) NOT NULL,
  `compatibilidad` varchar(50) NOT NULL,
  `fiOdi` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `impuestos` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `nombreCliente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `pApellido` varchar(100) DEFAULT NULL,
  `sApellido` varchar(100) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `id` int(11) NOT NULL,
  `dueno` varchar(255) DEFAULT NULL,
  `numero` bigint(20) DEFAULT NULL,
  `fecha` int(11) DEFAULT NULL,
  `ccv` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dueno` (`dueno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
