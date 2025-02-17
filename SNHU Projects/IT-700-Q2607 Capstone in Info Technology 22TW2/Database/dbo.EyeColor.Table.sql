/****** Object:  Table [dbo].[EyeColor]    Script Date: 1/15/2023 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EyeColor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EyeColor] ON 

INSERT [dbo].[EyeColor] ([ID], [Color]) VALUES (1, N'Black')
INSERT [dbo].[EyeColor] ([ID], [Color]) VALUES (2, N'Blue')
INSERT [dbo].[EyeColor] ([ID], [Color]) VALUES (3, N'Brown')
INSERT [dbo].[EyeColor] ([ID], [Color]) VALUES (4, N'Green')
INSERT [dbo].[EyeColor] ([ID], [Color]) VALUES (5, N'Grey')
INSERT [dbo].[EyeColor] ([ID], [Color]) VALUES (6, N'Hazel')
INSERT [dbo].[EyeColor] ([ID], [Color]) VALUES (7, N'Pink')
INSERT [dbo].[EyeColor] ([ID], [Color]) VALUES (8, N'Unknown')
SET IDENTITY_INSERT [dbo].[EyeColor] OFF
GO
