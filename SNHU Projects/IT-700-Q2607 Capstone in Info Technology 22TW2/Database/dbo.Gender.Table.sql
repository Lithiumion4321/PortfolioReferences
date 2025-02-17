/****** Object:  Table [dbo].[Gender]    Script Date: 1/15/2023 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Abbreviation] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [Gender], [Abbreviation]) VALUES (1, N'Male', N'M')
INSERT [dbo].[Gender] ([ID], [Gender], [Abbreviation]) VALUES (2, N'Female', N'F')
INSERT [dbo].[Gender] ([ID], [Gender], [Abbreviation]) VALUES (3, N'Uknown', N'U')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
