-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2017 a las 14:08:17
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sabundant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IDEmpleado` int(11) NOT NULL,
  `Avatar` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Dni` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `AudEmpleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`IDEmpleado`, `Avatar`, `Nombre`, `Apellido`, `Dni`, `Telefono`, `Direccion`, `Email`, `AudEmpleado`) VALUES
(1, '', 'juan', 'quispe', '75621636', '922110824', 'lima', '', 1),
(2, '', 'kevin', 'quispe pariona', '75621636', '922110824', 'lima', 'jquispe@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `IDEstudiante` int(11) NOT NULL,
  `Nombres` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_pate` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_mate` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Dni` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`IDEstudiante`, `Nombres`, `Apellido_pate`, `Apellido_mate`, `Fecha_Nacimiento`, `Dni`, `Direccion`, `Telefono`, `Email`) VALUES
(1, 'juna', 'quispe', 'borja', '2017-11-14', '78274752', 'lima', '922110824', 'fkfkfk@gmail.com'),
(5, 'jhonatan', 'quispe', 'borja', '2017-11-21', '75621635', 'lima-peru', '922110725', 'jgabrielq21@gmail.com'),
(7, 'fasfasfa', 'fasd', 'dsadas', '2017-11-21', '75621636', 'lima-peru', '922110824', 'jquispeb7@gmail.com'),
(9, 'david', 'cuellar', 'borja', '2017-11-28', '75621634', 'lima- peru', '922110824', 'jquispeb7@gmail.com'),
(10, 'jhonatan', 'quispe', 'borja', '2017-11-21', '75621636', 'lila', '922110824', 'jgabrielq21@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `IDGrado` int(11) NOT NULL,
  `IDNivel` int(11) NOT NULL,
  `Nombre` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`IDGrado`, `IDNivel`, `Nombre`) VALUES
(1, 1, '3 AÑOS'),
(2, 1, '4 AÑOS'),
(3, 1, ' 5 AÑOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `IDMatricula` int(11) NOT NULL,
  `IDSeccion` int(11) NOT NULL,
  `IDEstudiante` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Confirmada` int(11) NOT NULL,
  `Activa` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `OBS` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `AudEmpleado` int(11) NOT NULL,
  `AudFecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`IDMatricula`, `IDSeccion`, `IDEstudiante`, `Fecha`, `Confirmada`, `Activa`, `OBS`, `AudEmpleado`, `AudFecha`) VALUES
(1, 1, 10, '2017-12-12 08:00:00', 1, '1', 'matricula con exito', 1, '2017-12-12 03:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `IDNivel` int(11) NOT NULL,
  `Nombre` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`IDNivel`, `Nombre`) VALUES
(1, 'INICIAL'),
(2, 'PRIMARIA'),
(3, 'SECUNDARIA'),
(4, 'primaria'),
(5, 'juan'),
(6, 'gaga'),
(7, 'gag'),
(8, 'gaga'),
(9, 'gaga'),
(10, 'fafasf'),
(11, 'ajjajajajaj'),
(12, 'vadsgdsg'),
(13, 'sdfsdfd'),
(14, 'fasfasfa'),
(15, 'yfyf'),
(16, 'hbubub'),
(17, '<vasgasg'),
(18, 'fasfasfa'),
(19, 'gagaga'),
(20, 'gagagaaaaaaaaaaaaaa1111111111111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obligacion`
--

CREATE TABLE `obligacion` (
  `IDObligacion` int(11) NOT NULL,
  `IDEstudiante` int(11) NOT NULL,
  `IDMatricula` int(11) NOT NULL,
  `IDTObligacion` int(11) NOT NULL,
  `Importe` decimal(12,0) NOT NULL,
  `FechaVen` datetime NOT NULL,
  `AudEmpleado` int(11) NOT NULL,
  `AudFecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `obligacion`
--

INSERT INTO `obligacion` (`IDObligacion`, `IDEstudiante`, `IDMatricula`, `IDTObligacion`, `Importe`, `FechaVen`, `AudEmpleado`, `AudFecha`) VALUES
(3, 1, 1, 1, '600', '2017-12-12 10:00:00', 1, '2017-12-12 12:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `IDPago` int(11) NOT NULL,
  `IDObligacion` int(11) NOT NULL,
  `FechaPago` datetime NOT NULL,
  `Importe` decimal(12,0) NOT NULL,
  `Mora` decimal(12,0) NOT NULL,
  `Total` decimal(12,0) NOT NULL,
  `AudEmpleado` int(11) NOT NULL,
  `AudFecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`IDPago`, `IDObligacion`, `FechaPago`, `Importe`, `Mora`, `Total`, `AudEmpleado`, `AudFecha`) VALUES
(2, 3, '2017-12-19 13:00:00', '400', '50', '450', 1, '2017-12-11 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `IDPeriodo` int(11) NOT NULL,
  `Nom_periodo` int(11) NOT NULL,
  `Matricula` decimal(10,2) NOT NULL,
  `Pension` decimal(10,2) NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`IDPeriodo`, `Nom_periodo`, `Matricula`, `Pension`, `Estado`) VALUES
(1, 2016, '300.00', '120.00', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `IDRol` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`IDRol`, `Nombre`) VALUES
(4, 'admin'),
(5, 'adminddd'),
(6, 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `IDSeccion` int(11) NOT NULL,
  `IDPeriodo` int(11) NOT NULL,
  `IDGrado` int(11) NOT NULL,
  `IDEmpleado` int(11) NOT NULL,
  `Nom_seccion` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `Vacantes` int(11) NOT NULL,
  `Matriculados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`IDSeccion`, `IDPeriodo`, `IDGrado`, `IDEmpleado`, `Nom_seccion`, `Vacantes`, `Matriculados`) VALUES
(1, 1, 1, 1, 'A', 40, 25),
(3, 1, 2, 0, 'B', 25, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tobligacion`
--

CREATE TABLE `tobligacion` (
  `IDTObligacion` int(11) NOT NULL,
  `Nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `Mora` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tobligacion`
--

INSERT INTO `tobligacion` (`IDTObligacion`, `Nombre`, `Mora`) VALUES
(1, 'marzo', '50'),
(2, 'julio', '58'),
(3, 'abril', '80');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IDUsuario` int(11) NOT NULL,
  `IDEmpleado` int(11) NOT NULL,
  `Usuario` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `IDRol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IDUsuario`, `IDEmpleado`, `Usuario`, `Clave`, `IDRol`) VALUES
(1, 1, 'juan', 'juan', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IDEmpleado`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`IDEstudiante`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`IDGrado`),
  ADD KEY `IDNivel` (`IDNivel`) USING BTREE;

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`IDMatricula`),
  ADD UNIQUE KEY `IDSeccion` (`IDSeccion`),
  ADD UNIQUE KEY `IDEstudiante` (`IDEstudiante`),
  ADD UNIQUE KEY `AudEmpleado` (`AudEmpleado`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`IDNivel`);

--
-- Indices de la tabla `obligacion`
--
ALTER TABLE `obligacion`
  ADD PRIMARY KEY (`IDObligacion`),
  ADD UNIQUE KEY `IDMatricula` (`IDMatricula`),
  ADD UNIQUE KEY `IDEstudiante` (`IDEstudiante`),
  ADD UNIQUE KEY `IDTObligacion` (`IDTObligacion`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`IDPago`),
  ADD UNIQUE KEY `IDObligacion` (`IDObligacion`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`IDPeriodo`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`IDRol`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`IDSeccion`),
  ADD UNIQUE KEY `IDGrado` (`IDGrado`),
  ADD UNIQUE KEY `IDEmpleado` (`IDEmpleado`),
  ADD KEY `IDPeriodo` (`IDPeriodo`);

--
-- Indices de la tabla `tobligacion`
--
ALTER TABLE `tobligacion`
  ADD PRIMARY KEY (`IDTObligacion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Usuario`),
  ADD UNIQUE KEY `IDRol` (`IDRol`),
  ADD UNIQUE KEY `IDEmpleado` (`IDEmpleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `IDEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `IDEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `IDGrado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `IDMatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `IDNivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `obligacion`
--
ALTER TABLE `obligacion`
  MODIFY `IDObligacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `IDPago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `IDPeriodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `IDRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `IDSeccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tobligacion`
--
ALTER TABLE `tobligacion`
  MODIFY `IDTObligacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `grado`
--
ALTER TABLE `grado`
  ADD CONSTRAINT `grado_ibfk_1` FOREIGN KEY (`IDNivel`) REFERENCES `nivel` (`IDNivel`);

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`IDSeccion`) REFERENCES `seccion` (`IDSeccion`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`IDEstudiante`) REFERENCES `estudiante` (`IDEstudiante`);

--
-- Filtros para la tabla `obligacion`
--
ALTER TABLE `obligacion`
  ADD CONSTRAINT `obligacion_ibfk_1` FOREIGN KEY (`IDMatricula`) REFERENCES `matricula` (`IDMatricula`),
  ADD CONSTRAINT `obligacion_ibfk_2` FOREIGN KEY (`IDEstudiante`) REFERENCES `estudiante` (`IDEstudiante`),
  ADD CONSTRAINT `obligacion_ibfk_3` FOREIGN KEY (`IDTObligacion`) REFERENCES `tobligacion` (`IDTObligacion`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`IDObligacion`) REFERENCES `obligacion` (`IDObligacion`);

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `seccion_ibfk_1` FOREIGN KEY (`IDGrado`) REFERENCES `grado` (`IDGrado`),
  ADD CONSTRAINT `seccion_ibfk_2` FOREIGN KEY (`IDPeriodo`) REFERENCES `periodo` (`IDPeriodo`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`IDRol`) REFERENCES `rol` (`IDRol`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`IDEmpleado`) REFERENCES `empleado` (`IDEmpleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
