USE [Muebleria2]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[ticket]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  Table [dbo].[PedidosDomicilio]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[PedidosDomicilio]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[AlamcenSofas]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[AlamcenSofas]
GO
/****** Object:  Table [dbo].[AlamcenSillones]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[AlamcenSillones]
GO
/****** Object:  Table [dbo].[AlamcenSalas]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[AlamcenSalas]
GO
/****** Object:  Table [dbo].[AlamcenRecamaras]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[AlamcenRecamaras]
GO
/****** Object:  Table [dbo].[AlamcenLibreros]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[AlamcenLibreros]
GO
/****** Object:  Table [dbo].[AlamcenColchones]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP TABLE [dbo].[AlamcenColchones]
GO
USE [master]
GO
/****** Object:  Database [Muebleria2]    Script Date: 06/06/2019 12:10:39 a. m. ******/
DROP DATABASE [Muebleria2]
GO
/****** Object:  Database [Muebleria2]    Script Date: 06/06/2019 12:10:39 a. m. ******/
CREATE DATABASE [Muebleria2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Muebleria2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Muebleria2.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Muebleria2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Muebleria2_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Muebleria2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Muebleria2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Muebleria2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Muebleria2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Muebleria2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Muebleria2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Muebleria2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Muebleria2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Muebleria2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Muebleria2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Muebleria2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Muebleria2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Muebleria2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Muebleria2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Muebleria2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Muebleria2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Muebleria2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Muebleria2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Muebleria2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Muebleria2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Muebleria2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Muebleria2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Muebleria2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Muebleria2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Muebleria2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Muebleria2] SET  MULTI_USER 
GO
ALTER DATABASE [Muebleria2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Muebleria2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Muebleria2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Muebleria2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Muebleria2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Muebleria2]
GO
/****** Object:  Table [dbo].[AlamcenColchones]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenColchones](
	[Id_Librero] [int] NOT NULL,
	[nombreLibrero] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenLibreros]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenLibreros](
	[Id_Librero] [int] NOT NULL,
	[nombreLibrero] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenRecamaras]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenRecamaras](
	[Id_Librero] [int] NOT NULL,
	[nombreLibrero] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenSalas]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenSalas](
	[Id_Sala] [int] NOT NULL,
	[nombreSala] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenSillones]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenSillones](
	[Id_Sillon] [int] NOT NULL,
	[nombreSillon] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenSofas]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenSofas](
	[Id_Sofa] [int] NOT NULL,
	[nombreSofa] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id_Empleado] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[Appaterno] [varchar](50) NULL,
	[ApMaterno] [varchar](50) NULL,
	[fechanac] [date] NULL,
	[edad]  AS (datediff(year,[fechanac],getdate())),
	[nombre_Completo]  AS (((([nombre]+'')+[ApPaterno])+'')+[ApMaterno]),
	[direccion] [varchar](50) NULL,
	[telefono] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedidosDomicilio]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidosDomicilio](
	[Id_Pedido] [uniqueidentifier] NOT NULL,
	[producto_id] [int] NULL,
	[dia_compra] [date] NULL,
	[hora_compra] [time](7) NULL,
	[precio_total] [money] NULL,
	[colonia] [varchar](25) NULL,
	[calle] [varchar](25) NULL,
	[numero] [int] NULL,
	[direccion]  AS ((((('colonia:'+[colonia])+'calle:')+[calle])+'numero:')+[numero])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[negocio_id] [int] NULL,
	[nombre_sucursal] [varchar](30) NULL,
	[colonia] [varchar](25) NULL,
	[calle] [varchar](25) NULL,
	[numero] [int] NULL,
	[direccion]  AS ((((('colonia:'+[colonia])+'calle:')+[calle])+'numero:')+[numero])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 06/06/2019 12:10:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ticket](
	[ticket_id] [int] NULL,
	[negocio_id] [varchar](30) NULL,
	[empleado_id] [int] NULL,
	[fecha_compra] [date] NULL,
	[colonia] [varchar](25) NULL,
	[calle] [varchar](25) NULL,
	[numero] [int] NULL,
	[direccion]  AS ((((('colonia:'+[colonia])+'calle:')+[calle])+'numero:')+[numero])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Muebleria2] SET  READ_WRITE 
GO
