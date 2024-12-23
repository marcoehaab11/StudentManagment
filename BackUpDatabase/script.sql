USE [master]
GO
/****** Object:  Database [StudentManagmentDB]    Script Date: 08-Dec-24 4:44:39 PM ******/
CREATE DATABASE [StudentManagmentDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentManagmentDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\StudentManagmentDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudentManagmentDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\StudentManagmentDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [StudentManagmentDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentManagmentDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentManagmentDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagmentDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentManagmentDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StudentManagmentDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentManagmentDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [StudentManagmentDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET RECOVERY FULL 
GO
ALTER DATABASE [StudentManagmentDB] SET  MULTI_USER 
GO
ALTER DATABASE [StudentManagmentDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentManagmentDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentManagmentDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentManagmentDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentManagmentDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentManagmentDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'StudentManagmentDB', N'ON'
GO
ALTER DATABASE [StudentManagmentDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [StudentManagmentDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [StudentManagmentDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08-Dec-24 4:44:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 08-Dec-24 4:44:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[Grade] [nvarchar](max) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241208102126_CreateStudentTable', N'9.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241208125932_add_softDeleteToStudent', N'9.0.0')
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (2, N'marco', 15, N'string', 0)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (3, N'string', 18, N'string', 0)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (4, N'Ahmed Ali', 18, N'A', 0)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (5, N'Sara Khaled', 17, N'B+', 0)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (6, N'Mohamed Samir', 16, N'A-', 0)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (7, N'Layla Fathy', 15, N'C', 0)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (8, N'Omar Yasser', 18, N'B', 1)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (9, N'Noha Tamer', 14, N'A+', 0)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (10, N'Dina Zaki', 13, N'B', 0)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Grade], [isDeleted]) VALUES (11, N'Hossam Essam', 17, N'B-', 1)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT (CONVERT([bit],(0))) FOR [isDeleted]
GO
USE [master]
GO
ALTER DATABASE [StudentManagmentDB] SET  READ_WRITE 
GO
