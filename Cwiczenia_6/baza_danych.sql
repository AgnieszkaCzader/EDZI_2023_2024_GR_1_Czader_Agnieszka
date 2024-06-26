USE [NBP]
GO
/****** Object:  Table [dbo].[CurrencyName]    Script Date: 24.04.2024 12:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyName](
	[CurrencyID] [nvarchar](50) NOT NULL,
	[CurrencyName] [nvarchar](50) NULL,
 CONSTRAINT [PK_CurrencyName_1] PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrencyRate]    Script Date: 24.04.2024 12:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyRate](
	[CurrencyID] [nvarchar](50) NOT NULL,
	[Date] [nvarchar](50) NULL,
	[ExchangeRate] [nvarchar](50) NULL,
	[NormExchangeRate] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrencyTable]    Script Date: 24.04.2024 12:26:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyTable](
	[CurrencyID] [nvarchar](50) NOT NULL,
	[TableExchangeRate] [nvarchar](50) NULL,
 CONSTRAINT [PK_CurrencyTable_1] PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeanExchangeRate]    Script Date: 24.04.2024 12:26:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeanExchangeRate](
	[CurrencyID] [nvarchar](50) NOT NULL,
	[MeanExchangeRate] [nvarchar](50) NULL,
 CONSTRAINT [PK_MeanExchangeRate_1] PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CurrencyName] ([CurrencyID], [CurrencyName]) VALUES (N'CHF', N'frank szwajcarski')
INSERT [dbo].[CurrencyName] ([CurrencyID], [CurrencyName]) VALUES (N'EUR', N'euro')
INSERT [dbo].[CurrencyName] ([CurrencyID], [CurrencyName]) VALUES (N'GBP', N'funt szterling')
INSERT [dbo].[CurrencyName] ([CurrencyID], [CurrencyName]) VALUES (N'JPY', N'jen (Japonia)')
INSERT [dbo].[CurrencyName] ([CurrencyID], [CurrencyName]) VALUES (N'USD', N'dolar ameryka┼äski')
GO
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'19.03.2024', N'3,9866', N'-0,224')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'19.03.2024', N'4,4886', N'1,6026')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'19.03.2024', N'4,3201', N'0,7246')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'19.03.2024', N'5,0516', N'0,9287')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'19.03.2024', N'0,026455', N'1,3529')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'20.03.2024', N'3,9895', N'-0,1597')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'20.03.2024', N'4,4771', N'1,3503')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'20.03.2024', N'4,3242', N'0,8991')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'20.03.2024', N'5,0635', N'1,3429')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'20.03.2024', N'0,026301', N'0,4901')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'21.03.2024', N'3,9431', N'-1,1885')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'21.03.2024', N'4,4069', N'-0,1894')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'21.03.2024', N'4,3031', N'0,0007')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'21.03.2024', N'5,0367', N'0,4101')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'21.03.2024', N'0,026098', N'-0,6472')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'22.03.2024', N'3,9928', N'-0,0866')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'22.03.2024', N'4,4337', N'0,3984')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'22.03.2024', N'4,3186', N'0,6607')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'22.03.2024', N'5,0257', N'0,0273')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'22.03.2024', N'0,026334', N'0,675')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'25.03.2024', N'3,9833', N'-0,2972')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'25.03.2024', N'4,4371', N'0,473')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'25.03.2024', N'4,3091', N'0,2562')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'25.03.2024', N'5,0246', N'-0,011')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'25.03.2024', N'0,026309', N'0,5349')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'26.03.2024', N'3,9704', N'-0,5832')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'26.03.2024', N'4,4047', N'-0,2377')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'26.03.2024', N'4,3093', N'0,2647')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'26.03.2024', N'5,0243', N'-0,0214')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'26.03.2024', N'0,026247', N'0,1876')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'27.03.2024', N'3,9857', N'-0,244')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'27.03.2024', N'4,4018', N'-0,3013')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'27.03.2024', N'4,3153', N'0,5202')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'27.03.2024', N'5,0327', N'0,2709')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'27.03.2024', N'0,026347', N'0,7478')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'28.03.2024', N'4,0081', N'0,2527')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'28.03.2024', N'4,4228', N'0,1593')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'28.03.2024', N'4,3191', N'0,682')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'28.03.2024', N'5,0474', N'0,7826')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'28.03.2024', N'0,026472', N'1,4482')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'29.03.2024', N'3,9886', N'-0,1797')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'29.03.2024', N'4,425', N'0,2076')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'29.03.2024', N'4,3009', N'-0,093')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'29.03.2024', N'5,03', N'0,177')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'29.03.2024', N'0,026366', N'0,8543')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'02.04.2024', N'4,0009', N'0,093')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'02.04.2024', N'4,4037', N'-0,2596')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'02.04.2024', N'4,2934', N'-0,4124')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'02.04.2024', N'5,0256', N'0,0238')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'02.04.2024', N'0,026384', N'0,9551')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'03.04.2024', N'3,9843', N'-0,275')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'03.04.2024', N'4,3875', N'-0,6149')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'03.04.2024', N'4,2923', N'-0,4592')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'03.04.2024', N'5,0117', N'-0,46')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'03.04.2024', N'0,026262', N'0,2716')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'04.04.2024', N'3,9515', N'-1,0022')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'04.04.2024', N'4,3621', N'-1,1721')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'04.04.2024', N'4,2921', N'-0,4677')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'04.04.2024', N'5,0042', N'-0,721')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'04.04.2024', N'0,026045', N'-0,9441')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'05.04.2024', N'3,9571', N'-0,8781')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'05.04.2024', N'4,3796', N'-0,7882')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'05.04.2024', N'4,2883', N'-0,6295')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'05.04.2024', N'5,0003', N'-0,8568')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'05.04.2024', N'0,026133', N'-0,4511')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'08.04.2024', N'3,9546', N'-0,9335')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'08.04.2024', N'4,3667', N'-1,0712')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'08.04.2024', N'4,2805', N'-0,9617')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'08.04.2024', N'4,9915', N'-1,1631')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'08.04.2024', N'0,026035', N'-1,0002')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'09.04.2024', N'3,9223', N'-1,6497')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'09.04.2024', N'4,3366', N'-1,7314')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'09.04.2024', N'4,2588', N'-1,8857')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'09.04.2024', N'4,966', N'-2,0506')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'09.04.2024', N'0,025823', N'-2,1879')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'10.04.2024', N'3,9264', N'-1,5588')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'10.04.2024', N'4,3447', N'-1,5537')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'10.04.2024', N'4,2641', N'-1,66')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'10.04.2024', N'4,9843', N'-1,4137')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'10.04.2024', N'0,025856', N'-2,003')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'11.04.2024', N'3,9707', N'-0,5766')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'11.04.2024', N'4,3451', N'-1,5449')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'11.04.2024', N'4,2649', N'-1,6259')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'11.04.2024', N'4,9835', N'-1,4415')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'11.04.2024', N'0,025911', N'-1,6949')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'12.04.2024', N'3,9983', N'0,0354')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'12.04.2024', N'4,3805', N'-0,7685')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'12.04.2024', N'4,2666', N'-1,5535')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'12.04.2024', N'5,0007', N'-0,8428')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'12.04.2024', N'0,02608', N'-0,7481')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'15.04.2024', N'4,0209', N'0,5365')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'15.04.2024', N'4,4047', N'-0,2377')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'15.04.2024', N'4,2851', N'-0,7658')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'15.04.2024', N'5,0192', N'-0,1989')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'15.04.2024', N'0,026134', N'-0,4455')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'16.04.2024', N'4,0687', N'1,5963')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'16.04.2024', N'4,4554', N'0,8744')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'16.04.2024', N'4,3197', N'0,7075')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'16.04.2024', N'5,0609', N'1,2524')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'16.04.2024', N'0,026335', N'0,6806')
GO
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'17.04.2024', N'4,0741', N'1,716')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'17.04.2024', N'4,4777', N'1,3635')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'17.04.2024', N'4,3353', N'1,3718')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'17.04.2024', N'5,0812', N'1,959')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'17.04.2024', N'0,026359', N'0,8151')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'18.04.2024', N'4,0559', N'1,3125')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'18.04.2024', N'4,4637', N'1,0564')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'18.04.2024', N'4,3309', N'1,1844')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'18.04.2024', N'5,0589', N'1,1828')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'18.04.2024', N'0,026274', N'0,3388')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'19.04.2024', N'4,0688', N'1,5985')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'19.04.2024', N'4,4787', N'1,3854')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'19.04.2024', N'4,3316', N'1,2142')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'19.04.2024', N'5,0615', N'1,2733')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'19.04.2024', N'0,02635', N'0,7646')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'22.04.2024', N'4,054', N'1,2703')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'22.04.2024', N'4,4505', N'0,7669')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'22.04.2024', N'4,3203', N'0,7331')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'22.04.2024', N'5,0131', N'-0,4113')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'22.04.2024', N'0,026202', N'-0,0645')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'USD', N'23.04.2024', N'4,061', N'1,4255')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'CHF', N'23.04.2024', N'4,4535', N'0,8327')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'EUR', N'23.04.2024', N'4,3335', N'1,2951')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'GBP', N'23.04.2024', N'5,0238', N'-0,0388')
INSERT [dbo].[CurrencyRate] ([CurrencyID], [Date], [ExchangeRate], [NormExchangeRate]) VALUES (N'JPY', N'23.04.2024', N'0,026226', N'0,0699')
GO
INSERT [dbo].[CurrencyTable] ([CurrencyID], [TableExchangeRate]) VALUES (N'CHF', N'A')
INSERT [dbo].[CurrencyTable] ([CurrencyID], [TableExchangeRate]) VALUES (N'EUR', N'A')
INSERT [dbo].[CurrencyTable] ([CurrencyID], [TableExchangeRate]) VALUES (N'GBP', N'A')
INSERT [dbo].[CurrencyTable] ([CurrencyID], [TableExchangeRate]) VALUES (N'JPY', N'A')
INSERT [dbo].[CurrencyTable] ([CurrencyID], [TableExchangeRate]) VALUES (N'USD', N'A')
GO
INSERT [dbo].[MeanExchangeRate] ([CurrencyID], [MeanExchangeRate]) VALUES (N'CHF', N'4,4155')
INSERT [dbo].[MeanExchangeRate] ([CurrencyID], [MeanExchangeRate]) VALUES (N'EUR', N'4,3031')
INSERT [dbo].[MeanExchangeRate] ([CurrencyID], [MeanExchangeRate]) VALUES (N'GBP', N'5,0249')
INSERT [dbo].[MeanExchangeRate] ([CurrencyID], [MeanExchangeRate]) VALUES (N'JPY', N'0,0262')
INSERT [dbo].[MeanExchangeRate] ([CurrencyID], [MeanExchangeRate]) VALUES (N'USD', N'3,9967')
GO
ALTER TABLE [dbo].[CurrencyRate]  WITH CHECK ADD  CONSTRAINT [FK_CurrencyRate_CurrencyName] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[CurrencyName] ([CurrencyID])
GO
ALTER TABLE [dbo].[CurrencyRate] CHECK CONSTRAINT [FK_CurrencyRate_CurrencyName]
GO
ALTER TABLE [dbo].[CurrencyRate]  WITH CHECK ADD  CONSTRAINT [FK_CurrencyRate_CurrencyTable1] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[CurrencyTable] ([CurrencyID])
GO
ALTER TABLE [dbo].[CurrencyRate] CHECK CONSTRAINT [FK_CurrencyRate_CurrencyTable1]
GO
ALTER TABLE [dbo].[CurrencyRate]  WITH CHECK ADD  CONSTRAINT [FK_CurrencyRate_MeanExchangeRate1] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[MeanExchangeRate] ([CurrencyID])
GO
ALTER TABLE [dbo].[CurrencyRate] CHECK CONSTRAINT [FK_CurrencyRate_MeanExchangeRate1]
GO
