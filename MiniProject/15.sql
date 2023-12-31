USE [master]
GO
/****** Object:  Database [SWP]    Script Date: 11/15/2023 10:53:15 PM ******/
CREATE DATABASE [SWP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SWP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP] SET  MULTI_USER 
GO
ALTER DATABASE [SWP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP] SET QUERY_STORE = OFF
GO
USE [SWP]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/15/2023 10:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[role_id] [int] NULL,
	[profile_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Business_Staff]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business_Staff](
	[business_staff_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[business_staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Content] [varchar](255) NULL,
	[accountID] [int] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[import_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[product_import_quantity] [int] NULL,
	[product_import_size] [int] NULL,
	[import_date] [date] NULL,
	[manager_id] [int] NULL,
	[provider_id] [int] NULL,
	[total_import_price] [money] NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK__Import__F3E6B05F96AC7B6B] PRIMARY KEY CLUSTERED 
(
	[import_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[manager_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[customer_name] [varchar](50) NULL,
	[product_id] [int] NULL,
	[product_quantity] [int] NULL,
	[price] [money] NULL,
	[order_status] [varchar](50) NULL,
	[order_date] [date] NULL,
	[business_staff_id] [int] NULL,
	[product_size] [varchar](10) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](15) NOT NULL,
	[note] [nvarchar](100) NULL,
	[coupon_code] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_image] [nvarchar](max) NULL,
	[product_name] [nvarchar](max) NULL,
	[product_price] [money] NULL,
	[product_description] [nvarchar](max) NULL,
	[category_id] [int] NULL,
	[brand_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Size]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Size](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[size] [varchar](10) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile](
	[profile_id] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
	[full_name] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[dob] [date] NULL,
	[gender] [int] NULL,
	[address] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[profile_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[provider_id] [int] IDENTITY(1,1) NOT NULL,
	[provider_name] [nvarchar](max) NULL,
	[provider_address] [nvarchar](max) NULL,
	[provider_email] [nvarchar](max) NULL,
	[provider_phone] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[provider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[receipt_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[total_money] [money] NULL,
	[deposit] [money] NULL,
	[note] [varchar](max) NULL,
	[business_staff_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[receipt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] NOT NULL,
	[role_name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipper](
	[shipper_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[order_id] [int] NULL,
	[status] [varchar](50) NULL,
	[shipper_deposit] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[shipper_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shopping_Cart]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shopping_Cart](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_quantity] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[product_size] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (1, N'dat', N'123', 3, 1)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (2, N'mra', N'mra', 1, 2)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (3, N'mrb', N'mrb', 2, 3)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (4, N'datpham1', N'datpham1', 1, 4)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (5, N'datpham2', N'datpham2', 4, 5)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (7, N'mrc', N'mrc', 5, 7)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (8, N'ship', N'123', 5, 8)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (21, N'trung', N'123', 1, 21)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (22, N'trung', N'789', 1, 22)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (23, N'test', N'Trung040102@', 1, 23)
INSERT [dbo].[Account] ([account_id], [username], [password], [role_id], [profile_id]) VALUES (24, N'vinhvinh111', N'Trung040102@', 1, 24)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([admin_id], [account_id]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (1, N'NIKE')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (2, N'ADIDAS')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (3, N'CONVERSE')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (4, N'VANS')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (6, N'Men')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (7, N'Women')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (12, N'Accessory')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactID], [Name], [Email], [Content], [accountID]) VALUES (1, N'trung', N'trung', N'10d', 1)
INSERT [dbo].[Contact] ([ContactID], [Name], [Email], [Content], [accountID]) VALUES (2, N'trung', N'admin@estore.com', N'aaaa', 2)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customer_id], [account_id]) VALUES (1, 4)
INSERT [dbo].[Customer] ([customer_id], [account_id]) VALUES (2, 5)
INSERT [dbo].[Customer] ([customer_id], [account_id]) VALUES (4, 7)
INSERT [dbo].[Customer] ([customer_id], [account_id]) VALUES (5, 8)
INSERT [dbo].[Customer] ([customer_id], [account_id]) VALUES (6, 2)
INSERT [dbo].[Customer] ([customer_id], [account_id]) VALUES (19, 21)
INSERT [dbo].[Customer] ([customer_id], [account_id]) VALUES (20, 22)
INSERT [dbo].[Customer] ([customer_id], [account_id]) VALUES (21, 23)
INSERT [dbo].[Customer] ([customer_id], [account_id]) VALUES (22, 24)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Import] ON 

INSERT [dbo].[Import] ([import_id], [product_id], [product_import_quantity], [product_import_size], [import_date], [manager_id], [provider_id], [total_import_price], [note]) VALUES (3, 1, 1, NULL, CAST(N'2023-10-10' AS Date), 1, 1, 200000.0000, NULL)
INSERT [dbo].[Import] ([import_id], [product_id], [product_import_quantity], [product_import_size], [import_date], [manager_id], [provider_id], [total_import_price], [note]) VALUES (4, 5, 1, 34, CAST(N'2002-07-07' AS Date), 1, 1, NULL, N'good')
INSERT [dbo].[Import] ([import_id], [product_id], [product_import_quantity], [product_import_size], [import_date], [manager_id], [provider_id], [total_import_price], [note]) VALUES (5, 1, 1, 41, CAST(N'2023-11-01' AS Date), 1, 1, NULL, N'test')
INSERT [dbo].[Import] ([import_id], [product_id], [product_import_quantity], [product_import_size], [import_date], [manager_id], [provider_id], [total_import_price], [note]) VALUES (7, 1, 1, 41, CAST(N'2023-11-08' AS Date), 1, 1, NULL, N'demo')
INSERT [dbo].[Import] ([import_id], [product_id], [product_import_quantity], [product_import_size], [import_date], [manager_id], [provider_id], [total_import_price], [note]) VALUES (8, 1, 1, 41, CAST(N'2023-11-01' AS Date), 1, 1, NULL, N'demo2')
INSERT [dbo].[Import] ([import_id], [product_id], [product_import_quantity], [product_import_size], [import_date], [manager_id], [provider_id], [total_import_price], [note]) VALUES (9, 2, 2, 42, CAST(N'2023-11-01' AS Date), 1, 1, NULL, N'demo2')
INSERT [dbo].[Import] ([import_id], [product_id], [product_import_quantity], [product_import_size], [import_date], [manager_id], [provider_id], [total_import_price], [note]) VALUES (10, 1, 1, 41, CAST(N'2023-11-02' AS Date), 1, 1, NULL, N'demo3')
SET IDENTITY_INSERT [dbo].[Import] OFF
GO
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([manager_id], [account_id]) VALUES (1, 3)
SET IDENTITY_INSERT [dbo].[Manager] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Detail] ON 

INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (1, 1, N'trung', 1, 2, 100000.0000, N'Delivered', CAST(N'2023-10-29' AS Date), NULL, N'42', N'ha noi', N'9999', NULL, NULL)
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (4, 2, N'dan', 3, 2, 5000000.0000, N'Delivered', CAST(N'2023-10-22' AS Date), NULL, N'44', N'da nag', N'8888', NULL, NULL)
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (7, 2, N'dat', 4, 3, 7000000.0000, N'Delivered', CAST(N'2034-10-29' AS Date), NULL, N'43', N'lao cai', N'6666', NULL, NULL)
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (8, 6, N'a', 1, 2, 400.0000, N'Delivered', CAST(N'2023-10-30' AS Date), NULL, N'44', N'aa', N'aa', N'aaaa', N'aaaa')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (9, 6, N'a', 1, 1, 200.0000, N'Delivered', CAST(N'2023-10-30' AS Date), NULL, N'42', N'a', N'1', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (10, 6, N'a', 2, 1, 130.0000, N'Delivered', CAST(N'2023-10-30' AS Date), NULL, N'43', N'a', N'1', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (11, 6, N'a', 1, 1, 200.0000, N'Delivered', CAST(N'2023-10-31' AS Date), NULL, N'43', N'a', N'1', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (12, 6, N'trung', 1, 2, 400.0000, N'Delivered', CAST(N'2023-10-31' AS Date), NULL, N'43', N'ha noi', N'090', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (13, 6, N'trung', 1, 1, 200.0000, N'Delivered', CAST(N'2023-11-01' AS Date), NULL, N'43', N'hoai duc', N'00009', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (14, 6, N'Dat Pham', 1, 1, 200.0000, NULL, CAST(N'2023-11-02' AS Date), NULL, N'42', N'Phố Phủ Doãn', N'0857138734', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (15, 1, N'Dat Pham', 1, 1, 200.0000, NULL, CAST(N'2023-11-06' AS Date), NULL, N'42', N'Phố Phủ Doãn', N'0857138734', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (16, 1, N'Dat Pham', 2, 2, 260.0000, NULL, CAST(N'2023-11-06' AS Date), NULL, N'42', N'Phố Phủ Doãn,Hà Nội,Vietnam', N'0857138734', N'đateptrai', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (17, 1, N'Dat Pham', 1, 2, 400.0000, NULL, CAST(N'2023-11-06' AS Date), NULL, N'42', N'Phố Phủ Doãn,Hà Nội,Vietnam', N'0857138734', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (18, 1, N'Dat Pham', 1, 2, 400.0000, NULL, CAST(N'2023-11-07' AS Date), NULL, N'42', N'Phố Phủ Doãn,Hà Nội,Vietnam', N'0857138734', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (19, 1, N'Dat Pham', 2, 2, 260.0000, N'OnGoing', CAST(N'2023-11-07' AS Date), NULL, N'42', N'Phố Phủ Doãn,Hà Nội,Vietnam', N'0857138734', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (20, 1, N'Dat Pham', 3, 2, 420.0000, N'OnGoing', CAST(N'2023-11-07' AS Date), NULL, N'42', N'Phố Phủ Doãn,Hà Nội,Vietnam', N'0857138734', N'', N'')
INSERT [dbo].[Order_Detail] ([order_id], [customer_id], [customer_name], [product_id], [product_quantity], [price], [order_status], [order_date], [business_staff_id], [product_size], [address], [phone], [note], [coupon_code]) VALUES (21, 1, N'Dat Pham', 1, 2, 400.0000, N'OnGoing', CAST(N'2023-11-07' AS Date), NULL, N'44', N'Phố Phủ Doãn,Hà Nộisadasdasda,Vietnam', N'0857138734', N'', N'')
SET IDENTITY_INSERT [dbo].[Order_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (1, N'https://th.bing.com/th/id/OIP.7VX6jEPUgvGEDEUyNWB8DAHaE2?pid=ImgDet&rs=1', N'Jordan 1 Retro High OG', 200.0000, N'The Jordan 1 High OG UNC Toe is taking the sneaker game by storm. Jordan Brand masterfully integrates a unique colorway combo of University Blue, Black, and White on this iconic silhouette.

The Jordan 1 High OG UNC Toe showcases University Blue on the toe box and heel, which perfectly contrasts with the crisp White leather on the mid-panel and Black on the Swoosh and ankle collar. These kicks sit on a clean white midsole, offset by a vibrant University Blue outsole, creating an impressive visual balance.

The Jordan 1 High OG UNC Toe debuted July 22, 2023, commanding a retail price of $180, truly delivering the essence of style and quality.', 6, 1)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (2, N'https://th.bing.com/th/id/OIP.hAu8zeZr6nIhK9dAQUB5HAHaFw?pid=ImgDet&rs=1', N'Nike Dunk Low  Cacao', 130.0000, N'Nike did it again on July 10, 2023, when they dropped the Dunk Low in the enticing Cacao Wow colorway. This shoe is a surefire hit for those who crave unique kicks.    Crafted with buttery smooth leather, the upper sports a cool Cacao Wow finish, delivering a potent mix of style and comfort. This Dunk Low uses a light, creamy hue for contrast, adding just the right amount of pop.The Cacao Wow Dunk Low is set to turn heads and start conversations    This Nike Dunk in the Cacao Wow colorway was released on July 10, 2023, coming in at a retail price of $110.', 6, 1)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (3, N'https://thesneakerbuzz.ca/wp-content/uploads/2022/08/Air-Jordan-11-Cherry-Varsity-Red-CT8012-116-Release-Date-Price-1024x691.jpeg', N'Jordan 11 Retro Cherry (2022) (PS)', 210.0000, N'The Air Jordan 11 Cherry brings a Chicago colorway to the iconic patent leather sneaker. Cherry red patent leather mudguards surround the majority of the upper, alongside white leather and a matching Cherry red Jumpman. The lining features Cherry red cotton and with the signature 23 debossed on the heel tab. An icy blue outsole and Cherry red carbon fiber plate complete 2022’s Jordan 11 iteration.    The Air Jordan 11 Cherry was released on December 10, 2022 with a retail price of $225.', 6, 1)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (4, N'https://th.bing.com/th/id/OIP.2zPbDET8fWaE6Zx6K7D5IAHaFS?pid=ImgDet&rs=1', N'Jordan 2 Retro Low', 150.0000, N'Wear a shoe with over 30 years of legacy that remains fresh to this day. Making its debut in 1986, the AJ2 was the cool younger sibling of its famous predecessor—a sleeker and more pared-down version of the iconic AJ1. With premium leather and an Air-Sole unit underfoot, this throwback serves the ultimate combo of wearability and style.', 6, 1)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (5, N'https://th.bing.com/th/id/R.704265f05d6c687a56d96ee0e8a55572?rik=kMy039U8n5RKyw&pid=ImgRaw&r=0', N'Jordan 4 Retro', 210.0000, N'For the first time in over a decade, the Air Jordan 4 Retro Thunder is returning and is being featured as part of the Jordan Brand Spring/Summer 2023 campaign.    Jordan Brand brought back this fan favorite colorway that is constructed using premium black nubuck uppers with splashes of Tour Yellow throughout the midsole, lace eyelets, and tongue. Michael Jordan''s iconic Jumpman logo is placed on the heel tab, tongue and insoles of the sneakers.    The Air Jordan 4 Retro Thunder (2023) released May 13, 2023, with a retail price of $210.', 6, 1)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (6, N'https://th.bing.com/th/id/OIP.2HwrQGExdNWceduuQ3dAGgHaE5?pid=ImgDet&rs=1', N'Air Jordan 1 High OG Spider-Man', 200.0000, N'Nike and Jordan Brand are returning back to the Spider-Verse for their second Spider-Man themed Air Jordan 1, with the release of the Air Jordan 1 High OG Spider-Man Across the Spider-Verse.    Also known as the Next Chapter, the Jordan 1 High OG Spider-Man Across the Spider-Verse is the next iteration of the original Air Jordan 1 Chicago colorway. The limited edition sneakers are constructed using various leathers, suedes, and other premium materials across the uppers. The patterns used across the sneakers are designed to mimic the Miles Morales/Spider-Man animation style.    The Air Jordan 1 High OG Spider-Man Across the Spider-Verse released May 20, 2023, with a retail price of $200.', 6, 1)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (7, N'https://th.bing.com/th/id/R.c367c2a99cc0b094b9491366fd593d24?rik=dgyFcARTxzEaMA&pid=ImgRaw&r=0', N'adidas Yeezy Foam RNR', 146.0000, N'The adidas Yeezy Foam RNNR MX Cinder is where high fashion meets innovative comfort. Wrapped in a MX Cinder colorway, this pair offers a unique combination of dark, earthy hues, giving it a versatile appeal that''s equal parts streetwear-ready and avant-garde.    Constructed with a unique foam compound, the Yeezy Foam RNNR conforms to your foot for unparalleled comfort, while its distinctive, porous design gives off an out-of-this-world vibe. This sneaker pushes the boundaries of traditional footwear aesthetics and function, making it a must-have for trendsetters.With a fashion-forward design, the adidas Yeezy Foam RNNR MX Cinder not only elevates your style but promises ultimate comfort in every step. Take your sneaker game into the future.    The adidas Yeezy Foam RNNR MX Cinder released on May 31, 2023, with a retail price of $90.', 6, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (8, N'https://th.bing.com/th/id/OIP.fX7VnFi6H6gngyw-bj5JzQHaGe?pid=ImgDet&rs=1', N'adidas Gazelle Bold Pink Glow ', 120.0000, N'The adidas Gazelle Bold Pink Glow W, features 3 major colors: pink glow, victory blue, and gum.    This women’s (W) sneaker has a suede upper that comes in a pink hue with the brand´s 3-Stripes displayed on both sides. The outsole of this shoe is made of semi-transparent rubber and it also features a synthetic lining throughout. A white lace closure and a "Gazelle" inscription in a metallic shade complete the look of this pair.    The adidas Gazelle Bold Pink Glow W was made available for purchase on December 14th, 2022, at a release price of $120.', 6, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (9, N'https://th.bing.com/th/id/OIP.bY4umgXPPhcUHl3gdsKOaAHaFM?pid=ImgDet&rs=1', N'adidas Yeezy Boost 700', 300.0000, N'The Yeezy 700 Boost Wave Runner is the shoe that led Yeezy''s pivot from a sleek, minimal aesthetic to a chunky, 90s inspired one. This was the gateway sneaker between knit runners like the 350 and the grungy skate look of the 550. The Yeezy 700 Wave Runner features a grey mesh and leather upper with black suede overlays and teal mesh underlays. At the base, a thick Boost sole and contrasting hits of orange complete the design.    The adidas Yeezy Boost 700 Wave Runner originally released in November of 2017, and most recently re-released in March of 2022 for a retail price of $300.', 6, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (10, N'https://th.bing.com/th/id/OIP.7NhB4a8k_4pjJmwaKXGNdQHaE8?pid=ImgDet&rs=1', N' adidas Yeezy Slide Azure', 70.0000, N'The Yeezy Slide in Azure hit the scene on May 31, 2023. Born from the innovative partnership of adidas and Yeezy, reshaping the way we see casual footwear. These slides have it all - style, comfort, and a nod to the bold.    Adorned in a vibrant Azure hue, they are a celebration of color and a symbol of fearless style. The sleek EVA foam design offers more than just a unique aesthetic. It provides comfort that complements your daily hustle or chill out sessions equally. It''s more than a slide. It''s a statement. It''s an ethos that embraces individuality and blurs the line between loungewear and streetwear.    With the adidas Yeezy Slide Azure, released at a retail price of $70, stepping into style has never been this effortless.', 6, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (11, N'https://th.bing.com/th/id/OIP.AvJyofkpsqlwd_rBHid9SwHaFM?pid=ImgDet&rs=1', N'adidas Yeezy Boost 350 V2 Bone', 356.0000, N'The adidas Yeezy Boost 350 V2 Bone features a triple white Primeknit upper with mesh side stripes and canvas heel tabs. At the base, a semi-translucent sole with Boost technology completes the design.    The adidas Yeezy Boost 350 V2 Bone released in March of 2022 and retailed for $230.', 6, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (12, N'https://th.bing.com/th/id/OIP.VQDJMgP-RhOzKb11q_NpGwHaHa?pid=ImgDet&rs=1', N'Vans OG Old Skool LX  Gallery Dept. Good Luck', 180.0000, N'The Vans Old Skool Gallery Dept Good Luck is a limited edition sneaker that combines the classic Old Skool silhouette with unique design elements from the Gallery Dept brand. The upper is made of premium suede and canvas materials in a bold black and white colorway, with Gallery Dept''s signature paint splatter detailing throughout. The shoe also features a custom Good Luck embroidery on the heel and a Gallery Dept logo on the tongue. Released on May 19th, 2023, the Vans Old Skool Gallery Dept Good Luck retails for $150. This shoe is a must-have for fans of both Vans and Gallery Dept, as it seamlessly blends the two brands'' aesthetics into one eye-catching design. Something we love about Vans Old Skool Gallery Dept Good Luck is the attention to detail in the design, from the paint splatter to the custom embroidery. Our experts think the standout feature of the Vans Old Skool Gallery Dept Good Luck is the unique collaboration between two iconic brands. This shoe is a true collector''s item and a statement piece for any sneakerhead''s collection.', 6, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (13, N'https://th.bing.com/th/id/OIP.lj7OhjupT9RhPIDIGdOd1wHaHa?pid=ImgDet&rs=1', N'Vans Sk8-Hi  One Piece Punk Hazard', 100.0000, N'Heavily inspired by the Eiichiro Oda manga, the One Piece x Vans Sk8-Hi takes us back to the day of Punk Hazard and features a 360-degree graphic that wraps around the sneaker’s canvas construction. On the lateral side the fire part of the island is highlighted, while over on the medial side, the frozen side is represented.', 6, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (14, N'https://th.bing.com/th/id/OIP.uBkZaiyAwSJWQgH087CyMgAAAA?pid=ImgDet&rs=1', N'Vans Era 95 DX  Fear of God White Black', 502.0000, N'The Vans Era 95 DX Fear of God White Black is part of a collaboration between Fear of God and Vans.    The Fear of God Vans Era 95 DX White Black features a premium leather upper that is both durable and functional, while the classic Vans rubber sole provides comfort and traction. Additionally, the shoe has a padded collar and reinforced stitching to make the shoe even more durable and comfortable for extended wear. The shoe boasts Fear of God branding on the heel and front.    We think that the most notable feature of the Vans Era 95 DX Fear of God White Black is its unique color scheme. The upper of the shoe is primarily Marshmallow White, with black detailing and Fear of God branding throughout. The combination gives the shoe a sleek and modern look that is perfect for any occasion. The Vans Era 95 DX Fear of God White Black was released on November 18th, 2017, at a retail price of $90.', 6, 3)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (15, N'https://stockx.imgix.net/Vans-Era-95-DX-Fear-Of-God-Red.png?fit=fill&bg=FFFFFF&w=1400&h=1000&auto=format,compress&trim=color&q=40', N'Vans Era 95 DX  Fear of God Red', 600.0000, N'The Vans Era 95 DX Fear Of God Red was made available as part of the brand’s commitment to continue producing its Fear Of God silhouette. The arrival of this shoe pays homage to its designer, Jerry Lorenzo, and comes in a red/Corduroy-Print colorway.    The Vans Era 95 DX Fear Of God Red represents the collaboration between Vans and Jerry Lorenzo, making the world a better place, one shoe at a time. The shoe showcases a canvas upper and branded laces. The underfoot of the sneaker features a rubber waffle outsole to give the shoe added traction for support, preventing you from slipping and falling. The sneaker also includes a padded ankle collar, while the heel reveals the "Off the Wall" branding. A woven Vans tab completes the design of this shoe.    The Vans Era 95 DX Fear Of God Red was released at a retail price of $90 on November 18th, 2017.', 6, 3)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (16, N'https://th.bing.com/th/id/OIP.5DD5Ry34smOagEiMEI8xIwHaEM?pid=ImgDet&rs=1', N'Vans Sk8-Hi Cap LX ReissueBlack Checkerboard', 200.0000, N'The classic Sk8-Hi silhouette gets a fresh revamp with the SK8-Hi CAP LX Reissue ''Black Checkerboard.'' The sneaker features a black-based canvas upper with matching suede overlays and quilted accents on the collar for added comfort. The high top also sports a zip closure for an easier fit, a branded tongue patch, and “Off The Wall” branding on a rubber midsole patch.', 6, 3)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (17, N'https://th.bing.com/th/id/OIP.zZb9pOxxGcnKcFarzqPObQHaFS?pid=ImgDet&rs=1', N'Vans Authentic  Fucking Awesome White', 236.0000, N'Pro-skater Jason Dill''s irreverent Fucking Awesome label launched its first physical store in 2019. Timed to coincide with the opening, Vans teamed up with FA to create a series of shoes that reference their first collaboration in 2013 with a repeating FA-branded print. With genuine skate heritage, the Fucking Awesome x Authentic C Pro ''White'' sneaker includes a canvas upper, vulcanized sole and rubber Waffle-inspired tread.', 6, 3)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (18, N'https://storage.googleapis.com/major-prod/stock/vans-sk8hi-horror-pack-nightmare-on-elm-street-freddy-krueger-13-08-2022-19-05-02.png', N'Vans Sk8-Hi Horror Pack Nightmare on Elm Street Freddy Krueger', 80.0000, N'The Vans Sk8-Hi Horror Pack Nightmare on Elm Street Freddy Krueger is a celebrated athletic sneaker shoe that features a chilling fabric top.    The Horror Pack Vans Sk8-Hi Nightmare on Elm Street released a high-top scary sneaker shoe inspired by Freddy Krueger. The sneakers come in a black, red, and green colorway. Other details include re-established protective covering, protective padded collars, and Vans trademark rubber waffle outer sole.    The Vans Sk8-Hi Horror Pack Nightmare on Elm Street Freddy Krueger was out in the market at the retail price of $80 and was released on the 1st of October 2021.', 6, 3)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (19, N'https://stockx.imgix.net/Converse-Chuck-Taylor-All-Star-70s-Hi-Comme-des-Garcons-PLAY-Black.png?fit=fill&bg=FFFFFF&w=1400&h=1000&auto=format,compress&trim=color', N'Converse Chuck Taylor All-Star 70 Hi  Comme des Garcons PLAY Black', 150.0000, N'Japanese designer Rei Kawakubo is one of the most prolific fashion designers of all time. Aside from her Comme des Garçons collections, she has had numerous sneaker collaborations over the years. One of the most outstanding of these collaborations involves her different iterations of work modifying and styling up the Converse Chuck Taylor with her sub-label Comme des Garçons PLAY. Kawakubo’s first iteration of his Converse Chuck Taylors came about in 2009 when she modified the original by stripping back its contrast stitching. Six years later, in 2015, she took the All Star Chuck 70s as her template and created a shoe so beloved that it has been re-released every year since.    The most immediately recognizable thing in shoes from the Comme des Garçons PLAY line is their heart and eyes logo, originally conceived and created by Filip Pagowski. Unlike the original 2009 version, however, the 2015 version and every version thereafter has moved away from the original minimalist philosophy that inspired Kawakubo to start this line of collaborations. The Converse Chuck Taylor All-Star 70s Hi Comme des Garçons PLAY harks back to the classic 70s Chuck Taylor style but with a high-top collar that snugly hugs the ankles and a black upper, white laces and a white sole and toe cap.    The Converse Chuck Taylor All-Star 70s Hi Comme des Garçons PLAY Black was released in March of 2019 and retailed for $125.', 6, 4)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (20, N'https://cdn.flightclub.com/3000/TEMPLATE/301902/1.jpg', N'Converse DRKSTAR Hi  Rick Owens DRKSHDW Black Egret', 180.0000, N'Since its debut, Converse DRKSTAR Hi Rick Owens DRKSHDW Black White is a seamless combination of Converse''s classic Chuck Taylor design and Rick Owens'' aesthetic.    The upper part of Converse DRKSTAR Hi Rick Owens DRKSHDW Black White is made of waxed cotton with an elongated tongue. The white toe cap is made of the signature DRKSHDW coupled with toe overlays. The shoe’s white heel is made of molded rubber. The soft canvas of the shoe helps to prevent blisters and provides flexibility.    Converse DRKSTAR Hi Rick Owens DRKSHDW Black White was first released on February 22, 2022, at a price of $195.', 6, 4)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (22, N'https://th.bing.com/th/id/OIP.ABMrUo8CnJtwlWtWXUL6FAHaFS?pid=ImgDet&rs=1', N'Converse Chuck Taylor All-Star  Peanuts Snoopy and Woodstock', 100.0000, N'The Converse Chuck Taylor All Star Peanuts Snoopy and Woodstock is a Marquis Mills-designed sneaker inspired by characters from Charles M. Schulz’s comic strip "the Peanuts."    This high-top All Star model by Converse features an all-white upper and black outline with Snoopy chilling on his back and Woodstock fluttering above Snoopy in bright yellow. The sneaker has the Peanuts imprinting on the tongue and the bright red Converse All-Star logo on the medial side with a visible graphic of "BONK" above it.    The Converse Chuck Taylor All Star Peanuts Snoopy and Woodstock was released in May 2022, going for a retail price of $100.', 6, 4)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (23, N'https://th.bing.com/th/id/OIP.NSKi51Ng7GkDauQzbaM-mwHaEu?pid=ImgDet&rs=1', N'Converse Chuck Taylor All-Star 70 Hi Off-White', 412.0000, N'PLEASE NOTE: US and UK sizing is the same for Converse All-Stars. Converse and Virgil Abloh’s Off-White teamed up once again to re-release the Converse Chuck Taylor All-Star 70s Hi Off-White. This canvas model served as a follow-up to Abloh’s first Converse collaboration that was part of the "The Ten" collection.    While the all-white canvas upper of the Converse Chuck Taylor All-Star 70s Hi Off-White draws similarities to classic non-collaborative colorways, there are many points of differentiation. To start, the black and white caution tape-themed midsole nods to one of Off-White’s key design motifs. Next, "Off-White™ for CONVERSE ‘CHUCK TAYLOR ALL-STAR’ Malden, Massachusetts USA c. 1917" is screen printed on the inside medial panel of the upper. To round out this Off-White Chuck Taylor, a modified star patch appears on the ankle and a signature orange zip-tie is hooked to the laces.    The Converse Chuck Taylor All-Star 70s Hi Off-White originally released in October of 2018, and restocked in April of 2021, at a retail of $130.', 6, 4)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (24, N'https://th.bing.com/th/id/OIP.0_970OSHIK-AS865E8y1CwHaFS?pid=ImgDet&rs=1', N'Converse Chuck Taylor All-Star 70 Hi Black', 64.0000, N'The Converse Chuck Taylor All Star 70s Hi Black provides a classic design that continues the tradition of perhaps one of the oldest athletic shoes in the history of footwear.    Although the history surrounding Converse began to take shape as early as 1917, the company designed the Chuck Taylor All Star 70s Hi Black and similar models decades later as part of a tribute to the original shoe. The newer silhouette maintains many of the aesthetic aspects of its predecessor, but some of the fittings and materials have been updated as a way to make a robust shoe that Converse fans and footwear enthusiasts might be able to wear for decades to come. The Converse Chuck Taylor All Star 70s Hi Black includes a premium canvas upper that is double-ply for extra strength and durability while the stitching near the toe is reinforced but designed to keep the classic look of the original. Converse added some extra padding to the insole in an effort to provide collectors or wearers with additional arch support and more cushioning for comfort.    The Converse Chuck Taylor All Star 70s Hi Black released in January 2018 for $85.', 6, 4)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (25, N'https://th.bing.com/th/id/OIP.42TSBthGiuFV3ajbhSZ8xAHaFP?pid=ImgDet&rs=1', N'adidas Yeezy Boost 350 V2
', 193.0000, N'The adidas Yeezy Boost 350 V2 Bone features a triple white Primeknit upper with mesh side stripes and canvas heel tabs. At the base, a semi-translucent sole with Boost technology completes the design.

The adidas Yeezy Boost 350 V2 Bone released in March of 2022 and retailed for $230.', 7, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (26, N'https://th.bing.com/th/id/OIP.Rmi2g6rKzHSAH_EcZYH6zQHaHa?pid=ImgDet&rs=1', N'adidas Ultra Boost 5.0 DNA
Halo Ivory (Women''s)', 118.0000, N'Featuring Halo Ivory and Cream White color scheme, the adidas Ultra Boost 5.0 DNA Halo Ivory W is a special edition of adidas Ultra Boost 5.0 sneakers in women sizing.

The adidas Ultra Boost 5.0 DNA Halo Ivory W sneaker features a predominantly Halo Ivory Preimeknit upper. The lightweight and breathable full Primeknit upper is supported by the three-striped cage on the midfoot in Halo Ivory colors, while the heel counter supports the sneaker’s heel in the same color. A full BOOST white midsole for impact absorption and cushioning through an energy return, a Halo Ivory tongue, and laces are also included in the design. The design also features a black treaded rubber outsole for traction and grip on various surfaces. The design is Halo Ivory Colored Ultra Boost prints on the sneaker’s heel counter.

The adidas Ultra Boost 5.0 DNA Halo Ivory W was launched on February 1, 2021 with $180 as its recommended retail price.', 7, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (27, N'https://assets.adidas.com/images/w_600,f_auto,q_auto/230bf4474aec41f39bdead1300aafe3d_9366/Ultraboost_5.0_DNA_Shoes_Pink_FZ3977_01_standard.jpg', N'adidas Ultra Boost 5.0 DNA
Shift Pink (Women''s)', 89.0000, N'Featuring Halo Ivory and Cream White color scheme, the adidas Ultra Boost 5.0 DNA Halo Ivory W is a special edition of adidas Ultra Boost 5.0 sneakers in women sizing.

The adidas Ultra Boost 5.0 DNA Halo Ivory W sneaker features a predominantly Halo Ivory Preimeknit upper. The lightweight and breathable full Primeknit upper is supported by the three-striped cage on the midfoot in Halo Ivory colors, while the heel counter supports the sneaker’s heel in the same color. A full BOOST white midsole for impact absorption and cushioning through an energy return, a Halo Ivory tongue, and laces are also included in the design. The design also features a black treaded rubber outsole for traction and grip on various surfaces. The design is Halo Ivory Colored Ultra Boost prints on the sneaker’s heel counter.

The adidas Ultra Boost 5.0 DNA Halo Ivory W was launched on February 1, 2021 with $180 as its recommended retail price.

', 7, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (28, N'https://i.pinimg.com/originals/c1/a3/2d/c1a32dca55fa81b7a901fe0cf7c8502e.jpg', N'adidas Ultra Boost 21
White Solar Green (Women''s)', 180.0000, N'Featuring Halo Ivory and Cream White color scheme, the adidas Ultra Boost 5.0 DNA Halo Ivory W is a special edition of adidas Ultra Boost 5.0 sneakers in women sizing.

The adidas Ultra Boost 5.0 DNA Halo Ivory W sneaker features a predominantly Halo Ivory Preimeknit upper. The lightweight and breathable full Primeknit upper is supported by the three-striped cage on the midfoot in Halo Ivory colors, while the heel counter supports the sneaker’s heel in the same color. A full BOOST white midsole for impact absorption and cushioning through an energy return, a Halo Ivory tongue, and laces are also included in the design. The design also features a black treaded rubber outsole for traction and grip on various surfaces. The design is Halo Ivory Colored Ultra Boost prints on the sneaker’s heel counter.

The adidas Ultra Boost 5.0 DNA Halo Ivory W was launched on February 1, 2021 with $180 as its recommended retail price.

', 7, 2)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (29, N'https://th.bing.com/th/id/OIP.pK9DGsYJp4vlhpiYcsdKXAHaHa?pid=ImgDet&rs=1', N'Jordan 4 Retro
Frozen Moments (Women''s)', 272.0000, N'The Jordan 4 Retro Frozen Moments made its debut on August 26, 2023. Cementing itself as a must-have, this iteration of the Jordan legacy showcased a balanced new design palette.

Crafted with precision, the sneaker flashes a blend of light iron ore, sail-neutral grey, black, and metallic silver, bringing a balanced and understated aesthetic to the iconic Jordan 4 silhouette. The defining feature is its meticulous craftsmanship and the fusion of these nuanced colors with suede and leather overlays on the upper. The iconic wings on the side panel boast a flashy metallic silver hue that make the sneaker pop.

With a lineage known for excellence and style, the Jordan 4 Retro Frozen Moments dropped at a retail price of $210.', 7, 1)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (30, N'https://th.bing.com/th/id/OIP.RH0CabMAm24Fcs0SuvNcDwHaFR?pid=ImgDet&rs=1', N'Jordan 1 Elevate Low
Wolf Grey (Women''s)', 272.0000, N'The women''s Jordan 1 Low LV8D Wolf Grey (W) arrives in a smooth white leather construction with Wolf Grey overlays and Swooshes. At the heel, an embroidery appearing as an outline of the Jordan Wings logo adds a modern feel. From, a thick platform Air sole at the base completes the design.

The women''s Jordan 1 Low LV8D Wolf Grey (W) released in February of 2022 and retailed for $140.

', 7, 1)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (31, N'https://th.bing.com/th/id/OIP.RH0CabMAm24Fcs0SuvNcDwHaFR?pid=ImgDet&rs=1', N'Jordan 1 Elevate Low
Wolf Grey (Women''s)', 272.0000, N'The women''s Jordan 1 Low LV8D Wolf Grey (W) arrives in a smooth white leather construction with Wolf Grey overlays and Swooshes. At the heel, an embroidery appearing as an outline of the Jordan Wings logo adds a modern feel. From, a thick platform Air sole at the base completes the design.

The women''s Jordan 1 Low LV8D Wolf Grey (W) released in February of 2022 and retailed for $140.

', 7, 1)
INSERT [dbo].[Product] ([product_id], [product_image], [product_name], [product_price], [product_description], [category_id], [brand_id]) VALUES (32, N'https://images.solecollector.com/complex/images/c_crop,h_817,w_1452,x_287,y_808/f_auto,fl_lossy,q_auto,w_1200/dg6cwmaccvfuhvi9926o/travis-scott-air-jordan-1-low-womens-olive-ps-dz5909-106-pair.jpg', N'Jordan 1 Retro Low OG SP
Travis Scott Olive (Women''s)', 622.0000, N'Travis Scott is back in 2023, following up his previous release of the Air Jordan 1 Retro Low Phantom in 2022, with another Air Jordan 1 Retro Low collaboration. The Jordan 1 Retro low OG SP Travis Scott Olive released exclusively in womens sizing.

The Air Jordan 1 Low OG SP Travis Scott Olive is constructed with white leather and black nubuck uppers. Travis continued to use his signautre reverse style Nike Swoosh, in an olive green colorway. The limited edition sneakers have an aged midsole that sits on top of an olive green outsole.

The women''s-exclusive Air Jordan 1 Retro Low OG SP Travis Scott Olive released April 26, 2023, with a retail price of $150.', 7, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Size] ON 

INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (1, 1, N'42', 13)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (2, 1, N'43', 16)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (3, 1, N'44', 16)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (4, 1, N'45', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (5, 2, N'42', 16)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (6, 2, N'43', 19)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (7, 2, N'44', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (8, 2, N'45', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (9, 3, N'42', 18)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (10, 3, N'43', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (11, 3, N'44', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (12, 3, N'45', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (13, 4, N'42', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (14, 4, N'43', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (15, 4, N'44', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (16, 4, N'45', 20)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (17, 5, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (18, 5, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (19, 5, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (20, 5, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (21, 5, N'46', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (22, 6, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (23, 6, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (24, 6, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (25, 6, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (26, 7, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (27, 7, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (28, 7, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (30, 7, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (31, 8, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (32, 8, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (33, 8, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (34, 8, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (35, 9, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (36, 9, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (37, 9, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (38, 9, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (39, 10, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (40, 10, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (41, 10, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (42, 10, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (43, 11, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (44, 11, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (45, 11, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (46, 11, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (47, 12, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (48, 12, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (49, 12, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (50, 12, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (51, 13, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (52, 13, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (53, 13, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (54, 13, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (55, 14, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (56, 14, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (57, 14, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (58, 14, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (59, 15, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (60, 15, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (61, 15, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (62, 15, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (63, 16, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (64, 16, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (65, 16, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (66, 16, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (67, 17, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (68, 17, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (69, 17, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (70, 17, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (71, 18, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (72, 18, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (73, 18, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (74, 18, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (75, 19, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (76, 19, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (77, 19, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (78, 19, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (79, 20, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (80, 20, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (81, 20, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (82, 20, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (93, 22, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (94, 22, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (95, 22, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (96, 22, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (97, 23, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (98, 23, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (99, 23, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (100, 23, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (101, 24, N'42', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (102, 24, N'43', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (103, 24, N'44', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (104, 24, N'45', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (105, 25, N'36', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (106, 25, N'37', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (107, 25, N'38', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (108, 25, N'39', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (109, 26, N'36', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (110, 26, N'37', 10)
GO
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (111, 26, N'38', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (112, 26, N'39', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (113, 27, N'36', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (114, 27, N'37', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (116, 27, N'38', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (117, 27, N'39', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (118, 28, N'36', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (119, 28, N'37', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (120, 28, N'38', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (121, 28, N'39', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (122, 29, N'36', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (123, 29, N'37', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (124, 29, N'38', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (125, 29, N'39', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (126, 30, N'36', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (127, 30, N'37', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (128, 30, N'38', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (129, 30, N'39', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (130, 31, N'36', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (131, 31, N'37', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (132, 31, N'38', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (133, 31, N'39', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (134, 32, N'36', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (135, 32, N'37', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (136, 32, N'38', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (137, 32, N'39', 10)
INSERT [dbo].[Product_Size] ([size_id], [product_id], [size], [quantity]) VALUES (138, NULL, NULL, 10)
SET IDENTITY_INSERT [dbo].[Product_Size] OFF
GO
INSERT [dbo].[Profile] ([profile_id], [image], [full_name], [phone], [dob], [gender], [address], [email]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profile] ([profile_id], [image], [full_name], [phone], [dob], [gender], [address], [email]) VALUES (2, N'https://3.bp.blogspot.com/-yL0flBPsX7E/XIlnIlpEzEI/AAAAAAAAJF8/bERZkWaZQo8VRzMW506yhBCCk6lKgi0cQCLcBGAs/s2560/cristiano-ronaldo-2048x2048-hd-17168.jpg', N'trung', N'090', CAST(N'2023-10-03' AS Date), 1, N'ha noi', N'dan@gmail.com')
INSERT [dbo].[Profile] ([profile_id], [image], [full_name], [phone], [dob], [gender], [address], [email]) VALUES (3, NULL, N'dan', N'19003443', CAST(N'2023-11-02' AS Date), 0, N'NY', N'dan@gmail.com')
INSERT [dbo].[Profile] ([profile_id], [image], [full_name], [phone], [dob], [gender], [address], [email]) VALUES (23, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profile] ([profile_id], [image], [full_name], [phone], [dob], [gender], [address], [email]) VALUES (24, NULL, N'vinh', N'19000099', CAST(N'2023-10-31' AS Date), 1, N'ha noi', N'vinh@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([provider_id], [provider_name], [provider_address], [provider_email], [provider_phone]) VALUES (1, N'Nike', N'Trung Quoc', N'nike@gmail.com', N'19009900')
INSERT [dbo].[Provider] ([provider_id], [provider_name], [provider_address], [provider_email], [provider_phone]) VALUES (2, N'Thuong Dinh', N'Ha noi', N'thuongdinh@gmail.com', N'19001001')
SET IDENTITY_INSERT [dbo].[Provider] OFF
GO
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'Customer')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'Manager')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'Admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (4, N'Bussiness_Staff')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (5, N'Shipper')
GO
SET IDENTITY_INSERT [dbo].[Shipper] ON 

INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (16, 8, 4, N'Delivered', 2500000.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (17, 8, 7, N'Delivered', 3500000.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (19, 8, 1, N'Delivered', 50000.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (20, 8, 8, N'Delivered', 200.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (21, 8, 9, N'Delivered', 100.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (22, 8, 10, N'Delivered', 65.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (23, 8, 12, N'Delivered', 200.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (24, 8, 11, N'Delivered', 100.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (25, 8, 13, N'Delivered', 100.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (26, 7, 21, N'Approval', 200.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (27, 7, 20, N'Approval', 210.0000)
INSERT [dbo].[Shipper] ([shipper_id], [account_id], [order_id], [status], [shipper_deposit]) VALUES (28, 7, 19, N'Approval', 130.0000)
SET IDENTITY_INSERT [dbo].[Shipper] OFF
GO
/****** Object:  Index [UQ_profile_id]    Script Date: 11/15/2023 10:53:16 PM ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [UQ_profile_id] UNIQUE NONCLUSTERED 
(
	[profile_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((1)) FOR [role_id]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_role_id]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Business_Staff]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Account]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK__Import__product___49C3F6B7] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK__Import__product___49C3F6B7]
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK__Import__provider__4AB81AF0] FOREIGN KEY([provider_id])
REFERENCES [dbo].[Provider] ([provider_id])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK__Import__provider__4AB81AF0]
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Import_Manager] FOREIGN KEY([manager_id])
REFERENCES [dbo].[Manager] ([manager_id])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Import_Manager]
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Import_Manager1] FOREIGN KEY([manager_id])
REFERENCES [dbo].[Manager] ([manager_id])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Import_Manager1]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD FOREIGN KEY([business_staff_id])
REFERENCES [dbo].[Business_Staff] ([business_staff_id])
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([customer_id])
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[Brand] ([brand_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product_Size]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD FOREIGN KEY([profile_id])
REFERENCES [dbo].[Account] ([profile_id])
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([business_staff_id])
REFERENCES [dbo].[Business_Staff] ([business_staff_id])
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order_Detail] ([order_id])
GO
ALTER TABLE [dbo].[Shipper]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Shipper]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order_Detail] ([order_id])
GO
ALTER TABLE [dbo].[Shopping_Cart]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([customer_id])
GO
ALTER TABLE [dbo].[Shopping_Cart]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
/****** Object:  Trigger [dbo].[InsertAccountIDIntoCustomer]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a trigger in SQL Server
CREATE TRIGGER [dbo].[InsertAccountIDIntoCustomer]
ON [dbo].[Account]
AFTER INSERT
AS
BEGIN
    INSERT INTO Customer(account_id)
    SELECT account_id
    FROM inserted;
END;
GO
ALTER TABLE [dbo].[Account] ENABLE TRIGGER [InsertAccountIDIntoCustomer]
GO
/****** Object:  Trigger [dbo].[SetAccountValue]    Script Date: 11/15/2023 10:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[SetAccountValue]
ON [dbo].[Account]
AFTER INSERT
AS
BEGIN
    UPDATE a
    SET a.profile_id = i.account_id
    FROM Account a
    INNER JOIN inserted i ON a.account_id = i.account_id;
END;
GO
ALTER TABLE [dbo].[Account] ENABLE TRIGGER [SetAccountValue]
GO
USE [master]
GO
ALTER DATABASE [SWP] SET  READ_WRITE 
GO
