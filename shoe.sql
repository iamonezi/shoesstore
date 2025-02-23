USE [master]
GO
/****** Object:  Database [ShoeStoreManagement]    Script Date: 07/16/2023 8:09:14 CH ******/
CREATE DATABASE [ShoeStoreManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoeStoreManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShoeStoreManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShoeStoreManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShoeStoreManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShoeStoreManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoeStoreManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoeStoreManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoeStoreManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoeStoreManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoeStoreManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoeStoreManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoeStoreManagement] SET  MULTI_USER 
GO
ALTER DATABASE [ShoeStoreManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoeStoreManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoeStoreManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoeStoreManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShoeStoreManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShoeStoreManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShoeStoreManagement] SET QUERY_STORE = OFF
GO
USE [ShoeStoreManagement]
GO
/****** Object:  Table [dbo].[account]    Script Date: 07/16/2023 8:09:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[role] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 07/16/2023 8:09:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[logo_url] [varchar](255) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 07/16/2023 8:09:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CommentMsg] [nvarchar](max) NULL,
	[CommentDate] [datetime] NULL,
	[ProductID] [int] NULL,
	[UserID] [int] NULL,
	[ParentID] [bigint] NULL,
	[Rate] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 07/16/2023 8:09:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[order_date] [date] NULL,
	[total_price] [decimal](10, 2) NULL,
	[order_status_id] [int] NOT NULL,
	[address] [nvarchar](255) NULL,
	[phone] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 07/16/2023 8:09:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[orderline_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderline_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_status]    Script Date: 07/16/2023 8:09:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_status](
	[order_status_id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 07/16/2023 8:09:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [text] NULL,
	[image_url] [varchar](255) NULL,
	[price] [decimal](10, 2) NULL,
	[status] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (1, N'phuong', N'phuong@gmail.com', N'123', 0)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (3, N'phuongadmin', N'admin', N'admin', 1)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (7, N'Phuong', N'quanphuong@gmail.com', N'phuong', 0)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (8, N'Hu?nh Hoàng Phuong', N'admin1', N'admin1', 0)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (9, N'Hu?nh Hoàng Phuong', N'admin2', N'admin2', 0)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (10, N'Hu?nh Hoàng Phuong', N'a', N'a', 0)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (11, N'Hu?nh Hoàng Phuong', N'phuong', N'1', 0)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (12, N'Hu?nh Hoàng Phuong', N'ad', N'1', 0)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (13, N'123@gmail.com', N'ph', N'ph', 0)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (15, N'Hu?nh Hoàng Phuong', N'abc', N'abc', 0)
INSERT [dbo].[account] ([customer_id], [name], [email], [password], [role]) VALUES (17, N'Hu?nh Hoàng Phuong', N'alo', N'alo', 0)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([brand_id], [name], [logo_url], [status]) VALUES (5, N'Nike', N'images/nike.svg', 1)
INSERT [dbo].[brand] ([brand_id], [name], [logo_url], [status]) VALUES (6, N'Adidas', N'images/adidas.svg', 1)
INSERT [dbo].[brand] ([brand_id], [name], [logo_url], [status]) VALUES (8, N'New Balance', N'images/newbalance.svg', 1)
INSERT [dbo].[brand] ([brand_id], [name], [logo_url], [status]) VALUES (9, N'Puma', N'images/puma.svg', 1)
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (10, 1, CAST(N'2023-03-22' AS Date), CAST(277.00 AS Decimal(10, 2)), 1, N'123123', 943474351)
INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (11, 1, CAST(N'2023-03-23' AS Date), CAST(1215.00 AS Decimal(10, 2)), 1, N'Cà Mau', 943474351)
INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (22, 13, CAST(N'2023-03-24' AS Date), CAST(1243.00 AS Decimal(10, 2)), 1, N'Phuong', 943474351)
INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (23, 15, CAST(N'2023-07-13' AS Date), CAST(403.00 AS Decimal(10, 2)), 2, N'ca Mau', 943474351)
INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (24, 15, CAST(N'2023-07-13' AS Date), CAST(79.00 AS Decimal(10, 2)), 1, N'ca Mau', 943474351)
INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (25, 15, CAST(N'2023-07-13' AS Date), CAST(73.00 AS Decimal(10, 2)), 1, N'ca Mau', 943474351)
INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (26, 17, CAST(N'2023-07-13' AS Date), CAST(518.00 AS Decimal(10, 2)), 1, N'Ca Maueee', 123)
INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (27, 17, CAST(N'2023-07-13' AS Date), CAST(73.00 AS Decimal(10, 2)), 2, N'eqwe', 943474351)
INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (28, 17, CAST(N'2023-07-14' AS Date), CAST(703.00 AS Decimal(10, 2)), 1, N'ca Mau', 943474351)
INSERT [dbo].[order] ([order_id], [customer_id], [order_date], [total_price], [order_status_id], [address], [phone]) VALUES (29, 17, CAST(N'2023-07-14' AS Date), CAST(388.00 AS Decimal(10, 2)), 1, N'123', 943474351)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (12, 10, 12, 2, CAST(178.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (13, 10, 16, 1, CAST(89.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (14, 11, 12, 5, CAST(445.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (15, 11, 16, 5, CAST(445.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (39, 22, 16, 12, CAST(1068.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (40, 22, 17, 1, CAST(63.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (41, 22, 18, 3, CAST(102.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (42, 23, 17, 3, CAST(189.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (43, 23, 18, 6, CAST(204.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (44, 24, 24, 1, CAST(69.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (45, 25, 17, 1, CAST(63.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (46, 26, 27, 2, CAST(138.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (47, 26, 23, 5, CAST(370.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (48, 27, 17, 1, CAST(63.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (49, 28, 17, 11, CAST(693.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([orderline_id], [order_id], [product_id], [quantity], [price]) VALUES (50, 29, 17, 6, CAST(378.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[order_status] ON 

INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (1, N'Done')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (2, N'Cancel')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (3, N'Waiting')
SET IDENTITY_INSERT [dbo].[order_status] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [brand_id], [name], [description], [image_url], [price], [status], [quantity]) VALUES (12, 5, N'NIKE WOMENS COURT LEGACY LIFT SNEAKER - WHITE', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', N'images/721300f0-14e8-43b6-b7b4-040cbd911195.webp', CAST(89.00 AS Decimal(10, 2)), 1, 10)
INSERT [dbo].[product] ([product_id], [brand_id], [name], [description], [image_url], [price], [status], [quantity]) VALUES (16, 5, N'NIKE MENS AIR MAX EXCEE SNEAKER - OFF WHITE', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', N'images/US_01_601222_00.webp', CAST(89.00 AS Decimal(10, 2)), 1, 72)
INSERT [dbo].[product] ([product_id], [brand_id], [name], [description], [image_url], [price], [status], [quantity]) VALUES (17, 6, N'ADIDAS GIRLS RACER TR21 SNEAKER - LEOPARD', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', N'images/US_01_807997_00.webp', CAST(63.00 AS Decimal(10, 2)), 1, 65)
INSERT [dbo].[product] ([product_id], [brand_id], [name], [description], [image_url], [price], [status], [quantity]) VALUES (18, 6, N'ADIDAS BOYS ADILETTE COMFORT SLIDE SANDAL - GREY', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', N'images/US_01_702717_00.webp', CAST(34.00 AS Decimal(10, 2)), 1, 74)
INSERT [dbo].[product] ([product_id], [brand_id], [name], [description], [image_url], [price], [status], [quantity]) VALUES (21, 8, N'NEW BALANCE WOMENS FRESH FOAM ROAV RUNNING SHOE - WHITE', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', N'images/US_01_401220_00.webp', CAST(84.00 AS Decimal(10, 2)), 1, 86)
INSERT [dbo].[product] ([product_id], [brand_id], [name], [description], [image_url], [price], [status], [quantity]) VALUES (23, 8, N'NEW BALANCE WOMENS 515 SNEAKER - NAVY', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', N'images/US_01_401609_00.webp', CAST(74.00 AS Decimal(10, 2)), 1, 94)
INSERT [dbo].[product] ([product_id], [brand_id], [name], [description], [image_url], [price], [status], [quantity]) VALUES (24, 9, N'PUMA WOMENS SOFTRIDE SOPHIA ONE4ALL SNEAKER - IVORY', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', N'images/US_01_401664_00.webp', CAST(69.00 AS Decimal(10, 2)), 1, 98)
INSERT [dbo].[product] ([product_id], [brand_id], [name], [description], [image_url], [price], [status], [quantity]) VALUES (27, 9, N'PUMA MENS ENZO EVOLVE SLIP ON SNEAKER - WHITE', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', N'images/US_01_601240_00.webp', CAST(69.00 AS Decimal(10, 2)), 1, 97)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__account__AB6E6164290BEC47]    Script Date: 07/16/2023 8:09:15 CH ******/
ALTER TABLE [dbo].[account] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_account] FOREIGN KEY([UserID])
REFERENCES [dbo].[account] ([customer_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_account]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_product]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[account] ([customer_id])
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([order_status_id])
REFERENCES [dbo].[order_status] ([order_status_id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([brand_id])
GO
USE [master]
GO
ALTER DATABASE [ShoeStoreManagement] SET  READ_WRITE 
GO
