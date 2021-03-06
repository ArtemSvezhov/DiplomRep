USE [master]
GO
/****** Object:  Database [kursac]    Script Date: 22.03.2021 12:14:41 ******/
CREATE DATABASE [kursac]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kursac', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\kursac.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kursac_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\kursac_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [kursac] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kursac].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kursac] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kursac] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kursac] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kursac] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kursac] SET ARITHABORT OFF 
GO
ALTER DATABASE [kursac] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kursac] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kursac] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kursac] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kursac] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kursac] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kursac] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kursac] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kursac] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kursac] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kursac] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kursac] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kursac] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kursac] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kursac] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kursac] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kursac] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kursac] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kursac] SET  MULTI_USER 
GO
ALTER DATABASE [kursac] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kursac] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kursac] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kursac] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kursac] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kursac] SET QUERY_STORE = OFF
GO
USE [kursac]
GO
/****** Object:  Table [dbo].[agent]    Script Date: 22.03.2021 12:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agent](
	[idagent] [int] IDENTITY(1,1) NOT NULL,
	[FIO_agent] [varchar](50) NULL,
	[agent_login] [varchar](15) NULL,
	[agent_parol] [varchar](15) NULL,
 CONSTRAINT [PK_agent] PRIMARY KEY CLUSTERED 
(
	[idagent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[edinovr_oplata]    Script Date: 22.03.2021 12:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[edinovr_oplata](
	[idedinovr_oplata] [int] IDENTITY(1,1) NOT NULL,
	[idagent] [int] NOT NULL,
	[index_str] [varchar](15) NOT NULL,
	[idstrahovaya] [int] NULL,
	[idstrahovately] [int] NOT NULL,
	[nomer_dogovora] [varchar](45) NULL,
	[data_nachala] [date] NULL,
	[objecti] [nvarchar](50) NULL,
	[data_okonchanya] [date] NULL,
	[nachisl_str_perem] [decimal](10, 2) NULL,
	[oplach_premya] [decimal](10, 2) NULL,
	[bank_posr] [varchar](45) NULL,
	[primechanya] [text] NULL,
 CONSTRAINT [PK_edinovr_oplata] PRIMARY KEY CLUSTERED 
(
	[idedinovr_oplata] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rassrochka]    Script Date: 22.03.2021 12:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rassrochka](
	[idrassrochka] [int] IDENTITY(1,1) NOT NULL,
	[idagent] [int] NOT NULL,
	[index_str] [varchar](15) NOT NULL,
	[idstrahovately] [int] NOT NULL,
	[nomer_dogovora] [varchar](45) NULL,
	[objecti] [nvarchar](50) NULL,
	[data_nachala] [date] NULL,
	[idstrahovaya] [int] NULL,
	[data_okonchanya] [date] NULL,
	[nachisl_str_premya] [decimal](10, 2) NULL,
	[oplach_premya] [decimal](10, 2) NULL,
	[kol_platezh] [int] NULL,
	[data_2pl] [date] NULL,
	[data_3pl] [date] NULL,
	[data_4pl] [date] NULL,
	[summa_platezh] [decimal](10, 2) NULL,
	[summa_2pl] [decimal](10, 2) NULL,
	[summa_3pl] [decimal](10, 2) NULL,
	[summa_4pl] [decimal](10, 2) NULL,
	[bank_posr] [varchar](45) NULL,
	[primechanya] [varchar](250) NULL,
 CONSTRAINT [PK_rassrochka] PRIMARY KEY CLUSTERED 
(
	[idrassrochka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[strahovately]    Script Date: 22.03.2021 12:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[strahovately](
	[idstrahovately] [int] IDENTITY(1,1) NOT NULL,
	[FIO_Namenov] [varchar](150) NULL,
	[data_rozden] [date] NULL,
	[address] [varchar](250) NULL,
	[rab_telefon] [varchar](45) NULL,
	[mob_telefon_1] [varchar](45) NULL,
	[mob_telefon_2] [varchar](45) NULL,
	[dom_telefon] [varchar](45) NULL,
	[kategorya] [varchar](15) NULL,
	[primechanya] [text] NULL,
 CONSTRAINT [PK_strahovately] PRIMARY KEY CLUSTERED 
(
	[idstrahovately] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[strahovaya]    Script Date: 22.03.2021 12:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[strahovaya](
	[idstrahovaya] [int] IDENTITY(1,1) NOT NULL,
	[naimenovStrahovaya] [nvarchar](100) NULL,
 CONSTRAINT [PK_strahovaya] PRIMARY KEY CLUSTERED 
(
	[idstrahovaya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[strahovki]    Script Date: 22.03.2021 12:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[strahovki](
	[index_str] [varchar](15) NOT NULL,
	[naimenov_str] [varchar](150) NULL,
	[kategoria_str] [varchar](45) NULL,
 CONSTRAINT [PK_strahovki] PRIMARY KEY CLUSTERED 
(
	[index_str] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[agent] ON 

INSERT [dbo].[agent] ([idagent], [FIO_agent], [agent_login], [agent_parol]) VALUES (0, N'Админ', N'admin', N'1')
INSERT [dbo].[agent] ([idagent], [FIO_agent], [agent_login], [agent_parol]) VALUES (1, N'Лушина Алеся Эдуардовна
', N'Lushina_ae
', N'alesya12345
')
SET IDENTITY_INSERT [dbo].[agent] OFF
GO
SET IDENTITY_INSERT [dbo].[edinovr_oplata] ON 

INSERT [dbo].[edinovr_oplata] ([idedinovr_oplata], [idagent], [index_str], [idstrahovaya], [idstrahovately], [nomer_dogovora], [data_nachala], [objecti], [data_okonchanya], [nachisl_str_perem], [oplach_premya], [bank_posr], [primechanya]) VALUES (1, 1, N'ЗК', 1, 1, N'678-ор
', CAST(N'2020-04-27' AS Date), N'ass', CAST(N'2021-02-24' AS Date), CAST(1500.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), N'Тинькофф
', NULL)
INSERT [dbo].[edinovr_oplata] ([idedinovr_oplata], [idagent], [index_str], [idstrahovaya], [idstrahovately], [nomer_dogovora], [data_nachala], [objecti], [data_okonchanya], [nachisl_str_perem], [oplach_premya], [bank_posr], [primechanya]) VALUES (2, 1, N'ИМЮР', 3, 2, N'124124', CAST(N'2020-01-01' AS Date), N'ass', CAST(N'2021-03-19' AS Date), CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), N'', N'')
SET IDENTITY_INSERT [dbo].[edinovr_oplata] OFF
GO
SET IDENTITY_INSERT [dbo].[rassrochka] ON 

INSERT [dbo].[rassrochka] ([idrassrochka], [idagent], [index_str], [idstrahovately], [nomer_dogovora], [objecti], [data_nachala], [idstrahovaya], [data_okonchanya], [nachisl_str_premya], [oplach_premya], [kol_platezh], [data_2pl], [data_3pl], [data_4pl], [summa_platezh], [summa_2pl], [summa_3pl], [summa_4pl], [bank_posr], [primechanya]) VALUES (1, 1, N'ЗК', 1, N'56
', N'ass', CAST(N'2019-01-01' AS Date), 1, CAST(N'2020-01-01' AS Date), CAST(6596.96 AS Decimal(10, 2)), CAST(3396.96 AS Decimal(10, 2)), 2, CAST(N'2019-04-01' AS Date), NULL, NULL, CAST(3200.00 AS Decimal(10, 2)), CAST(3200.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[rassrochka] ([idrassrochka], [idagent], [index_str], [idstrahovately], [nomer_dogovora], [objecti], [data_nachala], [idstrahovaya], [data_okonchanya], [nachisl_str_premya], [oplach_premya], [kol_platezh], [data_2pl], [data_3pl], [data_4pl], [summa_platezh], [summa_2pl], [summa_3pl], [summa_4pl], [bank_posr], [primechanya]) VALUES (2, 1, N'ГОЮР
', 0, N'1', N'ass', CAST(N'2021-04-01' AS Date), 1, CAST(N'2021-02-01' AS Date), CAST(1.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), 0, NULL, NULL, NULL, CAST(1.00 AS Decimal(10, 2)), NULL, NULL, NULL, N'test', N'1')
INSERT [dbo].[rassrochka] ([idrassrochka], [idagent], [index_str], [idstrahovately], [nomer_dogovora], [objecti], [data_nachala], [idstrahovaya], [data_okonchanya], [nachisl_str_premya], [oplach_premya], [kol_platezh], [data_2pl], [data_3pl], [data_4pl], [summa_platezh], [summa_2pl], [summa_3pl], [summa_4pl], [bank_posr], [primechanya]) VALUES (5, 1, N'ДМС
', 1, N'fjdkdk', N'ass', CAST(N'2021-01-01' AS Date), 2, CAST(N'2021-05-01' AS Date), CAST(1.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'')
INSERT [dbo].[rassrochka] ([idrassrochka], [idagent], [index_str], [idstrahovately], [nomer_dogovora], [objecti], [data_nachala], [idstrahovaya], [data_okonchanya], [nachisl_str_premya], [oplach_premya], [kol_platezh], [data_2pl], [data_3pl], [data_4pl], [summa_platezh], [summa_2pl], [summa_3pl], [summa_4pl], [bank_posr], [primechanya]) VALUES (9, 1, N'ДМС
', 1, N'32', N'ass', CAST(N'2021-03-17' AS Date), 1, CAST(N'2021-03-19' AS Date), CAST(1.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[rassrochka] ([idrassrochka], [idagent], [index_str], [idstrahovately], [nomer_dogovora], [objecti], [data_nachala], [idstrahovaya], [data_okonchanya], [nachisl_str_premya], [oplach_premya], [kol_platezh], [data_2pl], [data_3pl], [data_4pl], [summa_platezh], [summa_2pl], [summa_3pl], [summa_4pl], [bank_posr], [primechanya]) VALUES (10, 1, N'ДМСЮР
', 8, N'10121АВ', N'Автомобиль', CAST(N'2021-03-19' AS Date), 6, CAST(N'2021-05-20' AS Date), CAST(120000.00 AS Decimal(10, 2)), CAST(60000.00 AS Decimal(10, 2)), 2, CAST(N'2021-04-20' AS Date), NULL, NULL, CAST(60000.00 AS Decimal(10, 2)), CAST(60000.00 AS Decimal(10, 2)), NULL, NULL, N'СПБ', N'Договор созданый для теста')
SET IDENTITY_INSERT [dbo].[rassrochka] OFF
GO
SET IDENTITY_INSERT [dbo].[strahovately] ON 

INSERT [dbo].[strahovately] ([idstrahovately], [FIO_Namenov], [data_rozden], [address], [rab_telefon], [mob_telefon_1], [mob_telefon_2], [dom_telefon], [kategorya], [primechanya]) VALUES (0, N'test', CAST(N'2020-12-12' AS Date), N'test', N'', N'8 (921) 241 25-12', N'', N'', N'физ. лицо', N'test')
INSERT [dbo].[strahovately] ([idstrahovately], [FIO_Namenov], [data_rozden], [address], [rab_telefon], [mob_telefon_1], [mob_telefon_2], [dom_telefon], [kategorya], [primechanya]) VALUES (1, N'Четверткова Любовь Владимировна
', CAST(N'1960-07-23' AS Date), N'ул. Разведчиков д.4 кв.15
', N'8 (921) 233 33-33
', N'8 (333) 333 33-33
', N'8 (333) 333 33-33
', N'484745
', N'физ. лицо
', N'не звонить с утра
')
INSERT [dbo].[strahovately] ([idstrahovately], [FIO_Namenov], [data_rozden], [address], [rab_telefon], [mob_telefon_1], [mob_telefon_2], [dom_telefon], [kategorya], [primechanya]) VALUES (2, N'Рачек Александра Сергеевна
', CAST(N'1989-05-23' AS Date), N'Разводная ул. Д.29 кв.15
', N'', N'8 (988) 989 89-89
', NULL, NULL, N'физ. лицо
', N'')
INSERT [dbo].[strahovately] ([idstrahovately], [FIO_Namenov], [data_rozden], [address], [rab_telefon], [mob_telefon_1], [mob_telefon_2], [dom_telefon], [kategorya], [primechanya]) VALUES (3, N'Кокоткин Алексей Иванович
', CAST(N'1990-06-06' AS Date), N'Кронверский пр. д.7   кв.12
', N'', N'8 (956) 666 66-66
', NULL, NULL, N'физ. лицо
', N'звонить только в обед
')
INSERT [dbo].[strahovately] ([idstrahovately], [FIO_Namenov], [data_rozden], [address], [rab_telefon], [mob_telefon_1], [mob_telefon_2], [dom_telefon], [kategorya], [primechanya]) VALUES (7, N'Марков Игорь Алексеевич', CAST(N'1945-11-08' AS Date), N'г.Санкт-Петербург, пр-кт Маршала Жукова, д.37к3, кв. 458', N'8 (812) 450 78-84', N'8 (931) 230 59-35', N'8 (921) 314 78-47', N'', N'физ. лицо', N'')
INSERT [dbo].[strahovately] ([idstrahovately], [FIO_Namenov], [data_rozden], [address], [rab_telefon], [mob_telefon_1], [mob_telefon_2], [dom_telefon], [kategorya], [primechanya]) VALUES (8, N'Рыбин Александр Николаевич', CAST(N'1941-01-11' AS Date), N'г. Ломоносов, ул. Профсоюзная, д.27,кв.79', N'', N'8 (921) 886 07-18', N'', N'', N'физ. лицо', N'')
SET IDENTITY_INSERT [dbo].[strahovately] OFF
GO
SET IDENTITY_INSERT [dbo].[strahovaya] ON 

INSERT [dbo].[strahovaya] ([idstrahovaya], [naimenovStrahovaya]) VALUES (1, N'РЕСО')
INSERT [dbo].[strahovaya] ([idstrahovaya], [naimenovStrahovaya]) VALUES (2, N'РЕНЕССАНС')
INSERT [dbo].[strahovaya] ([idstrahovaya], [naimenovStrahovaya]) VALUES (3, N'РОСГОССТРАХ')
INSERT [dbo].[strahovaya] ([idstrahovaya], [naimenovStrahovaya]) VALUES (4, N'ГАЙДЕ')
INSERT [dbo].[strahovaya] ([idstrahovaya], [naimenovStrahovaya]) VALUES (5, N'ВСК')
INSERT [dbo].[strahovaya] ([idstrahovaya], [naimenovStrahovaya]) VALUES (6, N'Другое')
SET IDENTITY_INSERT [dbo].[strahovaya] OFF
GO
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'test', N'12', N'Здоровье')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'test1', N'test2', N'Автомобиль')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ГОЮР
', N'Гражданская ответственность Юридических лиц
', N'Юр. Лица
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ДМС
', N'ДМС
', N'Здоровье
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ДМСЮР
', N'ДМС Юр. Лиц
', N'Юр. Лица
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ДОМ
', N'Дом
', N'Имущество
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ЗК', N'Зеленая карта
', N'Автомобиль
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ЗОК
', N'Защита от клещей
', N'Здоровье
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ИМЮР', N'Имущество Юридических лиц
', N'Юр. Лица
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'КА
', N'КАСКО
', N'Автомобиль
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'КАЮР
', N'КАСКО Юридических Лиц
', N'Юр. Лица
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'КВ
', N'Квартира
', N'Имущество
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'МСДВ', N'Медицинская страховка для визы
', N'Путешествия
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'НСЮР
', N'НС Юр.Лиц
', N'Юр. Лица
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ОНС
', N'Онкострахование
', N'Здоровье
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ОС
', N'ОСАГО
', N'Автомобиль
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ОСОПО
', N'Опасные Объекты
', N'Юр. Лица
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ОСЮР
', N'ОСАГО Юридических Лиц
', N'Юр. Лица
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'СП
', N'Страхование Поездок
', N'Путешествия
')
INSERT [dbo].[strahovki] ([index_str], [naimenov_str], [kategoria_str]) VALUES (N'ТМ
', N'Телемедицина
', N'Здоровье
')
GO
ALTER TABLE [dbo].[edinovr_oplata]  WITH CHECK ADD  CONSTRAINT [FK_edinovr_oplata_agent] FOREIGN KEY([idagent])
REFERENCES [dbo].[agent] ([idagent])
GO
ALTER TABLE [dbo].[edinovr_oplata] CHECK CONSTRAINT [FK_edinovr_oplata_agent]
GO
ALTER TABLE [dbo].[edinovr_oplata]  WITH CHECK ADD  CONSTRAINT [FK_edinovr_oplata_strahovately] FOREIGN KEY([idstrahovately])
REFERENCES [dbo].[strahovately] ([idstrahovately])
GO
ALTER TABLE [dbo].[edinovr_oplata] CHECK CONSTRAINT [FK_edinovr_oplata_strahovately]
GO
ALTER TABLE [dbo].[edinovr_oplata]  WITH CHECK ADD  CONSTRAINT [FK_edinovr_oplata_strahovaya1] FOREIGN KEY([idstrahovaya])
REFERENCES [dbo].[strahovaya] ([idstrahovaya])
GO
ALTER TABLE [dbo].[edinovr_oplata] CHECK CONSTRAINT [FK_edinovr_oplata_strahovaya1]
GO
ALTER TABLE [dbo].[edinovr_oplata]  WITH CHECK ADD  CONSTRAINT [FK_edinovr_oplata_strahovki] FOREIGN KEY([index_str])
REFERENCES [dbo].[strahovki] ([index_str])
GO
ALTER TABLE [dbo].[edinovr_oplata] CHECK CONSTRAINT [FK_edinovr_oplata_strahovki]
GO
ALTER TABLE [dbo].[rassrochka]  WITH CHECK ADD  CONSTRAINT [FK_rassrochka_agent] FOREIGN KEY([idagent])
REFERENCES [dbo].[agent] ([idagent])
GO
ALTER TABLE [dbo].[rassrochka] CHECK CONSTRAINT [FK_rassrochka_agent]
GO
ALTER TABLE [dbo].[rassrochka]  WITH CHECK ADD  CONSTRAINT [FK_rassrochka_strahovately] FOREIGN KEY([idstrahovately])
REFERENCES [dbo].[strahovately] ([idstrahovately])
GO
ALTER TABLE [dbo].[rassrochka] CHECK CONSTRAINT [FK_rassrochka_strahovately]
GO
ALTER TABLE [dbo].[rassrochka]  WITH CHECK ADD  CONSTRAINT [FK_rassrochka_strahovaya] FOREIGN KEY([idstrahovaya])
REFERENCES [dbo].[strahovaya] ([idstrahovaya])
GO
ALTER TABLE [dbo].[rassrochka] CHECK CONSTRAINT [FK_rassrochka_strahovaya]
GO
ALTER TABLE [dbo].[rassrochka]  WITH CHECK ADD  CONSTRAINT [FK_rassrochka_strahovki] FOREIGN KEY([index_str])
REFERENCES [dbo].[strahovki] ([index_str])
GO
ALTER TABLE [dbo].[rassrochka] CHECK CONSTRAINT [FK_rassrochka_strahovki]
GO
USE [master]
GO
ALTER DATABASE [kursac] SET  READ_WRITE 
GO
