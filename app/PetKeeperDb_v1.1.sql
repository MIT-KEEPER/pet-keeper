USE [master]
GO
/****** Object:  Database [PetKeeper]    Script Date: 23.4.2020. 22:38:02 ******/
CREATE DATABASE [PetKeeper]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PetKeeper', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PetKeeper.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PetKeeper_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PetKeeper_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PetKeeper] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PetKeeper].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PetKeeper] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PetKeeper] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PetKeeper] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PetKeeper] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PetKeeper] SET ARITHABORT OFF 
GO
ALTER DATABASE [PetKeeper] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PetKeeper] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PetKeeper] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PetKeeper] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PetKeeper] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PetKeeper] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PetKeeper] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PetKeeper] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PetKeeper] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PetKeeper] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PetKeeper] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PetKeeper] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PetKeeper] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PetKeeper] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PetKeeper] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PetKeeper] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PetKeeper] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PetKeeper] SET RECOVERY FULL 
GO
ALTER DATABASE [PetKeeper] SET  MULTI_USER 
GO
ALTER DATABASE [PetKeeper] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PetKeeper] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PetKeeper] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PetKeeper] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PetKeeper] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PetKeeper', N'ON'
GO
ALTER DATABASE [PetKeeper] SET QUERY_STORE = OFF
GO
USE [PetKeeper]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23.4.2020. 22:38:03 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 23.4.2020. 22:38:03 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 23.4.2020. 22:38:04 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 23.4.2020. 22:38:04 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 23.4.2020. 22:38:04 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 23.4.2020. 22:38:04 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23.4.2020. 22:38:04 ******/
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 23.4.2020. 22:38:04 ******/
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
/****** Object:  Table [dbo].[Podaci]    Script Date: 23.4.2020. 22:38:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Podaci](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Starost] [int] NOT NULL,
	[DatumPrijema] [datetime] NOT NULL,
	[RasaId] [int] NOT NULL,
	[PolId] [int] NOT NULL,
	[SterilisanId] [int] NOT NULL,
	[VakcinisanId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Podaci] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pol]    Script Date: 23.4.2020. 22:38:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pol](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Pol] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rasa]    Script Date: 23.4.2020. 22:38:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rasa](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rasa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 23.4.2020. 22:38:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sterilisan]    Script Date: 23.4.2020. 22:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sterilisan](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sterilisan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vakcinisan]    Script Date: 23.4.2020. 22:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vakcinisan](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vakcinisan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.2.4-servicing-10062')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'28557bb6-b94e-40ae-877d-a55e23e3a104', N'jkaurin8@gmail.com', N'JKAURIN8@GMAIL.COM', N'jkaurin8@gmail.com', N'JKAURIN8@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDsyA0z800WevDnF9Fp6dy5CXGnaWFutA3vZfJ6NhnS9AiGexPdIhmqpYuWcEfK3Kw==', N'W7G5UYDURJCMS5FF3OBMMRS45VTRGW52', N'c7b6f0a6-46d7-450e-a81b-d5b1bfacb7dd', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Podaci] ON 

INSERT [dbo].[Podaci] ([Id], [Ime], [Starost], [DatumPrijema], [RasaId], [PolId], [SterilisanId], [VakcinisanId], [UserId], [StatusId]) VALUES (1, N'Mia', 6, CAST(N'2020-01-05T00:00:00.000' AS DateTime), 6, 2, 1, 1, N'28557bb6-b94e-40ae-877d-a55e23e3a104', 3)
INSERT [dbo].[Podaci] ([Id], [Ime], [Starost], [DatumPrijema], [RasaId], [PolId], [SterilisanId], [VakcinisanId], [UserId], [StatusId]) VALUES (6, N'Test', 2, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, 1, 1, N'28557bb6-b94e-40ae-877d-a55e23e3a104', 2)
INSERT [dbo].[Podaci] ([Id], [Ime], [Starost], [DatumPrijema], [RasaId], [PolId], [SterilisanId], [VakcinisanId], [UserId], [StatusId]) VALUES (7, N'Test', 2, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, 1, 1, N'28557bb6-b94e-40ae-877d-a55e23e3a104', 2)
SET IDENTITY_INSERT [dbo].[Podaci] OFF
INSERT [dbo].[Pol] ([Id], [Name]) VALUES (1, N'Mužjak')
INSERT [dbo].[Pol] ([Id], [Name]) VALUES (2, N'Ženka')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (1, N'Labrador')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (2, N'Retriver')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (3, N'Mops')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (4, N'Jazavičar')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (5, N'Buldog')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (6, N'Maltezer')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (7, N'Pomeranac')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (8, N'Rotvajler')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (9, N'Pudla')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (10, N'Čivava')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (11, N'Doberman')
INSERT [dbo].[Rasa] ([Id], [Name]) VALUES (12, N'Samojed')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (1, N'Odbijeno')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (2, N'Prihvaćeno')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (3, N'Na čekanju')
INSERT [dbo].[Sterilisan] ([Id], [Name]) VALUES (1, N'Da')
INSERT [dbo].[Sterilisan] ([Id], [Name]) VALUES (2, N'Ne')
INSERT [dbo].[Vakcinisan] ([Id], [Name]) VALUES (1, N'Da')
INSERT [dbo].[Vakcinisan] ([Id], [Name]) VALUES (2, N'Ne')
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 23.4.2020. 22:38:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 23.4.2020. 22:38:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 23.4.2020. 22:38:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 23.4.2020. 22:38:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 23.4.2020. 22:38:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 23.4.2020. 22:38:05 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 23.4.2020. 22:38:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
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
ALTER TABLE [dbo].[Podaci]  WITH CHECK ADD  CONSTRAINT [FK_Podaci_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Podaci] CHECK CONSTRAINT [FK_Podaci_AspNetUsers]
GO
ALTER TABLE [dbo].[Podaci]  WITH CHECK ADD  CONSTRAINT [FK_Podaci_Pol] FOREIGN KEY([PolId])
REFERENCES [dbo].[Pol] ([Id])
GO
ALTER TABLE [dbo].[Podaci] CHECK CONSTRAINT [FK_Podaci_Pol]
GO
ALTER TABLE [dbo].[Podaci]  WITH CHECK ADD  CONSTRAINT [FK_Podaci_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Podaci] CHECK CONSTRAINT [FK_Podaci_Status]
GO
ALTER TABLE [dbo].[Podaci]  WITH CHECK ADD  CONSTRAINT [FK_Podaci_Sterilisan] FOREIGN KEY([SterilisanId])
REFERENCES [dbo].[Sterilisan] ([Id])
GO
ALTER TABLE [dbo].[Podaci] CHECK CONSTRAINT [FK_Podaci_Sterilisan]
GO
ALTER TABLE [dbo].[Podaci]  WITH CHECK ADD  CONSTRAINT [FK_Podaci_Vakcinisan] FOREIGN KEY([VakcinisanId])
REFERENCES [dbo].[Vakcinisan] ([Id])
GO
ALTER TABLE [dbo].[Podaci] CHECK CONSTRAINT [FK_Podaci_Vakcinisan]
GO
USE [master]
GO
ALTER DATABASE [PetKeeper] SET  READ_WRITE 
GO
