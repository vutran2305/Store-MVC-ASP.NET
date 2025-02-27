USE [2ND-N-Fix]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 5/2/2021 3:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/2/2021 3:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [date] NULL,
	[NgayGiao] [date] NULL,
	[TinhTrang] [bit] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/2/2021 3:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](6) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[SDT] [char](11) NULL,
 CONSTRAINT [PK__KhachHan__2725CF1E31C291C7] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 5/2/2021 3:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/2/2021 3:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/2/2021 3:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[Anh] [nvarchar](50) NULL,
	[MaLoaiSP] [int] NULL,
	[MaNCC] [int] NULL,
	[SoLuongTon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [TaiKhoan], [MatKhau], [DiaChi], [Email], [SDT]) VALUES (1, N'Bao Ngan', CAST(N'2000-04-26 00:00:00.000' AS DateTime), N'Female', N'Milen', N'Milen26041311', N'Đà Nẵng', N'ngan9715@gmail.com', N'0935580372 ')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'T-Shirt')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'Hoddie')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'Sweater')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (4, N'Hawaii Shirt')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (5, N'Basketball')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (6, N'Pant')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (7, N'Hats')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (9, N'Short')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (1, N'2ND-N-Fix', N'Đà Nẵng', N'0935580372   ')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (1, N'Sweater', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(250000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'sweater1.png', 3, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (2, N'Sweater', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(210000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'sweater2.png', 3, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (3, N'Sweater', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(230000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'sweater3.png', 3, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (4, N'Sweater', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(250000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'sweater4.png', 3, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (5, N'Sweater', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(250000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'sweater5.png', 3, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (6, N'Sweater', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(200000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'sweater6.png', 3, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (7, N'Hoddie', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(240000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hoddie7.png', 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (8, N'Hoddie', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(220000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hoddie2.png', 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (9, N'Hoddie', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(210000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hoddie3.png', 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (10, N'Hoddie', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(200000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hoddie4.png', 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (11, N'Hoddie', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(250000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hoddie5.png', 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (12, N'Hoddie', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(210000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hoddie6.png', 2, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (13, N'T-Shirt', N'Material: 100% cotton 4-way stretch <br>
              Ink: no peeling, sharp, no color fading, no harm to the skin, not stick together when washing, safe for users'' health <br>
              Seam: Sure, squeeze the needle with 2 hooks <br>
              Design: Youthful, dynamic, comfortable <br>
              INSTRUCTIONS FOR USE AND STORAGE: <br>
              Do not wash white and colored t-shirts together <br>
              Do not wash in hot water <br>
              Should turn the shirt left before washing <br>
              Do not use strong bleach <br>
              When drying, the shirt should be turned upside down <br>
              Iron in medium heat <br>', N'', CAST(180000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), N'T-shirt1.png', 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (14, N'T-Shirt', N'Material: 100% cotton 4-way stretch <br>
              Ink: no peeling, sharp, no color fading, no harm to the skin, not stick together when washing, safe for users'' health <br>
              Seam: Sure, squeeze the needle with 2 hooks <br>
              Design: Youthful, dynamic, comfortable <br>
              INSTRUCTIONS FOR USE AND STORAGE: <br>
              Do not wash white and colored t-shirts together <br>
              Do not wash in hot water <br>
              Should turn the shirt left before washing <br>
              Do not use strong bleach <br>
              When drying, the shirt should be turned upside down <br>
              Iron in medium heat <br>', N'', CAST(180000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), N'T-shirt2.png', 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (15, N'T-Shirt', N'Material: 100% cotton 4-way stretch <br>
              Ink: no peeling, sharp, no color fading, no harm to the skin, not stick together when washing, safe for users'' health <br>
              Seam: Sure, squeeze the needle with 2 hooks <br>
              Design: Youthful, dynamic, comfortable <br>
              INSTRUCTIONS FOR USE AND STORAGE: <br>
              Do not wash white and colored t-shirts together <br>
              Do not wash in hot water <br>
              Should turn the shirt left before washing <br>
              Do not use strong bleach <br>
              When drying, the shirt should be turned upside down <br>
              Iron in medium heat <br>', N'', CAST(170000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), N'T-shirt3.png', 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (16, N'T-Shirt', N'Material: 100% cotton 4-way stretch <br>
              Ink: no peeling, sharp, no color fading, no harm to the skin, not stick together when washing, safe for users'' health <br>
              Seam: Sure, squeeze the needle with 2 hooks <br>
              Design: Youthful, dynamic, comfortable <br>
              INSTRUCTIONS FOR USE AND STORAGE: <br>
              Do not wash white and colored t-shirts together <br>
              Do not wash in hot water <br>
              Should turn the shirt left before washing <br>
              Do not use strong bleach <br>
              When drying, the shirt should be turned upside down <br>
              Iron in medium heat <br>', N'', CAST(180000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), N'T-shirt4.png', 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (17, N'T-Shirt', N'Material: 100% cotton 4-way stretch <br>
              Ink: no peeling, sharp, no color fading, no harm to the skin, not stick together when washing, safe for users'' health <br>
              Seam: Sure, squeeze the needle with 2 hooks <br>
              Design: Youthful, dynamic, comfortable <br>
              INSTRUCTIONS FOR USE AND STORAGE: <br>
              Do not wash white and colored t-shirts together <br>
              Do not wash in hot water <br>
              Should turn the shirt left before washing <br>
              Do not use strong bleach <br>
              When drying, the shirt should be turned upside down <br>
              Iron in medium heat <br>', N'', CAST(190000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), N'T-shirt5.png', 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (18, N'Basketball', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(260000 AS Decimal(18, 0)), CAST(90000 AS Decimal(18, 0)), N'basketball1.png', 5, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (19, N'Basketball', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(280000 AS Decimal(18, 0)), CAST(90000 AS Decimal(18, 0)), N'basketball2.png', 5, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (20, N'Basketball', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(300000 AS Decimal(18, 0)), CAST(90000 AS Decimal(18, 0)), N'basketball3.png', 5, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (21, N'Basketball', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(240000 AS Decimal(18, 0)), CAST(90000 AS Decimal(18, 0)), N'basketball4.png', 5, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (22, N'Basketball', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(250000 AS Decimal(18, 0)), CAST(90000 AS Decimal(18, 0)), N'basketball5.png', 5, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (23, N'Basketball', N'Men and women can wear unisex forms <br>
              Shirt material: dense cotton felt <br>
              The embossed image is printed on decal or fabric so you are not afraid of discoloration or breakage, cracking after several times of washing<br>
               Especially, Shop is committed <br>
               REAL: Real shirt like in photos, videos (shop shoots, takes photos) <br>
               WASHING: Comfortable machine wash, no fear of print peeling. <br>
               FULL Size from 40-80kg <br>', N'', CAST(240000 AS Decimal(18, 0)), CAST(90000 AS Decimal(18, 0)), N'basketball6.png', 5, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (24, N'Pant', N'CARHARTT
• Size 28 (D100 x Ố20 x L35)
• Fit <60kg', N'', CAST(300000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'pant1.png', 6, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (25, N'Pant', N'ALPHA
• Size 32 (D104 x Ố21 x L41)
• Fit <70kg', N'', CAST(300000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'pant2.png', 6, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (26, N'Pant', N'DICKIES
• Size 38 (D114 x Ố25 x L50)
• Fit <90kg', N'', CAST(250000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'pant3.png', 6, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (27, N'Pant', N'FORTHRITE
• Size 36 (D105 x Ống rút x L44)
• Fit <80kg', N'', CAST(270000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'pant4.png', 6, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (28, N'Pant', N'UNIQLO
• Size 34 (D112 x Ố17x L42)
• Fit <80kg', N'', CAST(240000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'pant5.png', 6, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (29, N'Hats', N'KANGOL', N'', CAST(300000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hat4.png', 7, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (30, N'Hats', N'VINTAGE NIKE', N'', CAST(300000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hat3.png', 7, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (31, N'Hats', N'MLB YANKEES', N'', CAST(200000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hat2.png', 7, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (32, N'Hats', N'VINTAGE NIKE', N'', CAST(200000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'hat1.png', 7, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (39, N'Short', N'BOLT
• Size L (D41 x O30)
', N'', CAST(270000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'short5.png', 9, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (40, N'Short', N'VINTAGE NIKE
• Size M (D43 x O32)
', N'', CAST(250000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'short1.png', 9, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (41, N'Short', N'LOUOMO
• Size M (D43 x O26)', N'', CAST(300000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'short2.png', 9, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (42, N'Short', N'TD FLAME
• Size L (D54 x O28)', N'', CAST(300000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'short3.png', 9, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (43, N'Hawaii', N'Product: TYPE 1, NEW 90-95%. Patterned cotton fabric absorbs sweat well, cool, wide form, easy to wear, easy to coordinate. Vintage style <br>
              Origin: American goods, 2 hand, each piece is only 1 piece (made in USA) <br>
              Design: short sleeves, youthful, suitable for going to the beach, going out, summer wear <br>
              Suitable for all ages, both men and women <br>
              Thick material, standard form, with bigsize up to 130kg <br>', N'', CAST(160000 AS Decimal(18, 0)), CAST(900000 AS Decimal(18, 0)), N'hawaii1.png', 4, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (44, N'Hawaii', N'Product: TYPE 1, NEW 90-95%. Patterned cotton fabric absorbs sweat well, cool, wide form, easy to wear, easy to coordinate. Vintage style <br>
              Origin: American goods, 2 hand, each piece is only 1 piece (made in USA) <br>
              Design: short sleeves, youthful, suitable for going to the beach, going out, summer wear <br>
              Suitable for all ages, both men and women <br>
              Thick material, standard form, with bigsize up to 130kg <br>', N'', CAST(160000 AS Decimal(18, 0)), CAST(900000 AS Decimal(18, 0)), N'hawaii2.png', 4, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GioiTinh], [GiaBan], [GiaNhap], [Anh], [MaLoaiSP], [MaNCC], [SoLuongTon]) VALUES (45, N'Hawaii', N'Product: TYPE 1, NEW 90-95%. Patterned cotton fabric absorbs sweat well, cool, wide form, easy to wear, easy to coordinate. Vintage style <br>
              Origin: American goods, 2 hand, each piece is only 1 piece (made in USA) <br>
              Design: short sleeves, youthful, suitable for going to the beach, going out, summer wear <br>
              Suitable for all ages, both men and women <br>
              Thick material, standard form, with bigsize up to 130kg <br>', N'', CAST(170000 AS Decimal(18, 0)), CAST(800000 AS Decimal(18, 0)), N'hawaii3.png', 4, 1, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__MaKH__1BFD2C07] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__MaKH__1BFD2C07]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
