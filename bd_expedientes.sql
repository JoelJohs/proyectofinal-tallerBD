-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2024 a las 21:17:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_expedientes`
--
-- -----------------------------------------------------
-- Schema Expedientes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Expedientes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_expedientes` DEFAULT CHARACTER SET utf8 ;
USE `bd_expedientes` ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedientes`
--

CREATE TABLE `expedientes` (
  `id` int(11) NOT NULL,
  `ubicacion` int(11) DEFAULT NULL,
  `Expediente` varchar(10) DEFAULT NULL,
  `Apellido1` varchar(45) DEFAULT NULL,
  `Apellido2` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `FechaNac` date DEFAULT NULL,
  `Sexo` varchar(1) DEFAULT NULL,
  `Ingreso` int(11) DEFAULT NULL,
  `Egreso` int(11) DEFAULT NULL,
  `Grupo` varchar(2) DEFAULT NULL,
  `UltimoSemestre` varchar(2) DEFAULT NULL,
  `Titulado` tinyint(4) DEFAULT NULL,
  `Licenciatura` int(11) DEFAULT NULL,
  `FechaCaptura` datetime DEFAULT NULL,
  `UsCaptura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `expedientes`
--

INSERT INTO `expedientes` (`id`, `ubicacion`, `Expediente`, `Apellido1`, `Apellido2`, `Nombre`, `FechaNac`, `Sexo`, `Ingreso`, `Egreso`, `Grupo`, `UltimoSemestre`, `Titulado`, `Licenciatura`, `FechaCaptura`, `UsCaptura`) VALUES
(1, 1, '09700', 'MARTINEZ', 'MURGUIA', 'NORMA LILIA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(3, 1, '09701', 'MEDINA', 'HERRERA', 'ABRAHAM', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(4, 1, '09702', 'MIRANDA', 'MARTINEZ', 'CLAUDIA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(5, 1, '09703', 'MORALES', 'CEJA', 'MARIA DE LOURDES', '0000-00-00', 'M', 1997, 1997, '', '1', 0, 1, '0000-00-00 00:00:00', 1),
(6, 1, '09704', 'OSEGUERA', 'VIRRUETA', 'BRAULIO', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(7, 1, '09705', 'RAMIREZ', 'SEGURA', 'ROCIO', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(8, 1, '09706', 'RAMIREZ', 'VILLANUEVA', 'MARIA DEL RAYO', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(9, 1, '09707', 'RIOS', 'LEDESMA', 'RUBICELIA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(10, 1, '09708', 'RODRIGUEZ', 'MOLINA', 'ANA LUISA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(11, 1, '09709', 'ROMERO', 'ESTRADA', 'IVAN SABAS', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(12, 1, '09710', 'ROVIRA', 'MORELOS', 'NDAHITA ANGELICA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(13, 1, '09711', 'SALGADO', 'GUDI?O', 'YARERI ALEJANDRA', '0000-00-00', 'M', 1997, 2002, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(14, 1, '09712', 'SEGOVIANO', 'AVILES', 'ARACELI', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(15, 1, '09713', 'SOTO', 'NU?EZ', 'IMURIS', '0000-00-00', 'H', 1997, 1998, '', '2', 0, 1, '0000-00-00 00:00:00', 1),
(16, 1, '09714', 'VAZQUEZ', 'CORONA', 'JAVIER', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(17, 1, '09715', 'VERONA', 'CORREA', 'MARCO POLO', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(18, 1, '09716', 'AGUILAR', 'ROA', 'ARMANDO', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(19, 1, '09717', 'BLANCO', 'CERVANTES', 'HAYDEE', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(20, 1, '09718', 'CAMPOS', 'VILLAGOMEZ', 'ITZEL', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(21, 1, '09719', 'CONTRERAS', 'MARIN', 'MARTIZA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(22, 1, '09720', 'ESQUIVEL', 'MORALES', 'ANGELICA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(23, 1, '09721', 'FLORES', 'QUIROZ', 'LETICIA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(24, 1, '09722', 'GALLARDO', 'JARILLO', 'BRENDA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(25, 1, '09723', 'GARCIA', 'HERNANDEZ', 'URIEL', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(26, 1, '09724', 'GUTIERREZ', 'PEREZ', 'DIEGO', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(27, 1, '09725', 'HERNANDEZ', 'GARCIA', 'MARIA DE JESUS', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(28, 1, '09726', 'HERNANDEZ', 'PEREZ', 'KELVYN', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(29, 1, '09727', 'HERREJON', 'GARCIA', 'MIGUEL ANGEL', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(30, 1, '09728', 'LIERA', 'ESPINOSA', 'NINFA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(31, 1, '09729', 'MARCELINO', 'GABRIEL', 'HAYDEE', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(32, 1, '09730', 'MARIN', 'CHAVEZ', 'KAREN MARLENE', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(33, 1, '09731', 'MORALES', 'ESPINOSA', 'GILBERTO', '0000-00-00', 'H', 1997, 1997, '', '1', 0, 1, '0000-00-00 00:00:00', 2),
(34, 1, '09732', 'NEGRON', 'VILLAFAN', 'URANIA JANET', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(35, 1, '09733', 'OCHOA', 'CORTES', 'MARCO ANTONIO', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(36, 1, '09734', 'OLASCOAGA', 'BEDOLLA', 'MIGUEL ANGEL', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 2),
(37, 1, '09735', 'PARRA', 'ANGEL', 'MARIA SOLEDAD', '0000-00-00', 'M', 1997, 1997, '', '1', 0, 1, '0000-00-00 00:00:00', 2),
(38, 1, '09736', 'PI?ON', 'GARNICA', 'MARICELA', '0000-00-00', 'M', 1997, 1977, '', '1', 0, 1, '0000-00-00 00:00:00', 2),
(39, 1, '09737', 'PONCE', 'REYES', 'MINERVA MARIA SALUD', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(40, 1, '09738', 'REYNEL', 'ORTIZ', 'DALIA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(41, 1, '09739', 'RIVERA', 'GONZALEZ', 'FELIPE ISAAC', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(42, 1, '09740', 'ROBLEDO', 'CASTA?EDA', 'MAYBE GISBY', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(43, 1, '09741', 'SEGOVIANO', 'TINOCO', 'JULIO CESAR', '0000-00-00', 'H', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(44, 1, '09742', 'SOLIS', 'JAIMEZ', 'JOSEFINA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(45, 1, '09743', 'VALDES', 'ESPINOZA', 'ALEJANDRA', '0000-00-00', 'M', 1997, 2001, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(46, 1, '09744', 'VILLALPANDO', 'RODRIGUEZ', 'NORMA YADIRA', '0000-00-00', 'M', 1997, 2000, '', '6', 0, 1, '0000-00-00 00:00:00', 1),
(47, 1, '09745', 'TORRES', 'CRISTIAN', 'ERIKA LLAZMIN', '0000-00-00', 'M', 1996, 2000, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(48, 1, '09746', 'REYES', 'ESTRADA', 'JOSE MAXIMINO', '0000-00-00', 'H', 1997, 1999, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(49, 1, '09747', 'BUCIO', 'CALDERON', 'MARIA MAGALY', '0000-00-00', 'M', 1998, 2002, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(50, 1, '09748', 'CAZARES', 'CHAGOYA', 'JOANA IVETH', '0000-00-00', 'M', 1998, 2002, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(51, 1, '09749', 'CORDOVA', 'BARAJAS', 'MIRIAM NOEMI', '0000-00-00', 'M', 1998, 2002, '', '8', 1, 1, '0000-00-00 00:00:00', 1),
(52, 1, '09750', 'ESPINOZA', 'AVALOS', 'LUIS ANGEL', '0000-00-00', 'H', 1998, 2002, '', '8', 1, 1, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licenciatura`
--

CREATE TABLE `licenciatura` (
  `idLic` int(11) NOT NULL,
  `LicCorto` varchar(15) DEFAULT NULL,
  `LicNombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `licenciatura`
--

INSERT INTO `licenciatura` (`idLic`, `LicCorto`, `LicNombre`) VALUES
(1, 'Primaria', 'Licenciatura en Educación Primaria'),
(2, 'Especial', 'Licenciatura en Educación Especial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `Permiso` int(11) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `Permiso`, `Descripcion`) VALUES
(1, 1, 'Administrador'),
(2, 2, 'Capturista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicfisica`
--

CREATE TABLE `ubicfisica` (
  `idUbicacion` int(11) NOT NULL,
  `Archivero` varchar(5) DEFAULT NULL,
  `Gaveta` varchar(5) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `ubicfisica`
--

INSERT INTO `ubicfisica` (`idUbicacion`, `Archivero`, `Gaveta`, `Descripcion`) VALUES
(1, '15', '01', 'A15/G01'),
(2, '01', '01', 'A01/G01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `usNombre` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  `fechaAlta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `usNombre`, `password`, `nombre`, `apellidos`, `email`, `rol`, `fechaAlta`) VALUES
(1, 'admin', 'admin', 'Administrador', 'General', 'admingral@gmail.com', 1, '2024-05-14 13:13:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `expedientes`
--
ALTER TABLE `expedientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ubicacion` (`ubicacion`),
  ADD KEY `fk_Expedientes_Licenciatura` (`Licenciatura`);

--
-- Indices de la tabla `licenciatura`
--
ALTER TABLE `licenciatura`
  ADD PRIMARY KEY (`idLic`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `ubicfisica`
--
ALTER TABLE `ubicfisica`
  ADD PRIMARY KEY (`idUbicacion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `rol` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `expedientes`
--
ALTER TABLE `expedientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `licenciatura`
--
ALTER TABLE `licenciatura`
  MODIFY `idLic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ubicfisica`
--
ALTER TABLE `ubicfisica`
  MODIFY `idUbicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `expedientes`
--
ALTER TABLE `expedientes`
  ADD CONSTRAINT `expedientes_ibfk_1` FOREIGN KEY (`ubicacion`) REFERENCES `ubicfisica` (`idUbicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Expedientes_Licenciatura` FOREIGN KEY (`Licenciatura`) REFERENCES `licenciatura` (`idLic`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `roles` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
