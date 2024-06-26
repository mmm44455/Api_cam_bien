USE [master]
GO
/****** Object:  Database [Api_Cambien]    Script Date: 23/05/2024 8:03:00 pm ******/
CREATE DATABASE [Api_Cambien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Api_Cambien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Api_Cambien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Api_Cambien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Api_Cambien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Api_Cambien] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Api_Cambien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Api_Cambien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Api_Cambien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Api_Cambien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Api_Cambien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Api_Cambien] SET ARITHABORT OFF 
GO
ALTER DATABASE [Api_Cambien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Api_Cambien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Api_Cambien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Api_Cambien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Api_Cambien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Api_Cambien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Api_Cambien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Api_Cambien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Api_Cambien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Api_Cambien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Api_Cambien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Api_Cambien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Api_Cambien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Api_Cambien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Api_Cambien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Api_Cambien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Api_Cambien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Api_Cambien] SET RECOVERY FULL 
GO
ALTER DATABASE [Api_Cambien] SET  MULTI_USER 
GO
ALTER DATABASE [Api_Cambien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Api_Cambien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Api_Cambien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Api_Cambien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Api_Cambien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Api_Cambien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Api_Cambien', N'ON'
GO
ALTER DATABASE [Api_Cambien] SET QUERY_STORE = ON
GO
ALTER DATABASE [Api_Cambien] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Api_Cambien]
GO
/****** Object:  Table [dbo].[Cambien]    Script Date: 23/05/2024 8:03:00 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cambien](
	[temperature] [nvarchar](50) NULL,
	[humidity] [nvarchar](50) NULL,
	[timestamp] [datetime] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Cambien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cambien] ON 

INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'28.9', N'92', CAST(N'2024-05-18T09:11:35.000' AS DateTime), 24)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'98', CAST(N'2024-05-18T09:13:08.000' AS DateTime), 25)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'95', CAST(N'2024-05-18T09:13:36.000' AS DateTime), 26)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'92', CAST(N'2024-05-18T09:15:34.000' AS DateTime), 27)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'89', CAST(N'2024-05-18T09:17:34.000' AS DateTime), 28)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'88', CAST(N'2024-05-18T09:19:33.000' AS DateTime), 29)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'88', CAST(N'2024-05-18T09:21:35.000' AS DateTime), 30)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'88', CAST(N'2024-05-18T09:23:34.000' AS DateTime), 31)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'88', CAST(N'2024-05-18T09:25:34.000' AS DateTime), 32)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'87', CAST(N'2024-05-18T09:27:33.000' AS DateTime), 33)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'87', CAST(N'2024-05-18T09:29:35.000' AS DateTime), 34)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'87', CAST(N'2024-05-18T09:31:35.000' AS DateTime), 35)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.2', N'88', CAST(N'2024-05-18T09:33:34.000' AS DateTime), 36)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.8', N'87', CAST(N'2024-05-18T09:35:34.000' AS DateTime), 37)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'31.9', N'83', CAST(N'2024-05-18T09:37:33.000' AS DateTime), 38)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.8', N'79', CAST(N'2024-05-18T09:39:35.000' AS DateTime), 39)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'33.3', N'76', CAST(N'2024-05-18T09:41:34.000' AS DateTime), 40)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'33.6', N'74', CAST(N'2024-05-18T09:43:34.000' AS DateTime), 41)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.7', N'72', CAST(N'2024-05-18T09:45:34.000' AS DateTime), 42)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'36.9', N'67', CAST(N'2024-05-18T09:47:33.000' AS DateTime), 43)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.4', N'65', CAST(N'2024-05-18T09:49:35.000' AS DateTime), 44)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.4', N'65', CAST(N'2024-05-18T09:51:17.000' AS DateTime), 45)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.4', N'65', CAST(N'2024-05-18T09:51:33.000' AS DateTime), 46)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.4', N'65', CAST(N'2024-05-18T09:53:35.000' AS DateTime), 47)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.1', N'65', CAST(N'2024-05-18T09:55:34.000' AS DateTime), 48)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.7', N'70', CAST(N'2024-05-18T09:57:34.000' AS DateTime), 49)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'36.9', N'67', CAST(N'2024-05-18T09:59:33.000' AS DateTime), 50)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'38', N'60', CAST(N'2024-05-18T10:01:35.000' AS DateTime), 51)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'38.5', N'59', CAST(N'2024-05-18T10:03:34.000' AS DateTime), 52)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39', N'58', CAST(N'2024-05-18T10:05:34.000' AS DateTime), 53)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39', N'58', CAST(N'2024-05-18T10:07:33.000' AS DateTime), 54)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39', N'57', CAST(N'2024-05-18T10:09:35.000' AS DateTime), 55)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.5', N'57', CAST(N'2024-05-18T10:11:35.000' AS DateTime), 56)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.5', N'57', CAST(N'2024-05-18T10:13:34.000' AS DateTime), 57)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39', N'57', CAST(N'2024-05-18T10:15:34.000' AS DateTime), 58)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'38.5', N'58', CAST(N'2024-05-18T10:17:33.000' AS DateTime), 59)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'38.5', N'58', CAST(N'2024-05-18T10:19:35.000' AS DateTime), 60)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'38', N'60', CAST(N'2024-05-18T10:21:34.000' AS DateTime), 61)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.4', N'62', CAST(N'2024-05-18T10:23:34.000' AS DateTime), 62)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'38', N'60', CAST(N'2024-05-18T10:25:34.000' AS DateTime), 63)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'38', N'60', CAST(N'2024-05-18T10:27:35.000' AS DateTime), 64)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.4', N'62', CAST(N'2024-05-18T10:29:35.000' AS DateTime), 65)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.4', N'74', CAST(N'2024-05-18T10:31:34.000' AS DateTime), 66)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.7', N'69', CAST(N'2024-05-18T10:33:34.000' AS DateTime), 67)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'33.3', N'74', CAST(N'2024-05-18T10:35:33.000' AS DateTime), 68)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'33.3', N'77', CAST(N'2024-05-18T10:37:35.000' AS DateTime), 69)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.2', N'74', CAST(N'2024-05-18T10:39:35.000' AS DateTime), 70)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.2', N'72', CAST(N'2024-05-18T10:41:34.000' AS DateTime), 71)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.2', N'73', CAST(N'2024-05-18T10:43:34.000' AS DateTime), 72)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.2', N'73', CAST(N'2024-05-18T10:45:35.000' AS DateTime), 73)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.2', N'73', CAST(N'2024-05-18T10:47:35.000' AS DateTime), 74)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.2', N'73', CAST(N'2024-05-18T10:49:34.000' AS DateTime), 75)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.7', N'74', CAST(N'2024-05-18T10:51:34.000' AS DateTime), 76)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.7', N'74', CAST(N'2024-05-18T10:52:23.000' AS DateTime), 77)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.7', N'74', CAST(N'2024-05-18T10:54:06.000' AS DateTime), 78)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.6', N'70', CAST(N'2024-05-18T10:55:25.000' AS DateTime), 79)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'36.3', N'69', CAST(N'2024-05-18T10:57:24.000' AS DateTime), 80)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'36.3', N'68', CAST(N'2024-05-18T10:59:24.000' AS DateTime), 81)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'36.3', N'67', CAST(N'2024-05-18T11:01:23.000' AS DateTime), 82)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'36.3', N'68', CAST(N'2024-05-18T11:02:54.000' AS DateTime), 83)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'36.3', N'68', CAST(N'2024-05-18T11:04:55.000' AS DateTime), 84)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'69', CAST(N'2024-05-18T11:06:55.000' AS DateTime), 85)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'69', CAST(N'2024-05-18T11:07:19.000' AS DateTime), 86)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'71', CAST(N'2024-05-18T11:09:19.000' AS DateTime), 87)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.7', N'73', CAST(N'2024-05-18T11:11:18.000' AS DateTime), 88)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.7', N'73', CAST(N'2024-05-18T11:12:06.000' AS DateTime), 89)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'71', CAST(N'2024-05-18T11:14:05.000' AS DateTime), 90)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'70', CAST(N'2024-05-18T11:16:05.000' AS DateTime), 91)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'70', CAST(N'2024-05-18T11:18:04.000' AS DateTime), 92)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'33.9', N'76', CAST(N'2024-05-18T11:20:42.000' AS DateTime), 93)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.3', N'80', CAST(N'2024-05-18T11:22:06.000' AS DateTime), 94)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.8', N'87', CAST(N'2024-05-18T11:24:06.000' AS DateTime), 95)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.2', N'90', CAST(N'2024-05-18T11:26:05.000' AS DateTime), 96)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'92', CAST(N'2024-05-18T11:28:05.000' AS DateTime), 97)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'93', CAST(N'2024-05-18T11:30:06.000' AS DateTime), 98)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'93', CAST(N'2024-05-18T11:32:06.000' AS DateTime), 99)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'94', CAST(N'2024-05-18T11:34:05.000' AS DateTime), 100)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'95', CAST(N'2024-05-18T11:36:05.000' AS DateTime), 101)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'95', CAST(N'2024-05-18T11:38:04.000' AS DateTime), 102)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'95', CAST(N'2024-05-18T11:40:06.000' AS DateTime), 103)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'95', CAST(N'2024-05-18T11:42:06.000' AS DateTime), 104)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'95', CAST(N'2024-05-18T11:44:05.000' AS DateTime), 105)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'95', CAST(N'2024-05-18T11:46:05.000' AS DateTime), 106)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'95', CAST(N'2024-05-18T11:48:06.000' AS DateTime), 107)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.2', N'98', CAST(N'2024-05-20T22:17:30.000' AS DateTime), 266)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.2', N'98', CAST(N'2024-05-20T22:19:29.000' AS DateTime), 267)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.2', N'98', CAST(N'2024-05-20T22:21:29.000' AS DateTime), 268)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.2', N'98', CAST(N'2024-05-20T22:23:28.000' AS DateTime), 269)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.2', N'98', CAST(N'2024-05-20T22:25:30.000' AS DateTime), 270)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.2', N'98', CAST(N'2024-05-20T22:27:29.000' AS DateTime), 271)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'30.2', N'98', CAST(N'2024-05-20T22:29:29.000' AS DateTime), 272)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'31.8', N'98', CAST(N'2024-05-20T22:49:29.000' AS DateTime), 273)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'31.3', N'98', CAST(N'2024-05-20T22:51:28.000' AS DateTime), 274)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.3', N'98', CAST(N'2024-05-22T09:59:31.000' AS DateTime), 275)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'96', CAST(N'2024-05-22T10:01:12.000' AS DateTime), 276)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'95', CAST(N'2024-05-22T10:03:11.000' AS DateTime), 277)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'95', CAST(N'2024-05-22T10:05:11.000' AS DateTime), 278)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'94', CAST(N'2024-05-22T10:07:12.000' AS DateTime), 279)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'94', CAST(N'2024-05-22T10:09:12.000' AS DateTime), 280)
GO
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'94', CAST(N'2024-05-22T10:11:11.000' AS DateTime), 281)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'94', CAST(N'2024-05-22T10:13:11.000' AS DateTime), 282)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'94', CAST(N'2024-05-22T10:15:12.000' AS DateTime), 283)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.3', N'93', CAST(N'2024-05-22T10:17:12.000' AS DateTime), 284)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'36.3', N'71', CAST(N'2024-05-22T10:19:11.000' AS DateTime), 285)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'38', N'62', CAST(N'2024-05-22T10:21:11.000' AS DateTime), 286)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39', N'57', CAST(N'2024-05-22T10:23:12.000' AS DateTime), 287)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.5', N'57', CAST(N'2024-05-22T10:25:12.000' AS DateTime), 288)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.5', N'57', CAST(N'2024-05-22T10:27:12.000' AS DateTime), 289)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.5', N'57', CAST(N'2024-05-22T10:29:11.000' AS DateTime), 290)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.5', N'56', CAST(N'2024-05-22T10:31:11.000' AS DateTime), 291)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.5', N'54', CAST(N'2024-05-22T10:33:12.000' AS DateTime), 292)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.5', N'53', CAST(N'2024-05-22T10:35:12.000' AS DateTime), 293)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.9', N'55', CAST(N'2024-05-22T10:37:11.000' AS DateTime), 294)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.4', N'62', CAST(N'2024-05-22T10:39:11.000' AS DateTime), 295)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.6', N'67', CAST(N'2024-05-22T10:41:13.000' AS DateTime), 296)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'68', CAST(N'2024-05-22T10:43:12.000' AS DateTime), 297)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'71', CAST(N'2024-05-22T10:45:12.000' AS DateTime), 298)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'69', CAST(N'2024-05-22T10:47:11.000' AS DateTime), 299)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'66', CAST(N'2024-05-22T10:49:11.000' AS DateTime), 300)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.7', N'70', CAST(N'2024-05-22T10:51:12.000' AS DateTime), 301)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'69', CAST(N'2024-05-22T10:53:12.000' AS DateTime), 302)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'69', CAST(N'2024-05-22T10:55:12.000' AS DateTime), 303)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'67', CAST(N'2024-05-22T10:57:11.000' AS DateTime), 304)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'68', CAST(N'2024-05-22T10:59:13.000' AS DateTime), 305)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'68', CAST(N'2024-05-22T11:01:12.000' AS DateTime), 306)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'67', CAST(N'2024-05-22T11:03:12.000' AS DateTime), 307)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'68', CAST(N'2024-05-22T11:05:11.000' AS DateTime), 308)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'66', CAST(N'2024-05-22T11:07:11.000' AS DateTime), 309)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'66', CAST(N'2024-05-22T11:09:13.000' AS DateTime), 310)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'68', CAST(N'2024-05-22T11:11:12.000' AS DateTime), 311)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'69', CAST(N'2024-05-22T11:13:12.000' AS DateTime), 312)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'67', CAST(N'2024-05-22T11:15:11.000' AS DateTime), 313)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'67', CAST(N'2024-05-22T11:17:13.000' AS DateTime), 314)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'68', CAST(N'2024-05-22T11:19:12.000' AS DateTime), 315)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'68', CAST(N'2024-05-22T11:21:12.000' AS DateTime), 316)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'65', CAST(N'2024-05-22T11:23:12.000' AS DateTime), 317)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'67', CAST(N'2024-05-22T11:25:11.000' AS DateTime), 318)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'68', CAST(N'2024-05-22T11:27:13.000' AS DateTime), 319)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'66', CAST(N'2024-05-22T11:29:12.000' AS DateTime), 320)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'66', CAST(N'2024-05-22T11:31:12.000' AS DateTime), 321)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'66', CAST(N'2024-05-22T11:33:11.000' AS DateTime), 322)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'37.4', N'65', CAST(N'2024-05-22T11:35:11.000' AS DateTime), 323)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39', N'55', CAST(N'2024-05-22T11:37:13.000' AS DateTime), 324)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'39.5', N'54', CAST(N'2024-05-22T11:39:12.000' AS DateTime), 325)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'40.1', N'52', CAST(N'2024-05-22T11:41:12.000' AS DateTime), 326)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'40.1', N'52', CAST(N'2024-05-22T11:43:11.000' AS DateTime), 327)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'40.1', N'52', CAST(N'2024-05-22T11:45:13.000' AS DateTime), 328)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'40.1', N'51', CAST(N'2024-05-22T11:47:12.000' AS DateTime), 329)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'40.1', N'49', CAST(N'2024-05-22T11:49:12.000' AS DateTime), 330)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'40.6', N'50', CAST(N'2024-05-22T11:51:12.000' AS DateTime), 331)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'40.6', N'50', CAST(N'2024-05-22T11:53:11.000' AS DateTime), 332)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'41.1', N'50', CAST(N'2024-05-22T11:55:13.000' AS DateTime), 333)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'40.6', N'50', CAST(N'2024-05-22T11:57:12.000' AS DateTime), 334)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'40.6', N'50', CAST(N'2024-05-22T11:59:12.000' AS DateTime), 335)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'41.1', N'49', CAST(N'2024-05-22T12:01:11.000' AS DateTime), 336)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'41.1', N'49', CAST(N'2024-05-22T12:03:13.000' AS DateTime), 337)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'41.1', N'48', CAST(N'2024-05-22T12:05:04.000' AS DateTime), 338)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.6', N'61', CAST(N'2024-05-22T12:07:22.000' AS DateTime), 340)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'33.8', N'69', CAST(N'2024-05-22T12:09:11.000' AS DateTime), 341)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.8', N'72', CAST(N'2024-05-22T12:10:15.000' AS DateTime), 342)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.8', N'72', CAST(N'2024-05-22T12:10:15.000' AS DateTime), 343)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'89', CAST(N'2024-05-23T19:37:46.000' AS DateTime), 405)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'89', CAST(N'2024-05-23T19:38:27.000' AS DateTime), 406)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'89', CAST(N'2024-05-23T19:38:32.000' AS DateTime), 407)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'29.8', N'88', CAST(N'2024-05-23T19:40:27.000' AS DateTime), 408)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.8', N'85', CAST(N'2024-05-23T19:42:26.000' AS DateTime), 409)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'36.3', N'68', CAST(N'2024-05-23T19:44:28.000' AS DateTime), 410)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'35.2', N'66', CAST(N'2024-05-23T19:46:27.000' AS DateTime), 411)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'34.2', N'70', CAST(N'2024-05-23T19:48:27.000' AS DateTime), 412)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'33.8', N'72', CAST(N'2024-05-23T19:50:26.000' AS DateTime), 413)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.8', N'75', CAST(N'2024-05-23T19:52:28.000' AS DateTime), 414)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.8', N'76', CAST(N'2024-05-23T19:54:27.000' AS DateTime), 415)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.3', N'77', CAST(N'2024-05-23T19:56:27.000' AS DateTime), 416)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.3', N'78', CAST(N'2024-05-23T19:58:27.000' AS DateTime), 417)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.3', N'79', CAST(N'2024-05-23T20:00:28.000' AS DateTime), 418)
INSERT [dbo].[Cambien] ([temperature], [humidity], [timestamp], [id]) VALUES (N'32.8', N'79', CAST(N'2024-05-23T20:02:28.000' AS DateTime), 419)
SET IDENTITY_INSERT [dbo].[Cambien] OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertApi]    Script Date: 23/05/2024 8:03:00 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertApi]
    @temperature NVARCHAR(50),
    @humidity NVARCHAR(50),
    @timestamp DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Cambien(temperature, humidity, timestamp)
    VALUES (@temperature, @humidity, @timestamp);
END
GO
/****** Object:  StoredProcedure [dbo].[SelectApi]    Script Date: 23/05/2024 8:03:00 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectApi]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Cambien
END
GO
/****** Object:  StoredProcedure [dbo].[SelectDate]    Script Date: 23/05/2024 8:03:00 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectDate]
	-- Add the parameters for the stored procedure here
	 @timestamp DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Cambien where CONVERT(DATE, timestamp) = @timestamp
END
GO
USE [master]
GO
ALTER DATABASE [Api_Cambien] SET  READ_WRITE 
GO
