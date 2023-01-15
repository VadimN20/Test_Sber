USE [Test_Sber]
GO
/****** Object:  Table [dbo].[Abonents]    Script Date: 15.01.2023 12:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonents](
	[abonent] [varchar](20) NOT NULL,
	[region_id] [int] NOT NULL,
	[dttm] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dict_item_prices]    Script Date: 15.01.2023 12:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dict_item_prices](
	[item_id] [int] NOT NULL,
	[item_name] [varchar](150) NOT NULL,
	[item_price] [decimal](12, 2) NOT NULL,
	[valid_from_dt] [date] NOT NULL,
	[valid_to_dt] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_prices]    Script Date: 15.01.2023 12:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item_prices](
	[item_id] [int] NOT NULL,
	[item_name] [varchar](150) NOT NULL,
	[item_price] [decimal](12, 2) NOT NULL,
	[created_dttm] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 15.01.2023 12:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] NULL,
	[name] [varchar](10) NULL,
	[age] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Abonents] ([abonent], [region_id], [dttm]) VALUES (N'7072110988', 32722, CAST(N'2021-08-18T13:15:00' AS SmallDateTime))
GO
INSERT [dbo].[Abonents] ([abonent], [region_id], [dttm]) VALUES (N'7072110988', 32722, CAST(N'2021-08-18T14:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Abonents] ([abonent], [region_id], [dttm]) VALUES (N'7072110988', 21534, CAST(N'2021-08-18T14:15:00' AS SmallDateTime))
GO
INSERT [dbo].[Abonents] ([abonent], [region_id], [dttm]) VALUES (N'7072110988', 32722, CAST(N'2021-08-19T09:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Abonents] ([abonent], [region_id], [dttm]) VALUES (N'7071107101', 12533, CAST(N'2021-08-19T09:15:00' AS SmallDateTime))
GO
INSERT [dbo].[Abonents] ([abonent], [region_id], [dttm]) VALUES (N'7071107101', 32722, CAST(N'2021-08-19T09:27:00' AS SmallDateTime))
GO
INSERT [dbo].[item_prices] ([item_id], [item_name], [item_price], [created_dttm]) VALUES (1, N'Моющее средство', CAST(340.00 AS Decimal(12, 2)), CAST(N'2023-01-12' AS Date))
GO
INSERT [dbo].[item_prices] ([item_id], [item_name], [item_price], [created_dttm]) VALUES (2, N'Обезжиривающее средство', CAST(290.00 AS Decimal(12, 2)), CAST(N'2023-01-12' AS Date))
GO
INSERT [dbo].[item_prices] ([item_id], [item_name], [item_price], [created_dttm]) VALUES (1, N'Моющее средство', CAST(350.00 AS Decimal(12, 2)), CAST(N'2023-01-14' AS Date))
GO
INSERT [dbo].[test] ([id], [name], [age]) VALUES (1, N'Вася', 23)
GO
INSERT [dbo].[test] ([id], [name], [age]) VALUES (2, N'Петя', 40)
GO
INSERT [dbo].[test] ([id], [name], [age]) VALUES (3, N'Маша', 19)
GO
INSERT [dbo].[test] ([id], [name], [age]) VALUES (4, N'Марина', 23)
GO
INSERT [dbo].[test] ([id], [name], [age]) VALUES (5, N'Сергей', 34)
GO
