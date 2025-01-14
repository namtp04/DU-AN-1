USE [master]
GO
/****** Object:  Database [PRO1041_G8_BanGiayDaBong_RoCon]    Script Date: 18/11/2023 7:46:50 PM ******/
CREATE DATABASE [PRO1041_G8_BanGiayDaBong_RoCon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRO1041_G8_BanGiayDaBong_RoCon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PRO1041_G8_BanGiayDaBong_RoCon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRO1041_G8_BanGiayDaBong_RoCon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PRO1041_G8_BanGiayDaBong_RoCon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRO1041_G8_BanGiayDaBong_RoCon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET RECOVERY FULL 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET  MULTI_USER 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRO1041_G8_BanGiayDaBong_RoCon', N'ON'
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET QUERY_STORE = ON
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PRO1041_G8_BanGiayDaBong_RoCon]
GO
/****** Object:  Table [dbo].[CHAT_LIEU]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHAT_LIEU](
	[MaChatLieu] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_HOA_DON]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_HOA_DON](
	[MaHD] [varchar](10) NOT NULL,
	[MaCTSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_SAN_PHAM]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_SAN_PHAM](
	[MaCTSP] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[MaSize] [varchar](10) NOT NULL,
	[MaMau] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA_DON]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON](
	[MaHD] [varchar](10) NOT NULL,
	[TaiKhoan] [varchar](20) NOT NULL,
	[MaKH] [varchar](10) NULL,
	[TongTienGoc] [float] NOT NULL,
	[MaKM] [varchar](10) NULL,
	[TongTienCuoi] [float] NOT NULL,
	[ThoiGianBan] [date] NOT NULL,
	[HinhThucThanhToan] [nvarchar](20) NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[SDT] [varchar](12) NOT NULL,
	[DiaChi] [varchar](50) NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYEN_MAI]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYEN_MAI](
	[MaKM] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NoiDung] [text] NOT NULL,
	[LoaiKM] [bit] NOT NULL,
	[GiamGia] [float] NOT NULL,
	[ThoiGianBatDau] [date] NOT NULL,
	[ThoiGianKetThuc] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_GIAY]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_GIAY](
	[MaLoai] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAU_SAC]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAU_SAC](
	[MaMau] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM](
	[MaSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[Hinh] [text] NULL,
	[MaThuongHieu] [varchar](10) NOT NULL,
	[MaLoai] [varchar](10) NOT NULL,
	[MaChatLieu] [varchar](10) NOT NULL,
	[MaXuatXu] [varchar](10) NOT NULL,
	[Gia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZE]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZE](
	[MaSize] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAI_KHOAN]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAI_KHOAN](
	[TaiKhoan] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SDT] [varchar](12) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CCCD] [varchar](12) NOT NULL,
	[ChucVu] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUONG_HIEU]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONG_HIEU](
	[MaThuongHieu] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XUAT_XU]    Script Date: 18/11/2023 7:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUAT_XU](
	[MaXuatXu] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXuatXu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHAT_LIEU] ([MaChatLieu], [Ten]) VALUES (N'CL1', N'Leather')
INSERT [dbo].[CHAT_LIEU] ([MaChatLieu], [Ten]) VALUES (N'CL2', N'Canvas')
INSERT [dbo].[CHAT_LIEU] ([MaChatLieu], [Ten]) VALUES (N'CL3', N'Synthetic')
INSERT [dbo].[CHAT_LIEU] ([MaChatLieu], [Ten]) VALUES (N'CL4', N'Mesh')
INSERT [dbo].[CHAT_LIEU] ([MaChatLieu], [Ten]) VALUES (N'CL5', N'Rubber')
INSERT [dbo].[CHAT_LIEU] ([MaChatLieu], [Ten]) VALUES (N'CL6', N'Suede')
GO
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD1', N'CT1', 2)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD1', N'CT2', 1)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD2', N'CT3', 3)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD2', N'CT4', 2)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD3', N'CT5', 2)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD3', N'CT6', 1)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD4', N'CT7', 3)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD4', N'CT8', 2)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD3', N'CT9', 1)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD3', N'CT10', 2)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD4', N'CT5', 4)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD4', N'CT6', 3)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD3', N'CT7', 2)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD3', N'CT8', 2)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD4', N'CT9', 1)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHD], [MaCTSP], [SoLuong]) VALUES (N'HD4', N'CT10', 3)
GO
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT1', N'SP1', N'S', N'M1', 50)
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT10', N'SP6', N'XL', N'M6', 12)
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT2', N'SP1', N'M', N'M2', 30)
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT3', N'SP2', N'M', N'M2', 20)
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT4', N'SP3', N'L', N'M3', 40)
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT5', N'SP4', N'XS', N'M4', 10)
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT6', N'SP4', N'XL', N'M5', 15)
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT7', N'SP5', N'L', N'M6', 25)
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT8', N'SP5', N'XXL', N'M4', 30)
INSERT [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP], [MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (N'CT9', N'SP6', N'M', N'M5', 20)
GO
INSERT [dbo].[HOA_DON] ([MaHD], [TaiKhoan], [MaKH], [TongTienGoc], [MaKM], [TongTienCuoi], [ThoiGianBan], [HinhThucThanhToan], [TrangThai]) VALUES (N'HD1', N'user1', N'KH1', 150, N'KM1', 135, CAST(N'2023-01-05' AS Date), N'Tiền mặt', 1)
INSERT [dbo].[HOA_DON] ([MaHD], [TaiKhoan], [MaKH], [TongTienGoc], [MaKM], [TongTienCuoi], [ThoiGianBan], [HinhThucThanhToan], [TrangThai]) VALUES (N'HD2', N'user1', N'KH2', 200, N'KM2', 160, CAST(N'2023-11-18' AS Date), N'Chuyển khoản', 0)
INSERT [dbo].[HOA_DON] ([MaHD], [TaiKhoan], [MaKH], [TongTienGoc], [MaKM], [TongTienCuoi], [ThoiGianBan], [HinhThucThanhToan], [TrangThai]) VALUES (N'HD3', N'user2', N'KH3', 120, N'KM3', 102, CAST(N'2023-03-05' AS Date), N'Chuyển khoản', 1)
INSERT [dbo].[HOA_DON] ([MaHD], [TaiKhoan], [MaKH], [TongTienGoc], [MaKM], [TongTienCuoi], [ThoiGianBan], [HinhThucThanhToan], [TrangThai]) VALUES (N'HD4', N'user2', N'KH4', 180, N'KM4', 158.4, CAST(N'2023-03-05' AS Date), N'Kết hợp', 0)
GO
INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [SDT], [DiaChi], [NgaySinh]) VALUES (N'KH1', N'Customer 1', N'1111111111', N'123 Street, City', CAST(N'1995-03-15' AS Date))
INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [SDT], [DiaChi], [NgaySinh]) VALUES (N'KH2', N'Customer 2', N'2222222222', N'456 Street, Town', CAST(N'1998-07-20' AS Date))
INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [SDT], [DiaChi], [NgaySinh]) VALUES (N'KH3', N'Customer 3', N'3333333333', N'789 Street, Village', CAST(N'1993-12-10' AS Date))
INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [SDT], [DiaChi], [NgaySinh]) VALUES (N'KH4', N'Customer 4', N'4444444444', N'012 Street, Suburb', CAST(N'1997-05-25' AS Date))
GO
INSERT [dbo].[KHUYEN_MAI] ([MaKM], [Ten], [NoiDung], [LoaiKM], [GiamGia], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'KM1', N'Sale 1', N'Discount on selected items', 1, 0.1, CAST(N'2023-01-01' AS Date), CAST(N'2023-01-15' AS Date))
INSERT [dbo].[KHUYEN_MAI] ([MaKM], [Ten], [NoiDung], [LoaiKM], [GiamGia], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'KM2', N'Clearance Sale', N'Big discounts on clearance items', 1, 0.2, CAST(N'2023-02-01' AS Date), CAST(N'2023-02-28' AS Date))
INSERT [dbo].[KHUYEN_MAI] ([MaKM], [Ten], [NoiDung], [LoaiKM], [GiamGia], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'KM3', N'Flash Sale', N'Limited-time discounts', 1, 0.15, CAST(N'2023-03-01' AS Date), CAST(N'2023-03-07' AS Date))
INSERT [dbo].[KHUYEN_MAI] ([MaKM], [Ten], [NoiDung], [LoaiKM], [GiamGia], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'KM4', N'Back to School Sale', N'Special deals for students', 1, 0.12, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-15' AS Date))
GO
INSERT [dbo].[LOAI_GIAY] ([MaLoai], [Ten]) VALUES (N'L1', N'Sport Shoes')
INSERT [dbo].[LOAI_GIAY] ([MaLoai], [Ten]) VALUES (N'L2', N'Casual Shoes')
INSERT [dbo].[LOAI_GIAY] ([MaLoai], [Ten]) VALUES (N'L3', N'Formal Shoes')
INSERT [dbo].[LOAI_GIAY] ([MaLoai], [Ten]) VALUES (N'L4', N'Running Shoes')
INSERT [dbo].[LOAI_GIAY] ([MaLoai], [Ten]) VALUES (N'L5', N'Sneakers')
INSERT [dbo].[LOAI_GIAY] ([MaLoai], [Ten]) VALUES (N'L6', N'Boots')
GO
INSERT [dbo].[MAU_SAC] ([MaMau], [Ten]) VALUES (N'M1', N'Red')
INSERT [dbo].[MAU_SAC] ([MaMau], [Ten]) VALUES (N'M2', N'Blue')
INSERT [dbo].[MAU_SAC] ([MaMau], [Ten]) VALUES (N'M3', N'Green')
INSERT [dbo].[MAU_SAC] ([MaMau], [Ten]) VALUES (N'M4', N'Yellow')
INSERT [dbo].[MAU_SAC] ([MaMau], [Ten]) VALUES (N'M5', N'Black')
INSERT [dbo].[MAU_SAC] ([MaMau], [Ten]) VALUES (N'M6', N'White')
GO
INSERT [dbo].[SAN_PHAM] ([MaSP], [TenSP], [Hinh], [MaThuongHieu], [MaLoai], [MaChatLieu], [MaXuatXu], [Gia]) VALUES (N'SP1', N'Shoe 1', NULL, N'TH1', N'L1', N'CL1', N'X1', 590000)
INSERT [dbo].[SAN_PHAM] ([MaSP], [TenSP], [Hinh], [MaThuongHieu], [MaLoai], [MaChatLieu], [MaXuatXu], [Gia]) VALUES (N'SP2', N'Shoe 2', NULL, N'TH2', N'L2', N'CL2', N'X2', 490000)
INSERT [dbo].[SAN_PHAM] ([MaSP], [TenSP], [Hinh], [MaThuongHieu], [MaLoai], [MaChatLieu], [MaXuatXu], [Gia]) VALUES (N'SP3', N'Shoe 3', NULL, N'TH3', N'L3', N'CL3', N'X3', 690000)
INSERT [dbo].[SAN_PHAM] ([MaSP], [TenSP], [Hinh], [MaThuongHieu], [MaLoai], [MaChatLieu], [MaXuatXu], [Gia]) VALUES (N'SP4', N'Running Shoe 1', NULL, N'TH4', N'L4', N'CL4', N'X4', 790000)
INSERT [dbo].[SAN_PHAM] ([MaSP], [TenSP], [Hinh], [MaThuongHieu], [MaLoai], [MaChatLieu], [MaXuatXu], [Gia]) VALUES (N'SP5', N'Sneaker 1', NULL, N'TH5', N'L5', N'CL5', N'X5', 890000)
INSERT [dbo].[SAN_PHAM] ([MaSP], [TenSP], [Hinh], [MaThuongHieu], [MaLoai], [MaChatLieu], [MaXuatXu], [Gia]) VALUES (N'SP6', N'Boot 1', NULL, N'TH6', N'L6', N'CL6', N'X6', 990000)
GO
INSERT [dbo].[SIZE] ([MaSize], [Ten]) VALUES (N'L', N'Large')
INSERT [dbo].[SIZE] ([MaSize], [Ten]) VALUES (N'M', N'Medium')
INSERT [dbo].[SIZE] ([MaSize], [Ten]) VALUES (N'S', N'Small')
INSERT [dbo].[SIZE] ([MaSize], [Ten]) VALUES (N'XL', N'Extra Large')
INSERT [dbo].[SIZE] ([MaSize], [Ten]) VALUES (N'XS', N'Extra Small')
INSERT [dbo].[SIZE] ([MaSize], [Ten]) VALUES (N'XXL', N'Double Extra Large')
GO
INSERT [dbo].[TAI_KHOAN] ([TaiKhoan], [MatKhau], [Ten], [NgaySinh], [SDT], [Email], [CCCD], [ChucVu]) VALUES (N'admin1', N'adminpass', N'Admin 1', CAST(N'1985-05-05' AS Date), N'0987654321', N'admin1@email.com', N'987654321012', 1)
INSERT [dbo].[TAI_KHOAN] ([TaiKhoan], [MatKhau], [Ten], [NgaySinh], [SDT], [Email], [CCCD], [ChucVu]) VALUES (N'admin2', N'adminpass', N'Admin 2', CAST(N'1988-08-08' AS Date), N'2222222222', N'admin2@email.com', N'222222222222', 1)
INSERT [dbo].[TAI_KHOAN] ([TaiKhoan], [MatKhau], [Ten], [NgaySinh], [SDT], [Email], [CCCD], [ChucVu]) VALUES (N'user1', N'pass1', N'User 1', CAST(N'1990-01-01' AS Date), N'1234567890', N'user1@email.com', N'123456789012', 0)
INSERT [dbo].[TAI_KHOAN] ([TaiKhoan], [MatKhau], [Ten], [NgaySinh], [SDT], [Email], [CCCD], [ChucVu]) VALUES (N'user2', N'pass2', N'User 2', CAST(N'1992-02-02' AS Date), N'1111111111', N'user2@email.com', N'111111111111', 0)
GO
INSERT [dbo].[THUONG_HIEU] ([MaThuongHieu], [Ten]) VALUES (N'TH1', N'Brand 1')
INSERT [dbo].[THUONG_HIEU] ([MaThuongHieu], [Ten]) VALUES (N'TH2', N'Brand 2')
INSERT [dbo].[THUONG_HIEU] ([MaThuongHieu], [Ten]) VALUES (N'TH3', N'Brand 3')
INSERT [dbo].[THUONG_HIEU] ([MaThuongHieu], [Ten]) VALUES (N'TH4', N'Brand 4')
INSERT [dbo].[THUONG_HIEU] ([MaThuongHieu], [Ten]) VALUES (N'TH5', N'Brand 5')
INSERT [dbo].[THUONG_HIEU] ([MaThuongHieu], [Ten]) VALUES (N'TH6', N'Brand 6')
GO
INSERT [dbo].[XUAT_XU] ([MaXuatXu], [Ten]) VALUES (N'X1', N'Vietnam')
INSERT [dbo].[XUAT_XU] ([MaXuatXu], [Ten]) VALUES (N'X2', N'China')
INSERT [dbo].[XUAT_XU] ([MaXuatXu], [Ten]) VALUES (N'X3', N'USA')
INSERT [dbo].[XUAT_XU] ([MaXuatXu], [Ten]) VALUES (N'X4', N'Germany')
INSERT [dbo].[XUAT_XU] ([MaXuatXu], [Ten]) VALUES (N'X5', N'Japan')
INSERT [dbo].[XUAT_XU] ([MaXuatXu], [Ten]) VALUES (N'X6', N'Italy')
GO
ALTER TABLE [dbo].[HOA_DON] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD FOREIGN KEY([MaCTSP])
REFERENCES [dbo].[CHI_TIET_SAN_PHAM] ([MaCTSP])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOA_DON] ([MaHD])
GO
ALTER TABLE [dbo].[CHI_TIET_SAN_PHAM]  WITH CHECK ADD FOREIGN KEY([MaMau])
REFERENCES [dbo].[MAU_SAC] ([MaMau])
GO
ALTER TABLE [dbo].[CHI_TIET_SAN_PHAM]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[SIZE] ([MaSize])
GO
ALTER TABLE [dbo].[CHI_TIET_SAN_PHAM]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SAN_PHAM] ([MaSP])
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACH_HANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD FOREIGN KEY([MaKM])
REFERENCES [dbo].[KHUYEN_MAI] ([MaKM])
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TAI_KHOAN] ([TaiKhoan])
GO
ALTER TABLE [dbo].[SAN_PHAM]  WITH CHECK ADD FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[CHAT_LIEU] ([MaChatLieu])
GO
ALTER TABLE [dbo].[SAN_PHAM]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAI_GIAY] ([MaLoai])
GO
ALTER TABLE [dbo].[SAN_PHAM]  WITH CHECK ADD FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[THUONG_HIEU] ([MaThuongHieu])
GO
ALTER TABLE [dbo].[SAN_PHAM]  WITH CHECK ADD FOREIGN KEY([MaXuatXu])
REFERENCES [dbo].[XUAT_XU] ([MaXuatXu])
GO
USE [master]
GO
ALTER DATABASE [PRO1041_G8_BanGiayDaBong_RoCon] SET  READ_WRITE 
GO
