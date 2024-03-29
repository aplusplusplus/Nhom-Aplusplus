USE [master]
GO
/****** Object:  Database [QTDA]    Script Date: 11/23/2019 22:14:53 ******/
CREATE DATABASE [QTDA] ON  PRIMARY 
( NAME = N'QTDA', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.NGUYENQUOCVIET\MSSQL\DATA\QTDA.mdf' , SIZE = 20480KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QTDA_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.NGUYENQUOCVIET\MSSQL\DATA\QTDA_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QTDA] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QTDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QTDA] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QTDA] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QTDA] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QTDA] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QTDA] SET ARITHABORT OFF
GO
ALTER DATABASE [QTDA] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QTDA] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QTDA] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QTDA] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QTDA] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QTDA] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QTDA] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QTDA] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QTDA] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QTDA] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QTDA] SET  DISABLE_BROKER
GO
ALTER DATABASE [QTDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QTDA] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QTDA] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QTDA] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QTDA] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QTDA] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QTDA] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QTDA] SET  READ_WRITE
GO
ALTER DATABASE [QTDA] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QTDA] SET  MULTI_USER
GO
ALTER DATABASE [QTDA] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QTDA] SET DB_CHAINING OFF
GO
USE [QTDA]
GO
/****** Object:  Table [dbo].[ViDienTu]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViDienTu](
	[IDViDienTu] [int] NOT NULL,
	[TenVi] [nchar](15) NULL,
	[SoDu] [nchar](15) NULL,
 CONSTRAINT [PK_ViDienTu] PRIMARY KEY CLUSTERED 
(
	[IDViDienTu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TienMat]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienMat](
	[IDTienMat] [int] NOT NULL,
	[SoTien] [nchar](15) NULL,
 CONSTRAINT [PK_TienMat] PRIMARY KEY CLUSTERED 
(
	[IDTienMat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThucPham]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucPham](
	[IDThucPham] [int] NOT NULL,
	[ThucAn] [nchar](10) NULL,
	[NuocUong] [nchar](10) NULL,
	[TongTien] [nchar](15) NULL,
 CONSTRAINT [PK_ThucPham] PRIMARY KEY CLUSTERED 
(
	[IDThucPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [int] NOT NULL,
	[MatKhau] [nchar](30) NULL,
	[TenNhanVien] [nchar](30) NULL,
	[Email] [nchar](30) NULL,
	[SDT] [nchar](10) NULL,
	[CMND] [nchar](10) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaKhuyenMai]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaKhuyenMai](
	[IDMaKhuyenMai] [int] NOT NULL,
	[TenMaKhuyenMai] [nchar](30) NULL,
	[TenChuongTrinhKhuyenMai] [nchar](30) NULL,
	[HanSuDung] [date] NULL,
	[TrangThaiKhaDung] [bit] NULL,
 CONSTRAINT [PK_MaKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[IDMaKhuyenMai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[IDGhe] [int] NOT NULL,
	[TinhTrangGhe] [nchar](10) NULL,
	[SoGhe] [nchar](5) NULL,
	[Hang] [nchar](5) NULL,
	[LoaiGhe] [nchar](15) NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[IDGhe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemThanhVien]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemThanhVien](
	[IDDiemThanhVien] [int] NOT NULL,
	[SoDiem] [nchar](15) NULL,
	[ToDiemDaDung] [nchar](20) NULL,
 CONSTRAINT [PK_DiemThanhVien] PRIMARY KEY CLUSTERED 
(
	[IDDiemThanhVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[IDCreditCard] [int] NOT NULL,
	[SoDuKhaDung] [nchar](20) NULL,
	[TenKhachHang] [nchar](20) NULL,
	[MaGiaoDich] [nchar](15) NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[IDCreditCard] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[IDRating] [int] NOT NULL,
	[MucRating] [int] NULL,
	[XepHang] [int] NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[IDRating] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongThucThanhToan]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongThucThanhToan](
	[IDPhuongThucThanhToan] [int] NOT NULL,
	[SoTienThanhToan] [nchar](15) NULL,
	[IDCreditCard] [int] NULL,
	[IDMaKhuyenMai] [int] NULL,
	[IDViDienTu] [int] NULL,
	[IDDiemThanhVien] [int] NULL,
	[IDTienMat] [int] NULL,
 CONSTRAINT [PK_PhuongThucThanhToan] PRIMARY KEY CLUSTERED 
(
	[IDPhuongThucThanhToan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[IDPhong] [int] NOT NULL,
	[IDGhe] [int] NULL,
	[TenPhong] [nchar](5) NULL,
	[SoLuongGhe] [nchar](5) NULL,
	[Loai] [nchar](10) NULL,
	[TinhTrangPhong] [nchar](10) NULL,
 CONSTRAINT [PK_PhongChieu] PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[IDPhim] [int] NOT NULL,
	[TenPhim] [nchar](30) NULL,
	[NgayChieu] [date] NULL,
	[ThoiLuong] [time](7) NULL,
	[PhanLoaiPhim] [nchar](20) NULL,
	[NgonNguPhim] [nchar](20) NULL,
	[PhuDe] [nchar](10) NULL,
	[TheLoai] [nchar](20) NULL,
	[IDRating] [int] NULL,
	[DoTuoi] [nchar](15) NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[IDPhim] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheThanhVien]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThanhVien](
	[IDTheThanhVien] [int] NOT NULL,
	[MaKhachHang] [int] NULL,
	[TenKhachHang] [nchar](30) NULL,
	[CMND] [nchar](10) NULL,
	[SDT] [nchar](10) NULL,
	[NgaySinh] [date] NULL,
	[HangTHe] [nchar](20) NULL,
	[IDDiemThanhVien] [int] NULL,
	[SoDiem] [nchar](15) NULL,
 CONSTRAINT [PK_TheThanhVien] PRIMARY KEY CLUSTERED 
(
	[IDTheThanhVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuatChieu]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuatChieu](
	[IDShow] [int] NOT NULL,
	[IDPhim] [int] NOT NULL,
	[IDPhong] [int] NOT NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[NgonNguPhim] [nchar](20) NULL,
	[DinhDangPhim] [nchar](15) NULL,
 CONSTRAINT [PK_SuatChieu] PRIMARY KEY CLUSTERED 
(
	[IDShow] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 11/23/2019 22:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[IDVe] [int] NOT NULL,
	[IDTheThanhVien] [int] NULL,
	[IDShow] [int] NOT NULL,
	[TenPhim] [nchar](30) NULL,
	[ThoiGian] [time](7) NULL,
	[SuatChieu] [datetime] NULL,
	[LoaiVe] [nchar](10) NULL,
	[GiaVe] [nchar](15) NULL,
	[IDThucPham] [int] NULL,
	[IDPhuongThucThanhToan] [int] NULL,
	[IDNhanVien] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[IDVe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_PhuongThucThanhToan_CreditCard]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[PhuongThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_PhuongThucThanhToan_CreditCard] FOREIGN KEY([IDCreditCard])
REFERENCES [dbo].[CreditCard] ([IDCreditCard])
GO
ALTER TABLE [dbo].[PhuongThucThanhToan] CHECK CONSTRAINT [FK_PhuongThucThanhToan_CreditCard]
GO
/****** Object:  ForeignKey [FK_PhuongThucThanhToan_DiemThanhVien]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[PhuongThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_PhuongThucThanhToan_DiemThanhVien] FOREIGN KEY([IDDiemThanhVien])
REFERENCES [dbo].[DiemThanhVien] ([IDDiemThanhVien])
GO
ALTER TABLE [dbo].[PhuongThucThanhToan] CHECK CONSTRAINT [FK_PhuongThucThanhToan_DiemThanhVien]
GO
/****** Object:  ForeignKey [FK_PhuongThucThanhToan_MaKhuyenMai]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[PhuongThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_PhuongThucThanhToan_MaKhuyenMai] FOREIGN KEY([IDMaKhuyenMai])
REFERENCES [dbo].[MaKhuyenMai] ([IDMaKhuyenMai])
GO
ALTER TABLE [dbo].[PhuongThucThanhToan] CHECK CONSTRAINT [FK_PhuongThucThanhToan_MaKhuyenMai]
GO
/****** Object:  ForeignKey [FK_PhuongThucThanhToan_TienMat]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[PhuongThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_PhuongThucThanhToan_TienMat] FOREIGN KEY([IDTienMat])
REFERENCES [dbo].[TienMat] ([IDTienMat])
GO
ALTER TABLE [dbo].[PhuongThucThanhToan] CHECK CONSTRAINT [FK_PhuongThucThanhToan_TienMat]
GO
/****** Object:  ForeignKey [FK_PhuongThucThanhToan_ViDienTu]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[PhuongThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_PhuongThucThanhToan_ViDienTu] FOREIGN KEY([IDViDienTu])
REFERENCES [dbo].[ViDienTu] ([IDViDienTu])
GO
ALTER TABLE [dbo].[PhuongThucThanhToan] CHECK CONSTRAINT [FK_PhuongThucThanhToan_ViDienTu]
GO
/****** Object:  ForeignKey [FK_PhongChieu_Ghe]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[PhongChieu]  WITH CHECK ADD  CONSTRAINT [FK_PhongChieu_Ghe] FOREIGN KEY([IDGhe])
REFERENCES [dbo].[Ghe] ([IDGhe])
GO
ALTER TABLE [dbo].[PhongChieu] CHECK CONSTRAINT [FK_PhongChieu_Ghe]
GO
/****** Object:  ForeignKey [FK_Phim_Rating]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_Rating] FOREIGN KEY([IDRating])
REFERENCES [dbo].[Rating] ([IDRating])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_Rating]
GO
/****** Object:  ForeignKey [FK_TheThanhVien_DiemThanhVien]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[TheThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_TheThanhVien_DiemThanhVien] FOREIGN KEY([IDTheThanhVien])
REFERENCES [dbo].[DiemThanhVien] ([IDDiemThanhVien])
GO
ALTER TABLE [dbo].[TheThanhVien] CHECK CONSTRAINT [FK_TheThanhVien_DiemThanhVien]
GO
/****** Object:  ForeignKey [FK_SuatChieu_Phim]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[SuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_SuatChieu_Phim] FOREIGN KEY([IDPhim])
REFERENCES [dbo].[Phim] ([IDPhim])
GO
ALTER TABLE [dbo].[SuatChieu] CHECK CONSTRAINT [FK_SuatChieu_Phim]
GO
/****** Object:  ForeignKey [FK_SuatChieu_PhongChieu]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[SuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_SuatChieu_PhongChieu] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[PhongChieu] ([IDPhong])
GO
ALTER TABLE [dbo].[SuatChieu] CHECK CONSTRAINT [FK_SuatChieu_PhongChieu]
GO
/****** Object:  ForeignKey [FK_Ve_NhanVien]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_NhanVien]
GO
/****** Object:  ForeignKey [FK_Ve_PhuongThucThanhToan]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_PhuongThucThanhToan] FOREIGN KEY([IDPhuongThucThanhToan])
REFERENCES [dbo].[PhuongThucThanhToan] ([IDPhuongThucThanhToan])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_PhuongThucThanhToan]
GO
/****** Object:  ForeignKey [FK_Ve_SuatChieu]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_SuatChieu] FOREIGN KEY([IDShow])
REFERENCES [dbo].[SuatChieu] ([IDShow])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_SuatChieu]
GO
/****** Object:  ForeignKey [FK_Ve_TheThanhVien]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_TheThanhVien] FOREIGN KEY([IDTheThanhVien])
REFERENCES [dbo].[TheThanhVien] ([IDTheThanhVien])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_TheThanhVien]
GO
/****** Object:  ForeignKey [FK_Ve_ThucPham]    Script Date: 11/23/2019 22:14:54 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_ThucPham] FOREIGN KEY([IDThucPham])
REFERENCES [dbo].[ThucPham] ([IDThucPham])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_ThucPham]
GO
