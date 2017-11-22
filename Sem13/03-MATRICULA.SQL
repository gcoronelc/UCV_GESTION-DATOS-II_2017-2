/*
Empresa        :  EGCC
Software       :  Sistema Financiero de Colegios
DBMS           :  SQL SERVER
Base de Datos  :  BDCOLEGIO
Script         :  Crea el esquema matricula
Responsable    :  Ing. Eric Gustavo Coronel Castillo
Telefono       :  (511) 9966-64457
Email          :  gcoronelc@gmail.com
Blog           :  http://gcoronelc.blogspot.com
Creado el      :  15-NOV-2017
*/


-- =============================================
-- Seleccionar la Base de Datos
-- =============================================

USE BDCOLEGIO;


-- =============================================
-- Creación de Tablas
-- =============================================

CREATE TABLE [TOBLIGACION]
( 
	[TOBLIGACION]        integer  NOT NULL ,
	[NOMBRE]             varchar(40)  NOT NULL ,
	[MORA]               numeric(10,2)  NOT NULL ,
	CONSTRAINT [XPKTOBLIGACION] PRIMARY KEY  CLUSTERED ([TOBLIGACION] ASC)
)
go

CREATE TABLE [ESTUDIANTE]
( 
	[ESTUDIANTE]         integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[APELLIDO]           varchar(70)  NOT NULL ,
	[NOMBRE]             varchar(70)  NOT NULL ,
	[DNI]                varchar(20)  NOT NULL ,
	[DIRECCION]          varchar(100)  NOT NULL ,
	[TELEFONO]           varchar(20)  NOT NULL ,
	[EMAIL]              varchar(50)  NOT NULL ,
	CONSTRAINT [XPKESTUDIANTE] PRIMARY KEY  CLUSTERED ([ESTUDIANTE] ASC)
)
go

CREATE TABLE [MATRICULA]
( 
	[MATRICULA]          integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[SECCION]            integer  NOT NULL ,
	[ESTUDIANTE]         integer  NOT NULL ,
	[FECHA]              datetime NOT NULL ,
	[CONFIRMADA]         integer  NOT NULL DEFAULT  0 CHECK  ( CONFIRMADA IN (0 , 1) ),
	[ACTIVA]             integer  NOT NULL ,
	[OBS]                varchar(200)  NOT NULL ,
	[AUDEMPLEADO]        integer  NOT NULL ,
	[AUDFECHA]           datetime  NOT NULL ,
	CONSTRAINT [XPKMATRICULA] PRIMARY KEY  CLUSTERED ([MATRICULA] ASC),
	CONSTRAINT [FK_MATRICULA_SECCION] FOREIGN KEY ([SECCION]) REFERENCES [SECCION]([SECCION])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT [FK_MATRICULA_ESTUDIANTE] FOREIGN KEY ([ESTUDIANTE]) REFERENCES [ESTUDIANTE]([ESTUDIANTE])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT [FK_MATRICULA_EMPLEADO] FOREIGN KEY ([AUDEMPLEADO]) REFERENCES [EMPLEADO]([IDEMPLEADO])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go




CREATE TABLE [OBLIGACION]
( 
	[OBLIGACION]         integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[IMPORTE]            numeric(12,2)  NOT NULL ,
	[FECVEN]             datetime  NOT NULL ,
	[ESTUDIANTE]         integer  NOT NULL ,
	[MATRICULA]          integer  NULL ,
	[TOBLIGACION]        integer  NOT NULL ,
	[AUDEMPLEADO]        integer  NOT NULL ,
	[AUDFECHA]           datetime  NOT NULL ,
	CONSTRAINT [XPKOBLIGACION] PRIMARY KEY  CLUSTERED ([OBLIGACION] ASC),
	CONSTRAINT [FK_OBLIGACION_ESTUDIANTE] FOREIGN KEY ([ESTUDIANTE]) REFERENCES [ESTUDIANTE]([ESTUDIANTE])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT [FK_OBLIGACION_MATRICULA] FOREIGN KEY ([MATRICULA]) REFERENCES [MATRICULA]([MATRICULA])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT [FK_OBLIGACION_TOBLIGACION] FOREIGN KEY ([TOBLIGACION]) REFERENCES [TOBLIGACION]([TOBLIGACION])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT [FK_OBLIGACION_EMPLEADO] FOREIGN KEY ([AUDEMPLEADO]) REFERENCES [EMPLEADO]([IDEMPLEADO])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go


-- =============================================
-- Cargar Datos
-- =============================================


-- Tabla TOBLIGACION

insert into tobligacion(tobligacion,nombre,mora) 
values(1,'Cuota de Ingreso',0);

insert into tobligacion(tobligacion,nombre,mora) 
values(2,'Matricula',0);

insert into tobligacion(tobligacion,nombre,mora) 
values(3,'Mensualidad',1);
GO

-- Tabla ESTUDIANTE

SET IDENTITY_INSERT dbo.estudiante ON;  
GO  

insert into estudiante(estudiante,apellido,nombre,
dni,direccion,telefono,email)
values(1,'A','A','45768923','su casa','78653456','a@gmail.com');


insert into estudiante(estudiante,apellido,nombre,
dni,direccion,telefono,email)
values(2,'B','B','5345345','su parque','5345345','b@gmail.com'); 

GO

SET IDENTITY_INSERT dbo.estudiante OFF;  
GO  

select * from estudiante;
