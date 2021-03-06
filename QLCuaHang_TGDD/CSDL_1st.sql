USE [master]
GO
/****** Object:  Database [QLCuaHang]    Script Date: 5/24/2017 5:17:41 PM ******/
CREATE DATABASE [QLCuaHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SQL', FILENAME = N'E:\SQL\begin.mdf' , SIZE = 12288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 2048KB ), 
 FILEGROUP [nSQL] 
( NAME = N'SQL_FG', FILENAME = N'E:\SQL\begin.ndf' , SIZE = 12288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 2048KB )
 LOG ON 
( NAME = N'SQL_log', FILENAME = N'E:\SQL\begin.ldf' , SIZE = 12288KB , MAXSIZE = 2048GB , FILEGROWTH = 2048KB )
GO
ALTER DATABASE [QLCuaHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCuaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCuaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCuaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCuaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCuaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCuaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCuaHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLCuaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCuaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCuaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCuaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCuaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCuaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCuaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCuaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCuaHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLCuaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCuaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCuaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCuaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCuaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCuaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCuaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCuaHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QLCuaHang] SET  MULTI_USER 
GO
ALTER DATABASE [QLCuaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCuaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCuaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCuaHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLCuaHang] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLCuaHang', N'ON'
GO
USE [QLCuaHang]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Emp_ID] [varchar](10) NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [Username] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Category_ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [Category_ID] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Cus_ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](10) NULL,
	[Mid_Name] [nvarchar](10) NULL,
	[Sur_Name] [nvarchar](10) NULL,
	[Sex] [bit] NULL,
	[ID] [varchar](10) NULL,
	[Address] [nvarchar](50) NULL,
	[Tel] [varchar](20) NULL,
	[DOB] [date] NULL,
	[Img_Path] [nvarchar](50) NULL,
 CONSTRAINT [Cus_ID] PRIMARY KEY CLUSTERED 
(
	[Cus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Distributor]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Distributor](
	[Dis_ID] [varchar](10) NOT NULL,
	[Dis_Name] [nvarchar](30) NULL,
	[Address] [nvarchar](50) NULL,
	[Tel] [varchar](20) NULL,
 CONSTRAINT [Dis_ID] PRIMARY KEY CLUSTERED 
(
	[Dis_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Emp_ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Mid_Name] [nvarchar](10) NULL,
	[Sur_name] [nvarchar](10) NOT NULL,
	[Sex] [bit] NULL,
	[ID] [varchar](10) NULL,
	[Address] [nvarchar](50) NULL,
	[Tel] [varchar](20) NULL,
	[DOB] [date] NULL,
	[Position] [nvarchar](20) NULL,
	[Img_Path] [nvarchar](50) NULL,
 CONSTRAINT [Emp_ID] PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee_Position]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Position](
	[Position] [nvarchar](20) NOT NULL,
	[Pos_Name] [nvarchar](30) NULL,
	[Salary] [float] NULL,
 CONSTRAINT [Positon] PRIMARY KEY CLUSTERED 
(
	[Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Event]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event](
	[Ev_ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Start_Date] [datetime] NULL,
	[End_Date] [datetime] NULL,
 CONSTRAINT [Ev_ID] PRIMARY KEY CLUSTERED 
(
	[Ev_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Event_Detail]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event_Detail](
	[Ev_ID] [varchar](10) NOT NULL,
	[Pro_ID] [varchar](10) NOT NULL,
	[Saleoff] [float] NULL,
 CONSTRAINT [PK_Event_Detail] PRIMARY KEY CLUSTERED 
(
	[Ev_ID] ASC,
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Exp_Pro_Bill]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exp_Pro_Bill](
	[Exp_Pro_ID] [varchar](10) NOT NULL,
	[Emp_ID] [varchar](10) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Exp_Pro_Bill] PRIMARY KEY CLUSTERED 
(
	[Exp_Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Exp_Pro_Bill_Detail]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exp_Pro_Bill_Detail](
	[Exp_Pro_ID] [varchar](10) NOT NULL,
	[Pro_ID] [varchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Exp_Pro_Bill_Detail] PRIMARY KEY CLUSTERED 
(
	[Exp_Pro_ID] ASC,
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Export_Bill]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Export_Bill](
	[Exp_ID] [varchar](10) NOT NULL,
	[Cus_ID] [varchar](10) NULL,
	[Emp_ID] [varchar](10) NULL,
	[Ev_ID] [varchar](10) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [Exp_ID] PRIMARY KEY CLUSTERED 
(
	[Exp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Export_Detail]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Export_Detail](
	[Exp_ID] [varchar](10) NOT NULL,
	[Pro_ID] [varchar](10) NOT NULL,
	[Equantity] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Export_Detail] PRIMARY KEY CLUSTERED 
(
	[Exp_ID] ASC,
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Import_Bill]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Import_Bill](
	[Imp_ID] [varchar](10) NOT NULL,
	[Dis_ID] [varchar](10) NULL,
	[Emp_ID] [varchar](10) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [Imp_ID] PRIMARY KEY CLUSTERED 
(
	[Imp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Import_Detail]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Import_Detail](
	[Imp_ID] [varchar](10) NOT NULL,
	[Pro_ID] [varchar](10) NOT NULL,
	[Iquantity] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Import_Detail] PRIMARY KEY CLUSTERED 
(
	[Imp_ID] ASC,
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Pro_ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Dis_ID] [varchar](10) NULL,
	[Category_ID] [varchar](10) NULL,
	[Quantity] [int] NULL,
	[Exp_Price] [float] NULL,
	[Img_Path] [nvarchar](50) NULL,
 CONSTRAINT [Pro_ID] PRIMARY KEY CLUSTERED 
(
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Store]    Script Date: 5/24/2017 5:17:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Store](
	[Pro_ID] [varchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Imp_Price] [float] NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E01', N'ADMIN', N'ADMIN')
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E08', N'BEERUS', N'BEERUS')
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E07', N'CELL', N'CELL')
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E04', N'GOHAN', N'GOHAN')
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E02', N'GOKU', N'GOKU')
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E05', N'GOTEN', N'GOTEN')
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E06', N'TRUNK', N'TRUNK')
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E03', N'VEGETA', N'VEGETA')
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E09', N'WHIS', N'WHIS')
INSERT [dbo].[Account] ([Emp_ID], [Username], [Password]) VALUES (N'E10', N'ZENO', N'ZENO')
INSERT [dbo].[Category] ([Category_ID], [Name]) VALUES (N'CA01', N'Smartphone')
INSERT [dbo].[Category] ([Category_ID], [Name]) VALUES (N'CA02', N'Laptop')
INSERT [dbo].[Category] ([Category_ID], [Name]) VALUES (N'CA03', N'Accessories')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C01', N'VINH', N'HỬU', N'PHẠM', 1, N'011', N'Q.1', N'0131', CAST(N'1997-01-19' AS Date), N'""')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C02', N'HOÀNG', N'KIM', N'TRẦN', 1, N'012', N'Q.2', N'0132', CAST(N'1997-01-29' AS Date), N'""')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C03', N'HIẾU', N'NHẬT', N'LÊ VY', 0, N'013', N'Q.3', N'0133', CAST(N'1997-09-09' AS Date), N'""')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C04', N'TUYỀN', N'KIM', N'HÀ VŨ', 0, N'014', N'Q.4', N'0134', CAST(N'1997-08-28' AS Date), N'""')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C05', N'KHANG', N'TẤN', N'LÊ', 1, N'015', N'Q.5', N'0135', CAST(N'1997-01-01' AS Date), N'""')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C06', N'VINH', N'HỮU ', N'NGUYỄN ', 1, N'016', N'Q.6', N'0136', CAST(N'1995-06-16' AS Date), N'""')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C07', N'HUYỀN', N'THỊ', N'HOÀNG', 0, N'017', N'Q.7', N'0137', CAST(N'1996-11-25' AS Date), N'""')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C08', N'PHÚC', N'HỒNG', N'DƯƠNG', 1, N'018', N'Q.8', N'0138', CAST(N'1997-06-14' AS Date), N'""')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C09', N'HUY', N'QUANG', N'NGUYỄN', 1, N'019', N'Q.9', N'0139', CAST(N'1997-03-05' AS Date), N'""')
INSERT [dbo].[Customer] ([Cus_ID], [Name], [Mid_Name], [Sur_Name], [Sex], [ID], [Address], [Tel], [DOB], [Img_Path]) VALUES (N'C10', N'PHƯỢNG', N'THỊ', N'ĐÀO', 0, N'010', N'Q10', N'0130', CAST(N'2016-03-09' AS Date), N'""')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D01', N'SONY', N'Q.THU DUC', N'0121')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D02', N'APPBLE', N'Q.1', N'0122')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D03', N'NOKIA', N'Q.2', N'0123')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D04', N'CANON', N'Q.3', N'0124')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D05', N'SAMSUNG', N'Q.4', N'0125')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D06', N'ZTE', N'Q.5', N'0126')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D07', N'LENOVO', N'Q.6', N'0127')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D08', N'DELL', N'Q.7', N'0128')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D09', N'ASUS', N'Q.8', N'0129')
INSERT [dbo].[Distributor] ([Dis_ID], [Dis_Name], [Address], [Tel]) VALUES (N'D10', N'YULONG', N'Q.9', N'0120')
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E01', N'HOA', N'THỊ', N'TRẦN', 0, N'021', N'Q.9', N'0141', CAST(N'1997-02-03' AS Date), N'P001', NULL)
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E02', N'LIÊN', N'THỊ', N'LÊ', 0, N'022', N'Q.8', N'0142', CAST(N'1997-07-05' AS Date), N'P002', NULL)
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E03', N'THÚY', N'MỸ', N'TRẦN', 0, N'023', N'Q.7', N'0143', CAST(N'1997-09-15' AS Date), N'P003', NULL)
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E04', N'NGÂN', N'THU', N'PHẠM', 0, N'024', N'Q.6', N'0144', CAST(N'1997-11-22' AS Date), N'P004', NULL)
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E05', N'NHI', N'TIỂU', N'TRỊNH', 0, N'025', N'Q.5', N'0145', CAST(N'1197-11-01' AS Date), N'P005', NULL)
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E06', N'KHÁNH', N'MINH', N'TRẦN', 1, N'026', N'Q.4', N'0146', CAST(N'1997-05-08' AS Date), N'P006', NULL)
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E07', N'THÀNH', N'HỮU', N'NGUYỄN', 1, N'027', N'Q.3', N'0147', CAST(N'1995-06-16' AS Date), N'P007', NULL)
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E08', N'TÚ', N'BẢO', N'HUỲNH', 0, N'028', N'Q.2', N'0148', CAST(N'1997-02-11' AS Date), N'P008', NULL)
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E09', N'ĐẠT', N'HỮU ', N'NGUYỄN', 1, N'029', N'Q.1', N'0149', CAST(N'1997-05-05' AS Date), N'P009', NULL)
INSERT [dbo].[Employee] ([Emp_ID], [Name], [Mid_Name], [Sur_name], [Sex], [ID], [Address], [Tel], [DOB], [Position], [Img_Path]) VALUES (N'E10', N'LUÂN', N'VỸ', N'TRỊNH', 1, N'020', N'Q.10', N'0140', CAST(N'1997-08-07' AS Date), N'P010', NULL)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P001', N'QUẢN LÍ', 50000)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P002', N'BÁN HÀNG', 40000)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P003', N'BÁN HÀNG', 40000)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P004', N'THU NGÂN', 40000)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P005', N'THU NGÂN', 40000)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P006', N'KỸ THUẬT', 45000)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P007', N'KỸ THUẬT', 45000)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P008', N'BÁN HÀNG', 40000)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P009', N'CHĂM SÓC KH', 40000)
INSERT [dbo].[Employee_Position] ([Position], [Pos_Name], [Salary]) VALUES (N'P010', N'BẢO VỆ', 35000)
INSERT [dbo].[Event] ([Ev_ID], [Name], [Start_Date], [End_Date]) VALUES (N'EV01', N'30/04', CAST(N'2016-04-01 00:00:00.000' AS DateTime), CAST(N'2016-04-30 00:00:00.000' AS DateTime))
INSERT [dbo].[Event] ([Ev_ID], [Name], [Start_Date], [End_Date]) VALUES (N'EV02', N'XUÂN TÀI LỘC', CAST(N'2016-12-23 00:00:00.000' AS DateTime), CAST(N'2017-01-07 00:00:00.000' AS DateTime))
INSERT [dbo].[Event] ([Ev_ID], [Name], [Start_Date], [End_Date]) VALUES (N'EV03', N'TRI ÂN KH', CAST(N'2016-07-15 00:00:00.000' AS DateTime), CAST(N'2016-07-30 00:00:00.000' AS DateTime))
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV01', N'P01', 20)
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV01', N'P02', 20)
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV01', N'P03', 15)
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV01', N'P04', 20)
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV02', N'P05', 10)
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV02', N'P06', 10)
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV03', N'P07', 50)
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV03', N'P08', 50)
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV03', N'P09', 50)
INSERT [dbo].[Event_Detail] ([Ev_ID], [Pro_ID], [Saleoff]) VALUES (N'EV03', N'P10', 50)
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP01', N'E01', CAST(N'2016-11-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP02', N'E01', CAST(N'2016-11-06 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP03', N'E01', CAST(N'2016-08-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP04', N'E02', CAST(N'2016-05-06 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP05', N'E02', CAST(N'2016-11-06 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP06', N'E02', CAST(N'2016-07-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP07', N'E02', CAST(N'2016-10-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP08', N'E03', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP09', N'E03', CAST(N'2016-09-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID], [Emp_ID], [Date]) VALUES (N'EP10', N'E03', CAST(N'2016-01-19 00:00:00.000' AS DateTime))
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP01', N'P01', 10, 100000)
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP02', N'P02', 10, 100000)
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP03', N'P03', 10, 100000)
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP04', N'P04', 10, 100000)
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP05', N'P05', 10, 100000)
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP06', N'P06', 10, 100000)
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP07', N'P07', 10, 100000)
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP08', N'P08', 10, 100000)
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP09', N'P09', 10, 100000)
INSERT [dbo].[Exp_Pro_Bill_Detail] ([Exp_Pro_ID], [Pro_ID], [Quantity], [Price]) VALUES (N'EP10', N'P10', 10, 100000)
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX01', N'C01', N'E01', N'EV01', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX02', N'C02', N'E02', N'EV01', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX03', N'C03', N'E03', N'EV01', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX04', N'C04', N'E01', N'EV02', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX05', N'C05', N'E02', N'EV02', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX06', N'C06', N'E03', N'EV02', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX07', N'C07', N'E01', N'EV02', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX08', N'C08', N'E02', N'EV03', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX09', N'C09', N'E03', N'EV03', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Bill] ([Exp_ID], [Cus_ID], [Emp_ID], [Ev_ID], [Date]) VALUES (N'EX10', N'C10', N'E03', N'EV03', CAST(N'2016-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX01', N'P01', 10, 100000)
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX02', N'P02', 10, 100000)
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX03', N'P03', 10, 100000)
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX04', N'P04', 10, 100000)
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX05', N'P05', 10, 100000)
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX06', N'P06', 10, 100000)
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX07', N'P07', 10, 100000)
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX08', N'P08', 10, 100000)
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX09', N'P09', 10, 100000)
INSERT [dbo].[Export_Detail] ([Exp_ID], [Pro_ID], [Equantity], [Price]) VALUES (N'EX10', N'P10', 10, 100000)
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP01', N'D01', N'E01', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP02', N'D02', N'E02', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP03', N'D03', N'E03', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP04', N'D04', N'E01', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP05', N'D05', N'E02', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP06', N'D06', N'E03', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP07', N'D07', N'E01', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP08', N'D08', N'E02', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP09', N'D09', N'E03', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Bill] ([Imp_ID], [Dis_ID], [Emp_ID], [Date]) VALUES (N'IP10', N'D10', N'E01', CAST(N'2017-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP01', N'P01', 10, 100000)
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP02', N'P02', 10, 100000)
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP03', N'P03', 10, 100000)
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP04', N'P04', 10, 100000)
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP05', N'P05', 10, 100000)
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP06', N'P06', 10, 100000)
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP07', N'P07', 10, 100000)
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP08', N'P08', 10, 100000)
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP09', N'P09', 10, 100000)
INSERT [dbo].[Import_Detail] ([Imp_ID], [Pro_ID], [Iquantity], [Price]) VALUES (N'IP10', N'P09', 10, 100000)
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P01', N'IPHONE4', N'D01', N'CA01', 10, 100000, N'""')
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P02', N'IPHONE5', N'D02', N'CA01', 10, 120000, N'""')
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P03', N'IPHONE5S', N'D03', N'CA01', 10, 150000, N'""')
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P04', N'IPHONE6', N'D04', N'CA01', 10, 180000, N'""')
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P05', N'IPHONE6S', N'D05', N'CA01', 10, 200000, N'""')
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P06', N'IPHONE6PLUS', N'D06', N'CA01', 10, 220000, N'""')
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P07', N'DELL_INS14', N'D07', N'CA02', 10, 200000, N'""')
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P08', N'DELL_INS15', N'D08', N'CA02', 10, 220000, N'""')
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P09', N'HEADPHONE', N'D09', N'CA03', 10, 100000, N'""')
INSERT [dbo].[Product] ([Pro_ID], [Name], [Dis_ID], [Category_ID], [Quantity], [Exp_Price], [Img_Path]) VALUES (N'P10', N'MUOSE', N'D10', N'CA03', 10, 50000, N'""')
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P01', 10, 100000)
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P02', 10, 120000)
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P03', 10, 150000)
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P04', 10, 180000)
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P05', 10, 200000)
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P06', 10, 220000)
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P07', 10, 200000)
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P08', 10, 220000)
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P09', 10, 100000)
INSERT [dbo].[Store] ([Pro_ID], [Quantity], [Imp_Price]) VALUES (N'P10', 10, 500000)
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [fk_Emp_ID] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [fk_Emp_ID]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [fk_Position] FOREIGN KEY([Position])
REFERENCES [dbo].[Employee_Position] ([Position])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [fk_Position]
GO
ALTER TABLE [dbo].[Event_Detail]  WITH CHECK ADD  CONSTRAINT [Evd_ID] FOREIGN KEY([Ev_ID])
REFERENCES [dbo].[Event] ([Ev_ID])
GO
ALTER TABLE [dbo].[Event_Detail] CHECK CONSTRAINT [Evd_ID]
GO
ALTER TABLE [dbo].[Event_Detail]  WITH CHECK ADD  CONSTRAINT [fke_Pro_ID] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Product] ([Pro_ID])
GO
ALTER TABLE [dbo].[Event_Detail] CHECK CONSTRAINT [fke_Pro_ID]
GO
ALTER TABLE [dbo].[Exp_Pro_Bill]  WITH CHECK ADD  CONSTRAINT [FK_Exp_Pro_Bill_Employee] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Exp_Pro_Bill] CHECK CONSTRAINT [FK_Exp_Pro_Bill_Employee]
GO
ALTER TABLE [dbo].[Exp_Pro_Bill_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Exp_Pro_Bill_Detail_Exp_Pro_Bill] FOREIGN KEY([Exp_Pro_ID])
REFERENCES [dbo].[Exp_Pro_Bill] ([Exp_Pro_ID])
GO
ALTER TABLE [dbo].[Exp_Pro_Bill_Detail] CHECK CONSTRAINT [FK_Exp_Pro_Bill_Detail_Exp_Pro_Bill]
GO
ALTER TABLE [dbo].[Exp_Pro_Bill_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Exp_Pro_Bill_Detail_Store] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Store] ([Pro_ID])
GO
ALTER TABLE [dbo].[Exp_Pro_Bill_Detail] CHECK CONSTRAINT [FK_Exp_Pro_Bill_Detail_Store]
GO
ALTER TABLE [dbo].[Export_Bill]  WITH CHECK ADD  CONSTRAINT [FK_Export_Bill_Employee] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Export_Bill] CHECK CONSTRAINT [FK_Export_Bill_Employee]
GO
ALTER TABLE [dbo].[Export_Bill]  WITH CHECK ADD  CONSTRAINT [FK_Export_Bill_Event] FOREIGN KEY([Ev_ID])
REFERENCES [dbo].[Event] ([Ev_ID])
GO
ALTER TABLE [dbo].[Export_Bill] CHECK CONSTRAINT [FK_Export_Bill_Event]
GO
ALTER TABLE [dbo].[Export_Bill]  WITH CHECK ADD  CONSTRAINT [fke_Cus_ID] FOREIGN KEY([Cus_ID])
REFERENCES [dbo].[Customer] ([Cus_ID])
GO
ALTER TABLE [dbo].[Export_Bill] CHECK CONSTRAINT [fke_Cus_ID]
GO
ALTER TABLE [dbo].[Export_Detail]  WITH CHECK ADD  CONSTRAINT [Expd_ID] FOREIGN KEY([Exp_ID])
REFERENCES [dbo].[Export_Bill] ([Exp_ID])
GO
ALTER TABLE [dbo].[Export_Detail] CHECK CONSTRAINT [Expd_ID]
GO
ALTER TABLE [dbo].[Export_Detail]  WITH CHECK ADD  CONSTRAINT [fkpe_Pro_ID] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Product] ([Pro_ID])
GO
ALTER TABLE [dbo].[Export_Detail] CHECK CONSTRAINT [fkpe_Pro_ID]
GO
ALTER TABLE [dbo].[Import_Bill]  WITH CHECK ADD  CONSTRAINT [FK_Import_Bill_Employee] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Import_Bill] CHECK CONSTRAINT [FK_Import_Bill_Employee]
GO
ALTER TABLE [dbo].[Import_Bill]  WITH CHECK ADD  CONSTRAINT [fki_Dis_ID] FOREIGN KEY([Dis_ID])
REFERENCES [dbo].[Distributor] ([Dis_ID])
GO
ALTER TABLE [dbo].[Import_Bill] CHECK CONSTRAINT [fki_Dis_ID]
GO
ALTER TABLE [dbo].[Import_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Import_Detail_Product] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Product] ([Pro_ID])
GO
ALTER TABLE [dbo].[Import_Detail] CHECK CONSTRAINT [FK_Import_Detail_Product]
GO
ALTER TABLE [dbo].[Import_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Import_Detail_Store] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Store] ([Pro_ID])
GO
ALTER TABLE [dbo].[Import_Detail] CHECK CONSTRAINT [FK_Import_Detail_Store]
GO
ALTER TABLE [dbo].[Import_Detail]  WITH CHECK ADD  CONSTRAINT [Impd_ID] FOREIGN KEY([Imp_ID])
REFERENCES [dbo].[Import_Bill] ([Imp_ID])
GO
ALTER TABLE [dbo].[Import_Detail] CHECK CONSTRAINT [Impd_ID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Category_ID] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([Category_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Category_ID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fkp_Dis_ID] FOREIGN KEY([Dis_ID])
REFERENCES [dbo].[Distributor] ([Dis_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fkp_Dis_ID]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Product] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Product] ([Pro_ID])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Product]
GO
USE [master]
GO
ALTER DATABASE [QLCuaHang] SET  READ_WRITE 
GO

EXEC sp_dbcmptlevel 'QLCuaHang', 100
SELECT DISTINCT id.Imp_ID, s.Pro_ID,p.Name,p.Dis_ID, d.Dis_Name,s.Quantity, s.Imp_Price, ib.Date ,ib.Emp_ID, p.Img_Path INTO Store_Imp_Bill
FROM dbo.Store s, dbo.Product p, dbo.Import_Bill ib, dbo.Import_Detail id, dbo.Distributor d
WHERE s.Pro_ID = p.Pro_ID AND s.Pro_ID = id.Pro_ID AND id.Imp_ID = ib.Imp_ID AND d.Dis_ID = p.Dis_ID --and Lower(id.Imp_ID)=Lower(N'IP03')

SELECT  SUM(Exp_Price) FROM Product
WITH tem AS
(SELECT ROW_NUMBER() OVER(PARTITION BY s.Imp_ID,s.Pro_ID, s.Name, s.Dis_ID, s.Dis_Name, s.Quantity, s.Imp_Price, s.Date,s.Emp_ID,s.Img_Path 
ORDER BY s.Imp_ID) AS rownumber, *FROM Store_Imp_Bill s) 
DELETE FROM tem WHERE rownumber>0
GO
