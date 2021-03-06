USE [master]
GO
/****** Object:  Database [BeiDreamEasyUi]    Script Date: 2015/5/17 21:42:22 ******/
CREATE DATABASE [BeiDreamEasyUi] ON  PRIMARY 
( NAME = N'BeiDreamEasyUi', FILENAME = N'C:\Users\admin\BeiDreamEasyUi.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BeiDreamEasyUi_log', FILENAME = N'C:\Users\admin\BeiDreamEasyUi_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BeiDreamEasyUi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BeiDreamEasyUi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET ARITHABORT OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BeiDreamEasyUi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BeiDreamEasyUi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BeiDreamEasyUi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BeiDreamEasyUi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BeiDreamEasyUi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BeiDreamEasyUi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BeiDreamEasyUi] SET  MULTI_USER 
GO
ALTER DATABASE [BeiDreamEasyUi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BeiDreamEasyUi] SET DB_CHAINING OFF 
GO
USE [BeiDreamEasyUi]
GO
/****** Object:  Table [dbo].[BeiDream_Menu]    Script Date: 2015/5/17 21:42:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeiDream_Menu](
	[MenuId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Text] [nvarchar](50) NOT NULL,
	[Path] [nvarchar](800) NOT NULL,
	[Level] [int] NOT NULL,
	[SortId] [int] NOT NULL,
	[Url] [nvarchar](50) NULL,
	[IconClass] [nvarchar](50) NULL,
	[PinYin] [nvarchar](50) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[CreatePerson] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[UpdatePerson] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[Version] [timestamp] NOT NULL,
 CONSTRAINT [PK_BeiDream_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BeiDream_Menu] ([MenuId], [ParentId], [Code], [Text], [Path], [Level], [SortId], [Url], [IconClass], [PinYin], [Enabled], [CreatePerson], [CreateTime], [UpdatePerson], [UpdateTime]) VALUES (N'c5efa0ba-2260-3178-1b05-07c268cb8b5c', N'47ccd9a8-f834-45d7-9fd5-0ceba98e7d1a', N'5', N'角色管理', N'47ccd9a8-f834-45d7-9fd5-0ceba98e7d1a,c5efa0ba-2260-3178-1b05-07c268cb8b5c,', 2, 4, N'aa', N'icon-man', N'jsgl', 1, NULL, NULL, N'BeiDrem', CAST(0x0000A49B014EC47B AS DateTime))
INSERT [dbo].[BeiDream_Menu] ([MenuId], [ParentId], [Code], [Text], [Path], [Level], [SortId], [Url], [IconClass], [PinYin], [Enabled], [CreatePerson], [CreateTime], [UpdatePerson], [UpdateTime]) VALUES (N'47ccd9a8-f834-45d7-9fd5-0ceba98e7d1a', NULL, N'1', N'系统设置', N'47ccd9a8-f834-45d7-9fd5-0ceba98e7d1a,', 1, 0, NULL, N'icon-help', N'xtsz', 1, NULL, NULL, N'BeiDrem', CAST(0x0000A49B0148B09A AS DateTime))
INSERT [dbo].[BeiDream_Menu] ([MenuId], [ParentId], [Code], [Text], [Path], [Level], [SortId], [Url], [IconClass], [PinYin], [Enabled], [CreatePerson], [CreateTime], [UpdatePerson], [UpdateTime]) VALUES (N'46ea748e-fc86-45a4-09f1-3eb7ff5e7fa4', N'47ccd9a8-f834-45d7-9fd5-0ceba98e7d1a', N'4', N'组织机构', N'47ccd9a8-f834-45d7-9fd5-0ceba98e7d1a,46ea748e-fc86-45a4-09f1-3eb7ff5e7fa4,', 2, 3, N'ddd', N'icon-save', N'zzjg', 1, NULL, NULL, N'BeiDrem', CAST(0x0000A49B014EC46E AS DateTime))
INSERT [dbo].[BeiDream_Menu] ([MenuId], [ParentId], [Code], [Text], [Path], [Level], [SortId], [Url], [IconClass], [PinYin], [Enabled], [CreatePerson], [CreateTime], [UpdatePerson], [UpdateTime]) VALUES (N'427071b3-d97c-45ed-a86a-dfab8cd86175', NULL, N'2', N'基础信息', N'427071b3-d97c-45ed-a86a-dfab8cd86175,', 1, 1, NULL, N'icon-search', N'jcxx', 1, NULL, NULL, N'BeiDrem', CAST(0x0000A49B0148B09E AS DateTime))
INSERT [dbo].[BeiDream_Menu] ([MenuId], [ParentId], [Code], [Text], [Path], [Level], [SortId], [Url], [IconClass], [PinYin], [Enabled], [CreatePerson], [CreateTime], [UpdatePerson], [UpdateTime]) VALUES (N'6e4f9cc7-2d4b-45c6-9ef2-eb5eafdaa49e', N'47ccd9a8-f834-45d7-9fd5-0ceba98e7d1a', N'3', N'菜单管理', N'47ccd9a8-f834-45d7-9fd5-0ceba98e7d1a,6e4f9cc7-2d4b-45c6-9ef2-eb5eafdaa49e,', 2, 2, N'/Systems/MenuManage', N'icon-reload', N'cdgl', 1, NULL, NULL, N'BeiDrem', CAST(0x0000A49B014EC476 AS DateTime))
USE [master]
GO
ALTER DATABASE [BeiDreamEasyUi] SET  READ_WRITE 
GO
