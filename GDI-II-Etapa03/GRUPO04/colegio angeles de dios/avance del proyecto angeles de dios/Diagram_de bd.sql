/*
   martes, 07 de noviembre de 20170:00:43
   Usuario: 
   Servidor: USUARIO-PC\SQLEXPRESS
   Base de datos: colegio
   Aplicación: 
*/

/* Para evitar posibles problemas de pérdida de datos, debe revisar este script detalladamente antes de ejecutarlo fuera del contexto del diseñador de base de datos.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO

CREATE TABLE dbo.[seccio..]
	(
	nom_seccion varchar(50) NOT NULL,
	id_periodo int NOT NULL,
	id_seccion int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[seccio..] ADD CONSTRAINT
	[PK_seccio..] PRIMARY KEY CLUSTERED 
	(
	id_seccion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[seccio..] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.aul@
	(
	nombre_aula varchar(50) NULL,
	id_seccion int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.aul@ ADD CONSTRAINT
	[FK_aul@_seccio..] FOREIGN KEY
	(
	id_seccion
	) REFERENCES dbo.[seccio..]
	(
	id_seccion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.aul@ SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.nivell
	(
	nombre_nivel varchar(50) NOT NULL,
	id_seccion int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.nivell ADD CONSTRAINT
	[FK_nivell_seccio..] FOREIGN KEY
	(
	id_seccion
	) REFERENCES dbo.[seccio..]
	(
	id_seccion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.nivell SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.grado
	(
	nom_grado varchar(30) NOT NULL,
	id_seccion int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.grado ADD CONSTRAINT
	[FK_grado_seccio..] FOREIGN KEY
	(
	id_seccion
	) REFERENCES dbo.[seccio..]
	(
	id_seccion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.grado SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.pago
	(
	id_pago int NOT NULL IDENTITY (1, 1),
	fecha_pago smalldatetime NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.pago ADD CONSTRAINT
	DF__pago__fecha_pago__117F9D94 DEFAULT (getdate()) FOR fecha_pago
GO
ALTER TABLE dbo.pago ADD CONSTRAINT
	PK__pago__0941B0740AF1CCA7 PRIMARY KEY CLUSTERED 
	(
	id_pago
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.pago SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.estudiante
	(
	id_estudiante int NOT NULL IDENTITY (1, 1),
	dni varchar(8) NULL,
	nombre varchar(50) NULL,
	edad int NULL,
	direccion varchar(70) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.estudiante ADD CONSTRAINT
	PK__estudian__E0B2763CF56AC29C PRIMARY KEY CLUSTERED 
	(
	id_estudiante
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.estudiante SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.usuari0
	(
	nombre_usuario varchar(50) NOT NULL,
	contraseña varchar(50) NOT NULL,
	id_estudiante int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.usuari0 ADD CONSTRAINT
	FK_usuari0_estudiante FOREIGN KEY
	(
	id_estudiante
	) REFERENCES dbo.estudiante
	(
	id_estudiante
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.usuari0 SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[obligacio..]
	(
	tipo_obligacion varchar(50) NOT NULL,
	id_estudiante int NOT NULL,
	id_pago int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[obligacio..] ADD CONSTRAINT
	[FK_obligacio.._estudiante] FOREIGN KEY
	(
	id_estudiante
	) REFERENCES dbo.estudiante
	(
	id_estudiante
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[obligacio..] ADD CONSTRAINT
	[FK_obligacio.._pago] FOREIGN KEY
	(
	id_pago
	) REFERENCES dbo.pago
	(
	id_pago
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[obligacio..] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.period
	(
	fecha_inicio nchar(30) NOT NULL,
	fecha_fin nchar(30) NOT NULL,
	id_estudiante int NOT NULL,
	id_periodo int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.period ADD CONSTRAINT
	PK_period PRIMARY KEY CLUSTERED 
	(
	id_periodo
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.period ADD CONSTRAINT
	FK_period_estudiante FOREIGN KEY
	(
	id_estudiante
	) REFERENCES dbo.estudiante
	(
	id_estudiante
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.period SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.matricul
	(
	id_matricul int NOT NULL,
	fecha_matricul smalldatetime NULL,
	id_estudiante int NULL,
	id_seccion int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.matricul ADD CONSTRAINT
	PK_matricul PRIMARY KEY CLUSTERED 
	(
	id_matricul
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.matricul ADD CONSTRAINT
	FK_matricul_estudiante FOREIGN KEY
	(
	id_estudiante
	) REFERENCES dbo.estudiante
	(
	id_estudiante
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.matricul ADD CONSTRAINT
	[FK_matricul_seccio..] FOREIGN KEY
	(
	id_seccion
	) REFERENCES dbo.[seccio..]
	(
	id_seccion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.matricul SET (LOCK_ESCALATION = TABLE)
GO
COMMIT



select from estudiante 