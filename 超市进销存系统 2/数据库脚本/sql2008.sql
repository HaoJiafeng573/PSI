USE [xsgl]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2022/2/15 15:29:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyID] [varchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[CompanyDirector] [nvarchar](50) NULL,
	[CompanyPhone] [nvarchar](50) NULL,
	[CompanyAddress] [nvarchar](50) NULL,
	[Falg] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpIoy]    Script Date: 2022/2/15 15:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpIoy](
	[EmpId] [varchar](50) NULL,
	[EmpName] [varchar](50) NULL,
	[EmpLoginName] [varchar](50) NULL,
	[EmpLoginPwd] [varchar](50) NULL,
	[EmpSex] [varchar](50) NULL,
	[EmpBirthday] [datetime] NULL,
	[EmpPhone] [varchar](50) NULL,
	[EmpFalg] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KcGoods]    Script Date: 2022/2/15 15:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KcGoods](
	[KcID] [nvarchar](50) NULL,
	[KcDeptName] [nvarchar](50) NULL,
	[KcGoodsName] [nvarchar](50) NULL,
	[KcNum] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellGoods]    Script Date: 2022/2/15 15:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellGoods](
	[SellID] [nvarchar](50) NULL,
	[KcID] [nvarchar](50) NULL,
	[GoodsID] [nvarchar](50) NULL,
	[EmpId] [nvarchar](50) NULL,
	[GoodsName] [nvarchar](50) NULL,
	[SellGoodsNum] [int] NULL,
	[SellGoodsTime] [datetime] NULL,
	[SellPrice] [nvarchar](50) NULL,
	[SellFalg] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 2022/2/15 15:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[GoodsID] [nvarchar](50) NULL,
	[EmpId] [nvarchar](50) NULL,
	[JhCompName] [nvarchar](50) NULL,
	[DepotName] [nvarchar](50) NULL,
	[GoodsName] [nvarchar](50) NULL,
	[GoodsNum] [int] NULL,
	[GoodsJhPrice] [nvarchar](50) NULL,
	[GoodTime] [datetime] NULL,
	[Falg] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [CompanyDirector], [CompanyPhone], [CompanyAddress], [Falg]) VALUES (N'GS20181228614', N'111', N'11', N'1111111', N'111', 1)
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [CompanyDirector], [CompanyPhone], [CompanyAddress], [Falg]) VALUES (N'GS202221525', N'农夫山泉', N'农夫', N'18670234562', N'大别山', 1)
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [CompanyDirector], [CompanyPhone], [CompanyAddress], [Falg]) VALUES (N'GS2022215128', N'农夫山泉', N'农夫', N'18674568952', N'大山', 0)
GO
INSERT [dbo].[EmpIoy] ([EmpId], [EmpName], [EmpLoginName], [EmpLoginPwd], [EmpSex], [EmpBirthday], [EmpPhone], [EmpFalg]) VALUES (N'ZG20181228392', N'123', N'321', N'321', N'男', CAST(N'2018-12-28T18:40:51.000' AS DateTime), N'123', 1)
INSERT [dbo].[EmpIoy] ([EmpId], [EmpName], [EmpLoginName], [EmpLoginPwd], [EmpSex], [EmpBirthday], [EmpPhone], [EmpFalg]) VALUES (N'ZG20181228670', N'333', N'333', N'333', N'男', CAST(N'2018-12-28T18:41:12.000' AS DateTime), N'18745631458', 0)
INSERT [dbo].[EmpIoy] ([EmpId], [EmpName], [EmpLoginName], [EmpLoginPwd], [EmpSex], [EmpBirthday], [EmpPhone], [EmpFalg]) VALUES (N'ZG20181228100', N'999', N'zhh', N'', N'男', CAST(N'2022-01-13T16:53:13.000' AS DateTime), N'18578945632', 0)
INSERT [dbo].[EmpIoy] ([EmpId], [EmpName], [EmpLoginName], [EmpLoginPwd], [EmpSex], [EmpBirthday], [EmpPhone], [EmpFalg]) VALUES (N'ZG2022113238', N'888', N'zhd', N'zhd', N'男', CAST(N'2022-01-13T16:52:51.000' AS DateTime), N'18532459652', 0)
GO
INSERT [dbo].[KcGoods] ([KcID], [KcDeptName], [KcGoodsName], [KcNum]) VALUES (N'JH2022215956', N'仓库1', N'农夫山泉', 94)
GO
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS20181228701', N'', N'', N'123', N'123', 123123, CAST(N'2018-12-28T18:41:44.000' AS DateTime), N'3213', 0)
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS20181228648', N'', N'', N'313', N'123123', 1231, CAST(N'2018-12-28T18:41:54.000' AS DateTime), N'3123', 0)
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS20181228753', N'', N'', N'123', N'123', 123, CAST(N'2018-12-28T18:41:54.000' AS DateTime), N'123', 0)
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS20181228914', N'', N'', N'123', N'123', 123, CAST(N'2018-12-28T18:43:49.000' AS DateTime), N'123', 0)
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS20181228369', N'', N'', N'111', N'111', 111, CAST(N'2018-12-28T18:43:58.000' AS DateTime), N'2222', 1)
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS2022215653', N'', N'', N'333', N'农夫山泉', 1, CAST(N'2022-02-15T13:46:05.000' AS DateTime), N'2', 0)
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS2022215143', N'', N'', N'333', N'农夫山泉', 1, CAST(N'2022-02-15T13:46:05.000' AS DateTime), N'2', 0)
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS2022215127', N'', N'', N'333', N'农夫山泉', 1, CAST(N'2022-02-15T13:49:02.000' AS DateTime), N'2', 0)
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS20181228289', N'', N'', N'11', N'11', 11, CAST(N'2018-12-28T18:45:01.000' AS DateTime), N'11111', 1)
INSERT [dbo].[SellGoods] ([SellID], [KcID], [GoodsID], [EmpId], [GoodsName], [SellGoodsNum], [SellGoodsTime], [SellPrice], [SellFalg]) VALUES (N'XS202221561', N'', N'', N'zhd', N'农夫山泉', 1, CAST(N'2022-02-15T15:01:36.000' AS DateTime), N'2', 0)
GO
INSERT [dbo].[test] ([GoodsID], [EmpId], [JhCompName], [DepotName], [GoodsName], [GoodsNum], [GoodsJhPrice], [GoodTime], [Falg]) VALUES (N'JH2022215956', N'333', N'农夫山泉', N'仓库1', N'农夫山泉', 100, N'1', CAST(N'2022-02-15T13:44:52.000' AS DateTime), 0)
GO
