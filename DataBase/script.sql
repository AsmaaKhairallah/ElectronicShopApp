USE [ElectronicShopApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/30/2022 3:07:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoryTypes]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CategoryTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PorductId] [int] NOT NULL,
	[Discount_NewRegistered] [decimal](18, 2) NULL,
	[Discount_PickManyItemInSameProduct] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhoneNo] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[ProductColor] [nvarchar](max) NULL,
	[IsAvailable] [bit] NOT NULL,
	[CategoryTypeId] [int] NOT NULL,
	[SpecialTagId] [int] NOT NULL,
	[Discount_NewRegistered] [decimal](18, 2) NULL,
	[Discount_PickManyItemInSameProduct] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialTags]    Script Date: 5/30/2022 3:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_SpecialTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220529232800_createDB', N'3.1.25')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c7b013f0-5201-4317-abd8-c211f91b7330', N'User', N'USER', N'2')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fab4fac1-c546-41de-aebc-a14da6895711', N'Super user', N'SUPER USER', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'012da8f6-879b-4843-8523-7e43b8bcd238', N'c7b013f0-5201-4317-abd8-c211f91b7330')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e451bf45-e1d0-45d3-9bfa-455bd35628d5', N'fab4fac1-c546-41de-aebc-a14da6895711')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'012da8f6-879b-4843-8523-7e43b8bcd238', N'asma@gmail.com', N'ASMA@GMAIL.COM', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEEp9ZmJO2oJ9+yS3g+a8tlDtcOCmiwwRvjllyKrf//LMAj7VIX+4HWbmQlcpt5aqJA==', N'ZREDEE7H4CMWREEBMWZJPCQK2EOKVUER', N'3a9cf4dd-71c7-41f6-a30f-a03d8813582c', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Asmaa', N'Khairalah')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'e451bf45-e1d0-45d3-9bfa-455bd35628d5', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGWZqJQMp+38Z5TFUs0fDAF0P/Lsiy9IxN4Q8lv1iOz3hLI1lNIgYYT5hhYTvdxJjA==', N'7JXOCHDBMRWMHJN4NGE3AFFQFQ5FENA4', N'577fae1d-dc43-4906-8a8c-151f6a180f7e', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', NULL, NULL)
SET IDENTITY_INSERT [dbo].[CategoryTypes] ON 

INSERT [dbo].[CategoryTypes] ([Id], [CategoryName]) VALUES (1, N'Labtop')
INSERT [dbo].[CategoryTypes] ([Id], [CategoryName]) VALUES (2, N'PC')
INSERT [dbo].[CategoryTypes] ([Id], [CategoryName]) VALUES (3, N'Mobile')
SET IDENTITY_INSERT [dbo].[CategoryTypes] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (1, 1, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (2, 1, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (3, 1, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (4, 1, 2, CAST(0.20 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (5, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (6, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (7, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (8, 2, 2, CAST(0.20 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (9, 2, 2, CAST(0.20 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (10, 2, 2, CAST(0.20 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [PorductId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct], [Price]) VALUES (11, 2, 2, CAST(0.20 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderNo], [Name], [PhoneNo], [Email], [Address], [OrderDate], [Price]) VALUES (1, N'001', N'asmaa', N'01144005234', N'asmakhairala@gmail.com', N'cairo', CAST(N'2022-05-30 00:00:00.0000000' AS DateTime2), CAST(110000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderNo], [Name], [PhoneNo], [Email], [Address], [OrderDate], [Price]) VALUES (2, N'002', N'asmaa', N'01144005234', N'asmakhairala@gmail.com', N'cairo', CAST(N'2022-05-30 00:00:00.0000000' AS DateTime2), CAST(170000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Image], [ProductColor], [IsAvailable], [CategoryTypeId], [SpecialTagId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct]) VALUES (1, N'Iphone pro max', CAST(30000.00 AS Decimal(18, 2)), N'Images/i phone12 promax.jpg', N'white', 1, 3, 3, NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Image], [ProductColor], [IsAvailable], [CategoryTypeId], [SpecialTagId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct]) VALUES (2, N'Labtop HP', CAST(25000.00 AS Decimal(18, 2)), N'Images/hp1.jpg', N'white', 1, 1, 4, NULL, CAST(0.20 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Image], [ProductColor], [IsAvailable], [CategoryTypeId], [SpecialTagId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct]) VALUES (3, N'I Pad', CAST(5000.00 AS Decimal(18, 2)), N'Images/ipad.jpg', N'Silver', 1, 1, 4, NULL, CAST(0.29 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Image], [ProductColor], [IsAvailable], [CategoryTypeId], [SpecialTagId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct]) VALUES (4, N'Iphone pro max', CAST(30000.00 AS Decimal(18, 2)), N'Images/i phone12 promax.jpg', N'white', 1, 3, 3, NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Image], [ProductColor], [IsAvailable], [CategoryTypeId], [SpecialTagId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct]) VALUES (5, N'Labtop HP', CAST(25000.00 AS Decimal(18, 2)), N'Images/hp1.jpg', N'white', 1, 1, 4, NULL, CAST(0.20 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Image], [ProductColor], [IsAvailable], [CategoryTypeId], [SpecialTagId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct]) VALUES (7, N'Iphone pro max', CAST(30000.00 AS Decimal(18, 2)), N'Images/i phone12 promax.jpg', N'white', 1, 3, 3, NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Image], [ProductColor], [IsAvailable], [CategoryTypeId], [SpecialTagId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct]) VALUES (8, N'Labtop HP', CAST(25000.00 AS Decimal(18, 2)), N'Images/hp1.jpg', N'white', 1, 1, 4, NULL, CAST(0.20 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Image], [ProductColor], [IsAvailable], [CategoryTypeId], [SpecialTagId], [Discount_NewRegistered], [Discount_PickManyItemInSameProduct]) VALUES (9, N'I Pad', CAST(5000.00 AS Decimal(18, 2)), N'Images/ipad.jpg', N'Silver', 1, 1, 4, NULL, CAST(0.29 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[SpecialTags] ON 

INSERT [dbo].[SpecialTags] ([Id], [Name]) VALUES (1, N'Computer')
INSERT [dbo].[SpecialTags] ([Id], [Name]) VALUES (2, N'Apple Product')
INSERT [dbo].[SpecialTags] ([Id], [Name]) VALUES (3, N'Mobile Phone')
INSERT [dbo].[SpecialTags] ([Id], [Name]) VALUES (4, N'Labtop')
SET IDENTITY_INSERT [dbo].[SpecialTags] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_PorductId] FOREIGN KEY([PorductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_PorductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_CategoryTypes_CategoryTypeId] FOREIGN KEY([CategoryTypeId])
REFERENCES [dbo].[CategoryTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_CategoryTypes_CategoryTypeId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_SpecialTags_SpecialTagId] FOREIGN KEY([SpecialTagId])
REFERENCES [dbo].[SpecialTags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_SpecialTags_SpecialTagId]
GO
