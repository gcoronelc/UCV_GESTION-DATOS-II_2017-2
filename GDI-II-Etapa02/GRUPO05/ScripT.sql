CREATE DATABASE dbcolegio;
USE dbcolegio;
CREATE TABLE colegio curso(
Curso_código INT NULL PRIMARY KEY AUTO_INCREMENT,
Curso_nivel VARCHAR(50) NOT NULL);

CREATE TABLE colegio_alumno(
Alumno_nombre VARCHAR(10) NOT NULL PRIMARY KEY,
Alumno_apellido VARCHAR(30) NOT NULL,
Alumno_edad INT NOT NULL,
Alumno_curso INT NOT NULL,
FOREIGN KEY(código_curso) R8EEFERENCES colegio_curso(curso_codigo);

CREATE TABLE colegio_profesor(
profesor_rut VARCHAR(10) NOT NULL PRIMARY KEY,
profesor_nombre VARCHAR(100) NOT NULL);

CREATE TABLE colegio_profesor_curso(
rut_profesor VARCHAR(10) NOT NULL,
codigo_curso INT NOT NULL,

CREATE TABLE colegio_alumno_asignatura(
rut_alumno VARCHAR(10) NOT NULL,
codigo_asignatura INT NOT NULL,

