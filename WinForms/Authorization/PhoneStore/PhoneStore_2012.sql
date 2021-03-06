USE [master]
GO
/****** Object:  Database [PhoneStore]    Script Date: 01.09.2015 16:09:33 ******/
CREATE DATABASE [PhoneStore] ON  PRIMARY 
( NAME = N'PhoneStore', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PhoneStore.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PhoneStore_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PhoneStore_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PhoneStore] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhoneStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhoneStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhoneStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhoneStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhoneStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhoneStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhoneStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PhoneStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhoneStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhoneStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhoneStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhoneStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhoneStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhoneStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhoneStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhoneStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PhoneStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhoneStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhoneStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhoneStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhoneStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhoneStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhoneStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhoneStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhoneStore] SET  MULTI_USER 
GO
ALTER DATABASE [PhoneStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhoneStore] SET DB_CHAINING OFF 
GO
USE [PhoneStore]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 01.09.2015 16:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](20) NOT NULL,
	[Password] [nchar](15) NOT NULL,
	[Email] [nchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersInfo]    Script Date: 01.09.2015 16:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LastName] [nchar](20) NOT NULL,
	[FirstName] [nchar](50) NOT NULL,
	[Adres] [nchar](150) NULL,
	[Phone] [nchar](40) NULL,
	[Code] [int] NOT NULL,
	[UserId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Login], [Password], [Email]) VALUES (1, N'KIN                 ', N'1111           ', N'kin@mail.by         ')
INSERT [dbo].[Users] ([Id], [Login], [Password], [Email]) VALUES (2, N'Fox                 ', N'test           ', N'Fox @mail.by        ')
INSERT [dbo].[Users] ([Id], [Login], [Password], [Email]) VALUES (3, N'SunKot              ', N'852632         ', N'Sun@mail.by         ')
INSERT [dbo].[Users] ([Id], [Login], [Password], [Email]) VALUES (4, N'Rulon               ', N'Run456         ', N'rulon@mail.by       ')
INSERT [dbo].[Users] ([Id], [Login], [Password], [Email]) VALUES (5, N'Loput7              ', N'qwerty         ', N'Loput@mail.by       ')
INSERT [dbo].[Users] ([Id], [Login], [Password], [Email]) VALUES (6, N'Rewa                ', N'asd44          ', N'Rewa @mail.by       ')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[UsersInfo] ON 

INSERT [dbo].[UsersInfo] ([Id], [LastName], [FirstName], [Adres], [Phone], [Code], [UserId]) VALUES (20, N'Liza                ', N'Ivanova                                           ', N'Grodno                                                                                                                                                ', N'+37529741235                            ', 123565, 2)
INSERT [dbo].[UsersInfo] ([Id], [LastName], [FirstName], [Adres], [Phone], [Code], [UserId]) VALUES (21, N'Alex                ', N'Smirnov                                           ', N'Brest                                                                                                                                                 ', N'                                        ', 34532423, 3)
INSERT [dbo].[UsersInfo] ([Id], [LastName], [FirstName], [Adres], [Phone], [Code], [UserId]) VALUES (22, N'Vova                ', N'Sidorov                                           ', N'                                                                                                                                                      ', N'+37529865421                            ', 356321, 4)
INSERT [dbo].[UsersInfo] ([Id], [LastName], [FirstName], [Adres], [Phone], [Code], [UserId]) VALUES (23, N'Inna                ', N'Krot                                              ', N'Minsk                                                                                                                                                 ', N'                                        ', 56312365, 5)
INSERT [dbo].[UsersInfo] ([Id], [LastName], [FirstName], [Adres], [Phone], [Code], [UserId]) VALUES (24, N'Nikolaj             ', N'Guk                                               ', N'Minsk                                                                                                                                                 ', N'                                        ', 7865333, 6)
INSERT [dbo].[UsersInfo] ([Id], [LastName], [FirstName], [Adres], [Phone], [Code], [UserId]) VALUES (25, N'Ivan                ', N'Gromov                                            ', N'Minsk                                                                                                                                                 ', N'                                        ', 457445, 1)
SET IDENTITY_INSERT [dbo].[UsersInfo] OFF
ALTER TABLE [dbo].[UsersInfo]  WITH CHECK ADD  CONSTRAINT [FK_UsersInfo_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersInfo] CHECK CONSTRAINT [FK_UsersInfo_Users]
GO
USE [master]
GO
ALTER DATABASE [PhoneStore] SET  READ_WRITE 
GO
