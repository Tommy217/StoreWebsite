USE [master]
GO
/****** Object:  Database [StoreWebsite]    Script Date: 27/09/2025 21:42:59 ******/
CREATE DATABASE [StoreWebsite]
GO
USE [StoreWebsite]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 27/09/2025 21:43:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27/09/2025 21:43:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[image] [nvarchar](max) NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[description] [nvarchar](max) NULL,
	[categoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (1, N'Night Moves', N'http://dummyimage.com/221x179.png/cc0000/ffffff', 73, 73, N'Room 892', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (2, N'Mysteries of Lisbon (Mistérios de Lisboa)', N'http://dummyimage.com/111x180.png/5fa2dd/ffffff', 58, 15.1, N'16th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (3, N'Mercy ', N'http://dummyimage.com/169x138.png/dddddd/000000', 82, 14.6, N'Room 858', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (4, N'Castle of Cloads, The (Pilvilinna)', N'http://dummyimage.com/128x179.png/5fa2dd/ffffff', 19, 8.2, N'Apt 237', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (5, N'Horrible Bosses', N'http://dummyimage.com/149x180.png/5fa2dd/ffffff', 45, 71.6, N'Room 1854', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (6, N'Wolverine, The', N'http://dummyimage.com/118x162.png/dddddd/000000', 6, 70.4, N'Suite 32', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (7, N'Boynton Beach Bereavement Club, The', N'http://dummyimage.com/230x245.png/ff4444/ffffff', 63, 9.2, N'PO Box 45753', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (8, N'Miss Representation', N'http://dummyimage.com/126x106.png/dddddd/000000', 85, 94.4, N'Room 1559', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (9, N'Kids of Survival', N'http://dummyimage.com/195x203.png/dddddd/000000', 92, 52.1, N'Room 1168', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (10, N'Cat in the Hat, The', N'http://dummyimage.com/152x128.png/ff4444/ffffff', 85, 64.6, N'Apt 1176', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (11, N'Sheep Has Five Legs, The (Le mouton à cinq pattes)', N'http://dummyimage.com/107x173.png/ff4444/ffffff', 56, 43.5, N'Suite 59', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (12, N'Life Is What You Make It (Linha de Passe)', N'http://dummyimage.com/173x149.png/5fa2dd/ffffff', 42, 56.6, N'PO Box 17052', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (13, N'Montana Sky', N'http://dummyimage.com/216x229.png/ff4444/ffffff', 81, 83.5, N'Suite 97', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (14, N'Running Out of Time (Am zin)', N'http://dummyimage.com/228x120.png/5fa2dd/ffffff', 78, 30.9, N'10th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (15, N'Just a Little Harmless Sex', N'http://dummyimage.com/115x204.png/dddddd/000000', 60, 52.8, N'4th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (16, N'Cul-de-sac', N'http://dummyimage.com/206x105.png/dddddd/000000', 73, 65.8, N'Room 1286', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (17, N'Hobson''s Choice', N'http://dummyimage.com/151x182.png/5fa2dd/ffffff', 87, 6.8, N'Apt 710', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (18, N'Fantastic Voyage', N'http://dummyimage.com/197x144.png/cc0000/ffffff', 24, 11.7, N'Room 1747', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (19, N'Magnificent Ambersons, The', N'http://dummyimage.com/232x121.png/5fa2dd/ffffff', 12, 57.6, N'Suite 71', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (20, N'To Grandmother''s House We Go', N'http://dummyimage.com/119x182.png/5fa2dd/ffffff', 27, 30.3, N'PO Box 86558', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (21, N'Zatoichi Goes to the Fire Festival (Zatôichi abare-himatsuri) (Zatôichi 21)', N'http://dummyimage.com/115x165.png/ff4444/ffffff', 25, 44.2, N'Room 1260', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (22, N'Knight Moves', N'http://dummyimage.com/218x152.png/5fa2dd/ffffff', 78, 51.8, N'1st Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (23, N'Story of Three Loves, The', N'http://dummyimage.com/163x105.png/ff4444/ffffff', 17, 7.2, N'6th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (24, N'Eight Below', N'http://dummyimage.com/224x169.png/5fa2dd/ffffff', 29, 69.9, N'Suite 13', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (25, N'10', N'http://dummyimage.com/106x163.png/dddddd/000000', 49, 17.2, N'Suite 49', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (26, N'Shallow Hal', N'http://dummyimage.com/208x212.png/dddddd/000000', 97, 47.4, N'6th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (27, N'Yo Yo (Yoyo)', N'http://dummyimage.com/171x143.png/dddddd/000000', 94, 66.8, N'PO Box 11189', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (28, N'Tiptoes', N'http://dummyimage.com/146x154.png/5fa2dd/ffffff', 89, 82.1, N'PO Box 39610', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (29, N'Unfaithfully Yours', N'http://dummyimage.com/228x153.png/cc0000/ffffff', 70, 13, N'13th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (30, N'Dimples', N'http://dummyimage.com/120x246.png/5fa2dd/ffffff', 98, 60.7, N'Apt 917', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (31, N'Stranger on the Prowl (Imbarco a mezzanotte)', N'http://dummyimage.com/124x202.png/ff4444/ffffff', 40, 95.5, N'Room 991', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (32, N'Beneath the Harvest Sky', N'http://dummyimage.com/211x167.png/ff4444/ffffff', 43, 54.7, N'16th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (33, N'Black Balloon, The', N'http://dummyimage.com/127x184.png/ff4444/ffffff', 31, 72.9, N'Room 2000', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (34, N'Devil''s Own, The', N'http://dummyimage.com/222x176.png/cc0000/ffffff', 47, 49.8, N'Suite 21', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (35, N'The Kiss', N'http://dummyimage.com/129x186.png/ff4444/ffffff', 58, 39.8, N'18th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (36, N'Red Pony, The', N'http://dummyimage.com/202x149.png/ff4444/ffffff', 9, 60.8, N'Apt 1965', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (37, N'My Rainy Days', N'http://dummyimage.com/172x154.png/dddddd/000000', 65, 50.4, N'PO Box 23174', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (38, N'Hard Way, The', N'http://dummyimage.com/239x209.png/cc0000/ffffff', 15, 13.4, N'PO Box 50285', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (39, N'Let''s Do It Again', N'http://dummyimage.com/113x150.png/dddddd/000000', 26, 68.6, N'Apt 1636', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (40, N'My Favorite Martian', N'http://dummyimage.com/184x184.png/5fa2dd/ffffff', 12, 52, N'Room 1810', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (41, N'From Beginning to End (Do Começo ao Fim)', N'http://dummyimage.com/236x203.png/cc0000/ffffff', 92, 86.5, N'Suite 8', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (42, N'Ellen DeGeneres: The Beginning', N'http://dummyimage.com/214x188.png/dddddd/000000', 11, 18.6, N'19th Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (43, N'Chronicle of the Years of Fire (Chronique des années de braise)', N'http://dummyimage.com/185x123.png/5fa2dd/ffffff', 76, 68, N'18th Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (44, N'Mysterians, The (Chikyu Boeigun)', N'http://dummyimage.com/217x235.png/ff4444/ffffff', 20, 15.2, N'PO Box 42042', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (45, N'A Christmas Kiss', N'http://dummyimage.com/194x146.png/cc0000/ffffff', 57, 35.2, N'Room 880', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (46, N'Boiling Point (3-4 x jûgatsu)', N'http://dummyimage.com/123x186.png/dddddd/000000', 38, 3.8, N'Apt 796', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (47, N'Mickey''s Once Upon a Christmas', N'http://dummyimage.com/193x207.png/dddddd/000000', 49, 65, N'Suite 37', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (48, N'My Sister''s Keeper', N'http://dummyimage.com/147x139.png/cc0000/ffffff', 7, 94.7, N'Room 1421', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (49, N'Book of Fate, The (Kohtalon kirja)', N'http://dummyimage.com/183x158.png/dddddd/000000', 47, 47.6, N'Room 1875', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (50, N'Shawshank Redemption, The', N'http://dummyimage.com/149x102.png/ff4444/ffffff', 27, 2.3, N'PO Box 39633', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (51, N'Macbeth', N'http://dummyimage.com/220x101.png/cc0000/ffffff', 58, 40.4, N'Suite 51', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (52, N'Girl, The', N'http://dummyimage.com/212x216.png/dddddd/000000', 27, 65.7, N'Apt 1588', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (53, N'Friend Among Strangers, Stranger Among Friends (Svoy sredi chuzhikh, chuzhoy sredi svoikh)', N'http://dummyimage.com/183x208.png/cc0000/ffffff', 40, 44.4, N'Apt 205', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (54, N'Attack Force', N'http://dummyimage.com/159x118.png/dddddd/000000', 43, 74.2, N'Suite 84', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (55, N'Rita, Sue and Bob Too!', N'http://dummyimage.com/169x127.png/5fa2dd/ffffff', 46, 79.2, N'PO Box 71179', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (56, N'Dilwale Dulhania Le Jayenge', N'http://dummyimage.com/217x211.png/cc0000/ffffff', 28, 26.3, N'4th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (57, N'Agnes Browne', N'http://dummyimage.com/111x221.png/ff4444/ffffff', 2, 89.7, N'Room 1728', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (58, N'Girl of Your Dreams, The (Niña de tus ojos, La)', N'http://dummyimage.com/217x107.png/5fa2dd/ffffff', 95, 27.9, N'5th Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (59, N'Cassandra Crossing, The', N'http://dummyimage.com/149x184.png/cc0000/ffffff', 82, 60.7, N'15th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (60, N'Music of the Heart', N'http://dummyimage.com/127x165.png/ff4444/ffffff', 32, 35.9, N'Room 1885', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (61, N'Buddy', N'http://dummyimage.com/210x153.png/ff4444/ffffff', 70, 8.2, N'PO Box 48207', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (62, N'What If ...', N'http://dummyimage.com/139x222.png/ff4444/ffffff', 81, 78.9, N'17th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (63, N'Defiance', N'http://dummyimage.com/239x235.png/ff4444/ffffff', 2, 80.7, N'PO Box 26968', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (64, N'Note by Note: The Making of Steinway L1037', N'http://dummyimage.com/215x127.png/dddddd/000000', 71, 74.7, N'Room 607', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (65, N'Century of the Dragon (Long zai bian yuan)', N'http://dummyimage.com/134x167.png/cc0000/ffffff', 56, 6.4, N'Room 1348', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (66, N'Afternoon Delight', N'http://dummyimage.com/140x181.png/cc0000/ffffff', 80, 68.9, N'Suite 65', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (67, N'Revenge of the Nerds IV: Nerds in Love', N'http://dummyimage.com/135x152.png/ff4444/ffffff', 14, 30.9, N'Suite 53', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (68, N'Superproduction (Superprodukcja)', N'http://dummyimage.com/208x136.png/dddddd/000000', 74, 56.3, N'Room 1068', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (69, N'Owning Mahowny', N'http://dummyimage.com/158x115.png/cc0000/ffffff', 59, 32.9, N'PO Box 73575', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (70, N'Jimi Hendrix', N'http://dummyimage.com/121x179.png/ff4444/ffffff', 9, 68.4, N'PO Box 67139', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (71, N'Hothead (Coup de tête)', N'http://dummyimage.com/194x192.png/5fa2dd/ffffff', 53, 67.2, N'18th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (72, N'Voices from the List', N'http://dummyimage.com/214x213.png/ff4444/ffffff', 16, 22, N'Suite 86', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (73, N'Phantom of the Opera, The', N'http://dummyimage.com/198x244.png/dddddd/000000', 80, 2.3, N'Apt 1697', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (74, N'Kings of the Road (Im Lauf der Zeit)', N'http://dummyimage.com/126x100.png/ff4444/ffffff', 94, 99.7, N'3rd Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (75, N'Other Woman, The', N'http://dummyimage.com/245x212.png/5fa2dd/ffffff', 87, 25.5, N'Room 1020', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (76, N'Rabbit', N'http://dummyimage.com/246x232.png/dddddd/000000', 54, 26.8, N'Suite 52', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (77, N'The Cabin in the Cotton', N'http://dummyimage.com/144x135.png/dddddd/000000', 36, 86.6, N'9th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (78, N'House II: The Second Story', N'http://dummyimage.com/117x176.png/cc0000/ffffff', 76, 14.6, N'13th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (79, N'The Third Reich: The Rise & Fall', N'http://dummyimage.com/196x145.png/ff4444/ffffff', 95, 71.7, N'Room 801', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (80, N'A Mulher Invisível', N'http://dummyimage.com/187x135.png/cc0000/ffffff', 96, 10.9, N'PO Box 24778', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (81, N'Time of Favor (Ha-Hesder)', N'http://dummyimage.com/217x186.png/5fa2dd/ffffff', 100, 79.3, N'5th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (82, N'Serenity', N'http://dummyimage.com/118x122.png/5fa2dd/ffffff', 79, 17.8, N'Apt 607', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (83, N'On the Road to Emmaus (Emmauksen tiellä)', N'http://dummyimage.com/177x125.png/5fa2dd/ffffff', 35, 92.7, N'PO Box 72318', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (84, N'Gone in 60 Seconds', N'http://dummyimage.com/215x180.png/ff4444/ffffff', 78, 99.6, N'Apt 817', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (85, N'Madame Butterfly', N'http://dummyimage.com/202x145.png/ff4444/ffffff', 59, 98.9, N'10th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (86, N'Brass Teapot, The', N'http://dummyimage.com/238x140.png/dddddd/000000', 17, 67.4, N'16th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (87, N'Shake Hands with the Devil', N'http://dummyimage.com/202x239.png/dddddd/000000', 61, 3.2, N'2nd Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (88, N'Walking Tall', N'http://dummyimage.com/112x225.png/cc0000/ffffff', 26, 76.3, N'5th Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (89, N'Bullhead (Rundskop)', N'http://dummyimage.com/123x133.png/cc0000/ffffff', 89, 54.2, N'Suite 58', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (90, N'Holiday Inn', N'http://dummyimage.com/175x108.png/ff4444/ffffff', 38, 13.9, N'13th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (91, N'It', N'http://dummyimage.com/237x111.png/dddddd/000000', 99, 5.7, N'PO Box 36507', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (92, N'Ernest in the Army', N'http://dummyimage.com/243x129.png/ff4444/ffffff', 77, 1.7, N'Apt 1070', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (93, N'Beach Blanket Bingo', N'http://dummyimage.com/237x115.png/5fa2dd/ffffff', 31, 60.9, N'PO Box 11807', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (94, N'Orphan', N'http://dummyimage.com/185x104.png/cc0000/ffffff', 36, 43, N'Room 584', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (95, N'Top Secret!', N'http://dummyimage.com/203x125.png/5fa2dd/ffffff', 89, 8.5, N'Room 788', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (96, N'Big Night, The', N'http://dummyimage.com/184x137.png/dddddd/000000', 12, 48.3, N'12th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (97, N'Make the Yuletide Gay', N'http://dummyimage.com/156x108.png/dddddd/000000', 74, 76.7, N'Room 1795', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (98, N'Moonrise', N'http://dummyimage.com/205x250.png/5fa2dd/ffffff', 26, 3.2, N'4th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (99, N'Am Ende eiens viel zu kurzen Tages (Death of a superhero)', N'http://dummyimage.com/112x184.png/ff4444/ffffff', 15, 2.1, N'Apt 963', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (100, N'Hanging Garden, The', N'http://dummyimage.com/119x250.png/ff4444/ffffff', 18, 80.7, N'Room 1320', 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [StoreWebsite] SET  READ_WRITE 
GO
