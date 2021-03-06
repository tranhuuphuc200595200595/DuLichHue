USE [master]
GO
/****** Object:  Database [QuanLyDuLichHue]    Script Date: 10/17/2016 13:30:54 ******/
CREATE DATABASE [QuanLyDuLichHue] ON  PRIMARY 
( NAME = N'QuanLyDuLichHue', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyDuLichHue.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyDuLichHue_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyDuLichHue_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyDuLichHue] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyDuLichHue].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyDuLichHue] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyDuLichHue] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyDuLichHue] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyDuLichHue] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET  DISABLE_BROKER
GO
ALTER DATABASE [QuanLyDuLichHue] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyDuLichHue] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyDuLichHue] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyDuLichHue] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyDuLichHue] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyDuLichHue] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyDuLichHue] SET DB_CHAINING OFF
GO
USE [QuanLyDuLichHue]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[IdLanguage] [uniqueidentifier] NOT NULL,
	[LanguageName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Language_1] PRIMARY KEY CLUSTERED 
(
	[IdLanguage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IdCategory] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[IdAccount] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](80) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[IdAccount] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[IdCity] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Tinh] PRIMARY KEY CLUSTERED 
(
	[IdCity] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Lang]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Lang](
	[IdCategory] [uniqueidentifier] NOT NULL,
	[IdLanguage] [uniqueidentifier] NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category_Lang_1] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC,
	[IdLanguage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[IdPlace] [uniqueidentifier] NOT NULL,
	[ImagePlace] [image] NULL,
	[IdCity] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DiaDanh] PRIMARY KEY CLUSTERED 
(
	[IdPlace] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City_Lang]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City_Lang](
	[IdCity] [uniqueidentifier] NOT NULL,
	[IdLanguage] [uniqueidentifier] NOT NULL,
	[CityName] [nvarchar](50) NULL,
 CONSTRAINT [PK_City_Lang_1] PRIMARY KEY CLUSTERED 
(
	[IdCity] ASC,
	[IdLanguage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[IdStore] [uniqueidentifier] NOT NULL,
	[IdPlace] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[IdStore] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place_Lang]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place_Lang](
	[IdPlace] [uniqueidentifier] NOT NULL,
	[IdLanguage] [uniqueidentifier] NOT NULL,
	[PlaceName] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[Information] [ntext] NULL,
 CONSTRAINT [PK_Place_Lang] PRIMARY KEY CLUSTERED 
(
	[IdPlace] ASC,
	[IdLanguage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store_Lang]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store_Lang](
	[IdStore] [uniqueidentifier] NOT NULL,
	[IdLanguage] [uniqueidentifier] NOT NULL,
	[StoreName] [nvarchar](150) NULL,
 CONSTRAINT [PK_Store_Lang] PRIMARY KEY CLUSTERED 
(
	[IdStore] ASC,
	[IdLanguage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[IdLocation] [uniqueidentifier] NOT NULL,
	[IdStore] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[IdLocation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location_Lang]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location_Lang](
	[IdLocation] [uniqueidentifier] NOT NULL,
	[IdLanguage] [uniqueidentifier] NOT NULL,
	[LocationName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Location_Lang] PRIMARY KEY CLUSTERED 
(
	[IdLocation] ASC,
	[IdLanguage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[IdItem] [uniqueidentifier] NOT NULL,
	[ImageItem] [image] NULL,
	[IdLocation] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[IdItem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_Lang]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_Lang](
	[IdItem] [uniqueidentifier] NOT NULL,
	[IdLanguage] [uniqueidentifier] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Information] [ntext] NULL,
	[Audio] [char](300) NULL,
	[Video] [char](300) NULL,
 CONSTRAINT [PK_Item_Lang] PRIMARY KEY CLUSTERED 
(
	[IdItem] ASC,
	[IdLanguage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item_Category]    Script Date: 10/17/2016 13:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Category](
	[IdItem] [uniqueidentifier] NOT NULL,
	[IdCategory] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Item_Category] PRIMARY KEY CLUSTERED 
(
	[IdItem] ASC,
	[IdCategory] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Category_Lang_Category]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Category_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Category_Lang_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Category_Lang] CHECK CONSTRAINT [FK_Category_Lang_Category]
GO
/****** Object:  ForeignKey [FK_Category_Lang_Language]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Category_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Category_Lang_Language] FOREIGN KEY([IdLanguage])
REFERENCES [dbo].[Language] ([IdLanguage])
GO
ALTER TABLE [dbo].[Category_Lang] CHECK CONSTRAINT [FK_Category_Lang_Language]
GO
/****** Object:  ForeignKey [FK_Place_City]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Place]  WITH CHECK ADD  CONSTRAINT [FK_Place_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([IdCity])
GO
ALTER TABLE [dbo].[Place] CHECK CONSTRAINT [FK_Place_City]
GO
/****** Object:  ForeignKey [FK_City_Lang_City]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[City_Lang]  WITH CHECK ADD  CONSTRAINT [FK_City_Lang_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([IdCity])
GO
ALTER TABLE [dbo].[City_Lang] CHECK CONSTRAINT [FK_City_Lang_City]
GO
/****** Object:  ForeignKey [FK_City_Lang_Language]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[City_Lang]  WITH CHECK ADD  CONSTRAINT [FK_City_Lang_Language] FOREIGN KEY([IdLanguage])
REFERENCES [dbo].[Language] ([IdLanguage])
GO
ALTER TABLE [dbo].[City_Lang] CHECK CONSTRAINT [FK_City_Lang_Language]
GO
/****** Object:  ForeignKey [FK_Store_Place]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Place] FOREIGN KEY([IdPlace])
REFERENCES [dbo].[Place] ([IdPlace])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Place]
GO
/****** Object:  ForeignKey [FK_Place_Lang_Language]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Place_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Place_Lang_Language] FOREIGN KEY([IdLanguage])
REFERENCES [dbo].[Language] ([IdLanguage])
GO
ALTER TABLE [dbo].[Place_Lang] CHECK CONSTRAINT [FK_Place_Lang_Language]
GO
/****** Object:  ForeignKey [FK_Place_Lang_Place]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Place_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Place_Lang_Place] FOREIGN KEY([IdPlace])
REFERENCES [dbo].[Place] ([IdPlace])
GO
ALTER TABLE [dbo].[Place_Lang] CHECK CONSTRAINT [FK_Place_Lang_Place]
GO
/****** Object:  ForeignKey [FK_Store_Lang_Language]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Store_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Store_Lang_Language] FOREIGN KEY([IdLanguage])
REFERENCES [dbo].[Language] ([IdLanguage])
GO
ALTER TABLE [dbo].[Store_Lang] CHECK CONSTRAINT [FK_Store_Lang_Language]
GO
/****** Object:  ForeignKey [FK_Store_Lang_Store]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Store_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Store_Lang_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Store_Lang] CHECK CONSTRAINT [FK_Store_Lang_Store]
GO
/****** Object:  ForeignKey [FK_Location_Store]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Store]
GO
/****** Object:  ForeignKey [FK_Location_Lang_Language]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Location_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Location_Lang_Language] FOREIGN KEY([IdLanguage])
REFERENCES [dbo].[Language] ([IdLanguage])
GO
ALTER TABLE [dbo].[Location_Lang] CHECK CONSTRAINT [FK_Location_Lang_Language]
GO
/****** Object:  ForeignKey [FK_Location_Lang_Location]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Location_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Location_Lang_Location] FOREIGN KEY([IdLocation])
REFERENCES [dbo].[Location] ([IdLocation])
GO
ALTER TABLE [dbo].[Location_Lang] CHECK CONSTRAINT [FK_Location_Lang_Location]
GO
/****** Object:  ForeignKey [FK_Item_Location]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Location] FOREIGN KEY([IdLocation])
REFERENCES [dbo].[Location] ([IdLocation])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Location]
GO
/****** Object:  ForeignKey [FK_Item_Lang_Item]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Item_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Item_Lang_Item] FOREIGN KEY([IdItem])
REFERENCES [dbo].[Item] ([IdItem])
GO
ALTER TABLE [dbo].[Item_Lang] CHECK CONSTRAINT [FK_Item_Lang_Item]
GO
/****** Object:  ForeignKey [FK_Item_Lang_Language]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Item_Lang]  WITH CHECK ADD  CONSTRAINT [FK_Item_Lang_Language] FOREIGN KEY([IdLanguage])
REFERENCES [dbo].[Language] ([IdLanguage])
GO
ALTER TABLE [dbo].[Item_Lang] CHECK CONSTRAINT [FK_Item_Lang_Language]
GO
/****** Object:  ForeignKey [FK_Item_Category_Category]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Item_Category]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Item_Category] CHECK CONSTRAINT [FK_Item_Category_Category]
GO
/****** Object:  ForeignKey [FK_Item_Category_Item]    Script Date: 10/17/2016 13:30:55 ******/
ALTER TABLE [dbo].[Item_Category]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category_Item] FOREIGN KEY([IdItem])
REFERENCES [dbo].[Item] ([IdItem])
GO
ALTER TABLE [dbo].[Item_Category] CHECK CONSTRAINT [FK_Item_Category_Item]
GO
