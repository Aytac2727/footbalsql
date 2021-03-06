USE [master]
GO
/****** Object:  Database [FootballProject]    Script Date: 9/26/2021 12:12:48 PM ******/
CREATE DATABASE [FootballProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FootballProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.AYTACMSSQL\MSSQL\DATA\FootballProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FootballProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.AYTACMSSQL\MSSQL\DATA\FootballProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FootballProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FootballProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FootballProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FootballProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FootballProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FootballProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FootballProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [FootballProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FootballProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FootballProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FootballProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FootballProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FootballProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FootballProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FootballProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FootballProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FootballProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FootballProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FootballProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FootballProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FootballProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FootballProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FootballProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FootballProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FootballProject] SET RECOVERY FULL 
GO
ALTER DATABASE [FootballProject] SET  MULTI_USER 
GO
ALTER DATABASE [FootballProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FootballProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FootballProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FootballProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FootballProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FootballProject', N'ON'
GO
ALTER DATABASE [FootballProject] SET QUERY_STORE = OFF
GO
USE [FootballProject]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 9/26/2021 12:12:49 PM ******/
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
/****** Object:  Table [dbo].[AllWorkers]    Script Date: 9/26/2021 12:12:49 PM ******/
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
/****** Object:  Table [dbo].[Customer_To_Rooms]    Script Date: 9/26/2021 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_To_Rooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_Customer_To_Rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/26/2021 12:12:49 PM ******/
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
/****** Object:  Table [dbo].[Reports]    Script Date: 9/26/2021 12:12:49 PM ******/
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
/****** Object:  Table [dbo].[Reservation_To_Rooms]    Script Date: 9/26/2021 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation_To_Rooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[RezervId] [int] NOT NULL,
 CONSTRAINT [PK_Reservation_To_Rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervs]    Script Date: 9/26/2021 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Rooms]    Script Date: 9/26/2021 12:12:49 PM ******/
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
/****** Object:  Table [dbo].[Stadions]    Script Date: 9/26/2021 12:12:49 PM ******/
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
INSERT [dbo].[AllWorkers] ([Id], [Firstname], [Lastname], [WorkerEmail], [WorkerPassword]) VALUES (7, N'Yegane', N'Emirova', N'emirova@mail.ru', N',?@,??lHU??xRu??*km??\?>?|??')
INSERT [dbo].[AllWorkers] ([Id], [Firstname], [Lastname], [WorkerEmail], [WorkerPassword]) VALUES (8, N'Mehemmed', N'Eldarzade', N'mehemmed@mail.ru', N'?6?Y?{???>????d??
?t???[?')
INSERT [dbo].[AllWorkers] ([Id], [Firstname], [Lastname], [WorkerEmail], [WorkerPassword]) VALUES (9, N'Məmməd', N'Əlizadə', N'memmed@mail.ru', N'6?i0?T?$)J????xJ?????3\l?)????p')
INSERT [dbo].[AllWorkers] ([Id], [Firstname], [Lastname], [WorkerEmail], [WorkerPassword]) VALUES (10, N'Sexavet', N'Memmedli', N'sexavet@mail.ru', N'???O??;?(?AzT?+u?U?uvMb	???')
INSERT [dbo].[AllWorkers] ([Id], [Firstname], [Lastname], [WorkerEmail], [WorkerPassword]) VALUES (11, N'elxan', N'quliyev', N'elxan@mail.ru', N'AN??q??????????np?v?)???4~')
SET IDENTITY_INSERT [dbo].[AllWorkers] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (1, N'Ayxan', 513452345, N'Sebail ray, 20-ci sahe')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (2, N'Elxan', 512345623, N'Bayil, Muxtarzade kuc')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (3, N'Elnur', 556789675, N'Qara Qarayev')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (4, N'Aytac', 516339191, N'Bayil, Lomonosov kuc')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (5, N'Mutellim', 519207305, N'20-ci sahe')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (6, N'Esgerova Xeyale', 701234565, N'Neftciler prospekti')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (7, N'Əmirova Vüqar', 553687758, N'Ramana, Südçü Savxoz')
INSERT [dbo].[Customers] ([Id], [Fullname], [Phone], [Address]) VALUES (8, N'Samir', 512346561, N'Zaqatala')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservation_To_Rooms] ON 

INSERT [dbo].[Reservation_To_Rooms] ([Id], [RoomId], [RezervId]) VALUES (1, 12, 15)
INSERT [dbo].[Reservation_To_Rooms] ([Id], [RoomId], [RezervId]) VALUES (2, 11, 15)
INSERT [dbo].[Reservation_To_Rooms] ([Id], [RoomId], [RezervId]) VALUES (3, 4, 15)
SET IDENTITY_INSERT [dbo].[Reservation_To_Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[Rezervs] ON 

INSERT [dbo].[Rezervs] ([Id], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (9, CAST(60 AS Decimal(18, 0)), CAST(N'2020-11-01T19:56:05.647' AS DateTime), CAST(N'2020-11-01T21:56:05.000' AS DateTime), 3, 1, 8)
INSERT [dbo].[Rezervs] ([Id], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (10, CAST(60 AS Decimal(18, 0)), CAST(N'2020-11-01T19:56:05.647' AS DateTime), CAST(N'2020-11-01T21:56:05.000' AS DateTime), 3, 1, 4)
INSERT [dbo].[Rezervs] ([Id], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (11, CAST(70 AS Decimal(18, 0)), CAST(N'2020-11-01T20:00:54.573' AS DateTime), CAST(N'2020-11-01T21:00:54.000' AS DateTime), 4, 2, 13)
INSERT [dbo].[Rezervs] ([Id], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (12, CAST(70 AS Decimal(18, 0)), CAST(N'2020-11-01T20:00:54.573' AS DateTime), CAST(N'2020-11-01T21:00:54.000' AS DateTime), 4, 2, 11)
INSERT [dbo].[Rezervs] ([Id], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (13, CAST(50 AS Decimal(18, 0)), CAST(N'2020-11-01T20:02:39.350' AS DateTime), CAST(N'2020-11-01T22:02:39.000' AS DateTime), 6, 12, 13)
INSERT [dbo].[Rezervs] ([Id], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (14, CAST(50 AS Decimal(18, 0)), CAST(N'2020-11-01T20:02:39.350' AS DateTime), CAST(N'2020-11-01T22:02:39.000' AS DateTime), 6, 12, 10)
INSERT [dbo].[Rezervs] ([Id], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (15, CAST(40 AS Decimal(18, 0)), CAST(N'2020-11-01T21:52:31.423' AS DateTime), CAST(N'2020-11-01T22:52:31.000' AS DateTime), 1, 12, 12)
INSERT [dbo].[Rezervs] ([Id], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (16, CAST(40 AS Decimal(18, 0)), CAST(N'2020-11-01T21:52:31.423' AS DateTime), CAST(N'2020-11-01T22:52:31.000' AS DateTime), 1, 12, 11)
INSERT [dbo].[Rezervs] ([Id], [Price], [DateFrom], [DateTo], [CustomerId], [StadiumId], [RoomId]) VALUES (17, CAST(40 AS Decimal(18, 0)), CAST(N'2020-11-01T21:52:31.423' AS DateTime), CAST(N'2020-11-01T22:52:31.000' AS DateTime), 1, 12, 4)
SET IDENTITY_INSERT [dbo].[Rezervs] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (4, N'Room 1', 12)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (8, N'Room 4', 12)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (10, N'Room 6', 12)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (11, N'Room 7', 12)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (12, N'Room 8', 12)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (13, N'Room 9', 12)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (14, N'Room 8', 10)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (15, N'Room 10', 12)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (16, N'Otaq 12', 5)
INSERT [dbo].[Rooms] ([Id], [Name], [Count]) VALUES (17, N'jnkhg', 12)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[Stadions] ON 

INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (1, N'Vip Stadium')
INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (2, N'Small Stadium')
INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (12, N'Stadium for childeren')
INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (13, N'Tofig Bayramov')
INSERT [dbo].[Stadions] ([Id], [Name]) VALUES (22, N'Elder')
SET IDENTITY_INSERT [dbo].[Stadions] OFF
GO
ALTER TABLE [dbo].[Customer_To_Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Customer_To_Rooms_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Customer_To_Rooms] CHECK CONSTRAINT [FK_Customer_To_Rooms_Customers]
GO
ALTER TABLE [dbo].[Customer_To_Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Customer_To_Rooms_Rooms] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([Id])
GO
ALTER TABLE [dbo].[Customer_To_Rooms] CHECK CONSTRAINT [FK_Customer_To_Rooms_Rooms]
GO
ALTER TABLE [dbo].[Reservation_To_Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_To_Rooms_Rezervs] FOREIGN KEY([RezervId])
REFERENCES [dbo].[Rezervs] ([Id])
GO
ALTER TABLE [dbo].[Reservation_To_Rooms] CHECK CONSTRAINT [FK_Reservation_To_Rooms_Rezervs]
GO
ALTER TABLE [dbo].[Reservation_To_Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_To_Rooms_Rooms] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([Id])
GO
ALTER TABLE [dbo].[Reservation_To_Rooms] CHECK CONSTRAINT [FK_Reservation_To_Rooms_Rooms]
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
ALTER DATABASE [FootballProject] SET  READ_WRITE 
GO
