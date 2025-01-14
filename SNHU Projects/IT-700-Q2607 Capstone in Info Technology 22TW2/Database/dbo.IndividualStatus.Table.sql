/****** Object:  Table [dbo].[IndividualStatus]    Script Date: 1/15/2023 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndividualStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[IndividualStatus] ON 

INSERT [dbo].[IndividualStatus] ([ID], [Status]) VALUES (1, N'Individual - Missing')
INSERT [dbo].[IndividualStatus] ([ID], [Status]) VALUES (2, N'Individual - Found')
INSERT [dbo].[IndividualStatus] ([ID], [Status]) VALUES (3, N'User')
INSERT [dbo].[IndividualStatus] ([ID], [Status]) VALUES (4, N'Admin')
SET IDENTITY_INSERT [dbo].[IndividualStatus] OFF
GO
