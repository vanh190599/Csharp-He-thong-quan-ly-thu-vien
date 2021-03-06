USE [master]
GO
/****** Object:  Database [QuanLyTV4]    Script Date: 06/23/2020 15:49:35 ******/
CREATE DATABASE [QuanLyTV4] ON  PRIMARY 
( NAME = N'QuanLyTV4', FILENAME = N'C:\Program Files\SQL server 2008 create\MSSQL10_50.MSSQLSERVER1\MSSQL\DATA\QuanLyTV4.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyTV4_log', FILENAME = N'C:\Program Files\SQL server 2008 create\MSSQL10_50.MSSQLSERVER1\MSSQL\DATA\QuanLyTV4_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyTV4] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyTV4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyTV4] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyTV4] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLyTV4] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyTV4] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyTV4] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyTV4] SET AUTO_CLOSE ON
GO
ALTER DATABASE [QuanLyTV4] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyTV4] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyTV4] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyTV4] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyTV4] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyTV4] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyTV4] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLyTV4] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyTV4] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyTV4] SET  ENABLE_BROKER
GO
ALTER DATABASE [QuanLyTV4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyTV4] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyTV4] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyTV4] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyTV4] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyTV4] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyTV4] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyTV4] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyTV4] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyTV4] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyTV4] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyTV4] SET DB_CHAINING OFF
GO
USE [QuanLyTV4]
GO
/****** Object:  Table [dbo].[TheLoai5]    Script Date: 06/23/2020 15:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai5](
	[MaTLoai] [nvarchar](50) NOT NULL,
	[TenTLoai] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TheLoai5] ([MaTLoai], [TenTLoai], [GhiChu]) VALUES (N'L01', N'Tình cảm', N'không có')
INSERT [dbo].[TheLoai5] ([MaTLoai], [TenTLoai], [GhiChu]) VALUES (N'L02', N'Khoa học', N'không có')
INSERT [dbo].[TheLoai5] ([MaTLoai], [TenTLoai], [GhiChu]) VALUES (N'L03', N'Tin học', N'không có')
INSERT [dbo].[TheLoai5] ([MaTLoai], [TenTLoai], [GhiChu]) VALUES (N'L04', N'Trinh thám', N'không có')
INSERT [dbo].[TheLoai5] ([MaTLoai], [TenTLoai], [GhiChu]) VALUES (N'L05', N'Hành động', N'không có')
INSERT [dbo].[TheLoai5] ([MaTLoai], [TenTLoai], [GhiChu]) VALUES (N'L06', N'Viễn tưởng', N'không có')
INSERT [dbo].[TheLoai5] ([MaTLoai], [TenTLoai], [GhiChu]) VALUES (N'L07', N'Chính trị', N'không có')
INSERT [dbo].[TheLoai5] ([MaTLoai], [TenTLoai], [GhiChu]) VALUES (N'L08', N'Giáo dục', N'không có')
/****** Object:  Table [dbo].[DoiTuong5]    Script Date: 06/23/2020 15:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoiTuong5](
	[MaDTuong] [nvarchar](50) NOT NULL,
	[TenDTuong] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDTuong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DoiTuong5] ([MaDTuong], [TenDTuong]) VALUES (N'DT01', N'Giảng viên')
INSERT [dbo].[DoiTuong5] ([MaDTuong], [TenDTuong]) VALUES (N'DT02', N'Sinh viên')
INSERT [dbo].[DoiTuong5] ([MaDTuong], [TenDTuong]) VALUES (N'DT03', N'Học sinh')
/****** Object:  Table [dbo].[ChucVu5]    Script Date: 06/23/2020 15:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu5](
	[MaCVu] [nvarchar](50) NOT NULL,
	[TenCVu] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCVu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChucVu5] ([MaCVu], [TenCVu]) VALUES (N'CV01', N'Quản trị viên')
INSERT [dbo].[ChucVu5] ([MaCVu], [TenCVu]) VALUES (N'CV02', N'Thủ thư')
/****** Object:  Table [dbo].[NhanVien5]    Script Date: 06/23/2020 15:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien5](
	[MaNVien] [nvarchar](50) NOT NULL,
	[Hten] [nvarchar](100) NOT NULL,
	[MaCVu] [nvarchar](50) NOT NULL,
	[TKhoan] [nvarchar](50) NOT NULL,
	[Mkhau] [nvarchar](50) NOT NULL,
	[Quyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien5] ([MaNVien], [Hten], [MaCVu], [TKhoan], [Mkhau], [Quyen]) VALUES (N'NV01', N'Nguyễn Văn Anh', N'CV01', N'a', N'1', 1)
INSERT [dbo].[NhanVien5] ([MaNVien], [Hten], [MaCVu], [TKhoan], [Mkhau], [Quyen]) VALUES (N'NV02', N'Lâm Tuấn Công', N'CV02', N'cong', N'123456', 0)
INSERT [dbo].[NhanVien5] ([MaNVien], [Hten], [MaCVu], [TKhoan], [Mkhau], [Quyen]) VALUES (N'NV03', N'Ngò Xuân Zang', N'CV02', N'zang', N'123456', 0)
INSERT [dbo].[NhanVien5] ([MaNVien], [Hten], [MaCVu], [TKhoan], [Mkhau], [Quyen]) VALUES (N'NV04', N'Phan Bá Giang', N'CV01', N'giang', N'123456', 1)
INSERT [dbo].[NhanVien5] ([MaNVien], [Hten], [MaCVu], [TKhoan], [Mkhau], [Quyen]) VALUES (N'NV05', N'thu thu', N'CV02', N'b', N'1', 0)
/****** Object:  Table [dbo].[DocGia5]    Script Date: 06/23/2020 15:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia5](
	[MaDGia] [nvarchar](50) NOT NULL,
	[Hten] [nvarchar](100) NOT NULL,
	[GTinh] [nvarchar](50) NOT NULL,
	[NSinh] [date] NOT NULL,
	[MaDTuong] [nvarchar](50) NOT NULL,
	[NgayCap] [date] NOT NULL,
	[NgayGHan] [date] NOT NULL,
 CONSTRAINT [PK__DocGia5__38728430182C9B23] PRIMARY KEY CLUSTERED 
(
	[MaDGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DocGia5] ([MaDGia], [Hten], [GTinh], [NSinh], [MaDTuong], [NgayCap], [NgayGHan]) VALUES (N'DG01', N'Tấn Thị Tạ', N'Nữ', CAST(0xBA220B00 AS Date), N'DT01', CAST(0xD63D0B00 AS Date), CAST(0x40490B00 AS Date))
INSERT [dbo].[DocGia5] ([MaDGia], [Hten], [GTinh], [NSinh], [MaDTuong], [NgayCap], [NgayGHan]) VALUES (N'DG02', N'Nguyễn Thị Mộng Mơ', N'Nữ', CAST(0xBA220B00 AS Date), N'DT02', CAST(0xB0400B00 AS Date), CAST(0x40490B00 AS Date))
INSERT [dbo].[DocGia5] ([MaDGia], [Hten], [GTinh], [NSinh], [MaDTuong], [NgayCap], [NgayGHan]) VALUES (N'DG03', N'Hạnh Văn Phúc', N'Nam                           ', CAST(0xBA220B00 AS Date), N'DT03', CAST(0xB0400B00 AS Date), CAST(0x40490B00 AS Date))
INSERT [dbo].[DocGia5] ([MaDGia], [Hten], [GTinh], [NSinh], [MaDTuong], [NgayCap], [NgayGHan]) VALUES (N'DG04', N'Hạnh Văn Phúc', N'Nu', CAST(0xBA220B00 AS Date), N'DT03', CAST(0xB0400B00 AS Date), CAST(0x40490B00 AS Date))
/****** Object:  Table [dbo].[TaiLieu5]    Script Date: 06/23/2020 15:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiLieu5](
	[MaTLieu] [nvarchar](50) NOT NULL,
	[TenTLieu] [nvarchar](100) NOT NULL,
	[MaTLoai] [nvarchar](50) NOT NULL,
	[SLuong] [int] NOT NULL,
	[NXB] [nvarchar](50) NOT NULL,
	[NamXB] [int] NOT NULL,
	[TG] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TaiLieu5] ([MaTLieu], [TenTLieu], [MaTLoai], [SLuong], [NXB], [NamXB], [TG]) VALUES (N'TL01', N'Đường lối cách mạng của ĐCSVN', N'L07', 77, N'Kim Đồng ', 1999, N'Nguyễn Văn A')
INSERT [dbo].[TaiLieu5] ([MaTLieu], [TenTLieu], [MaTLoai], [SLuong], [NXB], [NamXB], [TG]) VALUES (N'TL02', N'Lập trình căn bản', N'L03', 96, N'Kim Đồng ', 1999, N'Nguyễn Văn A')
INSERT [dbo].[TaiLieu5] ([MaTLieu], [TenTLieu], [MaTLoai], [SLuong], [NXB], [NamXB], [TG]) VALUES (N'TL03', N'10 vạn câu hỏi vì sao', N'L02', 219, N'Kim Đồng ', 1999, N'Nguyễn Văn A')
INSERT [dbo].[TaiLieu5] ([MaTLieu], [TenTLieu], [MaTLoai], [SLuong], [NXB], [NamXB], [TG]) VALUES (N'TL04', N'Lập trình Java', N'L03', 110, N'Kim Đồng ', 1999, N'Nguyễn Văn A')
INSERT [dbo].[TaiLieu5] ([MaTLieu], [TenTLieu], [MaTLoai], [SLuong], [NXB], [NamXB], [TG]) VALUES (N'TL05', N'Tôi tài giỏi bạn cũng thế', N'L08', 119, N'Kim Đồng ', 1999, N'Adam Khoo')
INSERT [dbo].[TaiLieu5] ([MaTLieu], [TenTLieu], [MaTLoai], [SLuong], [NXB], [NamXB], [TG]) VALUES (N'TL06', N'Trên đường băng', N'L08', 109, N'Kim Đồng ', 1999, N'Adam Khoo')
INSERT [dbo].[TaiLieu5] ([MaTLieu], [TenTLieu], [MaTLoai], [SLuong], [NXB], [NamXB], [TG]) VALUES (N'TL07', N'Tony buổi sáng', N'L08', 110, N'Kim Đồng ', 1999, N'Adam Khoo')
INSERT [dbo].[TaiLieu5] ([MaTLieu], [TenTLieu], [MaTLoai], [SLuong], [NXB], [NamXB], [TG]) VALUES (N'TL08', N'Đệ nhất kiếm tiền Online', N'L06', 100, N'Kim Đồng ', 1999, N'Adam Khoo')
/****** Object:  Table [dbo].[PhieuMuon5]    Script Date: 06/23/2020 15:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon5](
	[MaPMuon] [nvarchar](50) NOT NULL,
	[MaDGia] [nvarchar](50) NOT NULL,
	[NgayMuon] [date] NOT NULL,
	[MaNVien] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPMuon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhieuMuon5] ([MaPMuon], [MaDGia], [NgayMuon], [MaNVien]) VALUES (N'P01', N'DG02', CAST(0x3D410B00 AS Date), N'NV03')
INSERT [dbo].[PhieuMuon5] ([MaPMuon], [MaDGia], [NgayMuon], [MaNVien]) VALUES (N'P02', N'DG03', CAST(0xEC400B00 AS Date), N'NV02')
INSERT [dbo].[PhieuMuon5] ([MaPMuon], [MaDGia], [NgayMuon], [MaNVien]) VALUES (N'P03', N'DG03', CAST(0x0A410B00 AS Date), N'NV03')
INSERT [dbo].[PhieuMuon5] ([MaPMuon], [MaDGia], [NgayMuon], [MaNVien]) VALUES (N'P04', N'DG02', CAST(0x29410B00 AS Date), N'NV02')
INSERT [dbo].[PhieuMuon5] ([MaPMuon], [MaDGia], [NgayMuon], [MaNVien]) VALUES (N'P05', N'DG01', CAST(0xB0400B00 AS Date), N'Nv01')
INSERT [dbo].[PhieuMuon5] ([MaPMuon], [MaDGia], [NgayMuon], [MaNVien]) VALUES (N'P06', N'DG01', CAST(0x3E410B00 AS Date), N'NV02')
INSERT [dbo].[PhieuMuon5] ([MaPMuon], [MaDGia], [NgayMuon], [MaNVien]) VALUES (N'P07', N'DG01', CAST(0x3D410B00 AS Date), N'NV03')
/****** Object:  Table [dbo].[PhieuMuonChiTiet5]    Script Date: 06/23/2020 15:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuonChiTiet5](
	[MaPMuon] [nvarchar](50) NOT NULL,
	[MaS] [nvarchar](50) NOT NULL,
	[SLMuon] [int] NOT NULL,
	[NgayTra] [date] NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[MaPMuon] ASC,
	[MaS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P02', N'TL01', 10, CAST(0xFF410B00 AS Date), N'Đang mượn')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P02', N'TL03', 1, CAST(0x3A420B00 AS Date), N'Đang mượn')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P02', N'TL04', 1, CAST(0x59420B00 AS Date), N'Đã trả')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P02', N'TL05', 1, CAST(0x77420B00 AS Date), N'Đang mượn')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P02', N'TL06', 11, CAST(0x77420B00 AS Date), N'Đã trả')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P03', N'TL01', 10, CAST(0x1E420B00 AS Date), N'Đang mượn')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P03', N'TL02', 10, CAST(0x77420B00 AS Date), N'Đang mượn')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P03', N'TL03', 10, CAST(0x77420B00 AS Date), N'Đã trả')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P03', N'TL05', 10, CAST(0xD3420B00 AS Date), N'Đã trả')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P03', N'TL06', 1, CAST(0xFF410B00 AS Date), N'Đang mượn')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P03', N'TL07', 0, CAST(0x3A420B00 AS Date), N'Đã trả')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P04', N'TL01', 10, CAST(0x1E420B00 AS Date), N'Đang mượn')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P04', N'TL03', 1, CAST(0x3D410B00 AS Date), N'Đang mượn')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P05', N'Tl01', 1, CAST(0x39410B00 AS Date), N'Đã trả')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'p05', N'Tl03', 0, CAST(0x3D410B00 AS Date), N'Đã trả')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P06', N'TL01', 2, CAST(0x3E410B00 AS Date), N'Đã trả')
INSERT [dbo].[PhieuMuonChiTiet5] ([MaPMuon], [MaS], [SLMuon], [NgayTra], [TrangThai]) VALUES (N'P07', N'TL05', 10, CAST(0x3A420B00 AS Date), N'Đã trả')
/****** Object:  StoredProcedure [dbo].[PROC_TOP10TL]    Script Date: 06/23/2020 15:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_TOP10TL] (@START DATE, @END DATE)
  AS
  BEGIN
	SELECT TOP(10) TenTLieu,TenTLoai,SLuong,GhiChu 
	FROM dbo.TheLoai5 INNER JOIN dbo.TaiLieu5 ON TaiLieu5.MaTLoai = TheLoai5.MaTLoai 
	INNER JOIN dbo.PhieuMuonChiTiet5 ON PhieuMuonChiTiet5.MaS = TaiLieu5.MaTLieu
	
	 WHERE NgayTra BETWEEN @START AND @END
	 GROUP BY TenTLieu,TenTLoai,SLuong,GhiChu 
	ORDER BY SLuong DESC
  END
GO
/****** Object:  StoredProcedure [dbo].[PROC_TOP10]    Script Date: 06/23/2020 15:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_TOP10]
AS
 BEGIN
	SELECT TOP(10) TenTLieu,TenTLoai,SLuong,GhiChu 
	FROM dbo.TheLoai5 INNER JOIN dbo.TaiLieu5 ON TaiLieu5.MaTLoai = TheLoai5.MaTLoai 
	INNER JOIN dbo.PhieuMuonChiTiet5 ON PhieuMuonChiTiet5.MaS = TaiLieu5.MaTLieu
	 WHERE NgayTra BETWEEN'1990-02-02' AND GETDATE()
	 GROUP BY TenTLieu,TenTLoai,SLuong,GhiChu 
	ORDER BY SLuong DESC
 END
GO
/****** Object:  ForeignKey [FK_NhanVien5_ChucVu5]    Script Date: 06/23/2020 15:49:36 ******/
ALTER TABLE [dbo].[NhanVien5]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien5_ChucVu5] FOREIGN KEY([MaCVu])
REFERENCES [dbo].[ChucVu5] ([MaCVu])
GO
ALTER TABLE [dbo].[NhanVien5] CHECK CONSTRAINT [FK_NhanVien5_ChucVu5]
GO
/****** Object:  ForeignKey [FK_DocGia5_DoiTuong5]    Script Date: 06/23/2020 15:49:36 ******/
ALTER TABLE [dbo].[DocGia5]  WITH CHECK ADD  CONSTRAINT [FK_DocGia5_DoiTuong5] FOREIGN KEY([MaDTuong])
REFERENCES [dbo].[DoiTuong5] ([MaDTuong])
GO
ALTER TABLE [dbo].[DocGia5] CHECK CONSTRAINT [FK_DocGia5_DoiTuong5]
GO
/****** Object:  ForeignKey [FK_TaiLieu5_DocGia5]    Script Date: 06/23/2020 15:49:36 ******/
ALTER TABLE [dbo].[TaiLieu5]  WITH CHECK ADD  CONSTRAINT [FK_TaiLieu5_DocGia5] FOREIGN KEY([MaTLoai])
REFERENCES [dbo].[TheLoai5] ([MaTLoai])
GO
ALTER TABLE [dbo].[TaiLieu5] CHECK CONSTRAINT [FK_TaiLieu5_DocGia5]
GO
/****** Object:  ForeignKey [FK_PhieuMuon5_DocGia5]    Script Date: 06/23/2020 15:49:36 ******/
ALTER TABLE [dbo].[PhieuMuon5]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon5_DocGia5] FOREIGN KEY([MaDGia])
REFERENCES [dbo].[DocGia5] ([MaDGia])
GO
ALTER TABLE [dbo].[PhieuMuon5] CHECK CONSTRAINT [FK_PhieuMuon5_DocGia5]
GO
/****** Object:  ForeignKey [FK_PhieuMuon5_NhanVien5]    Script Date: 06/23/2020 15:49:36 ******/
ALTER TABLE [dbo].[PhieuMuon5]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon5_NhanVien5] FOREIGN KEY([MaNVien])
REFERENCES [dbo].[NhanVien5] ([MaNVien])
GO
ALTER TABLE [dbo].[PhieuMuon5] CHECK CONSTRAINT [FK_PhieuMuon5_NhanVien5]
GO
/****** Object:  ForeignKey [FK_PhieuMuon5_PhieuMuonChiTiet5]    Script Date: 06/23/2020 15:49:36 ******/
ALTER TABLE [dbo].[PhieuMuonChiTiet5]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon5_PhieuMuonChiTiet5] FOREIGN KEY([MaPMuon])
REFERENCES [dbo].[PhieuMuon5] ([MaPMuon])
GO
ALTER TABLE [dbo].[PhieuMuonChiTiet5] CHECK CONSTRAINT [FK_PhieuMuon5_PhieuMuonChiTiet5]
GO
/****** Object:  ForeignKey [FK_PhieuMuonChiTiet5_TaiLieu5]    Script Date: 06/23/2020 15:49:36 ******/
ALTER TABLE [dbo].[PhieuMuonChiTiet5]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonChiTiet5_TaiLieu5] FOREIGN KEY([MaS])
REFERENCES [dbo].[TaiLieu5] ([MaTLieu])
GO
ALTER TABLE [dbo].[PhieuMuonChiTiet5] CHECK CONSTRAINT [FK_PhieuMuonChiTiet5_TaiLieu5]
GO
