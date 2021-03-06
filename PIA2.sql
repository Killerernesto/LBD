USE [Muebleria]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Sucursales]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Direciones]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Direciones]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Compra]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP TABLE [dbo].[Almacen]
GO
USE [master]
GO
/****** Object:  Database [Muebleria]    Script Date: 06/06/2019 12:13:41 a. m. ******/
DROP DATABASE [Muebleria]
GO
/****** Object:  Database [Muebleria]    Script Date: 06/06/2019 12:13:41 a. m. ******/
CREATE DATABASE [Muebleria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Muebleria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Muebleria.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Muebleria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Muebleria_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Muebleria] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Muebleria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Muebleria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Muebleria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Muebleria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Muebleria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Muebleria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Muebleria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Muebleria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Muebleria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Muebleria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Muebleria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Muebleria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Muebleria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Muebleria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Muebleria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Muebleria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Muebleria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Muebleria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Muebleria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Muebleria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Muebleria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Muebleria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Muebleria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Muebleria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Muebleria] SET  MULTI_USER 
GO
ALTER DATABASE [Muebleria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Muebleria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Muebleria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Muebleria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Muebleria] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Muebleria]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 06/06/2019 12:13:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[Id_Almacen] [int] NOT NULL,
	[Nombre_Almacen] [nchar](10) NULL,
	[Id_direccion] [int] NULL,
	[Id_Proveedor] [int] NULL,
 CONSTRAINT [PK_Almacenes] PRIMARY KEY CLUSTERED 
(
	[Id_Almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/06/2019 12:13:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[Appaterno] [varchar](50) NULL,
	[ApMaterno] [varchar](50) NULL,
	[telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 06/06/2019 12:13:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[Id_compra] [int] NOT NULL,
	[Id_Almacen] [int] NOT NULL,
	[Id_Proveedor] [int] NOT NULL,
	[Id_Producto] [int] NOT NULL,
	[Pago] [money] NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[Id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Direciones]    Script Date: 06/06/2019 12:13:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direciones](
	[Id_direccion] [int] NOT NULL,
	[numero] [int] NOT NULL,
	[colonia] [varchar](50) NULL,
 CONSTRAINT [PK_Direciones] PRIMARY KEY CLUSTERED 
(
	[Id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 06/06/2019 12:13:41 a. m. ******/
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
	[telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 06/06/2019 12:13:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[Id_Producto] [int] NOT NULL,
	[Nombre_Producto] [varchar](15) NULL,
	[Descripcion] [varchar](50) NULL,
	[Precio_Producto] [money] NULL,
 CONSTRAINT [PK__Producto] PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 06/06/2019 12:13:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id_Proveedor] [int] NOT NULL,
	[nombre_provee] [varbinary](50) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 06/06/2019 12:13:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursales](
	[Id_Sucursal] [int] NOT NULL,
	[Direccion] [varchar](50) NULL,
	[telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 06/06/2019 12:13:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id_Ticket] [int] NOT NULL,
	[Id_Sucursal] [int] NULL,
	[Id_Venta] [int] NULL,
	[Pago_Venta] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 06/06/2019 12:13:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Id_Venta] [int] NOT NULL,
	[Id_Producto] [int] NULL,
	[Id_Empleado] [int] NULL,
	[Dia_Venta] [date] NULL,
	[Id_Cliente] [int] NULL,
	[Costo_Venta] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Muebleria] SET  READ_WRITE 
GO
