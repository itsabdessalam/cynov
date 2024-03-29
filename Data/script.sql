USE [master]
GO
/****** Object:  Database [Cynov.CynovContext]    Script Date: 09/11/2018 21:11:35 ******/
CREATE DATABASE [Cynov.CynovContext]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cynov.CynovContext', FILENAME = N'C:\Users\Abdessalam\Cynov.CynovContext.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cynov.CynovContext_log', FILENAME = N'C:\Users\Abdessalam\Cynov.CynovContext_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Cynov.CynovContext] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cynov.CynovContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cynov.CynovContext] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Cynov.CynovContext] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cynov.CynovContext] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cynov.CynovContext] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Cynov.CynovContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cynov.CynovContext] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Cynov.CynovContext] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cynov.CynovContext] SET  MULTI_USER 
GO
ALTER DATABASE [Cynov.CynovContext] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cynov.CynovContext] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cynov.CynovContext] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cynov.CynovContext] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cynov.CynovContext] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cynov.CynovContext] SET QUERY_STORE = OFF
GO
USE [Cynov.CynovContext]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Cynov.CynovContext]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 09/11/2018 21:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auditoriums]    Script Date: 09/11/2018 21:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditoriums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Capacity] [int] NOT NULL,
	[CurrentCapacity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Auditoriums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Films]    Script Date: 09/11/2018 21:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Films](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Director] [nvarchar](max) NULL,
	[Producer] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Films] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 09/11/2018 21:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrintDate] [datetime] NOT NULL,
	[Company] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[OrderId] [nvarchar](max) NULL,
	[Showtime_Id] [int] NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Showtimes]    Script Date: 09/11/2018 21:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Showtimes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Start] [datetime] NOT NULL,
	[Finish] [datetime] NOT NULL,
	[ThreeDimensional] [bit] NOT NULL,
	[OriginalVersion] [bit] NOT NULL,
	[Auditorium_Id] [int] NULL,
	[Film_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Showtimes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/11/2018 21:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserShowtimes]    Script Date: 09/11/2018 21:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserShowtimes](
	[User_Id] [int] NOT NULL,
	[Showtime_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.UserShowtimes] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC,
	[Showtime_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Showtime_Id]    Script Date: 09/11/2018 21:11:35 ******/
CREATE NONCLUSTERED INDEX [IX_Showtime_Id] ON [dbo].[Orders]
(
	[Showtime_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_Id]    Script Date: 09/11/2018 21:11:35 ******/
CREATE NONCLUSTERED INDEX [IX_User_Id] ON [dbo].[Orders]
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Auditorium_Id]    Script Date: 09/11/2018 21:11:35 ******/
CREATE NONCLUSTERED INDEX [IX_Auditorium_Id] ON [dbo].[Showtimes]
(
	[Auditorium_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Film_Id]    Script Date: 09/11/2018 21:11:35 ******/
CREATE NONCLUSTERED INDEX [IX_Film_Id] ON [dbo].[Showtimes]
(
	[Film_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Showtime_Id]    Script Date: 09/11/2018 21:11:35 ******/
CREATE NONCLUSTERED INDEX [IX_Showtime_Id] ON [dbo].[UserShowtimes]
(
	[Showtime_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_Id]    Script Date: 09/11/2018 21:11:35 ******/
CREATE NONCLUSTERED INDEX [IX_User_Id] ON [dbo].[UserShowtimes]
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Orders_dbo.Showtimes_Showtime_Id] FOREIGN KEY([Showtime_Id])
REFERENCES [dbo].[Showtimes] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_dbo.Orders_dbo.Showtimes_Showtime_Id]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Orders_dbo.Users_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_dbo.Orders_dbo.Users_User_Id]
GO
ALTER TABLE [dbo].[Showtimes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Showtimes_dbo.Auditoriums_Auditorium_Id] FOREIGN KEY([Auditorium_Id])
REFERENCES [dbo].[Auditoriums] ([Id])
GO
ALTER TABLE [dbo].[Showtimes] CHECK CONSTRAINT [FK_dbo.Showtimes_dbo.Auditoriums_Auditorium_Id]
GO
ALTER TABLE [dbo].[Showtimes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Showtimes_dbo.Films_Film_Id] FOREIGN KEY([Film_Id])
REFERENCES [dbo].[Films] ([Id])
GO
ALTER TABLE [dbo].[Showtimes] CHECK CONSTRAINT [FK_dbo.Showtimes_dbo.Films_Film_Id]
GO
ALTER TABLE [dbo].[UserShowtimes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserShowtimes_dbo.Showtimes_Showtime_Id] FOREIGN KEY([Showtime_Id])
REFERENCES [dbo].[Showtimes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserShowtimes] CHECK CONSTRAINT [FK_dbo.UserShowtimes_dbo.Showtimes_Showtime_Id]
GO
ALTER TABLE [dbo].[UserShowtimes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserShowtimes_dbo.Users_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserShowtimes] CHECK CONSTRAINT [FK_dbo.UserShowtimes_dbo.Users_User_Id]
GO
USE [master]
GO
ALTER DATABASE [Cynov.CynovContext] SET  READ_WRITE 
GO
