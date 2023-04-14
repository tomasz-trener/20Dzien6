 


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[miasta](
	[id_miasta] [int] IDENTITY(1,1) NOT NULL,
	[nazwa_miasta] [varchar](255) NOT NULL,
 CONSTRAINT [PK_miasta] PRIMARY KEY CLUSTERED 
(
	[id_miasta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[skocznie]    Script Date: 2022-12-07 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[skocznie](
	[id_skoczni] [int] NULL,
	[id_miasta] [varchar](50) NULL,
	[nazwa_skoczni] [varchar](50) NULL,
	[k] [int] NULL,
	[sedz] [int] NULL,
	[kraj_skoczni] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trenerzy]    Script Date: 2022-12-07 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trenerzy](
	[id_trenera] [int] NULL,
	[imie_t] [varchar](255) NULL,
	[nazwisko_t] [varchar](255) NULL,
	[data_ur_t] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uczestnictwa]    Script Date: 2022-12-07 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uczestnictwa](
	[id_uczestnictwa] [int] NULL,
	[id_zawodnika] [int] NULL,
	[id_zawodow] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zawodnicy]    Script Date: 2022-12-07 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zawodnicy](
	[id_zawodnika] [int] NULL,
	[id_trenera] [int] NULL,
	[imie] [varchar](255) NULL,
	[nazwisko] [varchar](255) NULL,
	[kraj] [varchar](255) NULL,
	[data_ur] [datetime] NULL,
	[wzrost] [int] NULL,
	[waga] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zawody]    Script Date: 2022-12-07 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zawody](
	[id_zawodow] [int] NULL,
	[nazwa] [varchar](255) NULL,
	[id_skoczni] [int] NULL,
	[data] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[miasta] ON 
GO
INSERT [dbo].[miasta] ([id_miasta], [nazwa_miasta]) VALUES (1, N'"Garmisch-Partenkirchen"')
GO
INSERT [dbo].[miasta] ([id_miasta], [nazwa_miasta]) VALUES (2, N'"Kuopio"')
GO
INSERT [dbo].[miasta] ([id_miasta], [nazwa_miasta]) VALUES (3, N'"Lahti"')
GO
INSERT [dbo].[miasta] ([id_miasta], [nazwa_miasta]) VALUES (4, N'"Oberstdorf"')
GO
INSERT [dbo].[miasta] ([id_miasta], [nazwa_miasta]) VALUES (5, N'"Trondheim"')
GO
INSERT [dbo].[miasta] ([id_miasta], [nazwa_miasta]) VALUES (6, N'"Willingen"')
GO
INSERT [dbo].[miasta] ([id_miasta], [nazwa_miasta]) VALUES (7, N'"Zakopane"')
GO
SET IDENTITY_INSERT [dbo].[miasta] OFF
GO
INSERT [dbo].[skocznie] ([id_skoczni], [id_miasta], [nazwa_skoczni], [k], [sedz], [kraj_skoczni]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[skocznie] ([id_skoczni], [id_miasta], [nazwa_skoczni], [k], [sedz], [kraj_skoczni]) VALUES (1, N'7', N'Wielka Krokiew', 120, 134, N'POL')
GO
INSERT [dbo].[skocznie] ([id_skoczni], [id_miasta], [nazwa_skoczni], [k], [sedz], [kraj_skoczni]) VALUES (2, N'1', N'Wielka Skocznia Olimpijska', 115, 125, N'GER')
GO
INSERT [dbo].[skocznie] ([id_skoczni], [id_miasta], [nazwa_skoczni], [k], [sedz], [kraj_skoczni]) VALUES (3, N'4', N'Skocznia Heiniego Klopfera', 185, 211, N'GER')
GO
INSERT [dbo].[skocznie] ([id_skoczni], [id_miasta], [nazwa_skoczni], [k], [sedz], [kraj_skoczni]) VALUES (4, N'4', N'Grosse Schattenberg', 120, 134, N'GER')
GO
INSERT [dbo].[skocznie] ([id_skoczni], [id_miasta], [nazwa_skoczni], [k], [sedz], [kraj_skoczni]) VALUES (5, N'6', N'Grosse Muhlenkopfschanze', 130, 145, N'GER')
GO
INSERT [dbo].[skocznie] ([id_skoczni], [id_miasta], [nazwa_skoczni], [k], [sedz], [kraj_skoczni]) VALUES (6, N'2', N'Puijo', 120, 131, N'FIN')
GO
INSERT [dbo].[skocznie] ([id_skoczni], [id_miasta], [nazwa_skoczni], [k], [sedz], [kraj_skoczni]) VALUES (7, N'3', N'Salpausselka', 116, 128, N'FIN')
GO
INSERT [dbo].[skocznie] ([id_skoczni], [id_miasta], [nazwa_skoczni], [k], [sedz], [kraj_skoczni]) VALUES (8, N'5', N'Granasen', 120, 132, N'NOR')
GO
INSERT [dbo].[trenerzy] ([id_trenera], [imie_t], [nazwisko_t], [data_ur_t]) VALUES (1, N'Alexander', N'Pointner', NULL)
GO
INSERT [dbo].[trenerzy] ([id_trenera], [imie_t], [nazwisko_t], [data_ur_t]) VALUES (2, N'Tommi', N'Nikunen', NULL)
GO
INSERT [dbo].[trenerzy] ([id_trenera], [imie_t], [nazwisko_t], [data_ur_t]) VALUES (3, N'Mika', N'Kojonkoski', CAST(N'1963-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[trenerzy] ([id_trenera], [imie_t], [nazwisko_t], [data_ur_t]) VALUES (4, N'Heinz', N'Kuttin', CAST(N'1971-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[trenerzy] ([id_trenera], [imie_t], [nazwisko_t], [data_ur_t]) VALUES (5, N'Wolfang', N'Steiert', CAST(N'1963-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[trenerzy] ([id_trenera], [imie_t], [nazwisko_t], [data_ur_t]) VALUES (6, N'Hirokazu', N'Yagi', NULL)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (1, 1, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (2, 1, 3)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (3, 2, 3)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (4, 2, 1)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (5, 3, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (6, 4, 3)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (7, 4, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (8, 4, 1)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (9, 5, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (10, 6, 3)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (11, 7, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (12, 8, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (13, 9, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (14, 9, 3)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (15, 10, 3)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (16, 10, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (17, 11, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (18, 11, 1)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (19, 12, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (20, 13, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (21, 13, 1)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (22, 14, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (23, 14, 3)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (24, 15, 2)
GO
INSERT [dbo].[uczestnictwa] ([id_uczestnictwa], [id_zawodnika], [id_zawodow]) VALUES (25, 16, 2)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (1, 4, N'Marcin', N'BACHLEDA', N'POL', CAST(N'1982-09-04T00:00:00.000' AS DateTime), 166, 56)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (2, 4, N'Robert', N'MATEJA', N'POL', CAST(N'1974-10-05T00:00:00.000' AS DateTime), 180, 63)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (3, 5, N'Alexander', N'HERR', N'GER', CAST(N'1978-10-04T00:00:00.000' AS DateTime), 173, 65)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (4, 5, N'Stephan', N'HOCKE', N'GER', CAST(N'1983-10-20T00:00:00.000' AS DateTime), 178, 59)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (5, 5, N'Martin', N'SCHMITT', N'GER', CAST(N'1978-01-29T00:00:00.000' AS DateTime), 181, 64)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (6, 5, N'Michael', N'UHRMANN', N'GER', CAST(N'1978-09-09T00:00:00.000' AS DateTime), 184, 64)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (7, 5, N'Georg', N'SPAETH', N'GER', CAST(N'1981-02-24T00:00:00.000' AS DateTime), 187, 68)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (8, 2, N'Matti', N'HAUTAMAEKI', N'FIN', CAST(N'1981-07-14T00:00:00.000' AS DateTime), 174, 57)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (9, 2, N'Tami', N'KIURU', N'FIN', CAST(N'1976-09-13T00:00:00.000' AS DateTime), 183, 59)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (10, 2, N'Janne', N'AHONEN', N'FIN', CAST(N'1977-05-11T00:00:00.000' AS DateTime), 184, 67)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (11, 1, N'Martin', N'HOELLWARTH', N'AUT', CAST(N'1974-04-13T00:00:00.000' AS DateTime), 182, 67)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (12, 1, N'Thomas', N'MORGENSTERN', N'AUT', CAST(N'1986-10-30T00:00:00.000' AS DateTime), 174, 57)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (13, 3, N'Tommy', N'INGEBRIGTSEN', N'NOR', CAST(N'1977-08-08T00:00:00.000' AS DateTime), 179, 56)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (14, 3, N'Bjoern-Einar', N'ROMOEREN', N'NOR', CAST(N'1981-04-01T00:00:00.000' AS DateTime), 182, 63)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (15, 3, N'Roar', N'LJOEKELSOEY', N'NOR', CAST(N'1976-05-31T00:00:00.000' AS DateTime), 175, 62)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (16, NULL, N'Alan', N'ALBORN', N'USA', CAST(N'1980-12-13T00:00:00.000' AS DateTime), 177, 57)
GO
INSERT [dbo].[zawodnicy] ([id_zawodnika], [id_trenera], [imie], [nazwisko], [kraj], [data_ur], [wzrost], [waga]) VALUES (17, 4, N'Adam', N'MAŁYSZ', N'POL', CAST(N'1977-12-03T00:00:00.000' AS DateTime), 169, 60)
GO
INSERT [dbo].[zawody] ([id_zawodow], [nazwa], [id_skoczni], [data]) VALUES (1, N'puchar burmistrza Zakopanego', 1, CAST(N'2007-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[zawody] ([id_zawodow], [nazwa], [id_skoczni], [data]) VALUES (2, N'spotkanie towarzyskie Polska-Finlandia', 7, CAST(N'2006-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[zawody] ([id_zawodow], [nazwa], [id_skoczni], [data]) VALUES (3, N'mistrzostwa Europy', 3, CAST(N'2006-12-26T00:00:00.000' AS DateTime))
GO
USE [master]
GO
ALTER DATABASE [A_Zawodnicy] SET  READ_WRITE 
GO