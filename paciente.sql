USE [master]
GO
/****** Object:  Database [Pacientes]    Script Date: 29/03/2022 3:13:39 p. m. ******/
CREATE DATABASE [Pacientes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pacientes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Pacientes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pacientes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Pacientes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pacientes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pacientes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pacientes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pacientes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pacientes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pacientes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pacientes] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pacientes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pacientes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pacientes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pacientes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pacientes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pacientes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pacientes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pacientes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pacientes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pacientes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pacientes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pacientes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pacientes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pacientes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pacientes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pacientes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pacientes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pacientes] SET RECOVERY FULL 
GO
ALTER DATABASE [Pacientes] SET  MULTI_USER 
GO
ALTER DATABASE [Pacientes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pacientes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pacientes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pacientes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pacientes] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Pacientes', N'ON'
GO
ALTER DATABASE [Pacientes] SET QUERY_STORE = OFF
GO
USE [Pacientes]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 29/03/2022 3:13:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](25) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[Telefono] [varchar](10) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Apellidos] [varchar](25) NOT NULL,
	[Observaciones] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Paciente] ON 

INSERT [dbo].[Paciente] ([Id], [Nombres], [direccion], [Edad], [Sexo], [Telefono], [Correo], [Pais], [Apellidos], [Observaciones]) VALUES (2, N'Juan', N'calle 19- 20 ', 25, N'H', N'315668965', N'juanito@hotmail.com', N'Colombia', N'Arias', N'es una persona joven')
INSERT [dbo].[Paciente] ([Id], [Nombres], [direccion], [Edad], [Sexo], [Telefono], [Correo], [Pais], [Apellidos], [Observaciones]) VALUES (4, N'Pedro', N'calle 63 B 15-18', 30, N'H', N'316452178', N'pedro@gmail.com', N'Colombia', N'Sanchez', N'persona muy enferma')
INSERT [dbo].[Paciente] ([Id], [Nombres], [direccion], [Edad], [Sexo], [Telefono], [Correo], [Pais], [Apellidos], [Observaciones]) VALUES (5, N'Luz Mariana', N'Calle sur 65 - 90', 46, N'M', N'3187893214', N'mari@hotmail.com', N'Colombia', N'Zuluaga', N'sigue muy enferma, mucho cuidado')
SET IDENTITY_INSERT [dbo].[Paciente] OFF
USE [master]
GO
ALTER DATABASE [Pacientes] SET  READ_WRITE 
GO
