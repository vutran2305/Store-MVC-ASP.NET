create database shop2nd
use shop2nd
create table KhachHang
(
	MaKH int primary key identity,
	TenKH nvarchar(50),
	NgaySinh datetime,
	GioiTinh nvarchar(5),
	TaiKhoan varchar(50),
	MatKhau varchar(50),
	DiaChi nvarchar(50),
	Email varchar(50),
	SDT char(11)
)
create table LoaiSanPham
(
	MaLoaiSP int primary key identity,
	TenLoaiSP nvarchar(50)
)
create table SanPham
(
	MaSP int primary key identity,
	TenSP nvarchar(MAX),
	MoTa nvarchar(MAX),
	GioiTinh nvarchar(10),
	GiaBan decimal(18,0),
	GiaNhap decimal(18,0),
	Anh nvarchar(50),
	MaLoaiSP int,
	SoLuongTon int,
	foreign key (MaLoaiSP) references LoaiSanPham(MaLoaiSP) on delete cascade
)
create table HoaDon
(
	MaHD int primary key identity,
	NgayDat date,
	NgayGiao date,
	TinhTrang bit,
	MaKH int,
	foreign key (MaKH) references KhachHang(MaKH) on delete cascade
)
create table ChiTietHoaDon
(
	MaHD int,
	MaSP int,
	SoLuong int,
	DonGia decimal(18,0),
	primary key (MaHD,MaSP),
	foreign key (MaHD) references HoaDon(MaHD) on delete cascade,
	foreign key (MaSP) references SanPham(MaSP) on delete cascade
)
