USE [master]
GO
/****** Object:  Database [InavinaDB]    Script Date: 06/14/2020 17:27:07 ******/
CREATE DATABASE [InavinaDB] ON  PRIMARY 
( NAME = N'InavinaDB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\InavinaDB.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'InavinaDB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\InavinaDB_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [InavinaDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InavinaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InavinaDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [InavinaDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [InavinaDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [InavinaDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [InavinaDB] SET ARITHABORT OFF
GO
ALTER DATABASE [InavinaDB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [InavinaDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [InavinaDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [InavinaDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [InavinaDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [InavinaDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [InavinaDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [InavinaDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [InavinaDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [InavinaDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [InavinaDB] SET  ENABLE_BROKER
GO
ALTER DATABASE [InavinaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [InavinaDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [InavinaDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [InavinaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [InavinaDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [InavinaDB] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [InavinaDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [InavinaDB] SET  READ_WRITE
GO
ALTER DATABASE [InavinaDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [InavinaDB] SET  MULTI_USER
GO
ALTER DATABASE [InavinaDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [InavinaDB] SET DB_CHAINING OFF
GO
USE [InavinaDB]
GO
/****** Object:  Table [dbo].[PartNumbers]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartNumbers](
	[Id] [nvarchar](128) NOT NULL,
	[PartNo] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PartNumbers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[PartNumbers] ([Id], [PartNo], [Model], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'dc3b2443-52f2-481d-9989-089ed987bfc7', N'AEF75984602', N'', NULL, 1, CAST(0x0000ABDA011C7258 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[Molds]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Molds](
	[Id] [nvarchar](128) NOT NULL,
	[MoldNo] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Molds] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Molds] ([Id], [MoldNo], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'33540a2d-6256-4199-8a4f-2a310c8b6d55', N'0001', NULL, 1, CAST(0x0000ABDA011C725A AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Molds] ([Id], [MoldNo], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'47257dc4-ba60-43a8-b4c0-c9d01cb3d6ef', N'0002', NULL, 1, CAST(0x0000ABDA011C725A AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[Machines]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machines](
	[Id] [nvarchar](128) NOT NULL,
	[MachineNo] [nvarchar](max) NULL,
	[MachineName] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Machines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Machines] ([Id], [MachineNo], [MachineName], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7143e15a-50a9-407b-864f-b7c0870b2792', N'02', N'Machine 2', NULL, 1, CAST(0x0000ABDA011C7259 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Machines] ([Id], [MachineNo], [MachineName], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e646a9ef-cc62-478c-a9c3-42bd6f0ce1e1', N'01', N'Machine 1', NULL, 1, CAST(0x0000ABDA011C7259 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[LanguageLibraries]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageLibraries](
	[Id] [nvarchar](128) NOT NULL,
	[Vietnamese] [nvarchar](max) NULL,
	[English] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LanguageLibraries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'00108386-f3dc-4bdf-8cac-7f3b8901b909', N'Chưa xử lý', N'None', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'00df571a-f6e0-4bdc-82a7-0e1f2d0e702e', N'Tài khoản không tồn tại', N'Username does not exist', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0178f619-b928-4c78-9b78-7befa0562528', N'Trạng thái sản xuất', N'Production Status', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0307b4f3-0980-4345-ba37-e4407ae4d2c5', N'Danh sách khuôn', N'Molds List', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'038dd3d3-0ce5-4924-8c21-20808feb072a', N'Bảo lưu', N'Hold', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'06a2359b-4a35-4283-9810-619e6551f407', N'Số lượng sản phẩm OK', N'Quantity of products OK', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'08517b2f-4643-499b-9df2-2c1dec5415d2', N'Mã', N'ID', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'09b62dd9-1609-4277-9ae8-68b71c03a485', N'Chương trình chính', N'Main Menu', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'09b9e1e7-5df9-4bf6-b25b-8cd23edc5e2d', N'Báo cáo tổng hợp theo kế hoạch', N'Report synthetic by plan', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0b26d92d-2aa2-45c4-bb06-056e5e1abf51', N'Số lượng', N'Quantity', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'119f5ddb-256d-4e9a-bb43-6fb860851ef8', N'Tiếng Việt', N'Vietnamese', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'11c7d06a-9cd4-4f0e-89df-1f1876ed42e0', N'Tất cả', N'All', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'11fb8948-89ef-428f-aba1-f0cf6c262462', N'Thông báo', N'Notification', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1505866c-7159-457a-a2b1-74fe070d8706', N'Danh sách ca', N'Shifts List', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'16c7ea7a-c975-4a70-afe7-52a527222bdd', N'Phải sử dụng máy đọc mã vạch', N'Must use barcode reader', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'17fd1699-17f6-4b2d-8846-bb5b8d29ec42', N'Điện thoại', N'Phone', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1b7d84ba-381d-4fc9-8dab-6d8bd4aca058', N'Báo cáo tổng hợp theo mã vạch', N'Report synthetic by barcode', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1bedf022-1d39-411e-8c8f-9e125b699f35', N'Xóa (F3)', N'Del (F3)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1e1bb68c-72a7-414b-a0f9-643bc9fc2f54', N'Dùng thử cho 1 máy tính', N'Try it on 1 computer', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2185d6cb-11dc-4307-a21a-df49fb5021c6', N'Bạn không có quyền sử dụng chức năng này', N'You do not have permission to use this function', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'229483e9-ee8b-4daa-bc0c-81ad3e000611', N'Đang xử lý', N'In progress', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'22b248a2-78cd-41e6-b80c-ca8d2b503f21', N'Tên máy in', N'Printer name', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'26379762-0b6c-4bb5-8089-c38c03e7d3ae', N'Cấu hình', N'Setting', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'28024d71-d293-4cab-b611-e088af22a125', N'Excel (F4)', N'Excel (F4)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2948a1df-9b4e-42d8-9040-2ec3240bad82', N'Dữ liệu đã tồn tại', N'Data already exists', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2c4c6769-8347-49b3-ba5b-8297a919d253', N'Lịch sử sản xuất', N'Production history', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2dfdc765-9dc6-4675-ae98-adf02e672652', N'Ngày kích hoạt', N'Activation date', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'31573e62-ddc3-40fd-825e-2f7d9ee28e5c', N'Lưu (F1)', N'Save (F1)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'352244a9-900c-4364-94a4-c2ec43173510', N'Lưu thất bại', N'Save failed', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'35bb56f7-c44c-4fcc-b720-ddec0bca8e5e', N'Mật khẩu cũ', N'Old password', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'36470d12-cf49-4236-beb4-d957ebf79afa', N'Quên mật khẩu', N'I forgot my password', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'36d4c6e3-eff9-4b15-85c4-54dd55efebb8', N'Báo cáo', N'Report', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'37840d70-423b-4874-b875-052061b32449', N'Ngày quét mã vạch', N'Scan barcode date', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'454fc118-9d8e-4aba-9817-5dd43a5db992', N'Mã vạch', N'Barcode', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4667c003-3367-4de7-8039-dffa8b2260ce', N'Kết quả sản xuất', N'Produced result', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'489c6000-0493-4edb-8fbb-ab6ba61f8a89', N'Đăng ký sử dụng phần mềm', N'Register to use the software', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'49bc6269-fdd5-4d0e-b67e-278fd13029aa', N'Chưa chọn dữ liệu', N'No data selected', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4f8ad305-da49-4c0e-bfb9-aadbbb699324', N'Thêm (F1)', N'Add (F1)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5012896d-20cd-4f75-80c0-7b93f93b9e25', N'In thất bại', N'Print failed', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'51c8d1f6-658a-464f-b88f-24ff900578a0', N'Chức năng chương trình', N'Program Function Master', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'52ca5785-6942-4163-8a85-35d38c983bf7', N'Mã ca', N'Shift No', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'53bad080-cc46-453b-806d-cd3fb799ab6e', N'Thống kê sản phẩm NG', N'Product report NG', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'53d974f3-6f34-4de4-a045-397b611490da', N'Cổng COM', N'Port COM', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'55caa65e-24c8-4ecd-9832-a70fe9234a13', N'Trạng thái sản xuất', N'Production Status', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'583e7a7a-cae3-4fbe-b32c-f2a48a7fd000', N'Bạn có muốn xóa thông tin này?', N'Do you want to delete this information?', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5a44b226-b7ea-4257-821f-b2c4cf0d5fdc', N'Thống kê sản phẩm OK', N'Product report OK', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5dec32bf-770b-4c14-92f7-9ecb75648e2f', N'Tài khoản', N'Username', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5f33207d-e419-4df8-af64-8b94e37aaac0', N'Quét mã vạch (F1)', N'Scan barcode (F1)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'60a9ea79-ef42-4e1c-b65b-5e62c31c0806', N'Dùng thử', N'Trial', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'624c3305-0d5c-4731-ae29-3555287dfb98', N'Quản lý PartNumber', N'PartNumber Management', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'62d0efc1-9376-41d8-9448-f90fcf82cd80', N'Đóng (ESC)', N'Close (ESC)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'64abf61f-7c85-45d5-b0e5-d53c291237c0', N'Đến ngày', N'ToDate', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6514271e-fe4d-4cb1-b764-8c2dd0bfe1c8', N'In lại (F2)', N'RePrint (F2)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'68824799-fd2a-4e7f-a9d1-ad06333c835c', N'Sửa (F2)', N'Edit (F2)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6e3731d9-e600-461c-a863-53dc62dec278', N'Dữ liệu không đúng', N'The data is incorrect', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'717c847e-9e7d-4917-b591-297ad1f77a34', N'Để tiếp tục sử dụng, bạn nên mua giấy phép', N'To continue using, you should purchase a license', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7212729b-d375-45e9-b3f4-619d60734b74', N'Diễn giải', N'Explanation', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'754ee1a6-920a-4660-b2b2-a9435f794e3d', N'Ngày sản xuất', N'Produced date', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'78524110-db5e-4526-8063-1c259084ffdd', N'Đã xong', N'Completed', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'826b4e2a-150d-41bf-9f4a-7928c2a01028', N'Ngày dự kiến giao hàng', N'Expected Delivery Date', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'864f7df7-6dd4-4481-b3b4-d9c03db8f3d7', N'Danh mục', N'Category', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'894941e1-684b-4a35-b467-d924c8498a63', N'Mã sản phẩm', N'Product code', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'89c710fd-31f7-4584-9721-eb7928041cf2', N'Quản lý người dùng', N'User management', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8b0f81ff-56cf-46bc-80bc-ee8fb3f72ab2', N'Mật khẩu', N'Password', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8dc3e89c-7069-40df-9c89-3e7154b8f807', N'Từ ngày', N'FromDate', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9004c786-5bde-4c38-b36e-0b61b57cafc4', N'Ngôn ngữ', N'Language', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'926ba31b-4187-454f-8382-3fb4e8871c99', N'Nhóm quyền', N'Authority Group', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9281d0cb-4642-4ef0-9e08-64b8f5ac6abc', N'Tiếng Anh', N'English', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9625511f-25a0-4874-a681-f6cc73b2b654', N'Lưu thông tin đăng nhập', N'Keep me signed in', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'968cf7f1-95af-4d22-b803-a7cb67a3b3b4', N'Mã máy', N'Machine No', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9825f3c1-36df-4b6e-9829-49351239f894', N'Xác nhận mật khẩu', N'Confirm password', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9866c351-edf0-4012-8305-1da8d9434ab0', N'Chưa điền dữ liệu', N'No data entered', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'996e25b7-0b56-4dc1-9356-c54f47e421fd', N'Mật khẩu không đúng', N'Incorrect password', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'99db2b70-4f34-4d3a-802a-bdffd3fe3689', N'Tên máy', N'Machine Name', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9ced130f-9386-4c69-8a30-4cadd5edb7ca', N'SL sản phẩm đã sản xuất', N'Number of products produced', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9e837968-9ffe-4672-9a0d-ee0bb8d80aad', N'Bản quyền', N'License', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a123c750-23f5-4253-82b0-6d70647d8f6f', N'Còn lại', N'Left day', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a2734767-d9a2-49f8-8bca-027afadf86fe', N'Sử dụng', N'Using', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a27cbfa5-e9c8-47d3-a538-c5a749c85792', N'Xóa thất bại', N'Delete failed', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a2d9d6c0-8185-4b66-86bb-8b055e33b5ba', N'Mật khẩu mới', N'New password', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a5fef959-013a-44ca-a8c0-7293a021888a', N'Ko sử dụng', N'No User', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a7a45e29-9bf5-422e-9d5d-44e5e18a0940', N'Người dùng', N'Function', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a81d29cd-fe3a-4c5f-93c8-51cf98c70575', N'Đăng ký', N'Registration', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aa41fee7-2417-4482-bb16-77809a326c10', N'Hủy thất bại', N'Cancel failed', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aea8b30c-563c-44ae-97b8-3c2e9987f1dc', N'Trạng thái', N'Status', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'af8a108a-2f4a-4f16-9aea-468c97082ed2', N'Chức năng', N'Function', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b11c28af-a11b-4a05-b62a-d93c08c0841c', N'Số lượng sản phẩm NG', N'Quantity of products NG', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b2e08632-8259-4aa2-8ee6-dcd1ea2dba78', N'Quét mã vạch sản phẩm', N'Scan the product barcode', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b3eddced-503c-4e71-a4b0-f9519b39b3c6', N'Ghi chú', N'Note', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ba2209a9-dc78-4bd7-b5fb-3d95df1b7a1d', N'Ngày hết hạn', N'Expiration date', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'bd899f45-c7a7-422a-8afe-c1a4488f66a2', N'Ngày đăng ký', N'Regist date', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'bf227845-c501-4c08-baf9-fa570ae90e74', N'Phân quyền (F6)', N'Authority (F6)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c21f2df2-0ed2-4df6-9555-b09b18a6892c', N'Ứng dụng cần quyền Quản trị để kích hoạt', N'Application needs Admin rights to activate', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c406fe86-3290-4e6f-b70d-08c55bd82e66', N'Đăng ký in mã vạch', N'Register to print barcode', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c56f2748-1fd1-4f5b-916f-7ac59d94669d', N'Ngày', N'DateTime', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c831e5d7-9193-4186-9d9f-0ff87e1dbafb', N'Mã khuôn', N'Mold No', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c89b662a-386f-4220-bdbb-3abbca8159e2', N'Lưu thành công', N'Save successfully', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd068abcf-cc17-462f-830e-ac2684ef9f99', N'Sau thời gian chỉ định chương trình sẽ bị vô hiệu', N'After the specified time the program will be disabled', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd2b85951-b1eb-4210-84d1-f7bc60d44449', N'Đổi mật khẩu', N'Change password', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd3738580-986b-4fdb-9e77-1bfc9b10f93a', N'Hệ thống', N'System', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd3ee8a13-06e1-4b9c-b30c-4a686ba69428', N'Chương trình', N'Program', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd789d6b3-705e-490c-9e5b-39129c9875f4', N'Ứng dụng cần kết nối mạng để kích hoạt', N'The application requires a network connection to activate', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd82d6755-1f7d-4efe-8929-8e8444a2513b', N'Đăng nhập', N'Sign In', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd90b862b-3d61-4e7a-8c44-7810675bf11c', N'Địa chỉ', N'Address', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'dbf2bac3-fb78-4bc4-b632-69624d8df860', N'Đang dùng', N'Using', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e0586b25-57ef-4207-890c-5b21269962eb', N'Nữ', N'Female', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e163bc72-e70e-4692-97b5-3dea32984781', N'Thư viện ngôn ngữ', N'Language Library', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e372770a-560b-4378-a4ae-a7d3f259e2ff', N'Xác nhận', N'Confirmation', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e4b280be-eeba-468f-a799-ae4a037646d3', N'Tên đầy đủ', N'FullName', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e4be3952-9efd-40a0-9bb4-2f00ef1629a4', N'Nam', N'Male', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ea665961-e4d4-4960-8141-5fbb5632ddce', N'Giới tính', N'Gender', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'eca8a993-c688-4137-aea6-287812c5e76c', N'Lọc (F5)', N'Refresh (F5)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ed26c092-89da-47a8-aa6f-49a4925334ec', N'Lưu và in (F1)', N'Save and Print (F1)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f0bd068a-07ea-426e-bfa7-0469a68919da', N'Bạn có muốn hủy thông tin này?', N'Do you want to cancel this information?', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f17d5c2a-c122-49ca-acbe-70baa4f8e400', N'Danh sách máy', N'Machines List', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f19166b9-821a-4033-9494-3bc157240465', N'Kế hoạch sản xuất', N'Production plan', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f1df65af-786e-4155-9151-fcf4dd0fae6f', N'Chương trình (F7)', N'Program(F7)', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f65f814b-462a-4ab0-813b-16b552ad561e', N'Số lượng mã vạch đã in', N'Number of barcodes printed', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fa616106-853b-47a3-a47d-d52e71e5a215', N'Chọn', N'Select', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fc6919f8-6c0d-46a0-b196-e30ee7099974', N'Tên công ty', N'Company name', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ff9dbdcd-6fbf-4d47-af51-852bedd8cd0b', N'Đã bị hủy', N'NoUse', CAST(0x0000ABDA011C725D AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[AuthorityGroups]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorityGroups](
	[Id] [nvarchar](128) NOT NULL,
	[AuthorityGroupName] [nvarchar](max) NULL,
	[Sort] [int] NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AuthorityGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AuthorityGroups] ([Id], [AuthorityGroupName], [Sort], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'35556a6e-d876-46ae-aa97-95737e4a6856', N'Manager', 1, 1, CAST(0x0000ABDA011C7220 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[AuthorityGroups] ([Id], [AuthorityGroupName], [Sort], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'92ecdd30-3b57-4d3e-b6d8-9448f66e6a63', N'Operator', 2, 1, CAST(0x0000ABDA011C7220 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[AuthorityGroups] ([Id], [AuthorityGroupName], [Sort], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e69c7e93-ff64-4698-a330-37672d4052e8', N'Admin', 0, 1, CAST(0x0000ABDA011C7220 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202006111411333_initial-database', N'Inavina.Migrations.Configuration', 0x1F8B0800000000000400ED1DDB52E4BAF13D55F907D73CE5B26706963C6CA8E19C62B96CA8B3C01C063679DB12633138C79627BE10A854BE2C0FF9A4FC42245F75B52DDF9801152F8C2C754BADEE96D45277FFEF3FFF9DFFF4ECB9D6130C42C7474793FDE9DEC48268E5DB0E5A1F4DE2E8E1874F939F7EFCED6FE667B6F76C7DCBEB1D907AB8250A8F268F51B4399CCDC2D523F44038F59C55E087FE43345DF9DE0CD8FEECE3DEDE9F67FBFB3388414C302CCB9ADFC428723C98FCC03F4F7CB4829B2806EEA56F4337CCCAF1976502D5BA021E0C3760058F2617083C39084C17A42F61843B0B27D6B1EB00DC9525741F261640C88F40843B7A7817C26514F868BDDCE002E0DEBE6C20AEF700DC106603382CAB371DCBDE47329659D93007B58AC3C8F73401EE1F64C499F1CD5B917852100F93EF0C93397A21A34E487834398EA3473FC0655F023FDE4C2C1EE5E1891B90EA259D4FFC004E4F711D074DD9D61FACACCE87823130FF90BF0FD649EC4671008F108CA300B81FAC457CEF3AAB9FE1CBADFF2B444728765DBAA7B8AFF81B53808B1681BF8141F472031FB2FE5FD8136BC6B69BF10D8B66549B744C9817305F4FAC4BF0FC15A275F48839FEE3A78975EE3C433B2FC998E30E39580C70A32888F1CF2BDC6170EFC2E2FBAC12274B295256D107FC6FA33E54A35CFA419423B940D1C1C7DA0678CAE3B0E817969D695AF40DB82D867C12401041FBB8E8C429FE79EB784D1B7E7E199C4467B6D3AA8769BB213A788505689D481E877213F8EB0078E7315A91AF053FE1F9BA816ED2227C7436D9BCB1ECF6BDA2F179E07B37BE2BB0A8BACDF7A51F0744C9DEFA9A0D6F41B08651F331C7210CF406CAB7508E8EAD583724AEB66C1CF359A95B2B35EE42411E5DDDAB8263B4B01A6746B351D46F3E31A32063F9F5E2B407D21AE5DE6F071B2B883B5AD9E86A05A6B151056A9C845023C88911CCB723985F015AC7600DBF3AF70108B445936B6E84538DF39B0323448EF8C3AF9C6768ED3AE1E3E0788C5C0E26979760F5E820A82B8F593323876A9C1989AEFCC1792FC734C666F9CA8F46B0BE1863CAAEA80FDFB5B575076E631447853863FA8CA0358C241B49A64D6B2088AE62EF1E06DAC6B4A2A5916A35CE844A23EC05C89D9FD11D46778CAA3B02DF8E1383EDC205A885319E6A6D74881AE75FFDE0D7EBC0262A7A604E7C53DAEAEC79035758404EA1EB3CC1E085889528629A73F14B0C12312800F99817B7D6945ACA9844ABF21FDBE957A3AE77485DD3B79F97208C5AECFA64408CF2AE14C1B7797F8AD52B5EB7B34756664F68944C82FF06AE9D30FA0C02024957B9308D8D52A9502AE3ECD3D2F9E865DF349E597CF9E83C8CB3891DC55EB73CFB65701C85B80E8C67A45DAF592D7665B558AE006AB956504DCD4AA1C639D24A4166A397756234ED3DDA7AB435CAB5AF3D4188454AA262E90FC694F0C6F53691526D8D4D1A195DFDFABA8FBCF04FB9ACA3B2BEF57B0163AE958C72A1940B59C8DABCE136AA458D93D0078D61155C02371A1CC90284E13FFDA08A8E7D19545D771463EAE2D147C36339B6ED0086E1E078BE4044DF56125D9B16B5D3B5667D780FEB8355EDC949BD1590BB351215F75DA8587A33CABE0B4E8CD24ABA3E98016DC6AEE82C5F8FEB2BFB59DE55AECE00DEA2091AB58FA8E4B3BCA79DFC41638F3E7CD06279119EBB605DC62368B86DF8E2FAF7C03DC1238D008AC23F52303B6F2330936355E7BE60A1C831134F72764A2E2179395728B83BD2F704FDD1644F983FA6F25D98485B56795F24614AAC0A022A2EFE7B22A514FAAB101535A6E9054AAE6993B5514E58BEC589EF6D5C88F560D1408C15C034F84BF2643AAB7BD062D624F6959E664C80FC0AB375E66DC8A39A66D375FD73D3693A8D37B8738961B2D934E1BDC6B91F23E55409F5BF1435FFD46252996D514FD349C17C85893C871E701B0BDE255DB7912E3B0E437FE524F4C877B54D0337B0FD3843B6D5368A43B947E483C15C62AA3A84E770111EFD742A32680BC4F96AC9BEDE52C44460BBF007013F3EBDC2002212CB27619A001FA023F1A8EBA095B3016E4B1A71F01A1E9EC9A41798F92FA77043381B452DA9D7A44BA2EFB1D8C1A21FDCB9BF8EAEF319C5BB5A2CCD6DBF1AB2936A57360CF32AF6771436CE497F0C369593607CDE9413678718527AB8527146F5498B65084DA6AB3C9F49DFB6A64FD30761B6AA718EC06355B468823EBF307C3D86E20EC09593AE3A0D776727C5199AB9DA641EB50DC74CF2418EC54B7242EC062B355C222BCD15DD59693B16C18A418EC54AED17BC115929B536E136116E511C497097FE0E57E4D523209FE0B3ECA21BF7323B8C85992D93E70B027A0923E9321E4EACD2D2A5D88B098CC602546DFF65A0D547851A2477AC508990396EAE01C74573910114E2C5D480CC9EF1C84015212EEA40F8AE2D6D9F186CEAA6A1708295129E72AEAD9F4FD6702D9B45664BA3C720A9A34603EEC8DD426AC0DF70B66B012CB766D680A35EF3C98031EF04EB409157145220E9A395063CAF6275A131A55854B25E1548926A2ED5024D6D19DDAC190505246A4AD0C21D8C17149E0AEDC5DFA6B324D6273F7F75514BF3AA9D448BE3763FD4556C2C28E0BCAEEE4C47F97D9A48BEFAA361F3C321379E6A12559E05596663C7D00F69F8DB3B0565AACE388D4F39FA74511C6A2840BC06EF872AF5E256BB5D6FBC61D7A7CA8062945F5E16DBC9E2DB7C964660CF0AE63345A8F6F925D86C1CB4A642B76725D6328DDB7EF2C3523F9EB997C298AD1832F39BDF0253E40778FFC57D25F75D363C7782C41B08DC03723D71627B4235C9E659B1DCE608E5FB63711EF3E5386F47FECF2FEF8468F6FC6E5A3C786460CEF1603D727621E3864A5D2D02B0485C7DE08240F2B8EBC477630FA90F53EAD6B290E73434D9F7E6D0D3E8E634BCB4440342F64886819195358742BD8DA10151C5DAB0C86B1409ACCFC209A20A56F92086065596EA42E23B55968A90E6338E2385E3AF20029C66E225AB91DCA937625D255079E8D497C5E6A086914AC6859B06C37C680E8F75D3A601B25FDAEA0D623E516B0D9971450DD9C8EAD6C8EA5DDD9E494F4059DB8DBE54D6B41F461473EB200D416531544331E2F20EC445B036761518DE36A92F32B51086111A3A34340D852ED760803CFA3333FF79A111951D1495C28ADE5544729BBBBE68285B0E231294FB2F0D842AD68725ECE6980FCDE1A5EE0E34A0B4C41CD3DEAF802677549DA593DC68B5104D69B381E4320BAAC28851566624C848507B43077551DBD9B4515EEBB6306654341EC87C918500612C1759998E6426313B59C14C8A8C5C1AB9EC6280ACB938D4363BD2AF245A191B2B010C23A354885F1A0855BC8BF22E8FC0CB70A4B446730C65385E1A6A593AB66589777E13ECC5DC57A3F9DEB3E6933DD0EAF9DE257BCED5F9D24505E7BDDEB830D16F398D567E30E2FD6EC5FBA6EEDD8F9E58B3CF29F5C5B9A6FD369F3CE828B43424BAFC752C7F45C02E466AF3C2B1AD1E49A458A627A4A079FBE2812D0D43F1EAB60A4E3F3B29A3107520ED8042649E78775587F483707D6558D97A9B5561196695118BA2F41554578FEA74BB14101BE8945D78E82F46A5BD5F9596BA9A74566689634A0B35266F378C02EB4B6194C14799635851DA1C521E7D94869397199BB411EBD6629D3A137495EAC4614C5FA8E5CD8691E9322A28BF54224D73481AF6939180A444678394C7F464B74879A98EB1270FDAC91A7AF2528D3EA55139990EA5451A6F0DF3989BCC13C3BCB0399C3CA6260D262F33DACE68BB1A6D27B827F1550AEC5949F1BB704FCA5C83189FA564F4C40329197598B929F1BE426995898549F4E4D8C44F68F982B5A4372515A6CB7FB827AE83C75B56B804C87980619446229B7CDCDBFB34B18E5D0784A91359E60575C8FBE537728BDA3F206E51D0F6667C737DE72A02250C6D2676B418D1BACA99688C38D3E8091FA21E4120469AD68C6A2BF33F6251FCCE03CFBFA7E1368ABD9BB821A5801CC2079ACD99D0BD1C8076D17A6DFC33E262D937E98A10BDB7135DF808BD6D7BC547ECD5E854DBEC920ACF809DE2F68598BAB1D374CAD2337602287A2AF0141002975CE01DC3F3D1E45F098443EBE26FDF79201FACE4C5C1A1B567FDBB8A841AE260E4AA5B3684B7204C6C7A222D0E4D9BF6C9974670DEBEE0543ADBEC94E8D07E3A7D4C62EEABD3032CC3A79DF954EAF9B253FC29E4D2EB34778CD74C0FF0E8EC21DD4E29E698B105D22238A3EC96A83049830D5F1BBEA6DF0748DC42768ABBD964B3DD5681F4ADB991132327BC9949E99EB153B242B976F430855B297972E70E358F35A25BE9DB91027A707DA02F895B658D58086E21ED558C5152DBA1A4EA7C27764A576DBD219C71BA304BFDDB90A20A9785DD929EFED666DAE5A1E33ADAAFD1864B5DDE7103D2DB1939F180E8014EF108B907585BB5F5308A6E0B149DD21DE1BDAAB9D2A1A1A392EB552DF5AA3087D7282D1718DAB5C11C43765BAF88FE013BA551FA94DED2C1A0A34AC93D0C3A823156C9B72469E2A3FD9D12B4F2C57F1F0C993CFCEFC5A699BFFDEFC5E4903FFFEFA367A913400F900A47801E60E5DE00ED3581514A3BAC94064F8C9DF7B57BEAE08532211D85415D6984CCC163244A540EB009EE2DC90BDC47A2EAFEF88A4B4748811D3FF7F458A93677926DB4D3490B93A9AF7198E489AC9E192755F4483AA53AFCA188F1F573F76AA481EECA075C564A0AD858399EC7E082BA6051DBC8041A099CBB32C1EB2E13633181FEE2F0EAA997C52473FC14B2B95AF9CD42B93156EC26524754BC6DBF2756A574875D9395B371E665ADC4CBB28E286A3B92E48C7C9F38BE153AC27D9761A7AB344129646A16900A356468D94A4D1017799D0584C51719A23253741DFC24EFB3083C2996424E1348D7B10D950B5A6414EAA39435E834D3F5FCC9EC67645CC95450F06265CED41AA1C89348D749445EAF81381409AC6B7AC2ADE3420FB8EF32CC359951798CF4F55D4DEA6A1936262E5A2DAE3487B588252D97C2CFF261375021CAB4D72A852182DDFE8CD8152999254B5F13A3853A6A2E558937F3EE4A5EEBB6E4922E4992C471DD093360A26AA1DF751C22D1BCB2A8F23D0D7A8814D47A43966A5B49C0D99E063C447669BD01F7CFD61A89A3C5082C780B1E2362804E7F9DC2D0599720E61826822B66F35DD4B9400F7E7E06E07A9457E15F40C008D878677E1C44CE035845F8F30A86A183D613EB1B706362D7C67B14FB025DC7D1268EF090A177EF32C42067892AFC49766CB6CFF3EB0DF915F63104DC4D87D8ECAFD1E7D8211BBAACDFE7E29D840A0439A47C81B83C9D4B7CE689E0FAA5807425C4875201CAC8579CAD6EA1B77131B0F01A2DC1136CD337CC835FE11AAC5E1659201D3590FA8960C93E3F750059DAC20C46D91EFFC43C6C7BCF3FFE1F576C0E320DDB0000, N'6.1.3-40302')
/****** Object:  Table [dbo].[ProgramFunctionMasters]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramFunctionMasters](
	[Id] [nvarchar](128) NOT NULL,
	[ProgramName] [nvarchar](max) NULL,
	[FunctionName] [nvarchar](max) NULL,
	[Explanation] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProgramFunctionMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'07e50bfc-8c2f-46d6-83b5-c32ad793bb4f', N'ProductionPlan', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'176073fa-0e19-4776-b38f-2aa9df6589fd', N'Mold', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'19ce3e24-4e83-44fe-a2ff-ee0139272ed4', N'ReportSyntheticRegistBarcode', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'32dfa6a2-abb7-4064-9524-dd721f4c241b', N'ReportSyntheticProductionPlan', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4317c6d6-4a62-4587-a10e-c41933438bb4', N'QuantityOfProductsNG', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4c3578fe-d61e-4a10-b013-b8919fb438a0', N'ProductionHistory', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'60206af1-367e-42f7-88fb-6d7813de6bf5', N'PartNumber', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6faa8ebf-fc02-4c52-848f-98f5e643c046', N'Machine', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'83eec247-2b99-477c-aa0a-674d203f6f57', N'Language', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8fe8a822-9a49-4a0a-b7d5-a9c32864d6c4', N'ScanBarcode', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a73c3a4f-21b1-45c8-a74b-9a0d81ef516d', N'Setting', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ab43118f-8d8b-459c-96cf-fe358a2bf8ed', N'Shift', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ad2c104a-111a-49a9-b454-9d45077732a0', N'User', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'cf9e8215-7404-4f41-b7a3-a4a7f9de9ff1', N'QuantityOfProductsOK', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e094c9c0-55f6-4ebc-a362-194b9eca8bc4', N'RegistBarcode', N'View', N'', 1, CAST(0x0000ABDA011C7221 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[Shifts]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shifts](
	[Id] [nvarchar](128) NOT NULL,
	[ShiftNo] [nvarchar](max) NULL,
	[FromTime] [datetime] NOT NULL,
	[ToTime] [datetime] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Shifts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Shifts] ([Id], [ShiftNo], [FromTime], [ToTime], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b914f68f-4ffc-4d8d-b569-d7b52f2da86a', N'0002', CAST(0x0000AB350128A180 AS DateTime), CAST(0x0000AB350062E080 AS DateTime), NULL, 1, CAST(0x0000ABDA011C7259 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Shifts] ([Id], [ShiftNo], [FromTime], [ToTime], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e87c5c90-571b-439b-940e-3845dd7357ad', N'0001', CAST(0x0000AB350062E080 AS DateTime), CAST(0x0000AB350128A180 AS DateTime), NULL, 1, CAST(0x0000ABDA011C7259 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[ScanBarcodes]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScanBarcodes](
	[Id] [nvarchar](128) NOT NULL,
	[PartNo] [nvarchar](max) NULL,
	[ScanDate] [datetime] NOT NULL,
	[ShiftNo] [nvarchar](max) NULL,
	[MachineNo] [nvarchar](max) NULL,
	[Barcode] [nvarchar](max) NULL,
	[UserID] [nvarchar](max) NULL,
	[ResultStatus] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ScanBarcodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](128) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Salt] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b1d32d2e-389d-4a12-aafe-27c6a3b568c0', N'ca2', N'JHXVx', N'e1a36568b1653a0c961501ca25ea2248', N'Ca 2', NULL, NULL, 1, NULL, 1, CAST(0x0000ABDA011C7202 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'cc209673-4b88-4c10-9002-9684e8bdc124', N'admin', N'JHXVx', N'821b998108a609b51e975cd08630cb1a', N'Administrator', NULL, NULL, 1, NULL, 1, CAST(0x0000ABDA011C7202 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd6720055-d13f-45ea-b620-aacbd575bd91', N'quanly', N'JHXVx', N'2a30fa62e5cf5ba0cdcf35aa7808d3ec', N'Quản lý', NULL, NULL, 1, NULL, 1, CAST(0x0000ABDA011C7202 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f726ce7e-fcbc-4aaa-92b7-345ae853ff21', N'ca1', N'JHXVx', N'8868046daee1aef564c5cfe0ebbb3605', N'Ca 1', NULL, NULL, 1, NULL, 1, CAST(0x0000ABDA011C7202 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[UserAuthorities]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAuthorities](
	[Id] [nvarchar](128) NOT NULL,
	[UserID] [nvarchar](128) NULL,
	[AuthorityGroupID] [nvarchar](128) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserAuthorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AuthorityGroupID] ON [dbo].[UserAuthorities] 
(
	[AuthorityGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[UserAuthorities] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3eef28c3-3764-4793-a6e2-d6a3b5fe8bc4', N'd6720055-d13f-45ea-b620-aacbd575bd91', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7250 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5daab430-8d98-4efc-9a8a-8bae4066b3f6', N'b1d32d2e-389d-4a12-aafe-27c6a3b568c0', N'92ecdd30-3b57-4d3e-b6d8-9448f66e6a63', CAST(0x0000ABDA011C7250 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aaf8a9ee-8438-428b-8b24-f2f5f3556eda', N'cc209673-4b88-4c10-9002-9684e8bdc124', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7250 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f5b2b275-8750-4f0b-be09-1e818a6dee3e', N'f726ce7e-fcbc-4aaa-92b7-345ae853ff21', N'92ecdd30-3b57-4d3e-b6d8-9448f66e6a63', CAST(0x0000ABDA011C7250 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[RegistBarcodes]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistBarcodes](
	[Id] [nvarchar](128) NOT NULL,
	[PartNo] [nvarchar](max) NULL,
	[RegistDate] [datetime] NOT NULL,
	[MachineNo] [nvarchar](max) NULL,
	[ShiftNo] [nvarchar](max) NULL,
	[MoldNo] [nvarchar](max) NULL,
	[SEQ] [nvarchar](max) NULL,
	[Barcode] [nvarchar](max) NULL,
	[UserID] [nvarchar](128) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.RegistBarcodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[RegistBarcodes] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramFunctionAuthorities]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramFunctionAuthorities](
	[Id] [nvarchar](128) NOT NULL,
	[ProgramName] [nvarchar](max) NULL,
	[FunctionName] [nvarchar](max) NULL,
	[AuthorityGroupID] [nvarchar](128) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProgramFunctionAuthorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AuthorityGroupID] ON [dbo].[ProgramFunctionAuthorities] 
(
	[AuthorityGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'04bffcaf-cf6b-4850-9a67-9a267af1665a', N'RegisterPrintBarcode', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0d299db7-ccba-46bd-a000-bbb49bc7bce5', N'QuantityOfProductsOK', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'10451658-2dc9-4e92-b224-ae4066cdc34c', N'ReportSyntheticProductionPlan', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'12f43ea6-dc7e-4afe-b960-c81ce22bc313', N'ReportSyntheticByBarcode', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1c4f6810-ba38-4640-aa6c-1da86a15d739', N'Mold', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'36830b18-a1e6-49f2-8275-c94f2b3125c4', N'Shift', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'39d3fe0e-f710-4d3c-b4c0-5d44015e90fb', N'HistoryProduct', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4a3ab0e3-bfcc-436c-9d72-dd6fd598c760', N'ProductionPlan', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4a70186a-a8f8-47f5-bab3-0f87fa3ef1fe', N'ReportSyntheticRegistBarcode', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4aca5b23-e8b2-43c4-9099-00df427d43d1', N'ProductionPlan', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4be642d8-1e1c-4132-a7f0-12e61a08157c', N'Shift', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4d9a1962-29d8-4f19-81a3-6fcaf48ee675', N'Machine', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6322c25a-ec5b-4da0-ae8c-747ff945d85a', N'User', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6398dabc-6a11-45f9-9c83-1ec9290d3c6f', N'Setting', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6d2012bd-3e23-4ce6-9cc1-12249e7aa1c7', N'QuantityOfProductsNG', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6f26b8a8-4b63-430c-b083-c663a66abb1a', N'RegistBarcode', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8377f905-5973-4bd9-b4cf-dc5ad350dbae', N'ProductionHistory', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8796c777-c300-41c1-b5d8-17f401070954', N'User', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8c9122f2-ecef-48a6-a4e1-ed80905dae17', N'Language', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9b142039-6e7b-423a-96f5-127a795db27c', N'Machine', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a3abfb16-a57c-4e39-97c3-dd464bbd2e9c', N'Mold', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aa96cffd-6853-4621-b911-8ab09d75a74b', N'ScanBarcode', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b408815d-b2f1-4797-a6a1-8c889bdc109b', N'ScanBarcode', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b898d25e-306c-4345-ad85-752cb68138a0', N'QuantityOfProductsOK', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b9f13b55-05dd-4c02-85ae-02d31afc700b', N'Setting', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'cbff684e-22e1-493e-899b-559a5d1e25b1', N'QuantityOfProductsNG', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd4329799-7634-4711-9fbc-e4f2ecf7bc81', N'PartNumber', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'dadb5353-b747-4707-84df-5be376eb4e3b', N'ScanBarcode', N'View', N'92ecdd30-3b57-4d3e-b6d8-9448f66e6a63', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ea695915-f25d-49c4-84f2-f2e67ed9f492', N'ReportSyntheticByPlan', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'eee66a98-8041-40d0-af86-93e1f0ff8ef9', N'Language', N'View', N'e69c7e93-ff64-4698-a330-37672d4052e8', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f9ce07c6-0dc5-499c-904f-9084d74d586a', N'PartNumber', N'View', N'35556a6e-d876-46ae-aa97-95737e4a6856', CAST(0x0000ABDA011C7231 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[ProductionPlans]    Script Date: 06/14/2020 17:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionPlans](
	[Id] [nvarchar](128) NOT NULL,
	[WorkOrder] [nvarchar](max) NULL,
	[PartNo] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[ExpectedDeliveryDate] [datetime] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UserID] [nvarchar](128) NULL,
	[ProductionStatus] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[EditedAt] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProductionPlans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[ProductionPlans] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo.UserAuthorities_dbo.AuthorityGroups_AuthorityGroupID]    Script Date: 06/14/2020 17:27:08 ******/
ALTER TABLE [dbo].[UserAuthorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAuthorities_dbo.AuthorityGroups_AuthorityGroupID] FOREIGN KEY([AuthorityGroupID])
REFERENCES [dbo].[AuthorityGroups] ([Id])
GO
ALTER TABLE [dbo].[UserAuthorities] CHECK CONSTRAINT [FK_dbo.UserAuthorities_dbo.AuthorityGroups_AuthorityGroupID]
GO
/****** Object:  ForeignKey [FK_dbo.UserAuthorities_dbo.Users_UserID]    Script Date: 06/14/2020 17:27:08 ******/
ALTER TABLE [dbo].[UserAuthorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAuthorities_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserAuthorities] CHECK CONSTRAINT [FK_dbo.UserAuthorities_dbo.Users_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.RegistBarcodes_dbo.Users_UserID]    Script Date: 06/14/2020 17:27:08 ******/
ALTER TABLE [dbo].[RegistBarcodes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RegistBarcodes_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[RegistBarcodes] CHECK CONSTRAINT [FK_dbo.RegistBarcodes_dbo.Users_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.ProgramFunctionAuthorities_dbo.AuthorityGroups_AuthorityGroupID]    Script Date: 06/14/2020 17:27:08 ******/
ALTER TABLE [dbo].[ProgramFunctionAuthorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProgramFunctionAuthorities_dbo.AuthorityGroups_AuthorityGroupID] FOREIGN KEY([AuthorityGroupID])
REFERENCES [dbo].[AuthorityGroups] ([Id])
GO
ALTER TABLE [dbo].[ProgramFunctionAuthorities] CHECK CONSTRAINT [FK_dbo.ProgramFunctionAuthorities_dbo.AuthorityGroups_AuthorityGroupID]
GO
/****** Object:  ForeignKey [FK_dbo.ProductionPlans_dbo.Users_UserID]    Script Date: 06/14/2020 17:27:08 ******/
ALTER TABLE [dbo].[ProductionPlans]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductionPlans_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ProductionPlans] CHECK CONSTRAINT [FK_dbo.ProductionPlans_dbo.Users_UserID]
GO
