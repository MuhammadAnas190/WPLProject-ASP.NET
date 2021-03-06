USE [master]
GO
/****** Object:  Database [db_Paper]    Script Date: 5/23/2020 8:24:20 PM ******/
CREATE DATABASE [db_Paper]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Paper', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db_Paper.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_Paper_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db_Paper_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_Paper] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Paper].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Paper] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_Paper] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_Paper] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_Paper] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_Paper] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_Paper] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_Paper] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_Paper] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_Paper] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_Paper] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_Paper] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_Paper] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_Paper] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_Paper] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_Paper] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_Paper] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_Paper] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_Paper] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_Paper] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_Paper] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_Paper] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_Paper] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_Paper] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_Paper] SET  MULTI_USER 
GO
ALTER DATABASE [db_Paper] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_Paper] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_Paper] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_Paper] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_Paper] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_Paper] SET QUERY_STORE = OFF
GO
USE [db_Paper]
GO
/****** Object:  Table [dbo].[tb_product]    Script Date: 5/23/2020 8:24:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [varchar](50) NOT NULL,
	[productType] [varchar](50) NOT NULL,
	[productDesc] [varchar](500) NOT NULL,
	[price] [varchar](4) NOT NULL,
 CONSTRAINT [PK_tb_product] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_sales]    Script Date: 5/23/2020 8:24:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_sales](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_tb_sales] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_users]    Script Date: 5/23/2020 8:24:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_users](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[uname] [varchar](50) NOT NULL,
	[uemail] [varchar](50) NOT NULL,
	[upass] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_users] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [db_Paper] SET  READ_WRITE 
GO
