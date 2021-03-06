
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
INSERT [dbo].[PartNumbers] ([Id], [PartNo], [Model], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'58171c33-e5dd-4b1c-9ccf-47a4b5d621bc', N'AEF75984602', N'', NULL, 1, CAST(0x0000ABDF01583ED7 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[Molds]    Script Date: 06/19/2020 21:21:49 ******/
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
INSERT [dbo].[Molds] ([Id], [MoldNo], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'082fd5aa-bed5-4513-9ae8-658c61fbd4d1', N'0002', NULL, 1, CAST(0x0000ABDF01583ED9 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Molds] ([Id], [MoldNo], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'91921723-c9af-4e96-98d7-104b7f155a43', N'0001', NULL, 1, CAST(0x0000ABDF01583ED9 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[Machines]    Script Date: 06/19/2020 21:21:49 ******/
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
INSERT [dbo].[Machines] ([Id], [MachineNo], [MachineName], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a6a69259-1af6-44f4-b928-4066fb5ae061', N'01', N'Machine_01', NULL, 1, CAST(0x0000ABDF01583ED8 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Machines] ([Id], [MachineNo], [MachineName], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'dad8ac33-5fa0-4cbe-8e54-307aaa5dfa59', N'02', N'Machine_02', NULL, 1, CAST(0x0000ABDF01583ED8 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[LanguageLibraries]    Script Date: 06/19/2020 21:21:49 ******/
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
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0018a5e8-ba32-4276-855a-4b180f8ef11e', N'Danh mục', N'Category', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'00b26970-10d1-4681-b3df-8f7610bc443c', N'Thống kê sản phẩm OK', N'Product report OK', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'03cc78b1-334a-4761-93b0-6351a90b9bc2', N'Bạn có muốn xóa thông tin này?', N'Do you want to delete this information?', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'04dcaff8-78d2-4400-a466-7a27084f4acd', N'Báo cáo', N'Report', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'085a5f10-fef4-4d88-8f01-c2aa5a0520fe', N'Điện thoại', N'Phone', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0d182920-a601-4df6-ba08-4a0a2f8c348b', N'Tài khoản không tồn tại', N'Username does not exist', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0df0ef7f-578c-40ef-9d58-a581f543a1ff', N'Mật khẩu cũ', N'Old password', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0e8d26c7-b5af-4072-8640-2ad915e717cb', N'Excel (F4)', N'Excel (F4)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1063f457-e97e-440c-b522-8b3b8d04e30c', N'Báo cáo tổng hợp theo mã vạch', N'Report synthetic by barcode', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'112c0f44-19d6-48a7-bf26-dcc8227d761d', N'Phải sử dụng máy đọc mã vạch', N'Must use barcode reader', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1576d66c-c4a4-40bd-b561-7e823331c4a6', N'Tiếng Việt', N'Vietnamese', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'16273ff9-3de5-4370-9717-b9495be87383', N'Nữ', N'Female', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1c9a8824-d814-49b5-a54d-4e59be8798c9', N'Ứng dụng cần quyền Quản trị để kích hoạt', N'Application needs Admin rights to activate', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'1e675ed5-c508-46c2-90d6-ff0682a197b8', N'Mật khẩu', N'Password', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'23902409-f50a-45c4-8e8f-16e384d22143', N'Diễn giải', N'Explanation', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'260efa97-1f64-47c3-957f-ac447071f140', N'Chương trình (F7)', N'Program(F7)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2b8f7278-4cea-4200-b691-5b0adb16aa02', N'Trạng thái', N'Status', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'327c5806-b8b5-49a8-8f8a-c5647bda39af', N'Tên đầy đủ', N'FullName', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'34828118-025d-4673-9e92-d04b4e4bb6dd', N'Trạng thái sản xuất', N'Production Status', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3602bb95-bcfa-43aa-b9c1-af97a86dae4c', N'Lưu (F1)', N'Save (F1)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3ca590a0-092a-498f-95be-1665272c3efd', N'Bạn không có quyền sử dụng chức năng này', N'You do not have permission to use this function', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3d5546fe-70ea-45aa-b022-0385e3a59342', N'Thông báo', N'Notification', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4159249c-a5db-4ea9-8849-49c2326faf80', N'Còn lại', N'Left day', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'447d5a03-ed31-4ede-a886-fc997c275d9c', N'Dữ liệu không đúng', N'The data is incorrect', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4516a1eb-b1ec-41f8-83e4-5ef626fbb82c', N'Thời gian bắt đầu', N'Begin time', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'47ea9401-31f0-4d67-b714-32a475b830c2', N'Quét mã vạch sản phẩm', N'Scan the product barcode', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4bdcbe16-dd66-43c2-8f92-305872346b71', N'Mã khuôn', N'Mold No', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4dcffe6c-f230-437e-bff1-089baf8c3864', N'Danh sách máy', N'Machines List', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4f48b46e-5351-4da1-8fc0-a3b9d8b0c7c3', N'Quên mật khẩu', N'I forgot my password', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'512587b4-671b-433c-a784-7f7c631182b5', N'Đang xử lý', N'In progress', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5273249e-092b-4df1-9ae4-dee2c703b35e', N'Cổng COM', N'Port COM', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'54cc323d-05ab-45fa-b3e4-cabcf5e4d706', N'Trạng thái sản xuất', N'Production Status', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'554f4763-ea8b-4cae-9cb9-1ae767349be6', N'Đăng ký', N'Registration', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'562d582e-786d-431b-9c3d-5400984d33b9', N'Mã vạch', N'Barcode', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'58cb5579-8480-4a68-bf6c-9665b82400ca', N'Mã', N'ID', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5c71c5d1-1afb-4f24-a92e-7c13cb341d7f', N'Tên máy', N'Machine Name', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'5e7dfe6a-57db-4106-a3a3-a4b907fc2d30', N'Dữ liệu đã tồn tại', N'Data already exists', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6241a0e0-e3f3-4440-8c8c-634c228defcb', N'Lưu và in (F1)', N'Save and Print (F1)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6292f3f5-ffa6-456d-9ee2-8ef34312d33c', N'Địa chỉ', N'Address', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'62c6169f-82b9-4895-b218-2e267054dc1d', N'Báo cáo tổng hợp theo kế hoạch', N'Report synthetic by plan', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'63c0b952-6815-4e4e-b5db-e04d05c3e734', N'Kết quả sản xuất', N'Produced result', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'644039fe-ec75-49d3-9b73-c745b5c7652e', N'Lọc (F5)', N'Refresh (F5)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'661e4ba3-7328-49c8-89a0-6a5f4bdb254c', N'Đã xong', N'Completed', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'66639586-e66b-475f-94c1-602655584a9f', N'SL sản phẩm đã sản xuất', N'Number of products produced', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'680ad68b-a2ae-4a6c-a62c-89e387b925e4', N'Xác nhận mật khẩu', N'Confirm password', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'68c49be5-49d4-4e44-a1f6-ec2a466c6ff6', N'Chương trình', N'Program', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6c63c98b-9546-4933-923e-f372d20eae79', N'Nhóm quyền', N'Authority Group', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6dd33e1a-9c17-4e58-8d0b-b1c022b0e7e7', N'Tiếng Anh', N'English', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6e9db1e3-dfa9-4baa-a1be-638e05a47cda', N'Sau thời gian chỉ định chương trình sẽ bị vô hiệu', N'After the specified time the program will be disabled', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6eea4f9b-0ae7-4ee8-b9c8-2df089576302', N'Quản lý PartNumber', N'PartNumber Management', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'76524a11-4b80-4653-86ac-87dbbc46791c', N'Thêm (F1)', N'Add (F1)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'77b3a7dd-9edc-4a1c-8563-bd8bfe8f1b7b', N'Quét mã vạch (F1)', N'Scan barcode (F1)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'78b568fb-1409-4b3b-bc68-411064ccd74c', N'Từ ngày', N'FromDate', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7d1fdade-5ce8-4a0f-ae9c-df0d2effa1e6', N'Giới tính', N'Gender', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'84999a2a-5b99-427a-bcc2-bf6c8ad3494b', N'Để tiếp tục sử dụng, bạn nên mua giấy phép', N'To continue using, you should purchase a license', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'849e7f0f-c5a4-4aab-bd9a-6ec586e41d14', N'Đăng nhập', N'Sign In', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'85da4873-5f8a-495d-ba5b-d3b5ed509005', N'Phân quyền (F6)', N'Authority (F6)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8626837a-3f97-4912-a7b1-73326b32d101', N'Tên công ty', N'Company name', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'894111e9-4338-4a8b-878e-6b47bd9dd27c', N'In thất bại', N'Print failed', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'89f90572-aabb-4e81-8f0b-5b3257028633', N'Số lượng sản phẩm OK', N'Quantity of products OK', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8a85a9b3-6f7b-4841-9eb2-75a6970843d6', N'Hệ thống', N'System', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8f171d9a-4cf4-473f-8b82-1606513cd3d0', N'Đổi mật khẩu', N'Change password', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'90ceea93-24c1-4a1d-bec5-8c46e1ac53a7', N'Xóa thất bại', N'Delete failed', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'90d84750-949e-4c1b-a348-96e73e600750', N'Chưa điền dữ liệu', N'No data entered', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'931ae299-ba7e-44e9-82a0-ef6dd6fb58fa', N'Đã bị hủy', N'NoUse', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'93b4406e-7ef4-4162-b6d8-193ae6440fa5', N'Hủy thất bại', N'Cancel failed', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9d15895a-8de5-422f-b5da-1c32289c54bc', N'Mã sản phẩm', N'Product code', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9da214ee-c416-4fea-b0c4-c6a421d38ffe', N'Mật khẩu không đúng', N'Incorrect password', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9e63c95f-2ff9-4139-a733-c3dbb18d028d', N'Chọn', N'Select', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9fca1df7-8307-4d85-bffd-d33dcefb5882', N'Chưa xử lý', N'None', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a01b25d8-82b9-455b-809f-8e196f50be08', N'Mật khẩu mới', N'New password', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a32c85eb-968d-40ff-8452-3277eb42ff61', N'Đến ngày', N'ToDate', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a748df35-6269-415f-819b-ae7be6ec6d6b', N'Chức năng chương trình', N'Program Function Master', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a8fe902d-f747-459e-b5fd-1da7f7558f29', N'Ko sử dụng', N'No User', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'a9cdb9e4-b319-4c87-a105-20210d793a10', N'Số lượng', N'Quantity', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ac7baeca-784e-4516-b511-1600ba5f50fd', N'Đăng ký in mã vạch', N'Register to print barcode', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ad373296-72f1-41aa-b44d-4141a60520b8', N'Tên máy in', N'Printer name', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b0c59b8b-e4b3-425b-b5af-2614332de5c6', N'Số lượng mã vạch đã in', N'Number of barcodes printed', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b474b0d4-3fcd-4bea-bf5b-c7cae0c51a47', N'Bảo lưu', N'Hold', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ba2d5d62-6c3b-4abd-99d2-c39388860e2e', N'Số lượng sản phẩm NG', N'Quantity of products NG', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'bbc4cee0-7e7a-4971-beb6-41067118968a', N'Kế hoạch sản xuất', N'Production plan', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'bdfb1ae5-d770-450e-8fcd-3cd510dadb9e', N'Đăng ký sử dụng phần mềm', N'Register to use the software', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'bed7208d-2bec-48b5-872a-a3332d3b7995', N'Ngày', N'DateTime', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c451c8af-90d2-421c-926c-41a52505212d', N'Lưu thất bại', N'Save failed', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c4bb3fa6-b58b-4f66-9bcf-78812cee87e5', N'Ngôn ngữ', N'Language', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c6755dbf-b434-494f-9fd9-3b7046123cad', N'Ứng dụng cần kết nối mạng để kích hoạt', N'The application requires a network connection to activate', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ccc75f11-4191-4ea7-89ca-39b306338dee', N'Chương trình chính', N'Main Menu', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'cd696e09-f042-4e24-a3fc-6cd7ae1b4cf7', N'Dùng thử', N'Trial', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ceeceade-4d5b-451a-ac9c-3e6319dc132e', N'In lại (F2)', N'RePrint (F2)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'cef92d54-8f12-4ce4-b262-2387609eb08d', N'Đóng (ESC)', N'Close (ESC)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd0f060fd-8a14-42b5-ba55-8a373e43aea6', N'Sử dụng', N'Using', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'd9782e63-18db-4544-83bf-2d8084514126', N'Danh sách khuôn', N'Molds List', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'db03c92c-cf4b-4591-9a25-e3cfd551f599', N'Tất cả', N'All', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'db7a7e2b-b913-4ed6-8abc-66212ed56b5b', N'Dùng thử cho 1 máy tính', N'Try it on 1 computer', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'debd89d7-f9f4-4edf-b2df-e74fbb92dda6', N'Xóa (F3)', N'Del (F3)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'df51e15f-4700-4fbb-ba7f-b1cee9bcd79f', N'Ngày hết hạn', N'Expiration date', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e02af4d5-5374-4231-9900-0435955182ac', N'Đang dùng', N'Using', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e243de1a-2f35-48f3-839b-5edb17b8ae66', N'Bản quyền', N'License', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e2ce3a12-ca42-44e2-9300-a0fd87d7ac85', N'Chưa chọn dữ liệu', N'No data selected', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e2f07665-956b-4fbb-834f-c1b60b42d3cb', N'Lưu thông tin đăng nhập', N'Keep me signed in', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e4de46c4-ae7c-4eb0-a108-59bb9937e1ce', N'Ngày kích hoạt', N'Activation date', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e5a5a522-506f-4fc1-b67d-5a0e2618de9b', N'Bạn có muốn hủy thông tin này?', N'Do you want to cancel this information?', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e63a8214-397c-403e-86ac-d8a7a72b1c52', N'Lịch sử sản xuất', N'Production history', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e6d02436-9ff6-4fd4-8b0b-7371164050e3', N'Người dùng', N'Function', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e7c03b4c-ebe5-4d4c-b86a-685a64fee7e3', N'Sửa (F2)', N'Edit (F2)', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e98b12f3-031c-457b-8980-fbd0f87b34a8', N'Ngày quét mã vạch', N'Scan barcode date', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e9b4cae5-5072-413b-8d5a-39f055980142', N'Ngày dự kiến giao hàng', N'Expected Delivery Date', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'eb18e6b7-a891-406c-abb2-c57efc29dd4d', N'Ngày đăng ký', N'Regist date', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'eb206684-4848-4afa-9c0d-6cf297ab96e5', N'Chức năng', N'Function', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'edb3d01f-82f8-4743-bc13-4b8d94b4314f', N'Ngày sản xuất', N'Produced date', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'edf7e53b-8f96-4c78-b898-74106fbb8936', N'Nam', N'Male', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ee0f8f70-8522-405c-ac28-b32711cc7d9b', N'Quản lý người dùng', N'User management', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ef58ff25-78c5-4ec2-aadb-2214134d5a3a', N'Thư viện ngôn ngữ', N'Language Library', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f15dc6b4-99f5-4c8a-b897-25b9bd454f6e', N'Danh sách ca', N'Shifts List', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f309b93f-cdfd-4cfc-b773-35389ee589cf', N'Mã máy', N'Machine No', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f647b3f4-eff2-4c68-b276-d7d17be41c12', N'Mã ca', N'Shift No', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f8896811-89ed-441a-9484-a6b6451ebd1c', N'Lưu thành công', N'Save successfully', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f90a4644-b66d-4e41-b3c2-692c29ba9ccc', N'Tài khoản', N'Username', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fb880054-8bcb-4356-855b-8ad7ccf65bb6', N'Cấu hình', N'Setting', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fc37c7b9-2673-428c-a246-ce5c2add032e', N'Số giờ làm việc', N'Length hours of work', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fc9f5647-5a2b-4fc6-b5a8-1eaa356561cc', N'Ghi chú', N'Note', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fcd65782-7673-4b08-8ea5-19addeff8e64', N'Thống kê sản phẩm NG', N'Product report NG', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[LanguageLibraries] ([Id], [Vietnamese], [English], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fea399a2-9ab1-4e13-a087-b0aaf7b65167', N'Xác nhận', N'Confirmation', CAST(0x0000ABDF01583EDD AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[AuthorityGroups]    Script Date: 06/19/2020 21:21:49 ******/
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
INSERT [dbo].[AuthorityGroups] ([Id], [AuthorityGroupName], [Sort], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4f8944c7-3d63-4858-87fd-549a0f26fc04', N'Manager', 1, 1, CAST(0x0000ABDF01583EA1 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[AuthorityGroups] ([Id], [AuthorityGroupName], [Sort], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'595afb55-f523-4273-9701-fe97c1b8fe0e', N'Operator', 2, 1, CAST(0x0000ABDF01583EA1 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[AuthorityGroups] ([Id], [AuthorityGroupName], [Sort], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'c752267d-c1b3-4741-94ec-eb4986e3ceff', N'Admin', 0, 1, CAST(0x0000ABDF01583EA1 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 06/19/2020 21:21:49 ******/
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
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202006191353061_initial-database', N'Inavina.Migrations.Configuration', 0x1F8B0800000000000400ED1DD96EE4B8F13D40FE41E8A71CB36ECF4C806C8CF62E3C3E668D1DDBBD6E7B92B701DDA2DBCA4A5447876323C897E5219F945F08A993A724EA72CB26FCE2A6C82AB25855248BACAAFFFDE7BF8B1F9F3CD77A8441E8F8E870F67E6F7F6641B4F66D076D0E677174FFDDF7B31F7FF8ED6F16A7B6F7647DCDEB7D24F5704B141ECE1EA2687B309F87EB07E88170CF73D6811FFAF7D1DEDAF7E6C0F6E71FF6F7FF327FFF7E0E3188198665598BEB18458E07931FF8E7B18FD6701BC5C0BDF06DE8865939FEB24AA05A97C083E116ACE1E1EC1C81470781BD25E94B18E1CEC29975E43A00776505DDFB990510F22310E18E1EDC867015053EDAACB6B800B837CF5B88EBDD033784D9000ECAEA4DC7B2FF818C655E36CC41ADE330F23D4D80EF3F66C499F3CD5B917856100F93EF1493397A26A34E4878383B8AA3073FC0659F033FDECE2C1EE5C1B11B90EA259D8FFD00EE9DE03A0EDA635BBFB3B23AEF0AC6C0FC43FEDE59C7B11BC5013C44308E02E0BEB396F19DEBAC7F86CF37FEAF101DA2D875E99EE2BEE26F4C012E5A06FE1606D1F335BCCFFA7F6ECFAC39DB6ECE372C9A516DD231615EC07C3DB32EC0D3178836D103E6F80FDFCFAC33E709DA7949C61CB7C8C162801B45418C7F5EE20E833B1716DFE79538594A91B28A3EE07F1BF5A11AE5CA0FA21CC9398A3E7EA86D80A73C0E8B7E61D9D94B8BBE02B7C5908F030822681F159D38C13F6F1CAF69C34FCF8393E8D4765AF5306D3744072FB1006D12C9E3506E037F1300EF2C466BF2B5E0273C5FD7D04D5A840FCE369B3796DDBE55343E0B7CEFDA77051655B7F9B6F2E38028D91B5FB3E10D0836306A3EE6388481DE40F916CAD1B115EB86C4D5968D63312F756BA5C65D2AC8A3AB7B55708C1656E3CC68368AFACD276614642CBF9E9FF4405AA3DCFBED606305714B2B1B5DADC03436AA408D93106A04393182F97A04F30B409B186CE017E72E0081B66872CD8D70AA717E756084C8117FF895F3146D5C277C181C8F91CBC1E4F202AC1F1C0475E5316B66E4508D3323D1A53F38EFE598C6D82C5FFAD108D617634C998AFAF05D5B5B77E0364671548833A6CF085AC348B29164DAB40682E832F6EE60A06D4C2B5A1AA956E34CA834C25E80DCF919DD6174C7A8BA23F0ED3831D82E5D805A18E3A9D64687A871FED50F7EBD0A6CA2A207E6C457A5AD4E9FB6708D05E404BACE230C9E89588922A63917BFC420118302908F7971674DA9A58C49B42AFFB19D7E35EA7A42EA9ABEFDBC0061D462D72703629477A508BECEFB53AC5EF1BA9D3DB2327B42A36412FCD770E384D127101048BACA85696C944A855219679F96CE472FFBA6F1CCE2AB07E77E9C4DEC28F6BAD5E92F83E328C475603C23ED7ACD6A3195D562B506A8E55A4135352B851AE7482B05998D5ED689D1B4F768EBD1CE28D7BEF604211629898AA53F1853C22BD7DB444AB53536696474F5CBEBBE4F785B8F52364B31B5D2D4690F7EF2E3A01459DCDF16C65073AD64940BA55CC842D6E60DB7512D6A9C843E680CABE00AB8D1E04896200CFFE9075574ECCBA0EABAA31853970F3E1A1ECB916D07300C07C7F31922FAB692E8DAB4A89DAE35EBC35B581FAC6A4F4EEAAD80DCAD91A8B86F42C5D29B51F65D70629456D2F5C10C6833764567F97A5C5FD9CFF2AE727506F0164DD0A87D44259FE53DEDE40F1A7BF4E18316CBF3F0CC059B321E41C36DC367D7BF03EE311E69045014FE9182D9791B81991CAB3AF7190B458E997892B3537201C9CBB942C1DD92BE27E80F67FBC2FC31956FC344DAB2CAEF4512A6C4AA20A0E2E2BF27524AA1BF085151639A9EA3E49A36591BE584E55B1CFBDED685580F160DC458014C839F9227D359DD8F2D664D625FE969C604C82F305BA7DE963CAA69365D573F379DA693788B3B9718269B4D13DE6B9CF931524E9550FF7351F34F2D2695D916F5349D14CC1798C833E801B7B1E05DD0751BE9B2A330F4D74E428F7C57DB347003DB8F53645B6DA338947B443E18CC05A6AA43780E17E1D1EFED890CDA0271BE5AB2AFB7143111D82EFC41C08F4FAF308088C4F2499826C007E8483CEA3A68ED6C81DB92461CBC86876732E90566FECB09DC12CE46514BEA35E992E87B2C76B0E80777EEAFA3EB624EF1AE164B73DBAF86ECA4DA950DC3BC8AFD1D858D73D21F834DE524189F37E5C49910434A0F572ACEA83E69B10CA1C97495E733E9DBD6F469FA20CC5635CE1178AC8A164DD0E717862FC750DC01B872D255A7E1EEECA4384333579BCCA3B6E198493EC8B178494E8869B052C325B2D25CD19D95766311AC18E458ACD47EC11B9195526B136E13E116C5910477E9EF704D5E3D02F2093EC92EBA712FB3C35898D93279BE20A05730922EE3E1CC2A2D5D8ABD98C0682C40D5F65F065A7D54A84172CB0A950899E3E61A705C34171940215E4C0DC8EC198F0C5411E2A20E84EFDAD2F689C1A66E1A0A275829E129E7DAFAF9640DD7B25964B6347A0C923A6A34E08EDC2DA406FC3567BB16C0726B660D38EA359F0C18F34EB00E1479452105923E5A69C0F32A56171A538A4525EB558124A9E6522DD0D496D1CD9A515040A2A6042DDCC17841E1A9D05EFC6D3A4B627DF2F35717B534AFDA49B4386EF7435DC5C68202CEEBEACE7494DFA789E4AB3F1A363F1C72E3A92651E559906536760CFD9086BFBD5350A6EA8CD3F894A34F17C5A18602C46BF07EA8522F6EB5DBF5C61B767DAA0C2846F9E565B19D2CBE2DE66904F6AC603157846A5F5C80EDD6411B2A747B5662ADD2B8EDC7DFADF4E3997B298CF99A2133BFF92D30457E80F75FDC5772DF65C3332748BC81C01D20D713C7B62754936C9E15CB6D8E50BE3F16E7315F8EF376E4FFFCF24E8866CFEFA6C5834706E60C0FD6236717326EA8D4D522008BC4D5072E08248FBB8E7D37F690FA30A56E2D0B794E43937D6F0E3D8D6E4EC34B4B3420648F64181859597328D4DB181A1055AC0D8BBC4691C0FA249C20AA60950F62685065A92E24BE5365A9086931E7385238FE0A22C069265EB21AC99D7A23D6550295874E7D596C0E6A18A9645CB86930CC87E6F058376D1A20FBA5ADDE20E613B5D6901957D4908DACEE8CACDED6ED99F40494B5DDE84B654DFB614431B70ED2105416433514232E6F405C046B635781E16D93FA22530B6118A1A14343D350E8720D06C8A33F33F39F171A5199A0A81456F4AE2292DBDCF54543D9721891A0DC7F692054B13E2C6137C77C680E2F7577A001A525E698F6760534B9A3EA2C9DE446AB85684A9B0D2497595015468CB23223414682DA1B3AA88BDACEA68DF25AB78531A3A2F140E68B2C040863B9C8CA74243389D9C90A665264E4D2C865170364CDC5A1B6D9917E25D1CAD85809601819A542FCD240A8E229CABB3C022FC391D21ACD3194E17869A865E9D89625DEF94DB017735F8DE67BCB9A4FF640ABE77B97EC3957E74B17159CB77AE3C244BFE5345AF9C188F79B15EFEBBA773F7A62CD3EA7D417E79AF6BB7CF2A0A3D0D290E8F297B1FC1501BB18A9CD0BC7B67A249162999E9082E6ED8B07B6340CC5ABDB2A38FDECA48C42D481340185C83CF1EEAA0EE907E1FACAB0B2F52EABC232CC2A231645E90BA8AE1ED5E96E292036D029BBF0D05F8C4A7BBB2A2D7535E9ACCC12C794166A4CDE6E1805D697C2A0828F32625E163787C58420A5A1311F8C7DDA88786B114F1D0BBA4A78E23CA62FE0F266C3C8771921945F3691A669240D01CA484052A2B359CAE37BB2DBA5BC54C7F09307F0648D3E79A9469FD2089D4C87D2228D778779FC4DE6B9615ED81C4E1E5F93069397196D67B45D8DB6135C95F82A05F6ACA4F85DB82A656E428CFF52327AE28D948C3ACC5C9678BFA1B4CACCC2247A746CE233B47AC65AD2DB2315F656FF708F5D078FB7AC700190730FC3288D4A36FBB0BFFFFDCC3A721D10A60E659947D401EFA3DFC845EAFD47E222056D6FCE37D777B42250C2D066E2488BD1ADAB1C8BC688398D1EF181EA010462D469CD08B7325F2416C5EF3CF0F47B1A6EA338BC894B520AC8217CA0D99C09E3CB016817B9D7C63F232E427E93AE08917C3BD1858FD6DBB6577CF45E8D4EB5CD34A9F0129814B72FC5348E9DA65396AAB11340D16B81A78010C4E41CEF189E0E67FF4A201C58E77FFBC603796725AF0F0EAC7DEBDF5524D410072357DD3223BC0661625315697168DAB44FBE3482F3FA05A7D2F16652A243FBECF43189B9DF4E0FB00C9F76E653A917CCA4F853C8ABD769EE180F9A1EE0D19944BA9D52CC316307A445704C9996A83009840D5F1BBEA6DF0A485C4426C5DD6CE2D96EAB40FAEEDCC8899113DECCA474D59894AC506E1E3D4CE14E4A9EDCD143CD638DE856FA79A480EE5D1FE84BE24E592396828B487B156394D46E28A93A3F8A49E9AA9D3784330E1866A97F1D5254E1BE302DE9E96F6DA6DD1F3AAEA3FD1A6DB834E61D3720BD9D91136F881EE0140F927B80B5535B0FA3E87640D1295D13DEAA9A2B9D1B3A2AB95ED552AF0A73788DD27281A1DD1CCC3164DA7A45F415989446E9537A295F83145A3A69CB00AE9D2447EAECCFDAFD633C0E52A898D7DC4EB9EECDB165EA52273EE09F94D095AFFFFB60C8C409A017FB66EE07D08BF9217705E8A367A943400F900AA7801E60E59E01ED3581514A13564A8327CCCEFBDA3DA5F05299A88EC2A0AE344246E13112282A07D804F78EE40BEE2381757F7CC5A529A4C08E9F937AAC149C93641BED34D3C264EA6B1C26A922AB67C649213D924EA90E8B28627CF99CBE1AE9A1BBF20197AD92023656EEE731B8A02E88D42E32814662E7AE4CF0B2CBC4584CA0BF38BC784A6631F91C3F856C0E577EB3506E8C15BB89D429156FDBEF888529DD61D764EB6C9C91592B21B3AC238ADA8E246923DF278E6F858E70DF65D8E92A4D500A199C05A4420D195AB65213C445BE670161F14586A8CC205D073FC9072D024F8AA590D3C4D2756C43E588161985FA28650D3AFD743D7F32FB191957321514BC58994BB54628F2E4D2751291D76B200E4562EB9A9E70EBB8D003EEBB0C734DC6541E237D955793D25A868D8997568B2BCD6D2D6249CBA5F0B33CD90D5488321DB64A618860773F537645AA66C9D2D7C468A18EA64B55E2CDBC53C977DD965CD225499250AE3B61064C602DF4BB8E43249A57166DBEA7410F919A5A6FC8526D2B0944DBD38087C83AAD37E0FED95A23A1B4188D056FC163440CD0E9AF13183A9B12C402C34470CD6CBE8B3AE7E8DECFCF005C8FF22AFC6B0818011BEFCC8F82C8B907EB087F5EC33074D066667D056E4CECDA788F629FA3AB38DAC6111E32F4EE5C8618E42C51853FC99ACDF67971B525BFC23E8680BBE9109BFD15FA143B644397F5FB4CBC935081208794CF1097A77389CF3C11DC3C17902E8558512A4019F98AB3D50DF4B62E06165EA11578846DFA8679F00BDC80F5F3320BAAA306523F112CD917270E204B5B98C128DBE39F98876DEFE987FF037C820F4125DB0000, N'6.1.3-40302')
/****** Object:  Table [dbo].[ProgramFunctionMasters]    Script Date: 06/19/2020 21:21:49 ******/
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
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'098788e6-263e-4df5-aecc-63d8ec4fdaf4', N'ReportSyntheticRegistBarcode', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'19d483b7-9b57-44b0-bc17-3b2353ec23fc', N'User', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'26a4c91f-37f9-49b1-a834-6d1b0660804f', N'ReportSyntheticProductionPlan', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'591efc9d-faca-401b-8e1a-d1d4b5ab678f', N'QuantityOfProductsOK', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6410672f-e5e7-40c7-bbf6-1bf8f79388c1', N'ProductionHistory', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6f1dd952-9502-4f67-a89d-e2d061bf3fc9', N'Language', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7265de22-c2d3-4b7b-83cc-6eaeb80d4224', N'Shift', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'79c66306-4d2f-42ef-bcc9-15e49c3999d6', N'Machine', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7bcce1ab-0bb2-45b0-b577-addfc530ba17', N'PartNumber', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7e91c703-7221-4f39-9895-d224f3baee33', N'Setting', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'926938b5-d2f7-48da-ab6f-6a841ebefe7b', N'ProductionPlan', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9753aca9-cb94-426b-9452-f3668b4cff5b', N'RegistBarcode', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'aa8204c8-830c-4f39-9185-3fa8ab081c7d', N'QuantityOfProductsNG', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b0551a5b-ff1d-4764-b06a-260a58164878', N'ScanBarcode', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionMasters] ([Id], [ProgramName], [FunctionName], [Explanation], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f9f97128-4b84-4d9b-9dff-211300aa84b6', N'Mold', N'View', N'', 1, CAST(0x0000ABDF01583EA2 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[Shifts]    Script Date: 06/19/2020 21:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shifts](
	[Id] [nvarchar](128) NOT NULL,
	[ShiftNo] [nvarchar](max) NULL,
	[BeginTime] [time](7) NOT NULL,
	[LengthHours] [real] NOT NULL,
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
INSERT [dbo].[Shifts] ([Id], [ShiftNo], [BeginTime], [LengthHours], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8424776b-27ad-421e-b655-81d4083eb625', N'0001', CAST(0x0700709A4A320000 AS Time), 12, NULL, 1, CAST(0x0000ABDF01583ED9 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Shifts] ([Id], [ShiftNo], [BeginTime], [LengthHours], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b4331902-b0e3-4925-b5cc-b6175f108eb7', N'0002', CAST(0x070050CFDF960000 AS Time), 12, NULL, 1, CAST(0x0000ABDF01583ED9 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[ScanBarcodes]    Script Date: 06/19/2020 21:21:49 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 06/19/2020 21:21:49 ******/
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
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2abcc7a4-f4d1-48b3-9ba9-48ae6ab0da55', N'ca1', N'sZ78a', N'7eda9ff6061c111ed64c76544815dbec', N'Ca 1', NULL, NULL, 1, NULL, 1, CAST(0x0000ABDF01583E86 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4762588b-b8a9-4a6c-a87b-4e0d79395a0c', N'ca2', N'sZ78a', N'3e1caedbef025ad995f34bf6e0fa0d06', N'Ca 2', NULL, NULL, 1, NULL, 1, CAST(0x0000ABDF01583E86 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'48588136-bf52-44ec-b798-aed720389393', N'admin', N'sZ78a', N'4406ea609b6d69339410c864f98a6c89', N'Administrator', NULL, NULL, 1, NULL, 1, CAST(0x0000ABDF01583E86 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[Users] ([Id], [Username], [Salt], [Password], [FullName], [Phone], [Address], [Gender], [Note], [Status], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9752bc9f-a2a7-447d-9e28-b3af93ab6699', N'quanly', N'sZ78a', N'570d51545fc1a0899a9dc8280d90e176', N'Quản lý', NULL, NULL, 1, NULL, 1, CAST(0x0000ABDF01583E86 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[UserAuthorities]    Script Date: 06/19/2020 21:21:49 ******/
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
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'2ec531e3-58f5-4b7c-91b8-0089c6dad008', N'48588136-bf52-44ec-b798-aed720389393', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583ED0 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'4a3d04ed-a5ec-4891-960b-2dc81b1d5c51', N'9752bc9f-a2a7-447d-9e28-b3af93ab6699', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583ED0 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9983d308-5d0a-47d2-8699-eb32aa5c03b6', N'4762588b-b8a9-4a6c-a87b-4e0d79395a0c', N'595afb55-f523-4273-9701-fe97c1b8fe0e', CAST(0x0000ABDF01583ED0 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[UserAuthorities] ([Id], [UserID], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b591d981-b951-4685-9492-63d30076147e', N'2abcc7a4-f4d1-48b3-9ba9-48ae6ab0da55', N'595afb55-f523-4273-9701-fe97c1b8fe0e', CAST(0x0000ABDF01583ED0 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[RegistBarcodes]    Script Date: 06/19/2020 21:21:49 ******/
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
/****** Object:  Table [dbo].[ProgramFunctionAuthorities]    Script Date: 06/19/2020 21:21:49 ******/
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
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'042aca76-a319-4507-9c2d-e29e64862030', N'User', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0456b16d-8703-4a8a-9f05-c078f44961c1', N'ProductionPlan', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'0fdc6449-56d9-4a91-8276-abf6e8b012ff', N'RegistBarcode', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'161ac3b1-cb98-403e-ba4b-55bd676bfe3b', N'Setting', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'17502585-17ef-49d9-9201-5ccdf4149dab', N'QuantityOfProductsOK', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'17ebdfc7-6023-42e6-9df0-21e66347a78e', N'QuantityOfProductsOK', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'197cfae3-ea4b-4747-be00-6b33301006a7', N'Machine', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'26efb4d1-12f1-4bd3-bbc1-b446d17bb0f8', N'ReportSyntheticRegistBarcode', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'366a1e58-113f-48d1-a554-fa948acf496f', N'RegistBarcode', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3c3cfe0a-ff34-4dd6-bac4-fb3240785abe', N'QuantityOfProductsNG', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'3d0af997-8ca7-41b6-817d-23a926cb8e36', N'PartNumber', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'40806d15-8de5-44ff-b9e3-1e6cd38077f5', N'User', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'66a0abbf-fef9-4270-88cd-5e967ebe01e3', N'ScanBarcode', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'684f9c62-4644-49a1-9d48-f36280403d76', N'ProductionHistory', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'6ceaa495-ff10-45c1-9866-bf9f2f04b09c', N'Machine', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'72a8ace2-0f6c-4493-a1a1-b8c9e5c389f3', N'Mold', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'7fb87469-0100-4431-b04c-3879aee1d8b8', N'Mold', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'8307bfbd-0e15-4304-bd71-476dc6f2771c', N'ReportSyntheticProductionPlan', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'94c4af46-122d-4a8c-99b8-2800af87c7e6', N'Shift', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'966d679f-9cd8-4edf-aa08-6856f74aa7d0', N'Language', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'9a1f6af3-30d6-4b53-bedf-c6e3df520da8', N'Language', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'b34eec9d-16fb-42b7-8913-c08e0f8c9cf8', N'Shift', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ced19a2f-07c7-4c62-8c34-42b39dce20bb', N'ScanBarcode', N'View', N'595afb55-f523-4273-9701-fe97c1b8fe0e', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'df51a4b3-b388-4f93-99db-950c4777da4b', N'ProductionHistory', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'e7ae486d-1f24-4859-893c-45f65190b01b', N'PartNumber', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ed1e96df-ca26-44ed-8d57-57285f600b89', N'QuantityOfProductsNG', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f038f468-20be-4740-9052-cefd827b8d27', N'Setting', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'f360ae9c-8aa2-42b2-921c-ef8b764fb16a', N'ReportSyntheticRegistBarcode', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'fa365315-17c5-4ed1-b316-ef174470873e', N'ReportSyntheticProductionPlan', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'faa5df06-39ca-4014-a016-a01500ae41a2', N'ProductionPlan', N'View', N'c752267d-c1b3-4741-94ec-eb4986e3ceff', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
INSERT [dbo].[ProgramFunctionAuthorities] ([Id], [ProgramName], [FunctionName], [AuthorityGroupID], [CreatedAt], [CreatedBy], [EditedAt], [EditedBy]) VALUES (N'ffa09877-e198-4a3c-9ed0-bbb0a67d6d30', N'ScanBarcode', N'View', N'4f8944c7-3d63-4858-87fd-549a0f26fc04', CAST(0x0000ABDF01583EB4 AS DateTime), N'Administrator', NULL, NULL)
/****** Object:  Table [dbo].[ProductionPlans]    Script Date: 06/19/2020 21:21:49 ******/
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
/****** Object:  ForeignKey [FK_dbo.UserAuthorities_dbo.AuthorityGroups_AuthorityGroupID]    Script Date: 06/19/2020 21:21:49 ******/
ALTER TABLE [dbo].[UserAuthorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAuthorities_dbo.AuthorityGroups_AuthorityGroupID] FOREIGN KEY([AuthorityGroupID])
REFERENCES [dbo].[AuthorityGroups] ([Id])
GO
ALTER TABLE [dbo].[UserAuthorities] CHECK CONSTRAINT [FK_dbo.UserAuthorities_dbo.AuthorityGroups_AuthorityGroupID]
GO
/****** Object:  ForeignKey [FK_dbo.UserAuthorities_dbo.Users_UserID]    Script Date: 06/19/2020 21:21:49 ******/
ALTER TABLE [dbo].[UserAuthorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAuthorities_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserAuthorities] CHECK CONSTRAINT [FK_dbo.UserAuthorities_dbo.Users_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.RegistBarcodes_dbo.Users_UserID]    Script Date: 06/19/2020 21:21:49 ******/
ALTER TABLE [dbo].[RegistBarcodes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RegistBarcodes_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[RegistBarcodes] CHECK CONSTRAINT [FK_dbo.RegistBarcodes_dbo.Users_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.ProgramFunctionAuthorities_dbo.AuthorityGroups_AuthorityGroupID]    Script Date: 06/19/2020 21:21:49 ******/
ALTER TABLE [dbo].[ProgramFunctionAuthorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProgramFunctionAuthorities_dbo.AuthorityGroups_AuthorityGroupID] FOREIGN KEY([AuthorityGroupID])
REFERENCES [dbo].[AuthorityGroups] ([Id])
GO
ALTER TABLE [dbo].[ProgramFunctionAuthorities] CHECK CONSTRAINT [FK_dbo.ProgramFunctionAuthorities_dbo.AuthorityGroups_AuthorityGroupID]
GO
/****** Object:  ForeignKey [FK_dbo.ProductionPlans_dbo.Users_UserID]    Script Date: 06/19/2020 21:21:49 ******/
ALTER TABLE [dbo].[ProductionPlans]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductionPlans_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ProductionPlans] CHECK CONSTRAINT [FK_dbo.ProductionPlans_dbo.Users_UserID]
GO
