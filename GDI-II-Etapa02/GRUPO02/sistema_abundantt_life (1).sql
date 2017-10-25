-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2017 a las 04:58:31
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
-- Base de datos: `sistema_abundantt_life`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tactividad`
--

CREATE TABLE `tactividad` (
  `IDActividad` int(11) NOT NULL,
  `Actividad` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tanioescolar`
--

CREATE TABLE `tanioescolar` (
  `IDAnioEscolar` int(11) NOT NULL,
  `Periodo` char(4) COLLATE utf8_spanish_ci NOT NULL,
  `FInicio` date NOT NULL,
  `FFin` date NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasignatura`
--

CREATE TABLE `tasignatura` (
  `IDAsignatura` int(11) NOT NULL,
  `Asignatura` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taula`
--

CREATE TABLE `taula` (
  `IDAula` int(11) NOT NULL,
  `Aula` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Aforo` int(11) NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcolaborador`
--

CREATE TABLE `tcolaborador` (
  `IDColaborador` int(11) NOT NULL,
  `Dni` char(8) COLLATE utf8_spanish_ci NOT NULL,
  `Nombres` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ApePaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ApeMaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaNac` date NOT NULL,
  `IDGenero` int(11) NOT NULL,
  `IDDistrito` int(11) NOT NULL,
  `Direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcolaboradortelefono`
--

CREATE TABLE `tcolaboradortelefono` (
  `IDColaborador` int(11) NOT NULL,
  `IDTelefono` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Referencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `FRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdepartamento`
--

CREATE TABLE `tdepartamento` (
  `IDDepartamento` int(11) NOT NULL,
  `Departamento` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdistrito`
--

CREATE TABLE `tdistrito` (
  `IDDistrito` int(11) NOT NULL,
  `Distrito` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `IDProvincia` int(11) NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tdistrito`
--

INSERT INTO `tdistrito` (`IDDistrito`, `Distrito`, `IDProvincia`, `Estado`) VALUES
(1, 'lima', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tempresa`
--

CREATE TABLE `tempresa` (
  `IDEmpresa` int(11) NOT NULL,
  `Ruc` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `RazonSocial` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `RazonComercial` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `FIActividades` date NOT NULL,
  `IDActividad` int(11) NOT NULL,
  `UrlLogo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `FRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testablecimiento`
--

CREATE TABLE `testablecimiento` (
  `IDEstablecimiento` int(11) NOT NULL,
  `Establecimiento` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testudiante`
--

CREATE TABLE `testudiante` (
  `IDEstudiante` int(11) NOT NULL,
  `Dni` char(8) COLLATE utf8_spanish_ci NOT NULL,
  `Nombres` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ape_pate` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ape_mate` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaNac` date NOT NULL,
  `IDGenero` int(11) NOT NULL,
  `IDDistrito` int(11) NOT NULL,
  `Direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ColegioProcedencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `TipoSangre` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Enfermedades` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `ObserEnferm` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `ObserPadres` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `FRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testudiantetelefono`
--

CREATE TABLE `testudiantetelefono` (
  `IDEstudiante` int(11) NOT NULL,
  `IDTelefono` int(11) NOT NULL,
  `Numero` char(13) COLLATE utf8_spanish_ci NOT NULL,
  `Referencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `FRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tfamest`
--

CREATE TABLE `tfamest` (
  `IDFamiliar` int(11) NOT NULL,
  `IDEstudiante` int(11) NOT NULL,
  `IDParentesco` int(11) NOT NULL,
  `Apoderado` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `FechaReg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tfamiliar`
--

CREATE TABLE `tfamiliar` (
  `IDFamiliar` int(11) NOT NULL,
  `Dni` char(8) COLLATE utf8_spanish_ci NOT NULL,
  `Nombres` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ape_pate` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ape_mate` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaNac` date NOT NULL,
  `IDGenero` int(11) NOT NULL,
  `IDDistrito` int(11) NOT NULL,
  `Direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `FRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tgenero`
--

CREATE TABLE `tgenero` (
  `IDGenero` int(11) NOT NULL,
  `Genero` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tgrupo`
--

CREATE TABLE `tgrupo` (
  `IDGrupo` int(11) NOT NULL,
  `Grupo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thistorialasignatura`
--

CREATE TABLE `thistorialasignatura` (
  `IDAsignatura` int(11) NOT NULL,
  `IDColaborador` int(11) NOT NULL,
  `IDAula` int(11) NOT NULL,
  `IDGrupo` int(11) NOT NULL,
  `FechReg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thistorialocupacion`
--

CREATE TABLE `thistorialocupacion` (
  `IDColaborador` int(11) NOT NULL,
  `IDOcupacion` int(11) NOT NULL,
  `FIcontrato` date NOT NULL,
  `FFcontrato` date NOT NULL,
  `Sueldo` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thistorialusuario`
--

CREATE TABLE `thistorialusuario` (
  `IDUsuario` int(11) NOT NULL,
  `FIngresoSis` datetime NOT NULL,
  `FSalidaSis` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmatricula`
--

CREATE TABLE `tmatricula` (
  `IDMatricula` int(11) NOT NULL,
  `IDAnioEscolar` int(11) NOT NULL,
  `IDEstudiante` int(11) NOT NULL,
  `IDTurno` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tocupacion`
--

CREATE TABLE `tocupacion` (
  `IDOcupacion` int(11) NOT NULL,
  `Ocuapacion` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tparentesco`
--

CREATE TABLE `tparentesco` (
  `IDParentesco` int(11) NOT NULL,
  `Parentesco` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tprovincia`
--

CREATE TABLE `tprovincia` (
  `IDProvincia` int(11) NOT NULL,
  `provincia` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `IDDepartamento` int(11) NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tseccion`
--

CREATE TABLE `tseccion` (
  `IDSeccion` int(11) NOT NULL,
  `Seccion` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tsede`
--

CREATE TABLE `tsede` (
  `IDSede` int(11) NOT NULL,
  `IDEmpresa` int(11) NOT NULL,
  `IDEstablecimiento` int(11) NOT NULL,
  `IDDistrito` int(11) NOT NULL,
  `Direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Referencia` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `FRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tsedetelefono`
--

CREATE TABLE `tsedetelefono` (
  `IDSede` int(11) NOT NULL,
  `IDTelefono` int(11) NOT NULL,
  `Numero` char(13) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `FRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ttelfono`
--

CREATE TABLE `ttelfono` (
  `IDTelefono` int(11) NOT NULL,
  `Descripcion` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tturno`
--

CREATE TABLE `tturno` (
  `IDTurno` int(11) NOT NULL,
  `Turno` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `IDUsuario` int(11) NOT NULL,
  `IDColaborador` int(11) NOT NULL,
  `Usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `FCreacion` datetime NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tvacantes`
--

CREATE TABLE `tvacantes` (
  `IDVacante` int(11) NOT NULL,
  `IDGrupo` int(11) NOT NULL,
  `IDSeccion` int(11) NOT NULL,
  `Nvacantes` int(11) NOT NULL,
  `Ocupada` int(11) NOT NULL,
  `Separada` int(11) NOT NULL,
  `FechCierre` date NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tactividad`
--
ALTER TABLE `tactividad`
  ADD PRIMARY KEY (`IDActividad`);

--
-- Indices de la tabla `tanioescolar`
--
ALTER TABLE `tanioescolar`
  ADD PRIMARY KEY (`IDAnioEscolar`) USING BTREE;

--
-- Indices de la tabla `tasignatura`
--
ALTER TABLE `tasignatura`
  ADD PRIMARY KEY (`IDAsignatura`);

--
-- Indices de la tabla `taula`
--
ALTER TABLE `taula`
  ADD PRIMARY KEY (`IDAula`);

--
-- Indices de la tabla `tcolaborador`
--
ALTER TABLE `tcolaborador`
  ADD PRIMARY KEY (`IDColaborador`);

--
-- Indices de la tabla `tdepartamento`
--
ALTER TABLE `tdepartamento`
  ADD PRIMARY KEY (`IDDepartamento`);

--
-- Indices de la tabla `tdistrito`
--
ALTER TABLE `tdistrito`
  ADD PRIMARY KEY (`IDDistrito`);

--
-- Indices de la tabla `tempresa`
--
ALTER TABLE `tempresa`
  ADD PRIMARY KEY (`IDEmpresa`);

--
-- Indices de la tabla `testablecimiento`
--
ALTER TABLE `testablecimiento`
  ADD PRIMARY KEY (`IDEstablecimiento`);

--
-- Indices de la tabla `testudiante`
--
ALTER TABLE `testudiante`
  ADD PRIMARY KEY (`IDEstudiante`);

--
-- Indices de la tabla `tgenero`
--
ALTER TABLE `tgenero`
  ADD PRIMARY KEY (`IDGenero`);

--
-- Indices de la tabla `tgrupo`
--
ALTER TABLE `tgrupo`
  ADD PRIMARY KEY (`IDGrupo`);

--
-- Indices de la tabla `tmatricula`
--
ALTER TABLE `tmatricula`
  ADD PRIMARY KEY (`IDMatricula`);

--
-- Indices de la tabla `tocupacion`
--
ALTER TABLE `tocupacion`
  ADD PRIMARY KEY (`IDOcupacion`);

--
-- Indices de la tabla `tparentesco`
--
ALTER TABLE `tparentesco`
  ADD PRIMARY KEY (`IDParentesco`);

--
-- Indices de la tabla `tprovincia`
--
ALTER TABLE `tprovincia`
  ADD PRIMARY KEY (`IDProvincia`);

--
-- Indices de la tabla `tseccion`
--
ALTER TABLE `tseccion`
  ADD PRIMARY KEY (`IDSeccion`);

--
-- Indices de la tabla `tsede`
--
ALTER TABLE `tsede`
  ADD PRIMARY KEY (`IDSede`);

--
-- Indices de la tabla `ttelfono`
--
ALTER TABLE `ttelfono`
  ADD PRIMARY KEY (`IDTelefono`);

--
-- Indices de la tabla `tturno`
--
ALTER TABLE `tturno`
  ADD PRIMARY KEY (`IDTurno`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`IDUsuario`);

--
-- Indices de la tabla `tvacantes`
--
ALTER TABLE `tvacantes`
  ADD PRIMARY KEY (`IDVacante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tactividad`
--
ALTER TABLE `tactividad`
  MODIFY `IDActividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tanioescolar`
--
ALTER TABLE `tanioescolar`
  MODIFY `IDAnioEscolar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasignatura`
--
ALTER TABLE `tasignatura`
  MODIFY `IDAsignatura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taula`
--
ALTER TABLE `taula`
  MODIFY `IDAula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tcolaborador`
--
ALTER TABLE `tcolaborador`
  MODIFY `IDColaborador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tdistrito`
--
ALTER TABLE `tdistrito`
  MODIFY `IDDistrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tempresa`
--
ALTER TABLE `tempresa`
  MODIFY `IDEmpresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `testablecimiento`
--
ALTER TABLE `testablecimiento`
  MODIFY `IDEstablecimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `testudiante`
--
ALTER TABLE `testudiante`
  MODIFY `IDEstudiante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tgenero`
--
ALTER TABLE `tgenero`
  MODIFY `IDGenero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tgrupo`
--
ALTER TABLE `tgrupo`
  MODIFY `IDGrupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tmatricula`
--
ALTER TABLE `tmatricula`
  MODIFY `IDMatricula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tocupacion`
--
ALTER TABLE `tocupacion`
  MODIFY `IDOcupacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tparentesco`
--
ALTER TABLE `tparentesco`
  MODIFY `IDParentesco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tprovincia`
--
ALTER TABLE `tprovincia`
  MODIFY `IDProvincia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tseccion`
--
ALTER TABLE `tseccion`
  MODIFY `IDSeccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tsede`
--
ALTER TABLE `tsede`
  MODIFY `IDSede` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ttelfono`
--
ALTER TABLE `ttelfono`
  MODIFY `IDTelefono` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tturno`
--
ALTER TABLE `tturno`
  MODIFY `IDTurno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `IDUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tvacantes`
--
ALTER TABLE `tvacantes`
  MODIFY `IDVacante` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
