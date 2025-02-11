USE [master]
GO
/****** Object:  Database [PracticaAplicada]    Script Date: 11/11/2015 19:29:42 ******/
CREATE DATABASE [PracticaAplicada] ON  PRIMARY 
( NAME = N'PracticaAplicada', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\PracticaAplicada.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PracticaAplicada_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\PracticaAplicada_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PracticaAplicada] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PracticaAplicada].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PracticaAplicada] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PracticaAplicada] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PracticaAplicada] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PracticaAplicada] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PracticaAplicada] SET ARITHABORT OFF
GO
ALTER DATABASE [PracticaAplicada] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [PracticaAplicada] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PracticaAplicada] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PracticaAplicada] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PracticaAplicada] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PracticaAplicada] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PracticaAplicada] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PracticaAplicada] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PracticaAplicada] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PracticaAplicada] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PracticaAplicada] SET  DISABLE_BROKER
GO
ALTER DATABASE [PracticaAplicada] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PracticaAplicada] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PracticaAplicada] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PracticaAplicada] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PracticaAplicada] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PracticaAplicada] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PracticaAplicada] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PracticaAplicada] SET  READ_WRITE
GO
ALTER DATABASE [PracticaAplicada] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PracticaAplicada] SET  MULTI_USER
GO
ALTER DATABASE [PracticaAplicada] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PracticaAplicada] SET DB_CHAINING OFF
GO
USE [PracticaAplicada]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departamento](
	[id_departamento] [numeric](18, 0) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[id_departamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(5 AS Numeric(18, 0)), N'Antioquia')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(8 AS Numeric(18, 0)), N'Atlantico')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(11 AS Numeric(18, 0)), N'BogotaDC')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(13 AS Numeric(18, 0)), N'Bolivar')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(15 AS Numeric(18, 0)), N'Boyaca')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(17 AS Numeric(18, 0)), N'Caldas')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(18 AS Numeric(18, 0)), N'Caqueta')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(19 AS Numeric(18, 0)), N'Cauca')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(20 AS Numeric(18, 0)), N'Cesar')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(23 AS Numeric(18, 0)), N'Cordoba')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(25 AS Numeric(18, 0)), N'Cundinamarca')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(27 AS Numeric(18, 0)), N'Choco')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(41 AS Numeric(18, 0)), N'Huila')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(44 AS Numeric(18, 0)), N'La_Guajira')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(47 AS Numeric(18, 0)), N'Magdalena')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(50 AS Numeric(18, 0)), N'Meta')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(52 AS Numeric(18, 0)), N'Narino')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(54 AS Numeric(18, 0)), N'Norte_de_Santander')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(63 AS Numeric(18, 0)), N'Quindio')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(66 AS Numeric(18, 0)), N'Risaralda')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(68 AS Numeric(18, 0)), N'Santander')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(70 AS Numeric(18, 0)), N'Sucre')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(73 AS Numeric(18, 0)), N'Tolima')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(76 AS Numeric(18, 0)), N'Valle_del_Cauca')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(81 AS Numeric(18, 0)), N'Arauca')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(85 AS Numeric(18, 0)), N'Casanare')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(86 AS Numeric(18, 0)), N'Putumayo')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(88 AS Numeric(18, 0)), N'San_Andres')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(91 AS Numeric(18, 0)), N'Amazonas')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(94 AS Numeric(18, 0)), N'Guainia')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(95 AS Numeric(18, 0)), N'Guaviare')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(97 AS Numeric(18, 0)), N'Vaupes')
INSERT [dbo].[departamento] ([id_departamento], [descripcion]) VALUES (CAST(99 AS Numeric(18, 0)), N'Vichada')
/****** Object:  Table [dbo].[pais]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pais](
	[id_pais] [numeric](18, 0) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[pais] ([id_pais], [nombre]) VALUES (CAST(1 AS Numeric(18, 0)), N'Colombia')
INSERT [dbo].[pais] ([id_pais], [nombre]) VALUES (CAST(2 AS Numeric(18, 0)), N'Venezuela')
/****** Object:  Table [dbo].[profesor]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[profesor](
	[id_profesor] [numeric](18, 0) NOT NULL,
	[tipo_documento] [varchar](50) NULL,
	[numero_documento] [numeric](18, 0) NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[fecha_de_expedicion] [date] NULL,
	[lugar_de_expedicion] [varchar](50) NULL,
	[rh] [varchar](50) NULL,
	[id_pais_nacionalidad] [numeric](18, 0) NULL,
	[genero] [varchar](50) NULL,
	[id_pais_lugar_nacimiento] [numeric](18, 0) NULL,
	[fecha_de_nacimiento] [date] NULL,
	[id_pais_de_origen] [numeric](18, 0) NULL,
	[estado_civil] [varchar](50) NULL,
	[id_departamento] [numeric](18, 0) NULL,
	[email_personal] [varchar](50) NULL,
	[email_institucional] [varchar](50) NULL,
	[telefono_fijo] [varchar](50) NULL,
	[celular] [numeric](18, 0) NULL,
	[direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[id_profesor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[profesor] ([id_profesor], [tipo_documento], [numero_documento], [nombre], [apellido], [fecha_de_expedicion], [lugar_de_expedicion], [rh], [id_pais_nacionalidad], [genero], [id_pais_lugar_nacimiento], [fecha_de_nacimiento], [id_pais_de_origen], [estado_civil], [id_departamento], [email_personal], [email_institucional], [telefono_fijo], [celular], [direccion]) VALUES (CAST(1 AS Numeric(18, 0)), N'CC', CAST(40683395 AS Numeric(18, 0)), N'David', N'Wiltse', CAST(0x850A0B00 AS Date), N'Bogota D.C.', N'A+', CAST(1 AS Numeric(18, 0)), N'Hombre', CAST(1 AS Numeric(18, 0)), CAST(0x6ED60A00 AS Date), CAST(1 AS Numeric(18, 0)), N'Casado', CAST(25 AS Numeric(18, 0)), N'DavidSWiltse@armyspy.com', N'dawiltse@poligran.edu.co', N'7584169', CAST(3159387633 AS Numeric(18, 0)), N'Av. Carrera 45 N 108-27')
INSERT [dbo].[profesor] ([id_profesor], [tipo_documento], [numero_documento], [nombre], [apellido], [fecha_de_expedicion], [lugar_de_expedicion], [rh], [id_pais_nacionalidad], [genero], [id_pais_lugar_nacimiento], [fecha_de_nacimiento], [id_pais_de_origen], [estado_civil], [id_departamento], [email_personal], [email_institucional], [telefono_fijo], [celular], [direccion]) VALUES (CAST(2 AS Numeric(18, 0)), N'CC', CAST(103628969 AS Numeric(18, 0)), N'Amy', N'Martinez', CAST(0xEC240B00 AS Date), N'Bogota D.C. ', N'O', CAST(1 AS Numeric(18, 0)), N'Mujer', CAST(1 AS Numeric(18, 0)), CAST(0xFB070B00 AS Date), CAST(1 AS Numeric(18, 0)), N'Soltera', CAST(25 AS Numeric(18, 0)), N'AmyMMartinez@dayrep.com', N'ammartinez@poligran.edu.co', N'9841773', CAST(9331586422 AS Numeric(18, 0)), N'Calle Santo del Sane No. 461')
INSERT [dbo].[profesor] ([id_profesor], [tipo_documento], [numero_documento], [nombre], [apellido], [fecha_de_expedicion], [lugar_de_expedicion], [rh], [id_pais_nacionalidad], [genero], [id_pais_lugar_nacimiento], [fecha_de_nacimiento], [id_pais_de_origen], [estado_civil], [id_departamento], [email_personal], [email_institucional], [telefono_fijo], [celular], [direccion]) VALUES (CAST(3 AS Numeric(18, 0)), N'CC', CAST(1032453788 AS Numeric(18, 0)), N'Diego', N'Rodriguez', CAST(0x04290B00 AS Date), N'Bogota D.C.', N'A-', CAST(1 AS Numeric(18, 0)), N'Hombre', CAST(1 AS Numeric(18, 0)), CAST(0x9E190B00 AS Date), CAST(1 AS Numeric(18, 0)), N'Soltero', CAST(25 AS Numeric(18, 0)), N'bnedmundob13@yopmail.com', N'dirodriguez@poligran.edu.co', N'2334315', CAST(3152334315 AS Numeric(18, 0)), N'Avenida Chiapas No. 555')
INSERT [dbo].[profesor] ([id_profesor], [tipo_documento], [numero_documento], [nombre], [apellido], [fecha_de_expedicion], [lugar_de_expedicion], [rh], [id_pais_nacionalidad], [genero], [id_pais_lugar_nacimiento], [fecha_de_nacimiento], [id_pais_de_origen], [estado_civil], [id_departamento], [email_personal], [email_institucional], [telefono_fijo], [celular], [direccion]) VALUES (CAST(4 AS Numeric(18, 0)), N'CC', CAST(56752025 AS Numeric(18, 0)), N'Clara', N'Alvarez', CAST(0x661A0B00 AS Date), N'Bogota D.C.', N'A+', CAST(1 AS Numeric(18, 0)), N'Mujer', CAST(1 AS Numeric(18, 0)), CAST(0xA2010B00 AS Date), CAST(1 AS Numeric(18, 0)), N'Casada', CAST(25 AS Numeric(18, 0)), N'ghiftode7@yopmail.com', N'clalverez@poligran.edu.co', N'4552570', CAST(3154552570 AS Numeric(18, 0)), N'Bulevar Renilla No. 693')
INSERT [dbo].[profesor] ([id_profesor], [tipo_documento], [numero_documento], [nombre], [apellido], [fecha_de_expedicion], [lugar_de_expedicion], [rh], [id_pais_nacionalidad], [genero], [id_pais_lugar_nacimiento], [fecha_de_nacimiento], [id_pais_de_origen], [estado_civil], [id_departamento], [email_personal], [email_institucional], [telefono_fijo], [celular], [direccion]) VALUES (CAST(5 AS Numeric(18, 0)), N'CC', CAST(104488309 AS Numeric(18, 0)), N'Noel', N'Sequedo', CAST(0x9A220B00 AS Date), N'Bogota D.C.', N'AB', CAST(1 AS Numeric(18, 0)), N'Hombre', CAST(1 AS Numeric(18, 0)), CAST(0x6E090B00 AS Date), CAST(1 AS Numeric(18, 0)), N'Soltero', CAST(25 AS Numeric(18, 0)), N'gmnoeli12@yopmail.com', N'nosequedo@poligran.edu.co', N'0997645', CAST(3150997645 AS Numeric(18, 0)), N'Avenida Baleares No. 870')
/****** Object:  Table [dbo].[tarjeta_profesional]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tarjeta_profesional](
	[num_doc_profesional] [numeric](18, 0) NOT NULL,
	[documento_profesional] [varchar](50) NULL,
	[id_profesor] [numeric](18, 0) NULL,
	[fecha_de_expedicion_profesional] [date] NULL,
	[lugar_de_expedicion] [varchar](50) NULL,
 CONSTRAINT [PK_Tarjeta_Profesional] PRIMARY KEY CLUSTERED 
(
	[num_doc_profesional] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tarjeta_profesional] ([num_doc_profesional], [documento_profesional], [id_profesor], [fecha_de_expedicion_profesional], [lugar_de_expedicion]) VALUES (CAST(123454 AS Numeric(18, 0)), N'A', CAST(5 AS Numeric(18, 0)), CAST(0xCB280B00 AS Date), N'Bogota D.C.')
INSERT [dbo].[tarjeta_profesional] ([num_doc_profesional], [documento_profesional], [id_profesor], [fecha_de_expedicion_profesional], [lugar_de_expedicion]) VALUES (CAST(123456 AS Numeric(18, 0)), N'A', CAST(1 AS Numeric(18, 0)), CAST(0x5C000B00 AS Date), N'Bogota D.C.')
INSERT [dbo].[tarjeta_profesional] ([num_doc_profesional], [documento_profesional], [id_profesor], [fecha_de_expedicion_profesional], [lugar_de_expedicion]) VALUES (CAST(123457 AS Numeric(18, 0)), N'A', CAST(2 AS Numeric(18, 0)), CAST(0x02270B00 AS Date), N'Bogota D.C.')
INSERT [dbo].[tarjeta_profesional] ([num_doc_profesional], [documento_profesional], [id_profesor], [fecha_de_expedicion_profesional], [lugar_de_expedicion]) VALUES (CAST(123458 AS Numeric(18, 0)), N'A', CAST(3 AS Numeric(18, 0)), CAST(0x3E380B00 AS Date), N'Bogota D.C.')
INSERT [dbo].[tarjeta_profesional] ([num_doc_profesional], [documento_profesional], [id_profesor], [fecha_de_expedicion_profesional], [lugar_de_expedicion]) VALUES (CAST(123459 AS Numeric(18, 0)), N'A', CAST(4 AS Numeric(18, 0)), CAST(0x1D200B00 AS Date), N'Bogota D.C.')
/****** Object:  Table [dbo].[detalle_experiencia]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[detalle_experiencia](
	[id_detalle] [numeric](18, 0) NOT NULL,
	[id_profesor] [numeric](18, 0) NULL,
	[cargo] [varchar](50) NULL,
	[duracion] [numeric](18, 0) NULL,
	[empresa] [varchar](50) NULL,
	[fecha_inicio] [date] NULL,
	[fecha_final] [date] NULL,
	[jefe] [varchar](50) NULL,
 CONSTRAINT [PK_Detalle_Experiencia] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[detalle_experiencia] ([id_detalle], [id_profesor], [cargo], [duracion], [empresa], [fecha_inicio], [fecha_final], [jefe]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Profesor', CAST(1 AS Numeric(18, 0)), N'Universidad Bosque', CAST(0xF5EA0A00 AS Date), CAST(0x63EC0A00 AS Date), N'Roberto Rodriguez')
INSERT [dbo].[detalle_experiencia] ([id_detalle], [id_profesor], [cargo], [duracion], [empresa], [fecha_inicio], [fecha_final], [jefe]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Profesor', CAST(1 AS Numeric(18, 0)), N'Universidad Nacional', CAST(0xEA2F0B00 AS Date), CAST(0x57310B00 AS Date), N'Carmen Caceres')
INSERT [dbo].[detalle_experiencia] ([id_detalle], [id_profesor], [cargo], [duracion], [empresa], [fecha_inicio], [fecha_final], [jefe]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Profesor', CAST(4 AS Numeric(18, 0)), N'Universidad de Los Andes', CAST(0x20330B00 AS Date), CAST(0xD5380B00 AS Date), N'Clara Alberta')
INSERT [dbo].[detalle_experiencia] ([id_detalle], [id_profesor], [cargo], [duracion], [empresa], [fecha_inicio], [fecha_final], [jefe]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Profesor', CAST(2 AS Numeric(18, 0)), N'Universidad de Los Andes', CAST(0xBD240B00 AS Date), CAST(0x97270B00 AS Date), N'Jaime Niquefa')
INSERT [dbo].[detalle_experiencia] ([id_detalle], [id_profesor], [cargo], [duracion], [empresa], [fecha_inicio], [fecha_final], [jefe]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Profesor', CAST(10 AS Numeric(18, 0)), N'Universidad Nacional', CAST(0x04290B00 AS Date), CAST(0x49370B00 AS Date), N'Sebastian Jiminez')
/****** Object:  Table [dbo].[experiencia]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[experiencia](
	[codigo_experiencia] [numeric](18, 0) NOT NULL,
	[id_profesor] [numeric](18, 0) NULL,
	[experencia_real] [numeric](18, 0) NULL,
	[nivel_de_cargo_alto] [varchar](50) NULL,
	[experencia_diferente_poli] [numeric](18, 0) NULL,
	[experencia_poli] [numeric](18, 0) NULL,
	[nivel_de_cargo_alto_academico] [varchar](50) NULL,
	[nivel_de_cargo_alto_poli] [varchar](50) NULL,
 CONSTRAINT [PK_Experencia] PRIMARY KEY CLUSTERED 
(
	[codigo_experiencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[experiencia] ([codigo_experiencia], [id_profesor], [experencia_real], [nivel_de_cargo_alto], [experencia_diferente_poli], [experencia_poli], [nivel_de_cargo_alto_academico], [nivel_de_cargo_alto_poli]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'Gerencia comercial y de mercadeo', CAST(3 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Profesor Catedra', N'Profesor Tiempo Completo')
INSERT [dbo].[experiencia] ([codigo_experiencia], [id_profesor], [experencia_real], [nivel_de_cargo_alto], [experencia_diferente_poli], [experencia_poli], [nivel_de_cargo_alto_academico], [nivel_de_cargo_alto_poli]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), N'Gerente de logistica y de servicios', CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Profesor Tiempo Completo', N'Profesor Catedra')
INSERT [dbo].[experiencia] ([codigo_experiencia], [id_profesor], [experencia_real], [nivel_de_cargo_alto], [experencia_diferente_poli], [experencia_poli], [nivel_de_cargo_alto_academico], [nivel_de_cargo_alto_poli]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Gerente de finanzas', CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Profesor Auxiliar', NULL)
INSERT [dbo].[experiencia] ([codigo_experiencia], [id_profesor], [experencia_real], [nivel_de_cargo_alto], [experencia_diferente_poli], [experencia_poli], [nivel_de_cargo_alto_academico], [nivel_de_cargo_alto_poli]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), N'Director de desarrollo e investigacion', CAST(6 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Profesor Tiempo Completo', N'Profesor Auxiliar')
INSERT [dbo].[experiencia] ([codigo_experiencia], [id_profesor], [experencia_real], [nivel_de_cargo_alto], [experencia_diferente_poli], [experencia_poli], [nivel_de_cargo_alto_academico], [nivel_de_cargo_alto_poli]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), N'Gerente de proyecto TI', CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Profesor Tiempo Completo', N'Profesor Tiempo Completo')
/****** Object:  Table [dbo].[materia]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[materia](
	[id_detalle] [numeric](18, 0) NULL,
	[tipo_experiencia] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(1 AS Numeric(18, 0)), N'Administrativa', N'Mercadeo')
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(2 AS Numeric(18, 0)), N'Administrativa', N'Logistica')
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(3 AS Numeric(18, 0)), N'Administrativa', N'Contabilidad')
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(4 AS Numeric(18, 0)), N'Administrativa', N'Investigacion')
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(5 AS Numeric(18, 0)), N'Administrativa', NULL)
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(1 AS Numeric(18, 0)), N'Administrativa', N'Mercadeo')
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(2 AS Numeric(18, 0)), N'Administrativa', N'Logistica')
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(3 AS Numeric(18, 0)), N'Administrativa', N'Contabilidad')
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(4 AS Numeric(18, 0)), N'Administrativa', N'Investigacion')
INSERT [dbo].[materia] ([id_detalle], [tipo_experiencia], [descripcion]) VALUES (CAST(5 AS Numeric(18, 0)), N'Administrativa', NULL)
/****** Object:  Table [dbo].[archivos_adjuntos]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[archivos_adjuntos](
	[id_archivo] [numeric](18, 0) NOT NULL,
	[id_profesor] [numeric](18, 0) NULL,
	[num_doc_profesional] [numeric](18, 0) NULL,
	[clase_documento] [varchar](50) NULL,
	[extension_archivo] [varchar](50) NULL,
 CONSTRAINT [PK_Archivos_Adjuntos] PRIMARY KEY CLUSTERED 
(
	[id_archivo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[archivos_adjuntos] ([id_archivo], [id_profesor], [num_doc_profesional], [clase_documento], [extension_archivo]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(123456 AS Numeric(18, 0)), N'Diploma', N'pdf.link')
INSERT [dbo].[archivos_adjuntos] ([id_archivo], [id_profesor], [num_doc_profesional], [clase_documento], [extension_archivo]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(123457 AS Numeric(18, 0)), N'Diploma', N'pdf.link')
INSERT [dbo].[archivos_adjuntos] ([id_archivo], [id_profesor], [num_doc_profesional], [clase_documento], [extension_archivo]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(123458 AS Numeric(18, 0)), N'Diploma', N'pdf.link')
INSERT [dbo].[archivos_adjuntos] ([id_archivo], [id_profesor], [num_doc_profesional], [clase_documento], [extension_archivo]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(123459 AS Numeric(18, 0)), N'Diploma', N'pdf.link')
INSERT [dbo].[archivos_adjuntos] ([id_archivo], [id_profesor], [num_doc_profesional], [clase_documento], [extension_archivo]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(123454 AS Numeric(18, 0)), N'Diploma', N'pdf.link')
/****** Object:  Table [dbo].[titulo]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[titulo](
	[id_titulo] [numeric](18, 0) NOT NULL,
	[id_archivo] [numeric](18, 0) NULL,
	[id_profesor] [numeric](18, 0) NULL,
	[diploma] [varchar](50) NULL,
 CONSTRAINT [PK_Titulo] PRIMARY KEY CLUSTERED 
(
	[id_titulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[titulo] ([id_titulo], [id_archivo], [id_profesor], [diploma]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Maestria')
INSERT [dbo].[titulo] ([id_titulo], [id_archivo], [id_profesor], [diploma]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Maestria')
INSERT [dbo].[titulo] ([id_titulo], [id_archivo], [id_profesor], [diploma]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Maestria')
INSERT [dbo].[titulo] ([id_titulo], [id_archivo], [id_profesor], [diploma]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Maestria')
INSERT [dbo].[titulo] ([id_titulo], [id_archivo], [id_profesor], [diploma]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Maestria')
/****** Object:  Table [dbo].[escolaridad]    Script Date: 11/11/2015 19:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[escolaridad](
	[codigo_escolaridad] [numeric](18, 0) NOT NULL,
	[id_profesor] [numeric](18, 0) NULL,
	[institucion] [varchar](50) NULL,
	[id_titulo] [numeric](18, 0) NULL,
	[nivel] [varchar](50) NULL,
	[facultad] [varchar](50) NULL,
	[id_pais] [numeric](18, 0) NULL,
	[anos] [numeric](18, 0) NULL,
	[fecha_de_inicio] [date] NULL,
	[fecha_grado] [date] NULL,
	[convalidado] [varchar](50) NULL,
	[estado_estudio] [bit] NULL,
 CONSTRAINT [PK_Escolaridad] PRIMARY KEY CLUSTERED 
(
	[codigo_escolaridad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[escolaridad] ([codigo_escolaridad], [id_profesor], [institucion], [id_titulo], [nivel], [facultad], [id_pais], [anos], [fecha_de_inicio], [fecha_grado], [convalidado], [estado_estudio]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Universidad Politecnico', CAST(1 AS Numeric(18, 0)), N'Maestria', N'Ciencia', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0xBD240B00 AS Date), CAST(0xCE2A0B00 AS Date), N'no', 0)
INSERT [dbo].[escolaridad] ([codigo_escolaridad], [id_profesor], [institucion], [id_titulo], [nivel], [facultad], [id_pais], [anos], [fecha_de_inicio], [fecha_grado], [convalidado], [estado_estudio]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Universidad Nacional', CAST(2 AS Numeric(18, 0)), N'Maestria', N'Ingenieria', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0xE2210B00 AS Date), CAST(0xF3270B00 AS Date), N'no', 0)
INSERT [dbo].[escolaridad] ([codigo_escolaridad], [id_profesor], [institucion], [id_titulo], [nivel], [facultad], [id_pais], [anos], [fecha_de_inicio], [fecha_grado], [convalidado], [estado_estudio]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Universidad Politecnico', CAST(3 AS Numeric(18, 0)), N'Maestria', N'Psicologia', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0xBD240B00 AS Date), CAST(0xCE2A0B00 AS Date), N'no', 0)
INSERT [dbo].[escolaridad] ([codigo_escolaridad], [id_profesor], [institucion], [id_titulo], [nivel], [facultad], [id_pais], [anos], [fecha_de_inicio], [fecha_grado], [convalidado], [estado_estudio]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Universidad Politecnico', CAST(4 AS Numeric(18, 0)), N'Maestria', N'Aerolineas', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0xC01A0B00 AS Date), CAST(0xD1200B00 AS Date), N'no', 0)
INSERT [dbo].[escolaridad] ([codigo_escolaridad], [id_profesor], [institucion], [id_titulo], [nivel], [facultad], [id_pais], [anos], [fecha_de_inicio], [fecha_grado], [convalidado], [estado_estudio]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Universidad de Los Andes', CAST(5 AS Numeric(18, 0)), N'Maestria', N'Ingenieria', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x4F230B00 AS Date), CAST(0x60290B00 AS Date), N'no', 0)
/****** Object:  ForeignKey [FK_Profesor_Departamento]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Departamento] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[profesor] CHECK CONSTRAINT [FK_Profesor_Departamento]
GO
/****** Object:  ForeignKey [FK_Profesor_Pais]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Pais] FOREIGN KEY([id_pais_nacionalidad])
REFERENCES [dbo].[pais] ([id_pais])
GO
ALTER TABLE [dbo].[profesor] CHECK CONSTRAINT [FK_Profesor_Pais]
GO
/****** Object:  ForeignKey [FK_Profesor_Pais1]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Pais1] FOREIGN KEY([id_pais_lugar_nacimiento])
REFERENCES [dbo].[pais] ([id_pais])
GO
ALTER TABLE [dbo].[profesor] CHECK CONSTRAINT [FK_Profesor_Pais1]
GO
/****** Object:  ForeignKey [FK_Profesor_Pais2]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Pais2] FOREIGN KEY([id_pais_de_origen])
REFERENCES [dbo].[pais] ([id_pais])
GO
ALTER TABLE [dbo].[profesor] CHECK CONSTRAINT [FK_Profesor_Pais2]
GO
/****** Object:  ForeignKey [FK_Tarjeta_Profesional_Profesor]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[tarjeta_profesional]  WITH CHECK ADD  CONSTRAINT [FK_Tarjeta_Profesional_Profesor] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[profesor] ([id_profesor])
GO
ALTER TABLE [dbo].[tarjeta_profesional] CHECK CONSTRAINT [FK_Tarjeta_Profesional_Profesor]
GO
/****** Object:  ForeignKey [FK_Detalle_Experiencia_Profesor]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[detalle_experiencia]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Experiencia_Profesor] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[profesor] ([id_profesor])
GO
ALTER TABLE [dbo].[detalle_experiencia] CHECK CONSTRAINT [FK_Detalle_Experiencia_Profesor]
GO
/****** Object:  ForeignKey [FK_Experiencia_Profesor]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[experiencia]  WITH CHECK ADD  CONSTRAINT [FK_Experiencia_Profesor] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[profesor] ([id_profesor])
GO
ALTER TABLE [dbo].[experiencia] CHECK CONSTRAINT [FK_Experiencia_Profesor]
GO
/****** Object:  ForeignKey [FK_Materia_Detalle_Experiencia]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Detalle_Experiencia] FOREIGN KEY([id_detalle])
REFERENCES [dbo].[detalle_experiencia] ([id_detalle])
GO
ALTER TABLE [dbo].[materia] CHECK CONSTRAINT [FK_Materia_Detalle_Experiencia]
GO
/****** Object:  ForeignKey [FK_Archivos_Adjuntos_Profesor]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[archivos_adjuntos]  WITH CHECK ADD  CONSTRAINT [FK_Archivos_Adjuntos_Profesor] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[profesor] ([id_profesor])
GO
ALTER TABLE [dbo].[archivos_adjuntos] CHECK CONSTRAINT [FK_Archivos_Adjuntos_Profesor]
GO
/****** Object:  ForeignKey [FK_Archivos_Adjuntos_Tarjeta_Profesional]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[archivos_adjuntos]  WITH CHECK ADD  CONSTRAINT [FK_Archivos_Adjuntos_Tarjeta_Profesional] FOREIGN KEY([num_doc_profesional])
REFERENCES [dbo].[tarjeta_profesional] ([num_doc_profesional])
GO
ALTER TABLE [dbo].[archivos_adjuntos] CHECK CONSTRAINT [FK_Archivos_Adjuntos_Tarjeta_Profesional]
GO
/****** Object:  ForeignKey [FK_Titulo_Archivos_Adjuntos]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[titulo]  WITH CHECK ADD  CONSTRAINT [FK_Titulo_Archivos_Adjuntos] FOREIGN KEY([id_archivo])
REFERENCES [dbo].[archivos_adjuntos] ([id_archivo])
GO
ALTER TABLE [dbo].[titulo] CHECK CONSTRAINT [FK_Titulo_Archivos_Adjuntos]
GO
/****** Object:  ForeignKey [FK_Titulo_Profesor]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[titulo]  WITH CHECK ADD  CONSTRAINT [FK_Titulo_Profesor] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[profesor] ([id_profesor])
GO
ALTER TABLE [dbo].[titulo] CHECK CONSTRAINT [FK_Titulo_Profesor]
GO
/****** Object:  ForeignKey [FK_Escolaridad_Pais]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[escolaridad]  WITH CHECK ADD  CONSTRAINT [FK_Escolaridad_Pais] FOREIGN KEY([id_pais])
REFERENCES [dbo].[pais] ([id_pais])
GO
ALTER TABLE [dbo].[escolaridad] CHECK CONSTRAINT [FK_Escolaridad_Pais]
GO
/****** Object:  ForeignKey [FK_Escolaridad_Profesor]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[escolaridad]  WITH CHECK ADD  CONSTRAINT [FK_Escolaridad_Profesor] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[profesor] ([id_profesor])
GO
ALTER TABLE [dbo].[escolaridad] CHECK CONSTRAINT [FK_Escolaridad_Profesor]
GO
/****** Object:  ForeignKey [FK_Escolaridad_Titulo]    Script Date: 11/11/2015 19:29:42 ******/
ALTER TABLE [dbo].[escolaridad]  WITH CHECK ADD  CONSTRAINT [FK_Escolaridad_Titulo] FOREIGN KEY([id_titulo])
REFERENCES [dbo].[titulo] ([id_titulo])
GO
ALTER TABLE [dbo].[escolaridad] CHECK CONSTRAINT [FK_Escolaridad_Titulo]
GO
