USE [master]
GO
/****** Object:  Database [DATN_BeeStore]    Script Date: 9/13/2024 9:17:57 AM ******/
CREATE DATABASE [DATN_BeeStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DATN_BeeStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DATN_BeeStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DATN_BeeStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DATN_BeeStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DATN_BeeStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DATN_BeeStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DATN_BeeStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DATN_BeeStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DATN_BeeStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DATN_BeeStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DATN_BeeStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DATN_BeeStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DATN_BeeStore] SET  MULTI_USER 
GO
ALTER DATABASE [DATN_BeeStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DATN_BeeStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DATN_BeeStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DATN_BeeStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DATN_BeeStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DATN_BeeStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DATN_BeeStore] SET QUERY_STORE = OFF
GO
USE [DATN_BeeStore]
GO
/****** Object:  Table [dbo].[chi_tiet_san_pham]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_san_pham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[so_luong] [int] NULL,
	[gia_hien_hanh] [money] NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[san_pham_id] [bigint] NULL,
	[kich_co_id] [bigint] NULL,
	[mau_sac_id] [bigint] NULL,
	[tay_ao_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dia_chi]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dia_chi](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[thanh_pho] [nvarchar](50) NULL,
	[quan_huyen] [nvarchar](50) NULL,
	[phuong_xa] [nvarchar](50) NULL,
	[dia_chi_cu_the] [nvarchar](100) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
	[tai_khoan_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gio_hang]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gio_hang](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ma_gio_hang] [varchar](20) NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
	[nguoi_so_huu] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gio_hang_chi_tiet]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gio_hang_chi_tiet](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[so_luong] [int] NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
	[gio_hang_id] [bigint] NULL,
	[chi_tiet_san_pham_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hinh_anh_san_pham]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hinh_anh_san_pham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
	[uu_tien] [int] NULL,
	[san_pham_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ma_hoa_don] [varchar](20) NULL,
	[ngay_thanh_toan] [datetime] NULL,
	[loai_hoa_don] [int] NULL,
	[phi_ship] [money] NULL,
	[tien_giam] [money] NULL,
	[tong_tien] [money] NULL,
	[tong_tien_khi_giam] [money] NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[nguoi_nhan] [nvarchar](100) NULL,
	[sdt_nguoi_nhan] [varchar](15) NULL,
	[thanh_pho] [nvarchar](50) NULL,
	[quan_huyen] [nvarchar](50) NULL,
	[phuong_xa] [nvarchar](50) NULL,
	[dia_chi_nguoi_nhan] [nvarchar](100) NULL,
	[email_nguoi_nhan] [varchar](100) NULL,
	[ngay_nhan] [datetime] NULL,
	[ngay_mong_muon] [datetime] NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
	[voucher_id] [bigint] NULL,
	[tai_khoan_id] [bigint] NULL,
	[phuong_thuc_thanh_toan_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[so_luong] [int] NULL,
	[don_gia] [money] NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[nguoi_tao] [nvarchar](100) NULL,
	[nguoi_sua] [nvarchar](100) NULL,
	[trang_thai] [int] NULL,
	[hoa_don_id] [bigint] NULL,
	[chi_tiet_san_pham_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kich_co]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kich_co](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lich_su_hoa_don]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lich_su_hoa_don](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
	[nguoi_sua] [nvarchar](70) NULL,
	[hoa_don_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mau_sac]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mau_sac](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ma_mau] [varchar](30) NULL,
	[ten] [nvarchar](100) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phuong_thuc_thanh_toan]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phuong_thuc_thanh_toan](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ma_phuong_thuc] [varchar](20) NULL,
	[ten] [nvarchar](50) NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](50) NOT NULL,
	[ten] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](max) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[nguoi_tao] [nvarchar](100) NULL,
	[nguoi_sua] [nvarchar](100) NULL,
	[trang_thai] [int] NULL,
	[thuong_hieu_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ho_va_ten] [nvarchar](100) NULL,
	[ngay_sinh] [date] NULL,
	[gioi_tinh] [int] NULL,
	[so_dien_thoai] [varchar](15) NULL,
	[email] [varchar](255) NULL,
	[ten_tai_khoan] [nvarchar](100) NULL,
	[mat_khau] [varchar](300) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
	[vai_tro_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tay_ao]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tay_ao](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuong_hieu]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuong_hieu](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vai_tro]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vai_tro](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 9/13/2024 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ma_voucher] [varchar](50) NULL,
	[ten_voucher] [nvarchar](50) NULL,
	[ngay_bat_dau] [datetime] NULL,
	[ngay_ket_thuc] [datetime] NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[so_luong] [int] NULL,
	[phan_tram_giam] [int] NULL,
	[giam_toi_da] [money] NULL,
	[gia_tri_don_toi_thieu] [money] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chi_tiet_san_pham] ON 
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (1, 10, 10000.0000, 0, CAST(N'2024-08-13T09:25:51.040' AS DateTime), CAST(N'2024-09-10T09:03:12.647' AS DateTime), 2, 1, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (2, 10, 10000.0000, 0, CAST(N'2024-08-13T09:25:51.040' AS DateTime), CAST(N'2024-09-10T09:03:12.653' AS DateTime), 2, 2, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (3, 10, 10000.0000, 0, CAST(N'2024-08-13T09:25:51.040' AS DateTime), CAST(N'2024-09-10T09:03:12.660' AS DateTime), 2, 1, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (4, 10, 10000.0000, 0, CAST(N'2024-08-13T09:25:51.040' AS DateTime), CAST(N'2024-09-10T09:03:12.667' AS DateTime), 2, 2, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (5, 20, 20000.0000, 1, CAST(N'2024-08-13T09:29:55.467' AS DateTime), CAST(N'2024-08-13T09:36:06.500' AS DateTime), 1, 1, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (6, 13, 20000.0000, 0, CAST(N'2024-08-13T09:29:55.467' AS DateTime), CAST(N'2024-08-13T09:36:06.533' AS DateTime), 1, 2, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (7, 11, 20000.0000, 0, CAST(N'2024-08-13T09:29:55.467' AS DateTime), CAST(N'2024-08-13T09:36:06.553' AS DateTime), 1, 3, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (8, 13, 20000.0000, 0, CAST(N'2024-08-13T09:29:55.467' AS DateTime), CAST(N'2024-08-13T09:36:06.563' AS DateTime), 1, 4, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (9, 16, 20000.0000, 0, CAST(N'2024-08-13T09:29:55.467' AS DateTime), CAST(N'2024-08-13T09:36:06.570' AS DateTime), 1, 1, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (10, 14, 20000.0000, 0, CAST(N'2024-08-13T09:29:55.467' AS DateTime), CAST(N'2024-08-13T09:36:06.570' AS DateTime), 1, 2, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (11, 14, 20000.0000, 0, CAST(N'2024-08-13T09:29:55.467' AS DateTime), CAST(N'2024-08-13T09:36:06.577' AS DateTime), 1, 3, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (12, 19, 20000.0000, 0, CAST(N'2024-08-13T09:29:55.467' AS DateTime), CAST(N'2024-08-13T09:36:06.583' AS DateTime), 1, 4, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (13, 18, 100000.0000, 0, CAST(N'2024-08-14T09:27:05.717' AS DateTime), CAST(N'2024-08-14T09:27:05.717' AS DateTime), 3, 1, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (14, 19, 100000.0000, 0, CAST(N'2024-08-14T09:27:05.723' AS DateTime), CAST(N'2024-08-14T09:27:05.723' AS DateTime), 3, 2, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (15, 19, 100000.0000, 0, CAST(N'2024-08-14T09:27:05.723' AS DateTime), CAST(N'2024-08-14T09:27:05.723' AS DateTime), 3, 3, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (16, 19, 100000.0000, 0, CAST(N'2024-08-14T09:27:05.730' AS DateTime), CAST(N'2024-08-14T09:27:05.730' AS DateTime), 3, 4, 1, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (17, 20, 100000.0000, 0, CAST(N'2024-08-14T09:27:05.737' AS DateTime), CAST(N'2024-08-14T09:27:05.737' AS DateTime), 3, 1, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (18, 20, 100000.0000, 0, CAST(N'2024-08-14T09:27:05.740' AS DateTime), CAST(N'2024-08-14T09:27:05.740' AS DateTime), 3, 2, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (19, 19, 100000.0000, 0, CAST(N'2024-08-14T09:27:05.743' AS DateTime), CAST(N'2024-08-14T09:27:05.743' AS DateTime), 3, 3, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (20, 15, 100000.0000, 0, CAST(N'2024-08-14T09:27:05.747' AS DateTime), CAST(N'2024-08-14T09:27:05.747' AS DateTime), 3, 4, 2, 1)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (21, 10, 200000.0000, 0, CAST(N'2024-08-23T09:01:29.393' AS DateTime), CAST(N'2024-08-23T09:01:29.393' AS DateTime), 5, 1, 2, 2)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (22, 10, 200000.0000, 0, CAST(N'2024-08-23T09:01:29.407' AS DateTime), CAST(N'2024-08-23T09:01:29.407' AS DateTime), 5, 2, 2, 2)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (23, 10, 200000.0000, 0, CAST(N'2024-08-23T09:01:29.413' AS DateTime), CAST(N'2024-08-23T09:01:29.413' AS DateTime), 5, 3, 2, 2)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (24, 10, 200000.0000, 0, CAST(N'2024-08-23T09:01:29.420' AS DateTime), CAST(N'2024-08-23T09:01:29.420' AS DateTime), 5, 4, 2, 2)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (25, 10, 200000.0000, 0, CAST(N'2024-08-23T09:01:29.420' AS DateTime), CAST(N'2024-08-23T09:01:29.420' AS DateTime), 5, 1, 4, 2)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (26, 10, 200000.0000, 0, CAST(N'2024-08-23T09:01:29.427' AS DateTime), CAST(N'2024-08-23T09:01:29.427' AS DateTime), 5, 2, 4, 2)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (27, 10, 200000.0000, 0, CAST(N'2024-08-23T09:01:29.427' AS DateTime), CAST(N'2024-08-23T09:01:29.427' AS DateTime), 5, 3, 4, 2)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (28, 10, 200000.0000, 0, CAST(N'2024-08-23T09:01:29.427' AS DateTime), CAST(N'2024-08-23T09:01:29.427' AS DateTime), 5, 4, 4, 2)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (29, 20, 300000.0000, 0, CAST(N'2024-09-06T11:30:18.837' AS DateTime), CAST(N'2024-09-06T11:30:18.837' AS DateTime), 4, 1, 1, 3)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (30, 20, 300000.0000, 0, CAST(N'2024-09-06T11:30:18.853' AS DateTime), CAST(N'2024-09-06T11:30:18.853' AS DateTime), 4, 2, 1, 3)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (31, 20, 300000.0000, 0, CAST(N'2024-09-06T11:30:18.857' AS DateTime), CAST(N'2024-09-06T11:30:18.857' AS DateTime), 4, 3, 1, 3)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (32, 20, 300000.0000, 0, CAST(N'2024-09-06T11:30:18.860' AS DateTime), CAST(N'2024-09-06T11:30:18.860' AS DateTime), 4, 4, 1, 3)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (33, 20, 300000.0000, 0, CAST(N'2024-09-06T11:30:18.863' AS DateTime), CAST(N'2024-09-06T11:30:18.863' AS DateTime), 4, 1, 4, 3)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (34, 20, 300000.0000, 0, CAST(N'2024-09-06T11:30:18.867' AS DateTime), CAST(N'2024-09-06T11:30:18.867' AS DateTime), 4, 2, 4, 3)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (35, 20, 300000.0000, 0, CAST(N'2024-09-06T11:30:18.870' AS DateTime), CAST(N'2024-09-06T11:30:18.870' AS DateTime), 4, 3, 4, 3)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id], [so_luong], [gia_hien_hanh], [trang_thai], [ngay_tao], [ngay_sua], [san_pham_id], [kich_co_id], [mau_sac_id], [tay_ao_id]) VALUES (36, 18, 300000.0000, 0, CAST(N'2024-09-06T11:30:18.873' AS DateTime), CAST(N'2024-09-06T11:30:18.873' AS DateTime), 4, 4, 4, 3)
GO
SET IDENTITY_INSERT [dbo].[chi_tiet_san_pham] OFF
GO
SET IDENTITY_INSERT [dbo].[dia_chi] ON 
GO
INSERT [dbo].[dia_chi] ([id], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_cu_the], [ngay_tao], [ngay_sua], [trang_thai], [tai_khoan_id]) VALUES (1, N'201', N'1803', N'1B1715', N'Hihi', CAST(N'2024-08-23T10:34:33.670' AS DateTime), CAST(N'2024-08-23T10:34:33.670' AS DateTime), 1, 5)
GO
INSERT [dbo].[dia_chi] ([id], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_cu_the], [ngay_tao], [ngay_sua], [trang_thai], [tai_khoan_id]) VALUES (2, N'233', N'3327', N'270601', N'Okok', CAST(N'2024-08-27T11:24:24.017' AS DateTime), CAST(N'2024-08-27T11:24:24.017' AS DateTime), 1, 9)
GO
SET IDENTITY_INSERT [dbo].[dia_chi] OFF
GO
SET IDENTITY_INSERT [dbo].[gio_hang] ON 
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (10, N'GH1', N'', CAST(N'2024-09-06T15:03:33.097' AS DateTime), CAST(N'2024-09-06T15:03:33.097' AS DateTime), 0, 10)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (15, N'GH2', N'', CAST(N'2024-09-10T14:47:39.907' AS DateTime), CAST(N'2024-09-10T14:47:39.907' AS DateTime), 0, 11)
GO
INSERT [dbo].[gio_hang] ([id], [ma_gio_hang], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [nguoi_so_huu]) VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[gio_hang] OFF
GO
SET IDENTITY_INSERT [dbo].[gio_hang_chi_tiet] ON 
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (59, 1, NULL, CAST(N'2024-09-06T11:27:17.620' AS DateTime), CAST(N'2024-09-06T11:27:17.620' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (60, 1, NULL, CAST(N'2024-09-06T11:27:31.537' AS DateTime), CAST(N'2024-09-06T11:27:31.537' AS DateTime), 0, 2, 3)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (61, 1, NULL, CAST(N'2024-09-06T11:27:34.703' AS DateTime), CAST(N'2024-09-06T11:27:34.703' AS DateTime), 0, 3, 3)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (62, 12, NULL, CAST(N'2024-09-06T11:33:21.130' AS DateTime), CAST(N'2024-09-06T11:33:21.130' AS DateTime), 0, 4, 10)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (63, 1, NULL, CAST(N'2024-09-06T13:07:08.740' AS DateTime), CAST(N'2024-09-06T13:07:08.740' AS DateTime), 0, 5, 1)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (64, 1, NULL, CAST(N'2024-09-06T13:07:26.093' AS DateTime), CAST(N'2024-09-06T13:07:26.093' AS DateTime), 0, 6, 1)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (65, 1, NULL, CAST(N'2024-09-06T13:10:22.123' AS DateTime), CAST(N'2024-09-06T13:10:22.123' AS DateTime), 0, 7, 1)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (66, 1, NULL, CAST(N'2024-09-06T13:19:04.690' AS DateTime), CAST(N'2024-09-06T13:19:04.690' AS DateTime), 0, 8, 4)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (67, 1, NULL, CAST(N'2024-09-06T13:19:29.950' AS DateTime), CAST(N'2024-09-06T13:19:29.950' AS DateTime), 0, 9, 1)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (68, 1, NULL, CAST(N'2024-09-10T09:04:17.003' AS DateTime), CAST(N'2024-09-10T09:04:17.003' AS DateTime), 0, 11, 2)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (69, 1, NULL, CAST(N'2024-09-10T09:12:25.943' AS DateTime), CAST(N'2024-09-10T09:12:25.943' AS DateTime), 0, 12, 3)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (70, 1, NULL, CAST(N'2024-09-10T11:34:49.483' AS DateTime), CAST(N'2024-09-10T11:34:49.483' AS DateTime), 0, 13, 4)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (71, 1, NULL, CAST(N'2024-09-10T14:45:14.937' AS DateTime), CAST(N'2024-09-10T14:45:14.937' AS DateTime), 0, 14, 2)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [gio_hang_id], [chi_tiet_san_pham_id]) VALUES (72, 1, NULL, CAST(N'2024-09-11T09:20:15.300' AS DateTime), CAST(N'2024-09-11T09:20:15.300' AS DateTime), 0, 16, 4)
GO
SET IDENTITY_INSERT [dbo].[gio_hang_chi_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[hinh_anh_san_pham] ON 
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (30, N'vn-11134207-7r98o-ltjzspqh1jbe50.jpg', CAST(N'2024-08-21T10:32:27.993' AS DateTime), CAST(N'2024-08-21T10:32:27.993' AS DateTime), 0, 0, 4)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (31, N'vn-11134207-7r98o-ltjzspqh1jil5c.jpg', CAST(N'2024-08-21T10:32:27.993' AS DateTime), CAST(N'2024-08-21T10:32:27.993' AS DateTime), 0, 0, 4)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (32, N'vn-11134207-7r98o-ltjzspqhgzkae3.jpg', CAST(N'2024-08-21T10:32:27.993' AS DateTime), CAST(N'2024-08-21T10:32:27.993' AS DateTime), 0, 0, 4)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (33, N'vn-11134207-7r98o-ltjzspqhjsp640.jpg', CAST(N'2024-08-21T10:32:27.993' AS DateTime), CAST(N'2024-08-21T10:32:27.993' AS DateTime), 0, 0, 4)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (34, N'vn-11134207-7r98o-ltjzspqhl79mbd.jpg', CAST(N'2024-08-21T10:32:27.993' AS DateTime), CAST(N'2024-08-21T10:32:27.993' AS DateTime), 0, 0, 4)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (35, N'vn-11134207-7r98o-ltjzspqhwft6e7.jpg', CAST(N'2024-08-21T10:32:27.993' AS DateTime), CAST(N'2024-08-21T10:32:27.993' AS DateTime), 0, 0, 4)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (61, N'vn-11134207-7r98o-lokonkcc3wl367.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 3)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (62, N'vn-11134207-7r98o-lokonkcc5b5j10.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 3)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (63, N'vn-11134207-7r98o-lokonkcc6ppz80.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 3)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (64, N'vn-11134207-7r98o-lokonkcc9iuvfd.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 3)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (65, N'vn-11134207-7r98o-lokonkcc84af8c.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 3)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (66, N'sg-11134201-7qvdm-lgivjtmj66gzc4.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 2)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (67, N'sg-11134201-7qve0-lgivju04ma83af.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 2)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (68, N'sg-11134201-7qvem-lgivjt7js43k9c.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 2)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (69, N'sg-11134201-7qvfz-lgivjue01zpifa.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 2)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (70, N'1.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (71, N'vn-11134207-7r98o-lslkgewn5uised.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (72, N'vn-11134207-7r98o-lslkgewn8nno79.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (73, N'vn-11134207-7r98o-lu9ncu5je0i9dc.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (74, N'vn-11134207-7r98o-lu9ncu5je0wv73.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (75, N'2.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 5)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (76, N'vn-11134207-7r98o-lvw0og0ze1gbb1.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 5)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (77, N'vn-11134207-7r98o-lvw0og0zfg0r24.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 5)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (78, N'vn-11134207-7r98o-lvw0og0zgul746.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 5)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (79, N'vn-11134207-7r98o-lvw0og0zi95n43.jpg', CAST(N'2024-08-23T08:57:02.073' AS DateTime), CAST(N'2024-08-23T08:57:02.073' AS DateTime), 0, 0, 5)
GO
INSERT [dbo].[hinh_anh_san_pham] ([id], [url], [ngay_tao], [ngay_sua], [trang_thai], [uu_tien], [san_pham_id]) VALUES (80, N'2.jpg', CAST(N'2024-08-26T13:52:52.487' AS DateTime), CAST(N'2024-08-26T13:52:52.487' AS DateTime), 0, 0, 6)
GO
SET IDENTITY_INSERT [dbo].[hinh_anh_san_pham] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don] ON 
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (1, N'HD1', CAST(N'2024-08-14T09:16:00.140' AS DateTime), 2, 0.0000, 0.0000, 70000.0000, 70000.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-13T10:42:32.010' AS DateTime), CAST(N'2024-08-14T09:16:00.140' AS DateTime), 3, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (2, N'HD2', CAST(N'2024-08-13T11:20:56.467' AS DateTime), 2, 0.0000, 0.0000, 20000.0000, 20000.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-13T10:42:34.433' AS DateTime), CAST(N'2024-08-13T11:20:56.467' AS DateTime), 3, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (3, N'HD3', NULL, 2, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-15T09:13:06.727' AS DateTime), CAST(N'2024-08-13T10:48:48.327' AS DateTime), CAST(N'2024-08-14T10:49:06.843' AS DateTime), 6, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (4, N'HD4', CAST(N'2024-08-14T09:28:50.453' AS DateTime), 2, 0.0000, 0.0000, 200000.0000, 200000.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-13T10:48:49.583' AS DateTime), CAST(N'2024-08-14T09:28:50.453' AS DateTime), 3, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (5, N'HD5', CAST(N'2024-08-14T10:04:57.890' AS DateTime), 2, 0.0000, 0.0000, 50000.0000, 50000.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-13T10:48:50.063' AS DateTime), CAST(N'2024-08-14T10:04:57.890' AS DateTime), 3, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (6, N'HD6', CAST(N'2024-08-14T10:07:42.007' AS DateTime), 2, 0.0000, 0.0000, 100000.0000, 100000.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-14T09:08:23.973' AS DateTime), CAST(N'2024-08-14T10:07:42.007' AS DateTime), 3, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (7, N'HD7', NULL, 2, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-14T09:58:40.057' AS DateTime), CAST(N'2024-08-14T09:58:40.057' AS DateTime), 5, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (8, N'HD8', CAST(N'2024-08-14T10:14:20.020' AS DateTime), 2, 0.0000, 10000.0000, 100000.0000, 90000.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-14T09:58:40.580' AS DateTime), CAST(N'2024-08-14T10:14:20.020' AS DateTime), 3, 1, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (9, N'HD9', NULL, 2, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-15T09:41:20.010' AS DateTime), CAST(N'2024-08-14T10:14:32.643' AS DateTime), CAST(N'2024-08-14T10:14:32.643' AS DateTime), 6, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (10, N'HD10', NULL, 2, 0.0000, 0.0000, 0.0000, 0.0000, NULL, N'haha', N'0300000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-14T10:14:33.207' AS DateTime), CAST(N'2024-08-20T13:06:00.833' AS DateTime), 5, NULL, 6, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (11, N'HD11', CAST(N'2024-08-26T11:30:19.650' AS DateTime), 2, 0.0000, 0.0000, 50000.0000, 50000.0000, NULL, N'haha', N'0300000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-14T10:14:33.720' AS DateTime), CAST(N'2024-08-26T11:30:19.650' AS DateTime), 3, NULL, 6, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (12, N'HD12', CAST(N'2024-08-15T10:38:12.333' AS DateTime), 2, 0.0000, 0.0000, 80000.0000, 80000.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-15T09:52:28.837' AS DateTime), CAST(N'2024-08-15T10:38:12.333' AS DateTime), 3, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (13, N'HD13', CAST(N'2024-08-15T11:19:56.863' AS DateTime), 2, 0.0000, 730000.0000, 730000.0000, 0.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-15T09:52:29.200' AS DateTime), CAST(N'2024-08-15T11:19:56.863' AS DateTime), 3, 5, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (14, N'HD14', CAST(N'2024-08-16T16:22:29.930' AS DateTime), 2, 0.0000, 5000.0000, 50000.0000, 45000.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-15T09:52:29.567' AS DateTime), CAST(N'2024-08-16T16:22:29.930' AS DateTime), 3, 4, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (15, N'HD15', NULL, 2, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-20T13:49:11.603' AS DateTime), CAST(N'2024-08-20T13:49:11.603' AS DateTime), -1, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (16, N'HD16', CAST(N'2024-08-23T10:23:24.463' AS DateTime), 2, 0.0000, 0.0000, 70000.0000, 70000.0000, NULL, N'Đỗ Viết Lưu Huỳnh', N'0396587487', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-20T13:49:12.133' AS DateTime), CAST(N'2024-08-23T10:23:24.463' AS DateTime), 3, NULL, 8, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (17, N'HD17', CAST(N'2024-08-26T11:31:29.570' AS DateTime), 2, 0.0000, 0.0000, 110000.0000, 110000.0000, NULL, N'Đỗ Viết Lưu Huỳnh', N'0396587487', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-20T13:49:12.493' AS DateTime), CAST(N'2024-08-26T11:31:29.570' AS DateTime), 3, NULL, 8, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (18, N'HD18', CAST(N'2024-08-20T15:14:08.127' AS DateTime), 2, 0.0000, 16000.0000, 160000.0000, 144000.0000, NULL, N'Đỗ Viết Lưu Huỳnh', N'0396587487', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-20T13:49:12.783' AS DateTime), CAST(N'2024-08-20T15:14:08.127' AS DateTime), 3, 1, 8, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (19, N'HD19', NULL, 2, 29000.0000, 0.0000, 10000.0000, 10000.0000, N'Cứ vứt vào nhà cho em ', N'Bạch Công Dũng', N'0369852147', N'201', N'1803', N'1B1715', N'Hihi', NULL, NULL, NULL, CAST(N'2024-08-23T08:57:19.183' AS DateTime), CAST(N'2024-08-23T10:34:55.953' AS DateTime), 3, NULL, 5, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (20, N'HD20', CAST(N'2024-08-26T16:01:57.593' AS DateTime), 2, 0.0000, 60000.0000, 120000.0000, 60000.0000, NULL, N'Đỗ Viết Lưu Huỳnh', N'0396587487', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-26T11:31:14.927' AS DateTime), CAST(N'2024-08-26T16:01:57.593' AS DateTime), 3, 2, 8, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (21, N'HD21', CAST(N'2024-09-06T11:30:57.683' AS DateTime), 2, 0.0000, 0.0000, 600000.0000, 600000.0000, NULL, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-27T11:00:30.927' AS DateTime), CAST(N'2024-09-06T11:30:57.683' AS DateTime), 3, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (22, N'HD22', NULL, 2, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-08-27T11:00:31.293' AS DateTime), CAST(N'2024-08-27T11:00:31.293' AS DateTime), -1, NULL, 1, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (23, N'HD23', NULL, 2, 0.0000, 0.0000, 0.0000, 0.0000, NULL, N'demo', N'0300000000', N'233', N'3327', N'270601', N'Okok', NULL, NULL, NULL, CAST(N'2024-08-27T11:00:31.640' AS DateTime), CAST(N'2024-08-27T11:25:00.877' AS DateTime), -1, NULL, 9, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (24, N'HD24', NULL, 2, 29000.0000, 0.0000, 240000.0000, 240000.0000, N'Haha', N'demo', N'0300000000', N'233', N'3327', N'270601', N'Okok', NULL, NULL, NULL, CAST(N'2024-08-27T11:00:31.960' AS DateTime), CAST(N'2024-08-27T11:25:12.440' AS DateTime), 3, NULL, 9, NULL)
GO
INSERT [dbo].[hoa_don] ([id], [ma_hoa_don], [ngay_thanh_toan], [loai_hoa_don], [phi_ship], [tien_giam], [tong_tien], [tong_tien_khi_giam], [ghi_chu], [nguoi_nhan], [sdt_nguoi_nhan], [thanh_pho], [quan_huyen], [phuong_xa], [dia_chi_nguoi_nhan], [email_nguoi_nhan], [ngay_nhan], [ngay_mong_muon], [ngay_tao], [ngay_sua], [trang_thai], [voucher_id], [tai_khoan_id], [phuong_thuc_thanh_toan_id]) VALUES (25, N'HD25', NULL, 2, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-09-13T09:00:49.710' AS DateTime), CAST(N'2024-09-13T09:00:49.710' AS DateTime), -1, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] ON 
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (1, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 2, 1)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (2, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 2, 2)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (3, 5, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 1, 1)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (4, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 1, 2)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (5, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 1, 3)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (6, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 3, 1)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (7, 2, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 4, 20)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (9, 5, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 5, 3)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (10, 1, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 6, 20)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (11, 1, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 8, 20)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (12, 8, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 12, 2)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (13, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 4)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (14, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 6)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (15, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 7)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (16, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 8)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (17, 2, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 10)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (18, 1, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 14)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (19, 1, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 13)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (20, 1, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 15)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (21, 1, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 16)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (22, 1, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 20)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (23, 1, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 19)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (24, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 13, 11)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (25, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 14, 4)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (26, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 14, 6)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (27, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 14, 8)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (28, 2, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 18, 4)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (29, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 18, 6)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (30, 5, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 18, 8)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (31, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 18, 12)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (32, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 16, 6)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (33, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 16, 4)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (34, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 16, 7)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (35, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 16, 9)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (36, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 19, 4)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (37, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 11, 4)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (38, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 11, 7)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (39, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 11, 6)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (40, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 17, 4)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (41, 1, 100000.0000, NULL, NULL, NULL, NULL, NULL, 0, 17, 13)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (42, 1, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 20, 6)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (43, 5, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 20, 11)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (44, 5, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 24, 7)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (45, 4, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 24, 10)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (46, 3, 20000.0000, NULL, NULL, NULL, NULL, NULL, 0, 24, 9)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (47, 1, 10000.0000, NULL, NULL, NULL, NULL, NULL, 0, 23, 3)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [so_luong], [don_gia], [ghi_chu], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [hoa_don_id], [chi_tiet_san_pham_id]) VALUES (48, 2, 300000.0000, NULL, NULL, NULL, NULL, NULL, 0, 21, 36)
GO
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[kich_co] ON 
GO
INSERT [dbo].[kich_co] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'M', CAST(N'2024-08-13T09:21:59.413' AS DateTime), CAST(N'2024-08-13T09:21:59.413' AS DateTime), 0)
GO
INSERT [dbo].[kich_co] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'L', CAST(N'2024-08-13T09:22:03.023' AS DateTime), CAST(N'2024-08-13T09:22:03.023' AS DateTime), 0)
GO
INSERT [dbo].[kich_co] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (3, N'XL', CAST(N'2024-08-13T09:22:06.450' AS DateTime), CAST(N'2024-08-13T09:22:06.450' AS DateTime), 0)
GO
INSERT [dbo].[kich_co] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (4, N'2XL', CAST(N'2024-08-13T09:22:20.577' AS DateTime), CAST(N'2024-08-13T09:22:20.577' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[kich_co] OFF
GO
SET IDENTITY_INSERT [dbo].[lich_su_hoa_don] ON 
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (1, NULL, CAST(N'2024-08-13T10:42:32.067' AS DateTime), N'', 0, NULL, 1)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (2, NULL, CAST(N'2024-08-13T10:42:34.447' AS DateTime), N'', 0, NULL, 2)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (3, NULL, CAST(N'2024-08-13T10:48:48.347' AS DateTime), N'', 0, NULL, 3)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (4, NULL, CAST(N'2024-08-13T10:48:49.590' AS DateTime), N'', 0, NULL, 4)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (5, NULL, CAST(N'2024-08-13T10:48:50.070' AS DateTime), N'', 0, NULL, 5)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (6, NULL, CAST(N'2024-08-13T11:20:56.410' AS DateTime), N'', 3, NULL, 2)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (7, NULL, CAST(N'2024-08-14T09:08:24.027' AS DateTime), N'', 0, NULL, 6)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (8, NULL, CAST(N'2024-08-14T09:16:00.133' AS DateTime), N'', 3, NULL, 1)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (9, NULL, CAST(N'2024-08-14T09:28:50.443' AS DateTime), N'', 3, NULL, 4)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (10, NULL, CAST(N'2024-08-14T09:58:40.073' AS DateTime), N'', 0, NULL, 7)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (11, NULL, CAST(N'2024-08-14T09:58:40.583' AS DateTime), N'', 0, NULL, 8)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (12, NULL, CAST(N'2024-08-14T10:04:57.877' AS DateTime), N'', 3, NULL, 5)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (13, NULL, CAST(N'2024-08-14T10:07:41.990' AS DateTime), N'', 3, NULL, 6)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (14, NULL, CAST(N'2024-08-14T10:14:20.013' AS DateTime), N'hehehe
', 3, NULL, 8)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (15, NULL, CAST(N'2024-08-14T10:14:32.657' AS DateTime), N'', 0, NULL, 9)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (16, NULL, CAST(N'2024-08-14T10:14:33.213' AS DateTime), N'', 0, NULL, 10)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (17, NULL, CAST(N'2024-08-14T10:14:33.727' AS DateTime), N'', 0, NULL, 11)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (18, NULL, CAST(N'2024-08-15T09:13:06.643' AS DateTime), N'thích', 6, NULL, 3)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (19, NULL, CAST(N'2024-08-15T09:41:19.987' AS DateTime), N'thìhs', 6, NULL, 9)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (20, NULL, CAST(N'2024-08-15T09:52:19.257' AS DateTime), N'thivhs
', 5, NULL, 7)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (21, NULL, CAST(N'2024-08-15T09:52:28.850' AS DateTime), N'', 0, NULL, 12)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (22, NULL, CAST(N'2024-08-15T09:52:29.207' AS DateTime), N'', 0, NULL, 13)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (23, NULL, CAST(N'2024-08-15T09:52:29.573' AS DateTime), N'', 0, NULL, 14)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (24, NULL, CAST(N'2024-08-15T10:38:12.320' AS DateTime), N'', 3, NULL, 12)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (25, NULL, CAST(N'2024-08-15T11:19:56.857' AS DateTime), N'', 3, NULL, 13)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (26, NULL, CAST(N'2024-08-16T16:22:29.920' AS DateTime), N'hsdjashda
', 3, NULL, 14)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (27, NULL, CAST(N'2024-08-20T13:14:08.810' AS DateTime), N'thich', 5, NULL, 10)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (28, NULL, CAST(N'2024-08-20T13:49:11.650' AS DateTime), N'', 0, NULL, 15)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (29, NULL, CAST(N'2024-08-20T13:49:12.143' AS DateTime), N'', 0, NULL, 16)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (30, NULL, CAST(N'2024-08-20T13:49:12.503' AS DateTime), N'', 0, NULL, 17)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (31, NULL, CAST(N'2024-08-20T13:49:12.790' AS DateTime), N'', 0, NULL, 18)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (32, NULL, CAST(N'2024-08-20T15:14:08.120' AS DateTime), N'', 3, NULL, 18)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (33, NULL, CAST(N'2024-08-23T08:57:19.253' AS DateTime), N'', 0, NULL, 19)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (34, NULL, CAST(N'2024-08-23T10:23:24.453' AS DateTime), N'', 3, NULL, 16)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (35, NULL, CAST(N'2024-08-23T10:34:33.643' AS DateTime), N'', 1, NULL, 19)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (36, NULL, CAST(N'2024-08-23T10:34:49.097' AS DateTime), N'', 2, NULL, 19)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (37, NULL, CAST(N'2024-08-23T10:34:55.953' AS DateTime), N'', 3, NULL, 19)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (38, NULL, CAST(N'2024-08-26T11:30:19.643' AS DateTime), N'', 3, NULL, 11)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (39, NULL, CAST(N'2024-08-26T11:31:14.943' AS DateTime), N'', 0, NULL, 20)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (40, NULL, CAST(N'2024-08-26T11:31:29.567' AS DateTime), N'', 3, NULL, 17)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (41, NULL, CAST(N'2024-08-26T16:01:57.587' AS DateTime), N'hahahaa
', 3, NULL, 20)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (42, NULL, CAST(N'2024-08-27T11:00:30.940' AS DateTime), N'', 0, NULL, 21)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (43, NULL, CAST(N'2024-08-27T11:00:31.300' AS DateTime), N'', 0, NULL, 22)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (44, NULL, CAST(N'2024-08-27T11:00:31.647' AS DateTime), N'', 0, NULL, 23)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (45, NULL, CAST(N'2024-08-27T11:00:31.970' AS DateTime), N'', 0, NULL, 24)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (46, NULL, CAST(N'2024-08-27T11:24:24.003' AS DateTime), N'Ok nhá
', 1, NULL, 24)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (47, NULL, CAST(N'2024-08-27T11:24:36.613' AS DateTime), N'', 2, NULL, 24)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (48, NULL, CAST(N'2024-08-27T11:25:12.440' AS DateTime), N'', 3, NULL, 24)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (49, NULL, CAST(N'2024-09-06T11:30:57.677' AS DateTime), N'', 3, NULL, 21)
GO
INSERT [dbo].[lich_su_hoa_don] ([id], [ngay_tao], [ngay_sua], [ghi_chu], [trang_thai], [nguoi_sua], [hoa_don_id]) VALUES (50, NULL, CAST(N'2024-09-13T09:00:49.773' AS DateTime), N'', 0, NULL, 25)
GO
SET IDENTITY_INSERT [dbo].[lich_su_hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[mau_sac] ON 
GO
INSERT [dbo].[mau_sac] ([id], [ma_mau], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'MS1', N'Trắng', CAST(N'2024-08-12T11:37:42.113' AS DateTime), CAST(N'2024-08-12T11:37:42.113' AS DateTime), 0)
GO
INSERT [dbo].[mau_sac] ([id], [ma_mau], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'MS2', N'Đen', CAST(N'2024-08-12T11:37:46.190' AS DateTime), CAST(N'2024-08-12T11:37:46.190' AS DateTime), 0)
GO
INSERT [dbo].[mau_sac] ([id], [ma_mau], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (3, N'MS3', N'Đỏ', CAST(N'2024-08-12T11:37:49.467' AS DateTime), CAST(N'2024-08-12T11:37:49.467' AS DateTime), 0)
GO
INSERT [dbo].[mau_sac] ([id], [ma_mau], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (4, N'MS4', N'Be', CAST(N'2024-08-23T09:00:46.697' AS DateTime), CAST(N'2024-08-23T09:00:46.697' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[mau_sac] OFF
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON 
GO
INSERT [dbo].[san_pham] ([id], [ma], [ten], [mo_ta], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [thuong_hieu_id]) VALUES (1, N'SP1', N'Áo thun ', N'Rất xấu', CAST(N'2024-08-12T11:34:13.643' AS DateTime), CAST(N'2024-08-23T09:09:50.390' AS DateTime), NULL, NULL, 0, 3)
GO
INSERT [dbo].[san_pham] ([id], [ma], [ten], [mo_ta], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [thuong_hieu_id]) VALUES (2, N'SP2', N'Siêu nhân', N'qưe', CAST(N'2024-08-12T11:34:30.827' AS DateTime), CAST(N'2024-08-23T09:08:21.977' AS DateTime), NULL, NULL, 0, 2)
GO
INSERT [dbo].[san_pham] ([id], [ma], [ten], [mo_ta], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [thuong_hieu_id]) VALUES (3, N'SP3', N'Áo fpt', N'áo tắc kè', CAST(N'2024-08-14T09:26:50.857' AS DateTime), CAST(N'2024-08-23T09:06:45.757' AS DateTime), NULL, NULL, 0, 1)
GO
INSERT [dbo].[san_pham] ([id], [ma], [ten], [mo_ta], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [thuong_hieu_id]) VALUES (4, N'SP4', N'Áo 8yo', N'Hai màu be và đen', CAST(N'2024-08-21T09:27:42.747' AS DateTime), CAST(N'2024-08-21T10:34:45.290' AS DateTime), NULL, NULL, 0, 1)
GO
INSERT [dbo].[san_pham] ([id], [ma], [ten], [mo_ta], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [thuong_hieu_id]) VALUES (5, N'SP5', N'123', N'ưqd', CAST(N'2024-08-21T09:28:01.303' AS DateTime), CAST(N'2024-08-23T09:10:28.663' AS DateTime), NULL, NULL, 0, 3)
GO
INSERT [dbo].[san_pham] ([id], [ma], [ten], [mo_ta], [ngay_tao], [ngay_sua], [nguoi_tao], [nguoi_sua], [trang_thai], [thuong_hieu_id]) VALUES (6, N'SP6', N'Phong ọc ọc', N'hahah', CAST(N'2024-08-26T14:24:08.620' AS DateTime), CAST(N'2024-08-26T14:24:08.620' AS DateTime), NULL, NULL, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[san_pham] OFF
GO
SET IDENTITY_INSERT [dbo].[tai_khoan] ON 
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (1, N'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL)
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (3, N'Đỗ Viết Lưu Huỳnh', CAST(N'2004-06-19' AS Date), 0, N'0321456987', N'huynh@gmail.com', N'huynh', N'$2a$10$vnFJsOnHKTAZ2CAwLQple.fQmO19Lu7Mtqx0p29VPkv3HQawd4Vb2', CAST(N'2024-08-19T10:09:37.850' AS DateTime), CAST(N'2024-08-19T10:09:37.850' AS DateTime), 0, 1)
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (4, N'phong', CAST(N'2004-06-22' AS Date), 0, N'0393753870', N'phongnhph32242@fpt.edu.vn', N'phong', N'$2a$10$LiDegNCqm.IpyvwSUVRUBuO4Psx0FDDPEnC.Iya.A6Ff4zP.cizoK', CAST(N'2024-08-19T00:00:00.000' AS DateTime), CAST(N'2024-08-19T10:43:24.297' AS DateTime), 0, 1)
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (5, N'Bạch Công Dũng', CAST(N'2004-08-06' AS Date), 0, N'0369852147', N'dung@gamil.com', N'dung', N'$2a$10$E/R9.GhyGEURPU.kFIubBO4GzjTZueAVlqVFo37tXTwzNgeI2LR5m', CAST(N'2024-08-19T10:48:55.537' AS DateTime), CAST(N'2024-08-19T10:48:55.537' AS DateTime), 0, 2)
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (6, N'haha', CAST(N'1900-01-01' AS Date), 0, N'0300000000', N'nht63905@zccck.com', N'haha', N'$2a$10$UZnQDfRoPVXYvFB7ZKKMPOKKBspuR2o2z4VA2BWBkt/1eDmOLpVuO', CAST(N'2024-08-19T00:00:00.000' AS DateTime), CAST(N'2024-08-20T13:50:39.650' AS DateTime), 0, 2)
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (7, N'test', CAST(N'2024-09-05' AS Date), 0, N'0369852147', N'ily31506@zccck.com', N'test', N'$2a$10$bj18OhaIVHQzAqFRvSHSBuHgKNFlECOwyB1hn3ugdrIlODCe5qI7a', CAST(N'2024-08-20T00:00:00.000' AS DateTime), CAST(N'2024-09-06T11:16:29.167' AS DateTime), 0, 2)
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (8, N'Đỗ Viết Lưu Huỳnh', CAST(N'2004-05-22' AS Date), 0, N'0396587487', N'huynh123@gmail.com', N'huynh1', NULL, CAST(N'2024-08-20T15:13:54.447' AS DateTime), CAST(N'2024-08-20T15:13:54.447' AS DateTime), 0, 2)
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (9, N'demo', CAST(N'1900-01-01' AS Date), -1, N'0300000000', N'noj38712@zccck.com', N'demo', N'$2a$10$BBRVjKYVoBe2te03ePsezeMwMAyPTGNJUb13LD1f2dDh9J2X4ugn.', CAST(N'2024-08-27T09:10:55.033' AS DateTime), CAST(N'2024-08-27T09:10:55.033' AS DateTime), 0, 2)
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (10, N'demo2', CAST(N'2010-06-20' AS Date), 0, N'0321456789', N'izw41720@nowni.com', N'demo2', N'$2a$10$NGbRwyT.R4V96fKzgyy.FewpIZawG9uNoZMnKaBoEA3A/kMvLEyee', CAST(N'2024-09-06T00:00:00.000' AS DateTime), CAST(N'2024-09-06T15:04:16.020' AS DateTime), 0, 2)
GO
INSERT [dbo].[tai_khoan] ([id], [ho_va_ten], [ngay_sinh], [gioi_tinh], [so_dien_thoai], [email], [ten_tai_khoan], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai], [vai_tro_id]) VALUES (11, N'duong', CAST(N'2004-02-29' AS Date), 0, N'0300000000', N'duongnq2902@gmail.com', N'duong', N'$2a$10$Na5YCCcMUftGRt5kAAETAeXBrDJgAp0KvHSP16T8icTNjYXVo/IiC', CAST(N'2024-09-10T00:00:00.000' AS DateTime), CAST(N'2024-09-10T14:52:38.780' AS DateTime), 0, 1)
GO
SET IDENTITY_INSERT [dbo].[tai_khoan] OFF
GO
SET IDENTITY_INSERT [dbo].[tay_ao] ON 
GO
INSERT [dbo].[tay_ao] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'Tay lỡ', CAST(N'2024-08-12T11:37:31.110' AS DateTime), CAST(N'2024-08-12T11:37:31.110' AS DateTime), 0)
GO
INSERT [dbo].[tay_ao] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'Tay dài', CAST(N'2024-08-12T11:37:36.127' AS DateTime), CAST(N'2024-08-12T11:37:36.127' AS DateTime), 0)
GO
INSERT [dbo].[tay_ao] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (3, N'Không tay luôn', CAST(N'2024-08-14T10:24:49.407' AS DateTime), CAST(N'2024-08-14T10:24:49.407' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[tay_ao] OFF
GO
SET IDENTITY_INSERT [dbo].[thuong_hieu] ON 
GO
INSERT [dbo].[thuong_hieu] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'LV', CAST(N'2024-08-12T11:32:56.693' AS DateTime), CAST(N'2024-08-12T11:32:56.693' AS DateTime), 0)
GO
INSERT [dbo].[thuong_hieu] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'Gucci', CAST(N'2024-08-12T11:33:15.707' AS DateTime), CAST(N'2024-08-12T11:33:15.707' AS DateTime), 0)
GO
INSERT [dbo].[thuong_hieu] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (3, N'Dior', CAST(N'2024-08-12T11:33:28.030' AS DateTime), CAST(N'2024-08-12T11:33:28.030' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[thuong_hieu] OFF
GO
SET IDENTITY_INSERT [dbo].[vai_tro] ON 
GO
INSERT [dbo].[vai_tro] ([id], [ten]) VALUES (1, N'ROLE_ADMIN')
GO
INSERT [dbo].[vai_tro] ([id], [ten]) VALUES (2, N'ROLE_USER')
GO
SET IDENTITY_INSERT [dbo].[vai_tro] OFF
GO
SET IDENTITY_INSERT [dbo].[voucher] ON 
GO
INSERT [dbo].[voucher] ([id], [ma_voucher], [ten_voucher], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [so_luong], [phan_tram_giam], [giam_toi_da], [gia_tri_don_toi_thieu], [trang_thai]) VALUES (1, N'VC1', N'Chào hè', CAST(N'2024-08-13T09:40:00.000' AS DateTime), CAST(N'2024-08-21T09:40:00.000' AS DateTime), CAST(N'2024-08-13T00:00:00.000' AS DateTime), CAST(N'2024-08-20T15:11:02.197' AS DateTime), 8, 10, 20000.0000, 100000.0000, 1)
GO
INSERT [dbo].[voucher] ([id], [ma_voucher], [ten_voucher], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [so_luong], [phan_tram_giam], [giam_toi_da], [gia_tri_don_toi_thieu], [trang_thai]) VALUES (2, N'VC2', N'123', CAST(N'2024-08-16T11:00:00.000' AS DateTime), CAST(N'2024-09-08T10:00:00.000' AS DateTime), CAST(N'2024-08-13T00:00:00.000' AS DateTime), CAST(N'2024-09-06T14:40:59.020' AS DateTime), 4, 50, 100000.0000, 50000.0000, 1)
GO
INSERT [dbo].[voucher] ([id], [ma_voucher], [ten_voucher], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [so_luong], [phan_tram_giam], [giam_toi_da], [gia_tri_don_toi_thieu], [trang_thai]) VALUES (3, N'Hahaha', N'Elcom', CAST(N'2024-08-13T11:38:00.000' AS DateTime), CAST(N'2024-08-30T11:39:00.000' AS DateTime), CAST(N'2024-08-13T00:00:00.000' AS DateTime), CAST(N'2024-08-26T14:15:18.747' AS DateTime), 5, 20, 10000.0000, 500000.0000, 1)
GO
INSERT [dbo].[voucher] ([id], [ma_voucher], [ten_voucher], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [so_luong], [phan_tram_giam], [giam_toi_da], [gia_tri_don_toi_thieu], [trang_thai]) VALUES (4, N'VC3', N'Test', CAST(N'2024-08-15T10:25:00.000' AS DateTime), CAST(N'2024-08-24T10:25:00.000' AS DateTime), CAST(N'2024-08-15T00:00:00.000' AS DateTime), CAST(N'2024-08-23T10:32:34.820' AS DateTime), 9, 10, 50000.0000, 10000.0000, 1)
GO
INSERT [dbo].[voucher] ([id], [ma_voucher], [ten_voucher], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [so_luong], [phan_tram_giam], [giam_toi_da], [gia_tri_don_toi_thieu], [trang_thai]) VALUES (5, N'Elcom', N'testbug', CAST(N'2024-08-15T11:10:00.000' AS DateTime), CAST(N'2024-08-15T11:15:00.000' AS DateTime), CAST(N'2024-08-15T11:06:18.517' AS DateTime), CAST(N'2024-08-15T11:06:18.517' AS DateTime), 4, 100, 1000000.0000, 10000.0000, 1)
GO
SET IDENTITY_INSERT [dbo].[voucher] OFF
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] ADD  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[dia_chi] ADD  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[hinh_anh_san_pham] ADD  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[hinh_anh_san_pham] ADD  DEFAULT ((0)) FOR [uu_tien]
GO
ALTER TABLE [dbo].[kich_co] ADD  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[mau_sac] ADD  DEFAULT (NULL) FOR [ten]
GO
ALTER TABLE [dbo].[mau_sac] ADD  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[san_pham] ADD  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[tai_khoan] ADD  DEFAULT (NULL) FOR [ho_va_ten]
GO
ALTER TABLE [dbo].[tai_khoan] ADD  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[tay_ao] ADD  DEFAULT (NULL) FOR [ten]
GO
ALTER TABLE [dbo].[tay_ao] ADD  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[thuong_hieu] ADD  DEFAULT (NULL) FOR [ten]
GO
ALTER TABLE [dbo].[thuong_hieu] ADD  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[vai_tro] ADD  DEFAULT (NULL) FOR [ten]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD FOREIGN KEY([kich_co_id])
REFERENCES [dbo].[kich_co] ([id])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD FOREIGN KEY([mau_sac_id])
REFERENCES [dbo].[mau_sac] ([id])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD FOREIGN KEY([san_pham_id])
REFERENCES [dbo].[san_pham] ([id])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD FOREIGN KEY([tay_ao_id])
REFERENCES [dbo].[tay_ao] ([id])
GO
ALTER TABLE [dbo].[dia_chi]  WITH CHECK ADD FOREIGN KEY([tai_khoan_id])
REFERENCES [dbo].[tai_khoan] ([id])
GO
ALTER TABLE [dbo].[gio_hang]  WITH CHECK ADD FOREIGN KEY([nguoi_so_huu])
REFERENCES [dbo].[tai_khoan] ([id])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD FOREIGN KEY([chi_tiet_san_pham_id])
REFERENCES [dbo].[chi_tiet_san_pham] ([id])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD FOREIGN KEY([gio_hang_id])
REFERENCES [dbo].[gio_hang] ([id])
GO
ALTER TABLE [dbo].[hinh_anh_san_pham]  WITH CHECK ADD FOREIGN KEY([san_pham_id])
REFERENCES [dbo].[san_pham] ([id])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([phuong_thuc_thanh_toan_id])
REFERENCES [dbo].[phuong_thuc_thanh_toan] ([id])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([tai_khoan_id])
REFERENCES [dbo].[tai_khoan] ([id])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([voucher_id])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD FOREIGN KEY([chi_tiet_san_pham_id])
REFERENCES [dbo].[chi_tiet_san_pham] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD FOREIGN KEY([hoa_don_id])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[lich_su_hoa_don]  WITH CHECK ADD FOREIGN KEY([hoa_don_id])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD FOREIGN KEY([thuong_hieu_id])
REFERENCES [dbo].[thuong_hieu] ([id])
GO
ALTER TABLE [dbo].[tai_khoan]  WITH CHECK ADD FOREIGN KEY([vai_tro_id])
REFERENCES [dbo].[vai_tro] ([id])
GO
USE [master]
GO
ALTER DATABASE [DATN_BeeStore] SET  READ_WRITE 
GO
