USE [master]
GO
/****** Object:  Database [TechusDB]    Script Date: 6/25/2022 5:57:08 PM ******/
CREATE DATABASE [TechusDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechusDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TechusDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechusDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TechusDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TechusDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechusDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechusDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechusDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechusDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechusDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechusDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechusDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechusDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechusDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechusDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechusDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechusDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechusDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechusDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechusDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechusDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TechusDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechusDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechusDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechusDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechusDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechusDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TechusDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechusDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TechusDB] SET  MULTI_USER 
GO
ALTER DATABASE [TechusDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechusDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechusDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechusDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TechusDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TechusDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TechusDB', N'ON'
GO
ALTER DATABASE [TechusDB] SET QUERY_STORE = OFF
GO
USE [TechusDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/25/2022 5:57:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AboutSection]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutSection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainPictureurl] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[AboutDescription] [nvarchar](max) NULL,
	[AboutHeader] [nvarchar](max) NULL,
	[AboutUs] [nvarchar](max) NULL,
	[WriteUrl] [nvarchar](max) NULL,
	[LangCode] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AboutSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AboutSectionItems]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutSectionItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Condition] [nvarchar](max) NULL,
	[AboutSectionId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AboutSectionItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Apply]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apply](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[EmailAdress] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[ApplyDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Apply] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[PictureUrl] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PictureUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeatureLanguage]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureLanguage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[FeatureID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_FeatureLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeBlog]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeBlog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OurBlog] [nvarchar](max) NULL,
	[BlogHeader] [nvarchar](max) NULL,
	[LangCode] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_HomeBlog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LangCode] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutInfo]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Home] [nvarchar](max) NULL,
	[Links] [nvarchar](max) NULL,
	[Services] [nvarchar](max) NULL,
	[TeamCondition] [nvarchar](max) NULL,
	[Contact] [nvarchar](max) NULL,
	[Apply] [nvarchar](max) NULL,
	[Search] [nvarchar](max) NULL,
	[CopyRight] [nvarchar](max) NULL,
	[About] [nvarchar](max) NULL,
	[Blog] [nvarchar](max) NULL,
	[Privacy] [nvarchar](max) NULL,
	[LatestPost] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[ContactUs] [nvarchar](max) NULL,
	[Subscribe] [nvarchar](max) NULL,
	[LangCode] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_LayoutInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PictureUrl] [nvarchar](max) NULL,
	[AddDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLanguage]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLanguage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
	[NewsID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_NewsLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaim]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_OperationClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicesSection]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicesSection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OurServices] [nvarchar](max) NULL,
	[ServicesHeader] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LangCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_ServicesSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubHeader] [nvarchar](max) NULL,
	[Button] [nvarchar](max) NULL,
	[Header] [nvarchar](max) NULL,
	[RightHeader] [nvarchar](max) NULL,
	[LangCode] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[MultipleHeader] [nvarchar](max) NULL,
	[PictureUrl1] [nvarchar](max) NULL,
	[PictureUrl2] [nvarchar](max) NULL,
	[PictureUrl3] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Social]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Social](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[Instagram] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Facebook] [nvarchar](max) NULL,
	[Linkedin] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Tiktok] [nvarchar](max) NULL,
	[Twitter] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Social] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialSection]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialSection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Specialists] [nvarchar](max) NULL,
	[SuccessfulTeam] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SpecialSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PictureUrl] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestimonialSection]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestimonialSection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Testimonial] [nvarchar](max) NULL,
	[ClientSay] [nvarchar](max) NULL,
	[ClientDescription] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TestimonialSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PasswordHash] [varbinary](max) NULL,
	[PasswordSalt] [varbinary](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaim]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
 CONSTRAINT [PK_UserOperationClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work]    Script Date: 6/25/2022 5:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PictureUrl] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[FeatureId] [int] NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Work] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220613201011_initial', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220613205944_language', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220614081209_lan', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616010731_layout', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616064830_social', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616084645_slider', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616084826_sliders', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220618165359_isde', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220619184622_edit', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220620122001_slidersed', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622111250_aboutitems', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622122643_aboutitemsl', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622140855_aboutitemsls', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622141514_aboutitemslsd', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622151845_aboutitemslsdc', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623173407_apply', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220624013312_partners', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220624042658_special', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220624055157_test', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[AboutSection] ON 

INSERT [dbo].[AboutSection] ([Id], [MainPictureurl], [IsDeleted], [AboutDescription], [AboutHeader], [AboutUs], [WriteUrl], [LangCode], [IsActive]) VALUES (1, N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1655909455/dr6v9ehdk1qr5pignofv.png', 0, N'Nulla consequat finibus risus, eu tincidunt sapien pharetra non. Sed arcu turpis, varius et magna sed, malesuada vestibulum ligula. Mauris dignissim lectus quis arcu aliquam eleifend maximus ligula, sit amet elementum mauris facilisis in rutrum.', N'Grow Business With Marketing', N'ABOUT US', N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1655909464/c9g3pclig909tsaqsidw.png', N'en', 0)
INSERT [dbo].[AboutSection] ([Id], [MainPictureurl], [IsDeleted], [AboutDescription], [AboutHeader], [AboutUs], [WriteUrl], [LangCode], [IsActive]) VALUES (3, N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1656068828/qnmnhbc0robxhcf8id08.png', 0, N'Müasir dövrdə Biznesinizin inkişafı üçün ən vacib nüanslardan biri də rəqəmsal marketinq dir. Softnology Digital Agency olaraq  rəqəmsal marketinqinizin inkişafı üçün sizə  nələri təklif edirik?', N'Biznesinizi Bizimlə Böyüdün', N'Haqqımızda', N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1656068829/nqyczx3guqtgoewjh9gd.png', N'az', 1)
SET IDENTITY_INSERT [dbo].[AboutSection] OFF
GO
SET IDENTITY_INSERT [dbo].[AboutSectionItems] ON 

INSERT [dbo].[AboutSectionItems] ([Id], [Condition], [AboutSectionId], [IsDeleted], [IsActive]) VALUES (1, N'Quisque condimentum fringilla justo eu maximus. Pellentesque pharetra convallis tortor et finibus.', 1, 0, 1)
INSERT [dbo].[AboutSectionItems] ([Id], [Condition], [AboutSectionId], [IsDeleted], [IsActive]) VALUES (2, N'Quisque condimentum fringilla justo eu maximus. Pellentesque pharetra convallis tortor et finibus.', 1, 0, 1)
INSERT [dbo].[AboutSectionItems] ([Id], [Condition], [AboutSectionId], [IsDeleted], [IsActive]) VALUES (3, N'Dövrün tələblərinə uyğun veb saytlar', 3, 0, 1)
INSERT [dbo].[AboutSectionItems] ([Id], [Condition], [AboutSectionId], [IsDeleted], [IsActive]) VALUES (4, N'Mobil Tətbiqlər ', 3, 0, 1)
INSERT [dbo].[AboutSectionItems] ([Id], [Condition], [AboutSectionId], [IsDeleted], [IsActive]) VALUES (5, N'Biznes üçün daxili idarə etmə sistemi', 3, 0, 1)
INSERT [dbo].[AboutSectionItems] ([Id], [Condition], [AboutSectionId], [IsDeleted], [IsActive]) VALUES (6, N'Şirkət brending -inin hazırlanması', 3, 0, 1)
INSERT [dbo].[AboutSectionItems] ([Id], [Condition], [AboutSectionId], [IsDeleted], [IsActive]) VALUES (8, N'SEO xidməti', 3, 0, 1)
INSERT [dbo].[AboutSectionItems] ([Id], [Condition], [AboutSectionId], [IsDeleted], [IsActive]) VALUES (9, N'7/24 texniki dəstək', 3, 0, 1)
SET IDENTITY_INSERT [dbo].[AboutSectionItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Apply] ON 

INSERT [dbo].[Apply] ([Id], [FirstName], [LastName], [EmailAdress], [PhoneNumber], [Message], [ApplyDate], [IsDeleted], [IsActive]) VALUES (1, N'Mehemmedeli', N'Eliyev', N'mehemmedeli678@gmail.com', N'0558806776', N'kasdgasgdjhasd', CAST(N'2022-06-23T22:26:17.4212171' AS DateTime2), 0, 0)
INSERT [dbo].[Apply] ([Id], [FirstName], [LastName], [EmailAdress], [PhoneNumber], [Message], [ApplyDate], [IsDeleted], [IsActive]) VALUES (2, N'Mehemmedeli', N'Eliyev', N'mehemmedeli678@gmail.com', N'0558806776', N'test message', CAST(N'2022-06-23T22:26:50.5913666' AS DateTime2), 0, 0)
INSERT [dbo].[Apply] ([Id], [FirstName], [LastName], [EmailAdress], [PhoneNumber], [Message], [ApplyDate], [IsDeleted], [IsActive]) VALUES (3, N'asdasd', N'asdasd', N'mehemmedeli678@gmail.com', N'asdasdasd', NULL, CAST(N'2022-06-23T22:35:08.3318128' AS DateTime2), 0, 0)
INSERT [dbo].[Apply] ([Id], [FirstName], [LastName], [EmailAdress], [PhoneNumber], [Message], [ApplyDate], [IsDeleted], [IsActive]) VALUES (4, N'Mehemmedeli', N'Eliyev', N'mehemmedeli678@gmail.com', N'0558806776', N'sdasd', CAST(N'2022-06-23T22:48:03.0189602' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[Apply] OFF
GO
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([Id], [LangCode], [IsDeleted], [IsActive]) VALUES (1, N'az', 0, 0)
INSERT [dbo].[Language] ([Id], [LangCode], [IsDeleted], [IsActive]) VALUES (2, N'en', 0, 0)
INSERT [dbo].[Language] ([Id], [LangCode], [IsDeleted], [IsActive]) VALUES (3, N'ru', 1, 0)
INSERT [dbo].[Language] ([Id], [LangCode], [IsDeleted], [IsActive]) VALUES (4, N'fr', 1, 0)
SET IDENTITY_INSERT [dbo].[Language] OFF
GO
SET IDENTITY_INSERT [dbo].[LayoutInfo] ON 

INSERT [dbo].[LayoutInfo] ([Id], [Home], [Links], [Services], [TeamCondition], [Contact], [Apply], [Search], [CopyRight], [About], [Blog], [Privacy], [LatestPost], [Detail], [ContactUs], [Subscribe], [LangCode], [IsDeleted], [IsActive]) VALUES (2, N'Home', N'Our Links', N'Services', N'Team & Condition', N'Contact', N'Try for free', N'Search Here...', N'Copyright © 2022 ShivaayThemes. All rights reserved.', N'About Us', N'Blog', N'Privacy Policy', N'Latest Post', N'Maecenas ac elit non justo hendrerit congue et lacinia orci. Integer in lorem vitae tortor molestie cursus sed id eros. Quisque maximus mauris sit amet tortor consectetur, id eleifend justo gravida.', N'Contack Us', N'Get a subscriber', N'en', 0, 0)
INSERT [dbo].[LayoutInfo] ([Id], [Home], [Links], [Services], [TeamCondition], [Contact], [Apply], [Search], [CopyRight], [About], [Blog], [Privacy], [LatestPost], [Detail], [ContactUs], [Subscribe], [LangCode], [IsDeleted], [IsActive]) VALUES (3, N'Ana sehife', N'Kecidler', N'Xidmetler', N'Komanda', N'Elaqe', N'Muraciet et', N'axtaris...', N'Butun huquqlar qorunur', N'Haqqimizda', N'Bloq', N'mexfilik', N'Son postlar', N'Bultenin altbasligi', N'bizimle elaqe', N'Abuneci ol', N'az', 0, 0)
SET IDENTITY_INSERT [dbo].[LayoutInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[OperationClaim] ON 

INSERT [dbo].[OperationClaim] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[OperationClaim] ([Id], [Name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[OperationClaim] OFF
GO
SET IDENTITY_INSERT [dbo].[ServicesSection] ON 

INSERT [dbo].[ServicesSection] ([Id], [OurServices], [ServicesHeader], [IsDeleted], [IsActive], [LangCode]) VALUES (1, N'XİDMƏTLƏRİMİZ', N'Our Successful Team', 0, 1, N'az')
SET IDENTITY_INSERT [dbo].[ServicesSection] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([Id], [SubHeader], [Button], [Header], [RightHeader], [LangCode], [IsDeleted], [MultipleHeader], [PictureUrl1], [PictureUrl2], [PictureUrl3], [IsActive]) VALUES (4, N'Şirkətinizin daha çox kütləyə sahib olması üçün bizə müraciət edin..', N'Müraciət et', N'Web Saytların ', NULL, N'az', 0, N'Hazırlanması,Texniki Dəstəyi,Hosting Xidmətləri', N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1656060077/ayuvy6h1k3oqdwc8fydd.png', N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1656058225/h6rs9nzftsbqhhslebtv.jpg', N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1656058220/i9ikiri6czamhb2ub9zg.jpg', 1)
INSERT [dbo].[Slider] ([Id], [SubHeader], [Button], [Header], [RightHeader], [LangCode], [IsDeleted], [MultipleHeader], [PictureUrl1], [PictureUrl2], [PictureUrl3], [IsActive]) VALUES (5, N'Maecenas euismod dui lectus, nec dapibus odio sodales volutpat. Donec ut semper sapien, ac fermentum lorem.', N'GET STARTED', N'We Help Grow Your', N'We Help you make youâ€™re dream come true', N'en', 0, N'basliq1,basliq2,basliq3', N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1655808161/iv5fponbkazl43wlea6u.jpg', N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1655808177/i8kojtzv7fglbzfc6feu.jpg', N'http://res.cloudinary.com/dqwh7wuek/image/upload/v1655808187/iw8h4eq2qbxkhhychrie.jpg', 0)
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[Social] ON 

INSERT [dbo].[Social] ([Id], [Phone], [Instagram], [Email], [IsDeleted], [Facebook], [Linkedin], [Location], [Tiktok], [Twitter], [IsActive]) VALUES (1, N'055-555-55-55', N'https://www.instagram.com/', N'techus@gmail.com', 0, N'https://www.facebook.com/', N'linkedin', N'mylocation', N'tiktok', N'twitter', 1)
SET IDENTITY_INSERT [dbo].[Social] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1, N'string', N'string', N'string', 0x0AE079EC6F32A2CB42C2A68001A5ED881A2FEDAF20226A4EE0F1AD8A66FB1982A4966F84A54E99711371C6FD3032794E3CAA87B85B8E989CABFD3AFBB56CEC28, 0x57795BEBC03493173365F3671A3A43E02ED5D80A62252AECBC15B5719804E5F56812D787E539C48EA49B76E9B45F0A004A03F8494CCCD3C7D5ED56CF02EDB268A47AF8B75C6F23C45F89162547E6B15656E2832F4577BC95B8CE358230EE0B44AF5D8AE88E1419DE05A53404F563319BF6757C02AF9D9183FC6C4E6823BAC4C2, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserOperationClaim] ON 

INSERT [dbo].[UserOperationClaim] ([Id], [UserId], [OperationClaimId]) VALUES (1, 1, 1)
INSERT [dbo].[UserOperationClaim] ([Id], [UserId], [OperationClaimId]) VALUES (2, 1, 2)
SET IDENTITY_INSERT [dbo].[UserOperationClaim] OFF
GO
/****** Object:  Index [IX_AboutSectionItems_AboutSectionId]    Script Date: 6/25/2022 5:57:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AboutSectionItems_AboutSectionId] ON [dbo].[AboutSectionItems]
(
	[AboutSectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FeatureLanguage_FeatureID]    Script Date: 6/25/2022 5:57:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_FeatureLanguage_FeatureID] ON [dbo].[FeatureLanguage]
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NewsLanguage_NewsID]    Script Date: 6/25/2022 5:57:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_NewsLanguage_NewsID] ON [dbo].[NewsLanguage]
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserOperationClaim_OperationClaimId]    Script Date: 6/25/2022 5:57:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserOperationClaim_OperationClaimId] ON [dbo].[UserOperationClaim]
(
	[OperationClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserOperationClaim_UserId]    Script Date: 6/25/2022 5:57:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserOperationClaim_UserId] ON [dbo].[UserOperationClaim]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Work_FeatureId]    Script Date: 6/25/2022 5:57:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_Work_FeatureId] ON [dbo].[Work]
(
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AboutSection] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[AboutSectionItems] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Apply] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Client] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Client] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Feature] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Feature] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FeatureLanguage] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FeatureLanguage] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[HomeBlog] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Language] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[LayoutInfo] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LayoutInfo] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[News] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[News] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[NewsLanguage] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[NewsLanguage] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Slider] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Slider] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Social] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Social] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Work] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Work] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[AboutSectionItems]  WITH CHECK ADD  CONSTRAINT [FK_AboutSectionItems_AboutSection_AboutSectionId] FOREIGN KEY([AboutSectionId])
REFERENCES [dbo].[AboutSection] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AboutSectionItems] CHECK CONSTRAINT [FK_AboutSectionItems_AboutSection_AboutSectionId]
GO
ALTER TABLE [dbo].[FeatureLanguage]  WITH CHECK ADD  CONSTRAINT [FK_FeatureLanguage_Feature_FeatureID] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Feature] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeatureLanguage] CHECK CONSTRAINT [FK_FeatureLanguage_Feature_FeatureID]
GO
ALTER TABLE [dbo].[NewsLanguage]  WITH CHECK ADD  CONSTRAINT [FK_NewsLanguage_News_NewsID] FOREIGN KEY([NewsID])
REFERENCES [dbo].[News] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsLanguage] CHECK CONSTRAINT [FK_NewsLanguage_News_NewsID]
GO
ALTER TABLE [dbo].[UserOperationClaim]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaim_OperationClaim_OperationClaimId] FOREIGN KEY([OperationClaimId])
REFERENCES [dbo].[OperationClaim] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserOperationClaim] CHECK CONSTRAINT [FK_UserOperationClaim_OperationClaim_OperationClaimId]
GO
ALTER TABLE [dbo].[UserOperationClaim]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaim_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserOperationClaim] CHECK CONSTRAINT [FK_UserOperationClaim_User_UserId]
GO
ALTER TABLE [dbo].[Work]  WITH CHECK ADD  CONSTRAINT [FK_Work_Feature_FeatureId] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([Id])
GO
ALTER TABLE [dbo].[Work] CHECK CONSTRAINT [FK_Work_Feature_FeatureId]
GO
USE [master]
GO
ALTER DATABASE [TechusDB] SET  READ_WRITE 
GO
