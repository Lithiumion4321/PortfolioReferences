/****** Object:  Table [dbo].[ForumTopic]    Script Date: 1/15/2023 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumTopic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Topic] [varchar](150) NOT NULL,
	[DateCreated] [datetime] NULL,
	[DateCreatedBy] [int] NOT NULL,
	[DateUpdated] [datetime] NULL,
	[DateUpdatedBy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ForumTopic] ON 

INSERT [dbo].[ForumTopic] ([ID], [Topic], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (3, N'Searching for missing John Doe', CAST(N'2023-01-06T03:36:57.293' AS DateTime), 1004, CAST(N'2023-01-06T03:36:57.293' AS DateTime), 1004)
INSERT [dbo].[ForumTopic] ([ID], [Topic], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (4, N'Mary Jane lost around pittsburg', CAST(N'2023-01-06T03:59:45.210' AS DateTime), 1004, CAST(N'2023-01-06T03:59:45.210' AS DateTime), 1004)
INSERT [dbo].[ForumTopic] ([ID], [Topic], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (7, N'Lost my penguin! helppp!!', CAST(N'2023-01-07T03:43:40.323' AS DateTime), 1004, CAST(N'2023-01-07T03:43:40.323' AS DateTime), 1004)
INSERT [dbo].[ForumTopic] ([ID], [Topic], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (8, N'Looking for lost Michael! Age 3!', CAST(N'2023-01-07T03:47:12.100' AS DateTime), 1004, CAST(N'2023-01-07T03:47:12.100' AS DateTime), 1004)
INSERT [dbo].[ForumTopic] ([ID], [Topic], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (10, N'new topic 2', CAST(N'2023-01-11T03:19:43.140' AS DateTime), 1004, CAST(N'2023-01-11T03:19:43.140' AS DateTime), 1005)
INSERT [dbo].[ForumTopic] ([ID], [Topic], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (11, N'new forum 2', CAST(N'2023-01-11T03:19:45.030' AS DateTime), 1004, CAST(N'2023-01-11T03:19:45.030' AS DateTime), 1005)
INSERT [dbo].[ForumTopic] ([ID], [Topic], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (12, N'new forum 3', CAST(N'2023-01-11T03:22:29.587' AS DateTime), 1004, CAST(N'2023-01-11T03:22:29.587' AS DateTime), 1005)
INSERT [dbo].[ForumTopic] ([ID], [Topic], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (13, N'New Forum!', CAST(N'2023-01-16T00:10:25.833' AS DateTime), 1004, CAST(N'2023-01-16T00:10:25.833' AS DateTime), 1005)
SET IDENTITY_INSERT [dbo].[ForumTopic] OFF
GO
ALTER TABLE [dbo].[ForumTopic] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ForumTopic] ADD  DEFAULT (getdate()) FOR [DateUpdated]
GO
ALTER TABLE [dbo].[ForumTopic]  WITH CHECK ADD FOREIGN KEY([DateCreatedBy])
REFERENCES [dbo].[Individual] ([ID])
GO
ALTER TABLE [dbo].[ForumTopic]  WITH CHECK ADD FOREIGN KEY([DateUpdatedBy])
REFERENCES [dbo].[Individual] ([ID])
GO
