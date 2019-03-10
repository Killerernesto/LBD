USE [FCinemasFM]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [CH_ticket_importe_total]
GO
ALTER TABLE [dbo].[Sala] DROP CONSTRAINT [CH_sala_cantidad_asientos]
GO
ALTER TABLE [dbo].[Membresia] DROP CONSTRAINT [CH_membresia_puntos]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [CH_empleado_sexo]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [CH_cliente_sexo]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [CH_boleto_precio]
GO
ALTER TABLE [dbo].[Ticket_detalle] DROP CONSTRAINT [FK_Id_ticket]
GO
ALTER TABLE [dbo].[Ticket_detalle] DROP CONSTRAINT [FK_Id_boleto]
GO
ALTER TABLE [dbo].[Funcion] DROP CONSTRAINT [FK_Id_sucursal]
GO
ALTER TABLE [dbo].[Funcion] DROP CONSTRAINT [FK_Id_sala]
GO
ALTER TABLE [dbo].[Funcion] DROP CONSTRAINT [FK_Id_pelicula]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Id_departamento]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Id_membresia]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Id_funcion]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Id_empleado]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Id_cliente]
GO
/****** Object:  Index [UQ_ticket_folio]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [UQ_ticket_folio]
GO
/****** Object:  Index [UQ_pelicula_codigo]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [UQ_pelicula_codigo]
GO
/****** Object:  Index [UQ_membresia_folio]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Membresia] DROP CONSTRAINT [UQ_membresia_folio]
GO
/****** Object:  Index [UQ_empleado_num]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [UQ_empleado_num]
GO
/****** Object:  Index [UQ_departamento_cve]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Departamento] DROP CONSTRAINT [UQ_departamento_cve]
GO
/****** Object:  Table [dbo].[Ticket_detalle]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Ticket_detalle]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Sala]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Pelicula]
GO
/****** Object:  Table [dbo].[Membresia]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Membresia]
GO
/****** Object:  Table [dbo].[Funcion]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Funcion]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Departamento]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP TABLE [dbo].[Boleto]
GO
USE [master]
GO
/****** Object:  Database [FCinemasFM]    Script Date: 16/02/2019 01:24:20 p.m. ******/
DROP DATABASE [FCinemasFM]
GO
/****** Object:  Database [FCinemasFM]    Script Date: 16/02/2019 01:24:20 p.m. ******/
CREATE DATABASE [FCinemasFM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FCinemasFM', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\FCinemasFM.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FCinemasFM_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\FCinemasFM_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FCinemasFM] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FCinemasFM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FCinemasFM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FCinemasFM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FCinemasFM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FCinemasFM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FCinemasFM] SET ARITHABORT OFF 
GO
ALTER DATABASE [FCinemasFM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FCinemasFM] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FCinemasFM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FCinemasFM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FCinemasFM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FCinemasFM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FCinemasFM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FCinemasFM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FCinemasFM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FCinemasFM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FCinemasFM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FCinemasFM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FCinemasFM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FCinemasFM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FCinemasFM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FCinemasFM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FCinemasFM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FCinemasFM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FCinemasFM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FCinemasFM] SET  MULTI_USER 
GO
ALTER DATABASE [FCinemasFM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FCinemasFM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FCinemasFM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FCinemasFM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [FCinemasFM]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Boleto](
	[Id_boleto] [int] NOT NULL,
	[Id_funcion] [int] NULL,
	[Id_empleado] [varchar](5) NULL,
	[Id_cliente] [int] NULL,
	[Num_asiento] [varchar](3) NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK_Id_boleto] PRIMARY KEY CLUSTERED 
(
	[Id_boleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_cliente] [int] NOT NULL,
	[Id_membresia] [int] NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Correo] [varchar](40) NULL,
	[Fecha_nac] [date] NOT NULL,
	[Sexo] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Id_cliente] PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id_departamento] [varchar](5) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Cve_departamento] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Id_departamento] PRIMARY KEY CLUSTERED 
(
	[Id_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[Id_empleado] [varchar](5) NOT NULL,
	[Num_empleado] [varchar](5) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Ap_paterno] [varchar](25) NOT NULL,
	[Ap_materno] [varchar](25) NOT NULL,
	[Fecha_nac] [date] NOT NULL,
	[Sexo] [varchar](1) NOT NULL,
	[RFC] [varchar](13) NULL,
	[Fecha_contrato] [date] NOT NULL,
	[Estatus] [varchar](10) NOT NULL,
	[Id_departamento] [varchar](5) NOT NULL,
	[Id_supervisor] [varchar](5) NULL,
 CONSTRAINT [PK_Id_empleado] PRIMARY KEY CLUSTERED 
(
	[Id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcion]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcion](
	[Id_funcion] [int] NOT NULL,
	[Id_sucursal] [varchar](5) NULL,
	[Id_pelicula] [varchar](5) NULL,
	[Id_sala] [varchar](5) NULL,
	[Fecha_funcion] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
 CONSTRAINT [PK_Id_funcion] PRIMARY KEY CLUSTERED 
(
	[Id_funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Membresia]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Membresia](
	[Id_membresia] [int] NOT NULL,
	[Folio] [varchar](10) NOT NULL,
	[Tipo] [varchar](15) NOT NULL,
	[Vencimiento] [date] NOT NULL,
	[Puntos] [int] NULL,
 CONSTRAINT [PK_Id_membresia] PRIMARY KEY CLUSTERED 
(
	[Id_membresia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelicula](
	[Id_pelicula] [varchar](5) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Codigo] [varchar](8) NOT NULL,
	[Clasificacion] [varchar](3) NOT NULL,
	[Duracion] [time](7) NULL,
	[Sinopsis] [varchar](300) NULL,
 CONSTRAINT [PK_Id_pelicula] PRIMARY KEY CLUSTERED 
(
	[Id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sala](
	[Id_sala] [varchar](5) NOT NULL,
	[Cantidad_asientos] [int] NOT NULL,
	[Tipo_sala] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Id_sala] PRIMARY KEY CLUSTERED 
(
	[Id_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[Id_sucursal] [varchar](5) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Direccion] [varchar](40) NULL,
 CONSTRAINT [PK_Id_sucursal] PRIMARY KEY CLUSTERED 
(
	[Id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id_ticket] [decimal](12, 0) NOT NULL,
	[Folio] [varchar](8) NOT NULL,
	[Fecha_compra] [datetime] NOT NULL,
	[Importe_total] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_Id_ticket] PRIMARY KEY CLUSTERED 
(
	[Id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket_detalle]    Script Date: 16/02/2019 01:24:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket_detalle](
	[Id_ticket] [decimal](12, 0) NULL,
	[Id_boleto] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1000, 1, N'Francisca Conde', N'fconde@email.com', CAST(0x54E70A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1001, 2, N'Juan Manuel', N'juarecio17@email.es', CAST(0x79FA0A00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1002, 3, N'Francisca Pérez', N'franciscaperez@mail.net', CAST(0x56F80A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1003, 4, N'Antonio García', N'antoniogarcia@email.com', CAST(0xC61D0B00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1005, 5, N'Enrique Riera', N'eriera85@mail.es', CAST(0xE9D70A00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1006, 6, N'Francisca Capilla', N'fracapilla8@correo.com', CAST(0x7FD90A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1007, 7, N'Raúl Pares', N'gomez12@correo.com', CAST(0x93D20A00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1008, 8, N'María Isabel', N'marmartinez49@correo.es', CAST(0x94090B00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1009, 9, N'Raquel López', N'raquellopez@email.es', CAST(0xC3EE0A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1010, 10, N'Manuel Godoy', N'manlopez@mail.net', CAST(0xDEFE0A00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1011, 11, N'Juana Ramírez', N'juaramirez@correo.com', CAST(0x3AFF0A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1012, 12, N'Nuria Montilla', N'montilla95@mail.com', CAST(0xC2190B00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1013, 13, N'José María', N'josguillamon@mail.net', CAST(0x75EA0A00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1014, 14, N'Encarnación Montero', N'emontero@email.com', CAST(0x2DF10A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1015, 15, N'María Luisa', N'marmangas@correo.net', CAST(0xF1230B00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1016, 16, N'Juana Ruiz', N'juanaperez@email.com', CAST(0x30010B00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1017, 17, N'Antonio Tello', N'antoniotello@email.net', CAST(0xA9060B00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1018, 18, N'Daniel Pérez', N'dcamara@correo.net', CAST(0x5BE40A00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1019, 19, N'José Zamora', N'jose.zamora@mail.es', CAST(0x3DDD0A00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1020, 20, N'José Lumbreras', N'jlumbreras@correo.net', CAST(0xBF1F0B00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1021, 21, N'Ángeles Herrero', N'delacalle11@mail.net', CAST(0x33FC0A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1022, 22, N'María Ángeles', N'lopez44@email.es', CAST(0x9BD30A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1023, 23, N'Salvador Gómez', N's.gomez@correo.es', CAST(0xFFFD0A00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1024, 24, N'Diego Montero', N'dmontero@mail.es', CAST(0xBC1D0B00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1025, 25, N'Víctor Otero', N'vicotero39@correo.net', CAST(0x78090B00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1026, 26, N'Teresa Villa', N'teresavilla@email.net', CAST(0xE8E50A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1027, 27, N'Carlos Pereira', N'pereira24@correo.es', CAST(0xE4E50A00 AS Date), N'M')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1028, 28, N'Dolores Bernal', N'doloresgil13@correo.com', CAST(0xB3D50A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1029, 29, N'María Josefa', N'mariaragones@email.es', CAST(0x95EB0A00 AS Date), N'F')
INSERT [dbo].[Cliente] ([Id_cliente], [Id_membresia], [Nombre], [Correo], [Fecha_nac], [Sexo]) VALUES (1030, 30, N'Josefa Armenteros', N'marmenteros@correo.es', CAST(0x3EDA0A00 AS Date), N'F')
INSERT [dbo].[Departamento] ([Id_departamento], [Nombre], [Cve_departamento]) VALUES (N'CDC02', N'Cafeteria', N'FCFMCDC002')
INSERT [dbo].[Departamento] ([Id_departamento], [Nombre], [Cve_departamento]) VALUES (N'CDD01', N'Dulceria', N'FCFMCDD001')
INSERT [dbo].[Departamento] ([Id_departamento], [Nombre], [Cve_departamento]) VALUES (N'CDL03', N'Limpieza', N'FCFMCDL003')
INSERT [dbo].[Departamento] ([Id_departamento], [Nombre], [Cve_departamento]) VALUES (N'CDM05', N'Mantenimiento', N'FCFMCDM005')
INSERT [dbo].[Departamento] ([Id_departamento], [Nombre], [Cve_departamento]) VALUES (N'CDP04', N'Proyeccion', N'FCFMCDP004')
INSERT [dbo].[Departamento] ([Id_departamento], [Nombre], [Cve_departamento]) VALUES (N'CDT00', N'Taquilla', N'FCFMCDT000')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA004', N'00004', N'Javier', N'Asenjo', N'Izquierdo', CAST(0x97EA0A00 AS Date), N'M', N'ASIJ5909298YH', CAST(0xE5350B00 AS Date), N'Despedido', N'CDP04', N'00020')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA005', N'00005', N'Marcos', N'Fernández', N'Ibáñez', CAST(0x7CDB0A00 AS Date), N'M', N'FEIM4902268TY', CAST(0x24390B00 AS Date), N'Activo', N'CDL03', N'00012')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA006', N'00006', N'Miguel Ángel', N'López', N'Arias', CAST(0x50DE0A00 AS Date), N'M', N'LOAM5102209JY', CAST(0x43370B00 AS Date), N'Despedido', N'CDM05', N'00088')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA007', N'00007', N'Fernando', N'Fernández', N'Pacheco', CAST(0x35160B00 AS Date), N'M', N'FEPF9004256KJ', CAST(0x92370B00 AS Date), N'Despedido', N'CDP04', N'00023')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA008', N'00008', N'María', N'Manso', N'Ferrando', CAST(0x150C0B00 AS Date), N'F', N'MAFM8303216GF', CAST(0x52390B00 AS Date), N'Despedido', N'CDC02', N'00020')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA009', N'00009', N'María Dolores', N'Sevilla', N'Molina', CAST(0x2FFD0A00 AS Date), N'F', N'SEMM7210108TG', CAST(0xCF380B00 AS Date), N'Activo', N'CDL03', N'00088')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA010', N'00010', N'Rocío', N'Mari', N'León', CAST(0xE4E20A00 AS Date), N'F', N'MALR5405079UH', CAST(0xCB360B00 AS Date), N'Despedido', N'CDD01', N'00085')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA011', N'00011', N'Manuela', N'Delgado', N'Romero', CAST(0x2B1C0B00 AS Date), N'F', N'RODM9406292MB', CAST(0x3A370B00 AS Date), N'Activo', N'CDT00', N'00089')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA012', N'00012', N'Ignacio', N'Castilla', N'Díaz', CAST(0xF6FA0A00 AS Date), N'M', N'CADI7103214GF', CAST(0x6A360B00 AS Date), N'Despedido', N'CDM05', N'00012')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA013', N'00013', N'Alfonso', N'López', N'Moreno', CAST(0x8D050B00 AS Date), N'M', N'LOMA7808221ER', CAST(0x35370B00 AS Date), N'Despedido', N'CDC02', N'00060')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA014', N'00014', N'Francisco', N'Fernández', N'Pérez', CAST(0x9B140B00 AS Date), N'M', N'FEPF8903117VC', CAST(0x8C360B00 AS Date), N'Activo', N'CDD01', N'00088')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA015', N'00015', N'Julián', N'Fernández', N'Castillo', CAST(0x26F30A00 AS Date), N'M', N'FECJ6509287UI', CAST(0x9B380B00 AS Date), N'Activo', N'CDL03', N'00088')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA016', N'00016', N'Ignacio', N'Herrero', N'Gámez', CAST(0xA9170B00 AS Date), N'M', N'HEGI9105027DF', CAST(0xA2390B00 AS Date), N'Despedido', N'CDP04', N'00089')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA017', N'00017', N'Rubén', N'Sancho', N'Cortes', CAST(0x32030B00 AS Date), N'M', N'SACR7212276GF', CAST(0xF2380B00 AS Date), N'Activo', N'CDT00', N'00032')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA018', N'00018', N'Manuel', N'Varas', N'Martínez', CAST(0xCDD40A00 AS Date), N'M', N'VAMM4406218JK', CAST(0x4F350B00 AS Date), N'Despedido', N'CDL03', N'00023')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA019', N'00019', N'María Carmen', N'Martin', N'García', CAST(0x4EE80A00 AS Date), N'F', N'MAGM5802219YT', CAST(0xBB390B00 AS Date), N'Despedido', N'CDD01', N'00012')
INSERT [dbo].[Empleado] ([Id_empleado], [Num_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Fecha_nac], [Sexo], [RFC], [Fecha_contrato], [Estatus], [Id_departamento], [Id_supervisor]) VALUES (N'EA020', N'00020', N'María Dolores', N'Ruiz', N'Simo', CAST(0xF41D0B00 AS Date), N'F', N'RUSM9509293VY', CAST(0x82390B00 AS Date), N'Activo', N'CDM05', N'00085')
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (1, N'0000100001', N'Bronze', CAST(0x3C3D0B00 AS Date), 100)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (2, N'0000100002', N'Bronze', CAST(0xB03C0B00 AS Date), 50)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (3, N'0000100003', N'Silver', CAST(0xDB3D0B00 AS Date), 70)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (4, N'0000100004', N'Gold', CAST(0xCE3C0B00 AS Date), 120)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (5, N'0000100005', N'Bronze', CAST(0xAB3D0B00 AS Date), 80)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (6, N'0000100006', N'Platinum', CAST(0xFE3D0B00 AS Date), 80)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (7, N'0000100007', N'Gold', CAST(0xBC3D0B00 AS Date), 10)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (8, N'0000100008', N'Silver', CAST(0xE03C0B00 AS Date), 30)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (9, N'0000100009', N'Bronze', CAST(0xC73C0B00 AS Date), 50)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (10, N'0000100010', N'Gold', CAST(0xCA3D0B00 AS Date), 200)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (11, N'0000100011', N'Bronze', CAST(0x2A3D0B00 AS Date), 170)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (12, N'0000100012', N'Platinum', CAST(0xD53D0B00 AS Date), 20)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (13, N'0000100013', N'Silver', CAST(0x943D0B00 AS Date), 60)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (14, N'0000100014', N'Gold', CAST(0xDB3D0B00 AS Date), 80)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (15, N'0000100015', N'Bronze', CAST(0xB63D0B00 AS Date), 130)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (16, N'0000100016', N'Silver', CAST(0x753D0B00 AS Date), 100)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (17, N'0000100017', N'Bronze', CAST(0x053E0B00 AS Date), 80)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (18, N'0000100018', N'Platinum', CAST(0xA93C0B00 AS Date), 50)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (19, N'0000100019', N'Bronze', CAST(0x193D0B00 AS Date), 20)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (20, N'0000100020', N'Bronze', CAST(0xA43D0B00 AS Date), 60)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (21, N'0000100021', N'Gold', CAST(0x1D3D0B00 AS Date), 120)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (22, N'0000100022', N'Silver', CAST(0xBE3C0B00 AS Date), 80)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (23, N'0000100023', N'Silver', CAST(0xE93D0B00 AS Date), 140)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (24, N'0000100024', N'Platinum', CAST(0xC13C0B00 AS Date), 90)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (25, N'0000100025', N'Gold', CAST(0x123D0B00 AS Date), 40)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (26, N'0000100026', N'Silver', CAST(0x603D0B00 AS Date), 100)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (27, N'0000100027', N'Bronze', CAST(0xD13D0B00 AS Date), 50)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (28, N'0000100028', N'Gold', CAST(0x793D0B00 AS Date), 20)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (29, N'0000100029', N'Platinum', CAST(0x503D0B00 AS Date), 110)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (30, N'0000100030', N'Silver', CAST(0xED3C0B00 AS Date), 70)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (31, N'0000100031', N'Silver', CAST(0x8F3C0B00 AS Date), 45)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (32, N'0000100032', N'Gold', CAST(0x823B0B00 AS Date), 76)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (33, N'0000100033', N'Platinum', CAST(0xA53B0B00 AS Date), 80)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (34, N'0000100034', N'Platinum', CAST(0x6F3B0B00 AS Date), 90)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (35, N'0000100035', N'Silver', CAST(0x413C0B00 AS Date), 64)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (36, N'0000100036', N'Bronze', CAST(0x553C0B00 AS Date), 37)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (37, N'0000100037', N'Bronze', CAST(0x613C0B00 AS Date), 25)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (38, N'0000100038', N'Platinum', CAST(0x163C0B00 AS Date), 86)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (39, N'0000100039', N'Platinum', CAST(0xFB3B0B00 AS Date), 99)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (40, N'0000100040', N'Bronze', CAST(0x7F3C0B00 AS Date), 24)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (41, N'0000100041', N'Gold', CAST(0x3D3C0B00 AS Date), 57)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (42, N'0000100042', N'Platinum', CAST(0x033D0B00 AS Date), 85)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (43, N'0000100043', N'Silver', CAST(0xEF3C0B00 AS Date), 39)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (44, N'0000100044', N'Gold', CAST(0xE83C0B00 AS Date), 69)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (45, N'0000100045', N'Platinum', CAST(0x3A3D0B00 AS Date), 84)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (46, N'0000100046', N'Gold', CAST(0xDE3C0B00 AS Date), 66)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (47, N'0000100047', N'Silver', CAST(0x473C0B00 AS Date), 42)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (48, N'0000100048', N'Bronze', CAST(0x753C0B00 AS Date), 29)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (49, N'0000100049', N'Silver', CAST(0x733C0B00 AS Date), 42)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (50, N'0000100050', N'Bronze', CAST(0xBC3C0B00 AS Date), 12)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (51, N'0000100051', N'Bronze', CAST(0xAE3C0B00 AS Date), 34)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (52, N'0000100052', N'Gold', CAST(0xEF3C0B00 AS Date), 54)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (53, N'0000100053', N'Silver', CAST(0x903C0B00 AS Date), 59)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (54, N'0000100054', N'Silver', CAST(0x663B0B00 AS Date), 59)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (55, N'0000100055', N'Gold', CAST(0x513D0B00 AS Date), 61)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (56, N'0000100056', N'Bronze', CAST(0x383D0B00 AS Date), 34)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (57, N'0000100057', N'Silver', CAST(0xC63E0B00 AS Date), 45)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (58, N'0000100058', N'Platinum', CAST(0x893D0B00 AS Date), 80)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (59, N'0000100059', N'Silver', CAST(0x513D0B00 AS Date), 43)
INSERT [dbo].[Membresia] ([Id_membresia], [Folio], [Tipo], [Vencimiento], [Puntos]) VALUES (60, N'0000100060', N'Platinum', CAST(0x8E3C0B00 AS Date), 77)
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCA0', N'FCinemasFM Apodaca', N'Los Ebanos, 66612 Cd Apodaca, N.L.')
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCB7', N'FCinemasFM Plaza Cumbres', N'Las Cumbres, 64619 Monterrey, N.L.')
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCC9', N'FCinemasFM Cadereyta', N'67450 Cadereyta Jiménez, N.L.')
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCE1', N'FCinemasFM Escobedo', N'Sendero Norte 130, 66050 Escobedo, N.L.')
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCG8', N'FCinemasFM García', N'Privadas de las Villas, García, N.L.')
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCJ4', N'FCinemasFM San Roque', N'Valle de Juárez, 67289 Juárez, N.L.')
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCM3', N'FCinemasFM Monterrey', N'Valle Soleado, 67114 Monterrey, N.L.')
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCP6', N'FCinemasFM San Pedro', N'S.P., 66226 San Pedro Garza García, N.L.')
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCS2', N'FCinemasFM Citadel', N'66477 San Nicolas de los Garza, N.L.')
INSERT [dbo].[Sucursal] ([Id_sucursal], [Nombre], [Direccion]) VALUES (N'SFCZ5', N'FCinemasFM General Zuazua', N'Carr. Zuazua a Laredo, Gral Zuazua, N.L.')
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(212438003 AS Decimal(12, 0)), N'SFCA0003', CAST(0x0000A74801004D48 AS DateTime), CAST(108.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(1010000000 AS Decimal(12, 0)), N'10003450', CAST(0x0000A739012F7F50 AS DateTime), CAST(99.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(1050000000 AS Decimal(12, 0)), N'10003440', CAST(0x0000A739012F7F50 AS DateTime), CAST(168.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(1080000000 AS Decimal(12, 0)), N'10003455', CAST(0x0000A73C0100CE30 AS DateTime), CAST(51.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(1212438002 AS Decimal(12, 0)), N'SFCE1002', CAST(0x0000A73D0113CEA4 AS DateTime), CAST(72.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(2010000000 AS Decimal(12, 0)), N'10003460', CAST(0x0000A73B01038D50 AS DateTime), CAST(150.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(2212438005 AS Decimal(12, 0)), N'SFCS2005', CAST(0x0000A71D00E977F8 AS DateTime), CAST(180.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(3010000000 AS Decimal(12, 0)), N'10003470', CAST(0x0000A73B00FE0F10 AS DateTime), CAST(133.50 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(4010000000 AS Decimal(12, 0)), N'10003480', CAST(0x0000A737011826C0 AS DateTime), CAST(99.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(4212438001 AS Decimal(12, 0)), N'SFCJ4001', CAST(0x0000A6E9013D3FA0 AS DateTime), CAST(35.20 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(4212438003 AS Decimal(12, 0)), N'SFCJ4003', CAST(0x0000A6F000FCC81C AS DateTime), CAST(108.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(5010000000 AS Decimal(12, 0)), N'10003490', CAST(0x0000A736016D4BA0 AS DateTime), CAST(99.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(6010000000 AS Decimal(12, 0)), N'10003410', CAST(0x0000A739012F7F50 AS DateTime), CAST(88.50 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(6212438001 AS Decimal(12, 0)), N'SFCP6001', CAST(0x0000A68E00B5E21C AS DateTime), CAST(35.20 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(7010000000 AS Decimal(12, 0)), N'10003420', CAST(0x0000A73A01140810 AS DateTime), CAST(99.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(7212438004 AS Decimal(12, 0)), N'SFCB7004', CAST(0x0000A6BE00FD8CFC AS DateTime), CAST(140.80 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(8090000000 AS Decimal(12, 0)), N'10003430', CAST(0x0000A73A01140810 AS DateTime), CAST(49.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(8212438001 AS Decimal(12, 0)), N'SFCG8001', CAST(0x0000A73E01563BB8 AS DateTime), CAST(36.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(8212438002 AS Decimal(12, 0)), N'SFCG8002', CAST(0x0000A71A013C773C AS DateTime), CAST(72.00 AS Decimal(8, 2)))
INSERT [dbo].[Ticket] ([Id_ticket], [Folio], [Fecha_compra], [Importe_total]) VALUES (CAST(9212438001 AS Decimal(12, 0)), N'SFCC9001', CAST(0x0000A73E01563BB8 AS DateTime), CAST(36.00 AS Decimal(8, 2)))
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_departamento_cve]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Departamento] ADD  CONSTRAINT [UQ_departamento_cve] UNIQUE NONCLUSTERED 
(
	[Cve_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_empleado_num]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Empleado] ADD  CONSTRAINT [UQ_empleado_num] UNIQUE NONCLUSTERED 
(
	[Num_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_membresia_folio]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Membresia] ADD  CONSTRAINT [UQ_membresia_folio] UNIQUE NONCLUSTERED 
(
	[Folio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_pelicula_codigo]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Pelicula] ADD  CONSTRAINT [UQ_pelicula_codigo] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_ticket_folio]    Script Date: 16/02/2019 01:24:20 p.m. ******/
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [UQ_ticket_folio] UNIQUE NONCLUSTERED 
(
	[Folio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Id_cliente] FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[Cliente] ([Id_cliente])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Id_cliente]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Id_empleado] FOREIGN KEY([Id_empleado])
REFERENCES [dbo].[Empleado] ([Id_empleado])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Id_empleado]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Id_funcion] FOREIGN KEY([Id_funcion])
REFERENCES [dbo].[Funcion] ([Id_funcion])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Id_funcion]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Id_membresia] FOREIGN KEY([Id_membresia])
REFERENCES [dbo].[Membresia] ([Id_membresia])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Id_membresia]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Id_departamento] FOREIGN KEY([Id_departamento])
REFERENCES [dbo].[Departamento] ([Id_departamento])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Id_departamento]
GO
ALTER TABLE [dbo].[Funcion]  WITH CHECK ADD  CONSTRAINT [FK_Id_pelicula] FOREIGN KEY([Id_pelicula])
REFERENCES [dbo].[Pelicula] ([Id_pelicula])
GO
ALTER TABLE [dbo].[Funcion] CHECK CONSTRAINT [FK_Id_pelicula]
GO
ALTER TABLE [dbo].[Funcion]  WITH CHECK ADD  CONSTRAINT [FK_Id_sala] FOREIGN KEY([Id_sala])
REFERENCES [dbo].[Sala] ([Id_sala])
GO
ALTER TABLE [dbo].[Funcion] CHECK CONSTRAINT [FK_Id_sala]
GO
ALTER TABLE [dbo].[Funcion]  WITH CHECK ADD  CONSTRAINT [FK_Id_sucursal] FOREIGN KEY([Id_sucursal])
REFERENCES [dbo].[Sucursal] ([Id_sucursal])
GO
ALTER TABLE [dbo].[Funcion] CHECK CONSTRAINT [FK_Id_sucursal]
GO
ALTER TABLE [dbo].[Ticket_detalle]  WITH CHECK ADD  CONSTRAINT [FK_Id_boleto] FOREIGN KEY([Id_boleto])
REFERENCES [dbo].[Boleto] ([Id_boleto])
GO
ALTER TABLE [dbo].[Ticket_detalle] CHECK CONSTRAINT [FK_Id_boleto]
GO
ALTER TABLE [dbo].[Ticket_detalle]  WITH CHECK ADD  CONSTRAINT [FK_Id_ticket] FOREIGN KEY([Id_ticket])
REFERENCES [dbo].[Ticket] ([Id_ticket])
GO
ALTER TABLE [dbo].[Ticket_detalle] CHECK CONSTRAINT [FK_Id_ticket]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [CH_boleto_precio] CHECK  (([Precio]>=(0)))
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [CH_boleto_precio]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [CH_cliente_sexo] CHECK  (([Sexo]='M' OR [Sexo]='F'))
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [CH_cliente_sexo]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [CH_empleado_sexo] CHECK  (([Sexo]='M' OR [Sexo]='F'))
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [CH_empleado_sexo]
GO
ALTER TABLE [dbo].[Membresia]  WITH CHECK ADD  CONSTRAINT [CH_membresia_puntos] CHECK  (([Puntos]>=(0)))
GO
ALTER TABLE [dbo].[Membresia] CHECK CONSTRAINT [CH_membresia_puntos]
GO
ALTER TABLE [dbo].[Sala]  WITH CHECK ADD  CONSTRAINT [CH_sala_cantidad_asientos] CHECK  (([Cantidad_asientos]>(0)))
GO
ALTER TABLE [dbo].[Sala] CHECK CONSTRAINT [CH_sala_cantidad_asientos]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [CH_ticket_importe_total] CHECK  (([Importe_total]>(0)))
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [CH_ticket_importe_total]
GO
USE [master]
GO
ALTER DATABASE [FCinemasFM] SET  READ_WRITE 
GO
