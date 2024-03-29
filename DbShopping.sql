USE [DbShopping]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11-Nov-19 9:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](30) NOT NULL,
	[Remark] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11-Nov-19 9:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](30) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[ReorderLevel] [int] NOT NULL,
	[CatId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Remark]) VALUES (1, N'Computer', N'Desktop & Laptopd')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Remark]) VALUES (2, N'Storage', N'Pendrive & HardDisk')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Remark]) VALUES (3, N'Acssories', N'Mouse etc')
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [ReorderLevel], [CatId]) VALUES (1, N'Lenovo5000', CAST(25500 AS Decimal(18, 0)), 24, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [ReorderLevel], [CatId]) VALUES (2, N'SanDisk Penrive', CAST(250 AS Decimal(18, 0)), 300, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [ReorderLevel], [CatId]) VALUES (3, N'sonyharddisk', CAST(3000 AS Decimal(18, 0)), 31, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [ReorderLevel], [CatId]) VALUES (4, N'PenDrive', CAST(500 AS Decimal(18, 0)), 25, 2)
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_cat_product_id] FOREIGN KEY([CatId])
REFERENCES [dbo].[Category] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_cat_product_id]
GO
