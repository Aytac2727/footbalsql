USE [master]
GO
/****** Object:  Database [ftAytaj]    Script Date: 9/26/2021 12:13:34 PM ******/
CREATE DATABASE [ftAytaj]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ftAytaj_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.AYTACMSSQL\MSSQL\DATA\ftAytaj.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ftAytaj_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.AYTACMSSQL\MSSQL\DATA\ftAytaj.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ftAytaj] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ftAytaj].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ftAytaj] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ftAytaj] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ftAytaj] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ftAytaj] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ftAytaj] SET ARITHABORT OFF 
GO
ALTER DATABASE [ftAytaj] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ftAytaj] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ftAytaj] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ftAytaj] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ftAytaj] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ftAytaj] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ftAytaj] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ftAytaj] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ftAytaj] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ftAytaj] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ftAytaj] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ftAytaj] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ftAytaj] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ftAytaj] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ftAytaj] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ftAytaj] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ftAytaj] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ftAytaj] SET RECOVERY FULL 
GO
ALTER DATABASE [ftAytaj] SET  MULTI_USER 
GO
ALTER DATABASE [ftAytaj] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ftAytaj] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ftAytaj] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ftAytaj] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ftAytaj] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ftAytaj', N'ON'
GO
ALTER DATABASE [ftAytaj] SET QUERY_STORE = OFF
GO
USE [ftAytaj]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 9/26/2021 12:13:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdminEmail] [nvarchar](50) NOT NULL,
	[AdminPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllWorkers]    Script Date: 9/26/2021 12:13:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllWorkers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[WorkerEmail] [nvarchar](50) NOT NULL,
	[WorkerPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AllWorkers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/26/2021 12:13:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 9/26/2021 12:13:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervs]    Script Date: 9/26/2021 12:13:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[DateFrom] [datetime] NOT NULL,
	[DateTo] [datetime] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[StadiumId] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
 CONSTRAINT [PK_Rezervs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 9/26/2021 12:13:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stadions]    Script Date: 9/26/2021 12:13:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stadions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Stadions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [AdminEmail], [AdminPassword]) VALUES (1, N'admin', N'admin123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[AllWorkers] ON 

INSERT [dbo].[AllWorkers] ([Id], [Firstname], [Lastname], [WorkerEmail], [WorkerPassword]) VALUES (3, N'Mutallim', N'Asgar', N'mutallim', N'{E?_i??JIy	?4???????????-?1 0')
INSERT [dbo].[AllWorkers] ([Id], [Firstname], [Lastname], [WorkerEmail], [WorkerPassword]) VALUES (5, N'Aytac', N'Asgar', N'asgarova@mail.ru', N'?? 8????G?''?/W??.z??????#h	?')
INSERT [dbo].[AllWorkers] ([Id], [Firstname], [Lastname], [WorkerEmail], [WorkerPassword]) VALUES (6, N'Hulya', N'Beybutlu', N'hulya@mail.ru', N'???;??E???4?????@x0f????my?rU??"')
SET IDENTITY_INSERT [dbo].[AllWorkers] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (1, N'Ayxan', 513452345, N'Sebail ray, 20-ci sahe')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (2, N'Qorxmaz', 512345623, N'Bayil, Muxtarzade kuc')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (3, N'Elnur', 556789675, N'Qara Qarayev')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (5, N'Mutellim', 519207305, N'20-ci sahe')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Rezervs] ON 

INSERT [dbo].[Rezervs] ([Id], [Date], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (2, CAST(N'2020-10-28T22:19:50.000' AS DateTime), CAST(40 AS Decimal(18, 0)), CAST(N'2020-10-26T22:00:00.000' AS DateTime), CAST(N'2020-10-26T12:00:00.000' AS DateTime), 2, 3, 4)
INSERT [dbo].[Rezervs] ([Id], [Date], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (24, CAST(N'2020-10-27T22:53:43.000' AS DateTime), CAST(80 AS Decimal(18, 0)), CAST(N'2020-10-26T22:53:43.700' AS DateTime), CAST(N'2020-10-26T12:53:43.000' AS DateTime), 5, 11, 8)
INSERT [dbo].[Rezervs] ([Id], [Date], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (25, CAST(N'2020-10-27T11:34:49.493' AS DateTime), CAST(50 AS Decimal(18, 0)), CAST(N'2020-10-27T12:34:49.000' AS DateTime), CAST(N'2020-10-27T02:34:49.000' AS DateTime), 3, 3, 4)
SET IDENTITY_INSERT [dbo].[Rezervs] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (4, N'Room 1', 12)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (8, N'Room 3', 12)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[Stadions] ON 

INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (1, N'Vip Stadium')
INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (2, N'Small Stadium')
INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (3, N'Big Stadium')
INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (11, N'XL Stadium')
INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (15, N'For childeren')
SET IDENTITY_INSERT [dbo].[Stadions] OFF
GO
ALTER TABLE [dbo].[Rezervs]  WITH CHECK ADD  CONSTRAINT [FK_Rezervs_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Rezervs] CHECK CONSTRAINT [FK_Rezervs_Customers]
GO
ALTER TABLE [dbo].[Rezervs]  WITH CHECK ADD  CONSTRAINT [FK_Rezervs_Rooms] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([Id])
GO
ALTER TABLE [dbo].[Rezervs] CHECK CONSTRAINT [FK_Rezervs_Rooms]
GO
ALTER TABLE [dbo].[Rezervs]  WITH CHECK ADD  CONSTRAINT [FK_Rezervs_Stadions] FOREIGN KEY([StadiumId])
REFERENCES [dbo].[Stadions] ([Id])
GO
ALTER TABLE [dbo].[Rezervs] CHECK CONSTRAINT [FK_Rezervs_Stadions]
GO
USE [master]
GO
ALTER DATABASE [ftAytaj] SET  READ_WRITE 
GO
