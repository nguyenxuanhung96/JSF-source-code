/****** Object:  Table [dbo].[Manufacturer]    Script Date: 23/11/2016 23:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE DATABASE [dbo].[StudentManager]
GO
USE [dbo].[StudentManager]
GO
CREATE TABLE [dbo].[Manufacturer](
	[manuID] [nvarchar](10) NOT NULL,
	[manuName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[manuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 23/11/2016 23:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pID] [nvarchar](10) NOT NULL,
	[pName] [nvarchar](50) NULL,
	[createdDate] [datetime] NULL,
	[manuID] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Manufacturer] ([manuID], [manuName]) VALUES (N'M001', N'Dell')
INSERT [dbo].[Manufacturer] ([manuID], [manuName]) VALUES (N'M002', N'Asus')
INSERT [dbo].[Manufacturer] ([manuID], [manuName]) VALUES (N'M003', N'Acer')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'12345', N'456', CAST(0x00009F9800735B40 AS DateTime), N'M002')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P001', N'Dell Precision 11', CAST(0x0000A6A400735B40 AS DateTime), N'M001')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P0010', N'Acer S series', CAST(0x00009AB400735B40 AS DateTime), N'M003')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P0011', N'Asus M series', CAST(0x0000A6A800735B40 AS DateTime), N'M002')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P0012', N'Dell S', CAST(0x0000A6A700000000 AS DateTime), N'M001')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P002', N'Dell Latude', CAST(0x00009D5900000000 AS DateTime), N'M001')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P003', N'Asus N series', CAST(0x0000A65C00000000 AS DateTime), N'M002')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P004', N'Asus X series', CAST(0x0000A36E00000000 AS DateTime), N'M002')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P005', N'Asus Transformer', CAST(0x0000A53700000000 AS DateTime), N'M002')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P0051', N'Asus Transformer', CAST(0x0000A53600735B40 AS DateTime), N'M001')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P006', N'Dell XPS', CAST(0x00009FDD00735B40 AS DateTime), N'M001')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P007', N'Asus K series', CAST(0x0000A51900000000 AS DateTime), N'M002')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P008', N'Acer E series', CAST(0x0000A53700000000 AS DateTime), N'M003')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P009', N'Acer V series', CAST(0x00009F5F00735B40 AS DateTime), N'M003')
INSERT [dbo].[Product] ([pID], [pName], [createdDate], [manuID]) VALUES (N'P0123', N'Asus S series', CAST(0x00009FF400735B40 AS DateTime), N'M002')
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([manuID])
REFERENCES [dbo].[Manufacturer] ([manuID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
