USE [master]
GO
/****** Object:  Database [Shoponl]    Script Date: 4/24/2021 10:34:36 PM ******/
CREATE DATABASE [Shoponl]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shoponl', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Shoponl.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shoponl_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Shoponl_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shoponl] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shoponl].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shoponl] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shoponl] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shoponl] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shoponl] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shoponl] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shoponl] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shoponl] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shoponl] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shoponl] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shoponl] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shoponl] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shoponl] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shoponl] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shoponl] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shoponl] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shoponl] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shoponl] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shoponl] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shoponl] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shoponl] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shoponl] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shoponl] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shoponl] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shoponl] SET  MULTI_USER 
GO
ALTER DATABASE [Shoponl] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shoponl] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shoponl] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shoponl] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Shoponl] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Shoponl]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 4/24/2021 10:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaloaiSanPham] [nvarchar](50) NOT NULL,
	[TenloaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaloaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/24/2021 10:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](10) NOT NULL,
	[MaloaiSanPham] [nvarchar](50) NULL,
	[TenSP] [nvarchar](max) NULL,
	[Thongtinchitiet] [nvarchar](max) NULL,
	[Size] [nvarchar](50) NULL,
	[Hinhchinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Gia] [nvarchar](50) NULL,
	[SoluongSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 4/24/2021 10:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[Id] [nvarchar](10) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DanhMuc] ([MaloaiSanPham], [TenloaiSanPham]) VALUES (N'BL004', N'BASEBALL')
INSERT [dbo].[DanhMuc] ([MaloaiSanPham], [TenloaiSanPham]) VALUES (N'HD003', N'HODDIE')
INSERT [dbo].[DanhMuc] ([MaloaiSanPham], [TenloaiSanPham]) VALUES (N'HW005', N'HAWAII')
INSERT [dbo].[DanhMuc] ([MaloaiSanPham], [TenloaiSanPham]) VALUES (N'JK001', N'JACKET')
INSERT [dbo].[DanhMuc] ([MaloaiSanPham], [TenloaiSanPham]) VALUES (N'ST002', N'SWEATER')
INSERT [dbo].[SanPham] ([MaSP], [MaloaiSanPham], [TenSP], [Thongtinchitiet], [Size], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoluongSP]) VALUES (N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaloaiSanPham], [TenSP], [Thongtinchitiet], [Size], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoluongSP]) VALUES (N'A01', N'JK001', N'JACKET 001', N'Chưa có thông tin', N'Unisex', N'1.png', N'1a.png', N'1b.png', N'150.000', N'')
INSERT [dbo].[SanPham] ([MaSP], [MaloaiSanPham], [TenSP], [Thongtinchitiet], [Size], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoluongSP]) VALUES (N'A02', N'ST002', N'SWEATER 002', N'Chưa có thông tin', N'Unisex', N'2.png', N'2a.png', N'2b.png', N'140.000', N'')
INSERT [dbo].[SanPham] ([MaSP], [MaloaiSanPham], [TenSP], [Thongtinchitiet], [Size], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoluongSP]) VALUES (N'A03', N'HD003', N'HODDIE 003', N'Chưa có thông tin', N'Unisex', N'3.png', N'', N'', N'170.000', N'')
INSERT [dbo].[SanPham] ([MaSP], [MaloaiSanPham], [TenSP], [Thongtinchitiet], [Size], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoluongSP]) VALUES (N'A04', N'JK001', N'JACKET 004', N'Chưa có thông tin', N'Unisex', N'4.png', NULL, NULL, N'160.000', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaloaiSanPham], [TenSP], [Thongtinchitiet], [Size], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoluongSP]) VALUES (N'A05', N'BL004', N'BASEBALL 100', N'Chưa có thông tin', N'Unisex', N'5.png', NULL, NULL, N'350.000', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaloaiSanPham], [TenSP], [Thongtinchitiet], [Size], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoluongSP]) VALUES (N'A06', N'HW005', N'HAWAII 101', N'Chưa có thông tin', N'Unisex', N'6.png', NULL, NULL, N'250.000', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaloaiSanPham], [TenSP], [Thongtinchitiet], [Size], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoluongSP]) VALUES (N'A07', N'ST002', N'SWEATER 102', N'Chưa có thông tin', N'Unisex', N'7.png', NULL, NULL, N'300.000', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaloaiSanPham], [TenSP], [Thongtinchitiet], [Size], [Hinhchinh], [Hinh1], [Hinh2], [Gia], [SoluongSP]) VALUES (N'A08', N'HD003', N'HODDIE 103', N'Chưa có thông tin', N'Unisex', N'8.png', NULL, NULL, N'420.000', NULL)
INSERT [dbo].[user] ([Id], [Username], [Password]) VALUES (N'td001', N'Vutran', N'230500')
INSERT [dbo].[user] ([Id], [Username], [Password]) VALUES (N'td002', N'abc', N'12345')
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([MaloaiSanPham])
REFERENCES [dbo].[DanhMuc] ([MaloaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
USE [master]
GO
ALTER DATABASE [Shoponl] SET  READ_WRITE 
GO
