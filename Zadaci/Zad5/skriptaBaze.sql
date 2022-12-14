USE [Zadatak5]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 11/19/2022 2:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[id] [int] NOT NULL,
	[orderId] [int] NOT NULL,
	[value] [money] NULL,
	[productId] [int] NOT NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[orderId] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/19/2022 2:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[value] [money] NULL,
	[dateCreate] [date] NULL,
	[dateEdit] [date] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/19/2022 2:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[price] [money] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/19/2022 2:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[dateCreate] [date] NULL,
	[dateEdit] [date] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderItem] ([id], [orderId], [value], [productId]) VALUES (1, 1, 300.0000, 1)
INSERT [dbo].[OrderItem] ([id], [orderId], [value], [productId]) VALUES (1, 2, 2599.0000, 2)
INSERT [dbo].[OrderItem] ([id], [orderId], [value], [productId]) VALUES (1, 3, 1599.0000, 3)
INSERT [dbo].[OrderItem] ([id], [orderId], [value], [productId]) VALUES (1, 4, 1599.0000, 3)
INSERT [dbo].[OrderItem] ([id], [orderId], [value], [productId]) VALUES (2, 1, 300.0000, 1)
GO
INSERT [dbo].[Orders] ([id], [userId], [value], [dateCreate], [dateEdit]) VALUES (1, 1, 299.0000, CAST(N'2022-11-19' AS Date), CAST(N'2022-11-19' AS Date))
INSERT [dbo].[Orders] ([id], [userId], [value], [dateCreate], [dateEdit]) VALUES (2, 1, 2599.0000, CAST(N'2022-11-19' AS Date), CAST(N'2022-11-19' AS Date))
INSERT [dbo].[Orders] ([id], [userId], [value], [dateCreate], [dateEdit]) VALUES (3, 2, 1599.0000, CAST(N'2022-11-19' AS Date), CAST(N'2022-11-19' AS Date))
INSERT [dbo].[Orders] ([id], [userId], [value], [dateCreate], [dateEdit]) VALUES (4, 1, 1599.0000, CAST(N'2022-11-19' AS Date), CAST(N'2022-11-19' AS Date))
GO
INSERT [dbo].[Product] ([id], [name], [price]) VALUES (1, N'Baterija', 300.0000)
INSERT [dbo].[Product] ([id], [name], [price]) VALUES (2, N'Tastatura', 2599.0000)
INSERT [dbo].[Product] ([id], [name], [price]) VALUES (3, N'Zvucnik', 1599.0000)
GO
INSERT [dbo].[Users] ([id], [firstname], [lastname], [phone], [email], [dateCreate], [dateEdit]) VALUES (1, N'Marko', N'Markovic', N'0651234567', N'marko@gmail.com', CAST(N'2022-11-19' AS Date), CAST(N'2022-11-19' AS Date))
INSERT [dbo].[Users] ([id], [firstname], [lastname], [phone], [email], [dateCreate], [dateEdit]) VALUES (2, N'Luka', N'Lukic', N'0641234567', N'luka@gmail.com', CAST(N'2022-11-14' AS Date), CAST(N'2022-11-14' AS Date))
GO
