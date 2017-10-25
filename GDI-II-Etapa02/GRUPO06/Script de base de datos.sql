Script de la base de datos
ESCRIPT PARA CARGAR BASE DE DATOS



-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2012 at 09:06 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbcolegio2`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `Idalumno` int(10) NOT NULL,
  ` Nombres ` varchar(50) NOT NULL,
  ` Apellidos ` varchar(50) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Sexo` varchar(20) NOT NULL,
  `Fechanacimiento` varchar(10) NOT NULL,
  `NomPadre` varchar(10) NOT NULL,
  `NomMadre` varchar(10) NOT NULL,
  `NomApoderado` varchar(10) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Celular` varchar(10) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Distrito` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  
  PRIMARY KEY (`Idalumno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

ESCRIPT PARA CARGAR DATOS DE PRUEBA

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`Idalumno`, `Nombres`, `Apellidos`, `DNI`, `Sexo`, `Fechanacimiento`, `NomPadre`, `NomMadre`, `NomApoderado`, `Telefono`, `Celular`, `Direccion`, `Distrito`, `Estado`) VALUES
(3, 'Jeanpierre', 'Zuñiga Aquino', `65875479´, 'Masculino','Tue May 12', `Juan Zuñiga´, `Marcela Aquino´ `--´,'4625151', '996354121', `Jose Galvez 1368', Ate', 'Activo'),
(6, 'Vladimir', 'Huaytan Espinoza', `44737284´, 'Masculino','Thu Dec 15', `Jorge Huaytan´, `Maria Espinoza´, `--´, '4625151', '996354121', `Jose Galvez 1368', Ate', 'Activo'),

-- --------------------------------------------------------
--
-- Table structure for table `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `Idcurso` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`Idcurso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curso`
--

INSERT INTO `curso` (`Idcurso`, `Nombre`, `Estado `) VALUES
(1, 'Matematica2', 'Inhabilitado'),
(7, 'LIteratura2', 'Habilitado'),
(11, 'Comunicacion II', 'Habilitado'),
(10, 'Estadistica II', 'inhabilitado');

-- --------------------------------------------------------

--
-- Table structure for table `Concepto´

CREATE TABLE IF NOT EXISTS `notas` (
  `IdConcepto` int(10) NOT NULL,
  `Nombre` int(10) NOT NULL,
  `FechaVencimiento` int(10) NOT NULL,
  `Precio` varchar(20) NOT NULL,
  `Estado` int(10) NOT NULL,
  PRIMARY KEY (`Idconcepto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notas`
--

INSERT INTO `Concepto` (`IdConcepto`, `Nombre`, `FechaVencimiento`, `Precio`, `Estado`) VALUES
(CU001, Matricula, 'Tue May 12', '100', Cancelado),
(CU002, Mensualidad, 'Fri Jun 12', '200', Pendiente),
(CU003, Apafa, 'Tue May 12', '80', Cancelado),

