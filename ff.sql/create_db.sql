USE [master]
GO
/****** Object:  Database [CoffeeShop]    Script Date: 08/20/2015 16:37:07 ******/
CREATE DATABASE [CoffeeShop] ON  PRIMARY 
( NAME = N'CoffeeShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CoffeeShop.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CoffeeShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CoffeeShop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CoffeeShop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CoffeeShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CoffeeShop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CoffeeShop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CoffeeShop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CoffeeShop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CoffeeShop] SET ARITHABORT OFF
GO
ALTER DATABASE [CoffeeShop] SET AUTO_CLOSE ON
GO
ALTER DATABASE [CoffeeShop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CoffeeShop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CoffeeShop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CoffeeShop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CoffeeShop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CoffeeShop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CoffeeShop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CoffeeShop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CoffeeShop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CoffeeShop] SET  DISABLE_BROKER
GO
ALTER DATABASE [CoffeeShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CoffeeShop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CoffeeShop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CoffeeShop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CoffeeShop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CoffeeShop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CoffeeShop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CoffeeShop] SET  READ_WRITE
GO
ALTER DATABASE [CoffeeShop] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CoffeeShop] SET  MULTI_USER
GO
ALTER DATABASE [CoffeeShop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CoffeeShop] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'CoffeeShop', N'ON'
GO
USE [CoffeeShop]
GO
/****** Object:  User [CoffeeUser]    Script Date: 08/20/2015 16:37:07 ******/
CREATE USER [CoffeeUser] FOR LOGIN [CoffeeUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ProductCat]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](512) NULL,
	[Enable] [bit] NOT NULL,
 CONSTRAINT [ProductCat_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProductCat] ON
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (1, N'Café', N'Các loại cafe, cafe sữa.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (2, N'Nước giải khát', N'Softdrink, nước ngọt, nước đóng chai, lon.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (4, N'Nước uống có cồn', N'Bia, rượu, cocktail có cồn.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (6, N'Nước pha chế', N'Nước ép, cam, chanh.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (8, N'Kem', N'Các loại kem và nước uống kèm kem.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (10, N'Sinh tố', N'Các loại sinh tố.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (12, N'Khác', N'Sữa, trà, trà đá, các loại đồ uống không có trong danh mục.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (14, N'Thuốc lá', N'Các loại thuốc lá.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (15, N'Đồ ăn vặt', N'Các món ăn vặt, ăn nhẹ.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (16, N'Cơm văn phòng', N'Bao gồm điểm tâm, cơm trưa.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (18, N'Nguyên liệu', N'Bao gồm các loại nguyên liệu hỗ trợ chế biến.', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (34, N'cat_dto_test_81fc9ab3-87c0-4207-83df-1563a71bb51b', N'Test Category', 1)
INSERT [dbo].[ProductCat] ([ID], [Name], [Description], [Enable]) VALUES (35, N'cat_dto_test_669c224b-918d-41b8-a961-5b2baf27a3d2', N'Test Category', 1)
SET IDENTITY_INSERT [dbo].[ProductCat] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Address] [nvarchar](1024) NOT NULL,
	[Email] [nvarchar](1024) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Enable] [bit] NOT NULL,
 CONSTRAINT [Customers_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customers] ([ID], [Name], [Address], [Email], [Phone], [Enable]) VALUES (N'1', N'Khách vãng lai', N'BMT', N'bnl@mail.com', N'123456789', 1)
INSERT [dbo].[Customers] ([ID], [Name], [Address], [Email], [Phone], [Enable]) VALUES (N'2', N'Tô Răng Hô', N'BMT', N'trh@mail.com', N'123456789', 1)
/****** Object:  Table [dbo].[Staffs]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staffs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](128) NOT NULL,
	[Password] [varchar](256) NOT NULL,
	[StaffName] [nvarchar](512) NULL,
	[Role] [tinyint] NULL,
	[Position] [nvarchar](128) NULL,
	[Notes] [nvarchar](512) NULL,
	[DateJoin] [smalldatetime] NOT NULL,
	[Enable] [bit] NOT NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Staffs] ON
INSERT [dbo].[Staffs] ([ID], [UserName], [Password], [StaffName], [Role], [Position], [Notes], [DateJoin], [Enable]) VALUES (1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'Taki', 1, N'Quản trị', NULL, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Staffs] ([ID], [UserName], [Password], [StaffName], [Role], [Position], [Notes], [DateJoin], [Enable]) VALUES (2, N'TestManager', N'e10adc3949ba59abbe56e057f20f883e', N'TestManager', 3, NULL, NULL, CAST(0xA4CD0026 AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[Staffs] OFF
/****** Object:  Table [dbo].[Restaurant]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Restaurant](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Address] [nvarchar](512) NULL,
	[Phone] [varchar](16) NULL,
	[Fax] [varchar](16) NULL,
	[Email] [varchar](512) NULL,
	[Website] [varchar](512) NULL,
	[PrintSize] [varchar](5) NULL,
 CONSTRAINT [PK_Restaurant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurant] ON
INSERT [dbo].[Restaurant] ([ID], [Name], [Address], [Phone], [Fax], [Email], [Website], [PrintSize]) VALUES (1, N'My Coffee Shop', N'294 Binh Loi, phuong 13, quan Binh Thanh, Tp.HCM', N'01212998662', N'01212998662', N'taki.lnt@gmail.com', N'ff-team.com', N'A5')
SET IDENTITY_INSERT [dbo].[Restaurant] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Category] [int] NOT NULL,
	[Unit] [nvarchar](64) NULL,
	[Price] [money] NULL,
	[DateCreate] [smalldatetime] NOT NULL,
	[Enable] [bit] NOT NULL,
 CONSTRAINT [Products_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (1, N'Cafe đen đá', 1, N'Ly', 10000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (3, N'Cafe đen nóng', 1, N'Ly', 8000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (4, N'Cafe sữa đá', 1, N'Ly', 12000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (5, N'Cafe sữa nóng', 1, N'Ly', 11000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (6, N'Cam vắt', 6, N'Ly', 15000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (7, N'Chanh đá', 6, N'Ly', 10000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (8, N'Chanh nóng', 6, N'Ly', 8000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (9, N'Chanh muối', 6, N'Ly', 10000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (10, N'Pepsi Lon', 2, N'Lon', 10000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (11, N'Pepsi Chai', 2, N'Chai', 9000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (15, N'Bia 333 Lon', 4, N'Lon', 13000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (16, N'Bia Henieken Lon', 4, N'Lon', 16000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (17, N'Sinh tố bơ', 10, N'Ly', 10000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (18, N'Thuốc Jet', 14, N'Gói', 21000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (19, N'Phô mai que', 15, N'Đĩa', 30000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (20, N'Cơm thịt kho', 16, N'Phần', 30000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ID], [Name], [Category], [Unit], [Price], [DateCreate], [Enable]) VALUES (22, N'Cafe bột', 18, N'Kg', 150000.0000, CAST(0xA4B70000 AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[SalePoints]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalePoints](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[RestaurantID] [int] NULL,
	[Address] [nvarchar](256) NULL,
	[Phone] [varchar](16) NULL,
	[Fax] [varchar](16) NULL,
	[Email] [varchar](512) NULL,
	[Website] [varchar](512) NULL,
	[StartDate] [smalldatetime] NULL,
	[IsWorking] [bit] NULL,
 CONSTRAINT [PK_SalePoints] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SalePoints] ON
INSERT [dbo].[SalePoints] ([ID], [Name], [RestaurantID], [Address], [Phone], [Fax], [Email], [Website], [StartDate], [IsWorking]) VALUES (1, N'Chi nhanh I', 1, N'294 Binh Loi, phuong 13, quan Binh Thanh', N'01212998662', N'01212998662', N'taki.lnt@gmail.com', N'ff-team.com', CAST(0xA4B70000 AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[SalePoints] OFF
/****** Object:  Table [dbo].[Stores]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[UnitImport] [nvarchar](64) NULL,
	[OriginPrice] [money] NULL,
	[QuantityImport] [int] NULL,
	[QuantityInStock] [int] NULL,
	[QuantitySold] [int] NULL,
	[LastImport] [smalldatetime] NULL,
	[Enable] [bit] NULL,
 CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Stores] ON
INSERT [dbo].[Stores] ([ID], [ProductID], [UnitImport], [OriginPrice], [QuantityImport], [QuantityInStock], [QuantitySold], [LastImport], [Enable]) VALUES (1, 22, N'Kg', 130000.0000, 10, 10, 0, CAST(0xA4B70000 AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[Stores] OFF
/****** Object:  Table [dbo].[ImportDetails]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[DateImport] [smalldatetime] NULL,
	[Quantity] [int] NULL,
	[Unit] [nvarchar](64) NULL,
	[Price] [money] NULL,
	[UserImport] [nvarchar](128) NULL,
	[Enable] [bit] NULL,
 CONSTRAINT [PK_ImportDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[SalePoint] [int] NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Areas] ON
INSERT [dbo].[Areas] ([ID], [Name], [SalePoint]) VALUES (1, N'Trệt', 1)
INSERT [dbo].[Areas] ([ID], [Name], [SalePoint]) VALUES (2, N'Lầu 1', 1)
SET IDENTITY_INSERT [dbo].[Areas] OFF
/****** Object:  Table [dbo].[CoffeeTables]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoffeeTables](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Areas] [int] NULL,
	[IsServe] [bit] NULL,
	[Notes] [nvarchar](128) NULL,
	[OrderNotes] [nvarchar](128) NULL,
 CONSTRAINT [PK_CoffeeTables] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CoffeeTables] ON
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (1, N'01', 1, 1, N'Bàn 4 người', N'')
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (2, N'02', 1, 0, N'Bàn 2 người', N'')
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (3, N'03', 1, 0, N'Bàn 4 người', NULL)
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (4, N'04', 1, 0, N'Bàn 6 người', NULL)
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (5, N'05', 1, 0, N'Bàn 2 người', NULL)
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (6, N'06', 2, 0, N'Bàn 1 người', NULL)
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (7, N'07', 2, 0, N'Bàn 2 người', NULL)
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (8, N'08', 2, 0, N'Bàn 4 người', NULL)
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (9, N'09', 2, 0, N'Bàn 6 người', NULL)
INSERT [dbo].[CoffeeTables] ([ID], [Name], [Areas], [IsServe], [Notes], [OrderNotes]) VALUES (10, N'10', 2, 0, N'Bàn 2 người', NULL)
SET IDENTITY_INSERT [dbo].[CoffeeTables] OFF
/****** Object:  Table [dbo].[Ordering]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordering](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TimeIn] [smalldatetime] NULL,
	[TableID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[ChefConfirm] [bit] NULL,
	[ChefDone] [bit] NULL,
	[IsNew] [bit] NULL,
	[IsEdit] [bit] NULL,
	[StaffOrder] [nvarchar](128) NULL,
	[StaffConfirm] [nvarchar](128) NULL,
	[StaffDone] [nvarchar](128) NULL,
	[ConfirmTime] [smalldatetime] NULL,
	[DoneTime] [smalldatetime] NULL,
	[Paid] [bit] NULL,
	[Notes] [nvarchar](512) NULL,
 CONSTRAINT [PK_Ordering] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ordering] ON
INSERT [dbo].[Ordering] ([ID], [TimeIn], [TableID], [ProductID], [Quantity], [ChefConfirm], [ChefDone], [IsNew], [IsEdit], [StaffOrder], [StaffConfirm], [StaffDone], [ConfirmTime], [DoneTime], [Paid], [Notes]) VALUES (1, CAST(0xA4DB02A7 AS SmallDateTime), 1, 3, 1, 1, 1, 0, 0, N'admin', N'admin', N'admin', CAST(0xA4DB02A7 AS SmallDateTime), CAST(0xA4DB02A7 AS SmallDateTime), 1, N'')
INSERT [dbo].[Ordering] ([ID], [TimeIn], [TableID], [ProductID], [Quantity], [ChefConfirm], [ChefDone], [IsNew], [IsEdit], [StaffOrder], [StaffConfirm], [StaffDone], [ConfirmTime], [DoneTime], [Paid], [Notes]) VALUES (2, CAST(0xA4DB02A7 AS SmallDateTime), 1, 5, 2, 1, 1, 0, 0, N'admin', N'admin', N'admin', CAST(0xA4DB02A7 AS SmallDateTime), CAST(0xA4DB02A7 AS SmallDateTime), 1, N'')
INSERT [dbo].[Ordering] ([ID], [TimeIn], [TableID], [ProductID], [Quantity], [ChefConfirm], [ChefDone], [IsNew], [IsEdit], [StaffOrder], [StaffConfirm], [StaffDone], [ConfirmTime], [DoneTime], [Paid], [Notes]) VALUES (3, CAST(0xA4DB02A7 AS SmallDateTime), 1, 16, 1, 1, 1, 0, 0, N'admin', N'admin', N'admin', CAST(0xA4DB02A7 AS SmallDateTime), CAST(0xA4DB02A7 AS SmallDateTime), 1, N'')
INSERT [dbo].[Ordering] ([ID], [TimeIn], [TableID], [ProductID], [Quantity], [ChefConfirm], [ChefDone], [IsNew], [IsEdit], [StaffOrder], [StaffConfirm], [StaffDone], [ConfirmTime], [DoneTime], [Paid], [Notes]) VALUES (4, CAST(0xA4DB02A7 AS SmallDateTime), 1, 7, 2, 1, 1, 0, 0, N'admin', N'admin', N'admin', CAST(0xA4DB02A7 AS SmallDateTime), CAST(0xA4DB02A7 AS SmallDateTime), 1, N'')
INSERT [dbo].[Ordering] ([ID], [TimeIn], [TableID], [ProductID], [Quantity], [ChefConfirm], [ChefDone], [IsNew], [IsEdit], [StaffOrder], [StaffConfirm], [StaffDone], [ConfirmTime], [DoneTime], [Paid], [Notes]) VALUES (5, CAST(0xA4DB02AB AS SmallDateTime), 2, 5, 2, 1, 1, 0, 0, N'admin', N'admin', N'admin', CAST(0xA4DB02AB AS SmallDateTime), CAST(0xA4DB02AB AS SmallDateTime), 1, N'test')
INSERT [dbo].[Ordering] ([ID], [TimeIn], [TableID], [ProductID], [Quantity], [ChefConfirm], [ChefDone], [IsNew], [IsEdit], [StaffOrder], [StaffConfirm], [StaffDone], [ConfirmTime], [DoneTime], [Paid], [Notes]) VALUES (6, CAST(0xA4DB02AB AS SmallDateTime), 2, 4, 3, 1, 1, 0, 0, N'admin', N'admin', N'admin', CAST(0xA4DB02AB AS SmallDateTime), CAST(0xA4DB02AB AS SmallDateTime), 1, N'')
INSERT [dbo].[Ordering] ([ID], [TimeIn], [TableID], [ProductID], [Quantity], [ChefConfirm], [ChefDone], [IsNew], [IsEdit], [StaffOrder], [StaffConfirm], [StaffDone], [ConfirmTime], [DoneTime], [Paid], [Notes]) VALUES (7, CAST(0xA4DB02AB AS SmallDateTime), 2, 19, 1, 1, 1, 0, 0, N'admin', N'admin', N'admin', CAST(0xA4DB02AB AS SmallDateTime), CAST(0xA4DB02AB AS SmallDateTime), 1, N'test')
INSERT [dbo].[Ordering] ([ID], [TimeIn], [TableID], [ProductID], [Quantity], [ChefConfirm], [ChefDone], [IsNew], [IsEdit], [StaffOrder], [StaffConfirm], [StaffDone], [ConfirmTime], [DoneTime], [Paid], [Notes]) VALUES (8, CAST(0xA4F90278 AS SmallDateTime), 1, 1, 3, 1, 1, 1, 0, N'admin', N'admin', N'admin', CAST(0xA4F90278 AS SmallDateTime), CAST(0xA4F90278 AS SmallDateTime), 0, N'Không đường')
INSERT [dbo].[Ordering] ([ID], [TimeIn], [TableID], [ProductID], [Quantity], [ChefConfirm], [ChefDone], [IsNew], [IsEdit], [StaffOrder], [StaffConfirm], [StaffDone], [ConfirmTime], [DoneTime], [Paid], [Notes]) VALUES (9, CAST(0xA4F90278 AS SmallDateTime), 1, 4, 1, 1, 1, 1, 0, N'admin', N'admin', N'admin', CAST(0xA4F90278 AS SmallDateTime), CAST(0xA4F90278 AS SmallDateTime), 0, N'')
SET IDENTITY_INSERT [dbo].[Ordering] OFF
/****** Object:  Table [dbo].[Invoices]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableID] [int] NULL,
	[DateCreate] [smalldatetime] NOT NULL,
	[Customer] [nvarchar](256) NULL,
	[Cashier] [nvarchar](128) NOT NULL,
	[Total] [money] NOT NULL,
	[Discount] [float] NULL,
	[Enable] [bit] NOT NULL,
 CONSTRAINT [Invoices_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON
INSERT [dbo].[Invoices] ([ID], [TableID], [DateCreate], [Customer], [Cashier], [Total], [Discount], [Enable]) VALUES (1, 1, CAST(0xA4DB02A8 AS SmallDateTime), NULL, N'admin', 66000.0000, 0, 1)
INSERT [dbo].[Invoices] ([ID], [TableID], [DateCreate], [Customer], [Cashier], [Total], [Discount], [Enable]) VALUES (2, 2, CAST(0xA4DB02AB AS SmallDateTime), NULL, N'admin', 88000.0000, 0, 1)
SET IDENTITY_INSERT [dbo].[Invoices] OFF
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 08/20/2015 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Invoice] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Cost] [money] NOT NULL,
	[KitchenConfirm] [bit] NULL,
	[KitchenDone] [nchar](10) NULL,
	[UserOrder] [nvarchar](128) NOT NULL,
	[UserKitchenConfirm] [nvarchar](128) NULL,
	[UserKitchenDone] [nvarchar](128) NULL,
	[TimeConfirm] [smalldatetime] NULL,
	[TimeDone] [smalldatetime] NULL,
 CONSTRAINT [InvoiceDetails_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[InvoiceDetails] ON
INSERT [dbo].[InvoiceDetails] ([ID], [Invoice], [ProductID], [Quantity], [Price], [Cost], [KitchenConfirm], [KitchenDone], [UserOrder], [UserKitchenConfirm], [UserKitchenDone], [TimeConfirm], [TimeDone]) VALUES (1, 1, 3, 1, 8000.0000, 8000.0000, NULL, NULL, N'admin', N'admin', N'admin', CAST(0xA4DB02A7 AS SmallDateTime), CAST(0xA4DB02A7 AS SmallDateTime))
INSERT [dbo].[InvoiceDetails] ([ID], [Invoice], [ProductID], [Quantity], [Price], [Cost], [KitchenConfirm], [KitchenDone], [UserOrder], [UserKitchenConfirm], [UserKitchenDone], [TimeConfirm], [TimeDone]) VALUES (2, 1, 5, 2, 11000.0000, 22000.0000, NULL, NULL, N'admin', N'admin', N'admin', CAST(0xA4DB02A7 AS SmallDateTime), CAST(0xA4DB02A7 AS SmallDateTime))
INSERT [dbo].[InvoiceDetails] ([ID], [Invoice], [ProductID], [Quantity], [Price], [Cost], [KitchenConfirm], [KitchenDone], [UserOrder], [UserKitchenConfirm], [UserKitchenDone], [TimeConfirm], [TimeDone]) VALUES (3, 1, 16, 1, 16000.0000, 16000.0000, NULL, NULL, N'admin', N'admin', N'admin', CAST(0xA4DB02A7 AS SmallDateTime), CAST(0xA4DB02A7 AS SmallDateTime))
INSERT [dbo].[InvoiceDetails] ([ID], [Invoice], [ProductID], [Quantity], [Price], [Cost], [KitchenConfirm], [KitchenDone], [UserOrder], [UserKitchenConfirm], [UserKitchenDone], [TimeConfirm], [TimeDone]) VALUES (4, 1, 7, 2, 10000.0000, 20000.0000, NULL, NULL, N'admin', N'admin', N'admin', CAST(0xA4DB02A7 AS SmallDateTime), CAST(0xA4DB02A7 AS SmallDateTime))
INSERT [dbo].[InvoiceDetails] ([ID], [Invoice], [ProductID], [Quantity], [Price], [Cost], [KitchenConfirm], [KitchenDone], [UserOrder], [UserKitchenConfirm], [UserKitchenDone], [TimeConfirm], [TimeDone]) VALUES (5, 2, 5, 2, 11000.0000, 22000.0000, NULL, NULL, N'admin', N'admin', N'admin', CAST(0xA4DB02AB AS SmallDateTime), CAST(0xA4DB02AB AS SmallDateTime))
INSERT [dbo].[InvoiceDetails] ([ID], [Invoice], [ProductID], [Quantity], [Price], [Cost], [KitchenConfirm], [KitchenDone], [UserOrder], [UserKitchenConfirm], [UserKitchenDone], [TimeConfirm], [TimeDone]) VALUES (6, 2, 4, 3, 12000.0000, 36000.0000, NULL, NULL, N'admin', N'admin', N'admin', CAST(0xA4DB02AB AS SmallDateTime), CAST(0xA4DB02AB AS SmallDateTime))
INSERT [dbo].[InvoiceDetails] ([ID], [Invoice], [ProductID], [Quantity], [Price], [Cost], [KitchenConfirm], [KitchenDone], [UserOrder], [UserKitchenConfirm], [UserKitchenDone], [TimeConfirm], [TimeDone]) VALUES (7, 2, 19, 1, 30000.0000, 30000.0000, NULL, NULL, N'admin', N'admin', N'admin', CAST(0xA4DB02AB AS SmallDateTime), CAST(0xA4DB02AB AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[InvoiceDetails] OFF
/****** Object:  Default [DF_Products_Enable]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Enable]  DEFAULT ((1)) FOR [Enable]
GO
/****** Object:  ForeignKey [ProductCat_Products]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [ProductCat_Products] FOREIGN KEY([Category])
REFERENCES [dbo].[ProductCat] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [ProductCat_Products]
GO
/****** Object:  ForeignKey [FK_SalePoints_Restaurant]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[SalePoints]  WITH CHECK ADD  CONSTRAINT [FK_SalePoints_Restaurant] FOREIGN KEY([RestaurantID])
REFERENCES [dbo].[Restaurant] ([ID])
GO
ALTER TABLE [dbo].[SalePoints] CHECK CONSTRAINT [FK_SalePoints_Restaurant]
GO
/****** Object:  ForeignKey [FK_Stores_Products]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[Stores]  WITH CHECK ADD  CONSTRAINT [FK_Stores_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[Stores] CHECK CONSTRAINT [FK_Stores_Products]
GO
/****** Object:  ForeignKey [FK_ImportDetails_Products]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[ImportDetails]  WITH CHECK ADD  CONSTRAINT [FK_ImportDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[ImportDetails] CHECK CONSTRAINT [FK_ImportDetails_Products]
GO
/****** Object:  ForeignKey [FK_Areas_SalesPoint]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[Areas]  WITH CHECK ADD  CONSTRAINT [FK_Areas_SalesPoint] FOREIGN KEY([SalePoint])
REFERENCES [dbo].[SalePoints] ([ID])
GO
ALTER TABLE [dbo].[Areas] CHECK CONSTRAINT [FK_Areas_SalesPoint]
GO
/****** Object:  ForeignKey [FK_CoffeeTables_Areas]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[CoffeeTables]  WITH CHECK ADD  CONSTRAINT [FK_CoffeeTables_Areas] FOREIGN KEY([Areas])
REFERENCES [dbo].[Areas] ([ID])
GO
ALTER TABLE [dbo].[CoffeeTables] CHECK CONSTRAINT [FK_CoffeeTables_Areas]
GO
/****** Object:  ForeignKey [FK_Order_CoffeeTbl]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[Ordering]  WITH CHECK ADD  CONSTRAINT [FK_Order_CoffeeTbl] FOREIGN KEY([TableID])
REFERENCES [dbo].[CoffeeTables] ([ID])
GO
ALTER TABLE [dbo].[Ordering] CHECK CONSTRAINT [FK_Order_CoffeeTbl]
GO
/****** Object:  ForeignKey [FK_Order_Product]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[Ordering]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[Ordering] CHECK CONSTRAINT [FK_Order_Product]
GO
/****** Object:  ForeignKey [FK_Invoices_CoffeeTables]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_CoffeeTables] FOREIGN KEY([TableID])
REFERENCES [dbo].[CoffeeTables] ([ID])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_CoffeeTables]
GO
/****** Object:  ForeignKey [Invoices_InvoiceDetails]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [Invoices_InvoiceDetails] FOREIGN KEY([Invoice])
REFERENCES [dbo].[Invoices] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [Invoices_InvoiceDetails]
GO
/****** Object:  ForeignKey [Products_InvoiceDetails]    Script Date: 08/20/2015 16:37:08 ******/
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [Products_InvoiceDetails] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [Products_InvoiceDetails]
GO
