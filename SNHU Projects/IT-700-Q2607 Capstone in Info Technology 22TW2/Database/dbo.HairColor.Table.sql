/****** Object:  Table [dbo].[HairColor]    Script Date: 1/15/2023 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HairColor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HairColor] ON 

INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (1, N'Black')
INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (2, N'Bald')
INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (3, N'Blonde')
INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (4, N'Brown')
INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (5, N'Green')
INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (6, N'Grey')
INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (7, N'Red')
INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (8, N'White')
INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (9, N'Other')
INSERT [dbo].[HairColor] ([ID], [Color]) VALUES (10, N'Unknown')
SET IDENTITY_INSERT [dbo].[HairColor] OFF
GO
