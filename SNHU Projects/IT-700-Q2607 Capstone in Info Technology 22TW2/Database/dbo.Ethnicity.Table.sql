/****** Object:  Table [dbo].[Ethnicity]    Script Date: 1/15/2023 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ethnicity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Weight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ethnicity] ON 

INSERT [dbo].[Ethnicity] ([ID], [Name], [Weight]) VALUES (1, N'American Indian', 1)
INSERT [dbo].[Ethnicity] ([ID], [Name], [Weight]) VALUES (2, N'Asian or Pacific Islander', 2)
INSERT [dbo].[Ethnicity] ([ID], [Name], [Weight]) VALUES (3, N'Black or African American', 3)
INSERT [dbo].[Ethnicity] ([ID], [Name], [Weight]) VALUES (4, N'Hispanic or Latino', 4)
INSERT [dbo].[Ethnicity] ([ID], [Name], [Weight]) VALUES (5, N'Multi-racial', 5)
INSERT [dbo].[Ethnicity] ([ID], [Name], [Weight]) VALUES (6, N'White or Caucasian (European)', 6)
INSERT [dbo].[Ethnicity] ([ID], [Name], [Weight]) VALUES (7, N'Unknown', 7)
SET IDENTITY_INSERT [dbo].[Ethnicity] OFF
GO
