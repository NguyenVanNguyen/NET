USE [master]
GO
/****** Object:  Database [LinqtoSQL]    Script Date: 6/21/2017 12:22:17 AM ******/
CREATE DATABASE [LinqtoSQL]
GO
USE [LinqtoSQL]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 6/21/2017 12:22:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [varchar](10) NOT NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/21/2017 12:22:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [varchar](10) NULL,
	[Product] [nvarchar](50) NULL,
 CONSTRAINT [PK__Order__3214EC07A9A4D3ED] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customers] ([CustomerID], [City]) VALUES (N'001', N'LonDon')
INSERT [dbo].[Customers] ([CustomerID], [City]) VALUES (N'002', N'HaNoi')
INSERT [dbo].[Customers] ([CustomerID], [City]) VALUES (N'003', N'Tp.HCM')
INSERT [dbo].[Customers] ([CustomerID], [City]) VALUES (N'004', N'LonDon')
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [CustomerID], [Product]) VALUES (0, N'001', N'But Bi')
INSERT [dbo].[Order] ([Id], [CustomerID], [Product]) VALUES (1, N'003', N'Sach')
INSERT [dbo].[Order] ([Id], [CustomerID], [Product]) VALUES (2, N'004', N'Vo')
INSERT [dbo].[Order] ([Id], [CustomerID], [Product]) VALUES (3, N'002', N'Ba lo')
INSERT [dbo].[Order] ([Id], [CustomerID], [Product]) VALUES (4, N'001', N'Laptop')
INSERT [dbo].[Order] ([Id], [CustomerID], [Product]) VALUES (5, N'003', N'Ban Phim')
INSERT [dbo].[Order] ([Id], [CustomerID], [Product]) VALUES (6, N'003', N'Chuot')
INSERT [dbo].[Order] ([Id], [CustomerID], [Product]) VALUES (7, N'003', N'But chi')
INSERT [dbo].[Order] ([Id], [CustomerID], [Product]) VALUES (8, N'001', N'Chuot')
SET IDENTITY_INSERT [dbo].[Order] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__CustomerI__164452B1] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__CustomerI__164452B1]
GO
/****** Object:  StoredProcedure [dbo].[SP_CUSTOMERS_GETALL]    Script Date: 6/21/2017 12:22:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CUSTOMERS_GETALL]
AS
SELECT * FROM CUSTOMERS
GO
USE [master]
GO
ALTER DATABASE [LinqtoSQL] SET  READ_WRITE 
GO
