/****** Object:  Table [dbo].[ForumPost]    Script Date: 1/15/2023 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumPost](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ForumTopicId] [int] NULL,
	[Post] [varchar](max) NOT NULL,
	[DateCreated] [datetime] NULL,
	[DateCreatedBy] [int] NOT NULL,
	[DateUpdated] [datetime] NULL,
	[DateUpdatedBy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ForumPost] ON 

INSERT [dbo].[ForumPost] ([ID], [ForumTopicId], [Post], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (2, 3, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nec hendrerit sapien. Nullam at tortor dignissim, maximus mi non, viverra urna. Nam et augue ante. Integer sollicitudin tincidunt ligula, eget consequat felis posuere eu. Proin viverra, odio in rutrum porttitor, massa metus ornare purus, et venenatis justo eros at urna. Nulla aliquam leo quis velit eleifend eleifend. Sed feugiat quam ac est varius, non luctus velit blandit.', CAST(N'2023-01-06T03:46:25.187' AS DateTime), 1004, CAST(N'2023-01-06T03:46:25.187' AS DateTime), 1004)
INSERT [dbo].[ForumPost] ([ID], [ForumTopicId], [Post], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (3, 8, N'Hello World', CAST(N'2023-01-07T05:41:40.483' AS DateTime), 1004, CAST(N'2023-01-07T05:41:40.483' AS DateTime), 1004)
INSERT [dbo].[ForumPost] ([ID], [ForumTopicId], [Post], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (4, 8, N'Hello World 2', CAST(N'2023-01-07T05:42:39.747' AS DateTime), 1004, CAST(N'2023-01-07T05:42:39.747' AS DateTime), 1004)
INSERT [dbo].[ForumPost] ([ID], [ForumTopicId], [Post], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (5, 8, N'Hello World 3', CAST(N'2023-01-07T05:43:45.213' AS DateTime), 1004, CAST(N'2023-01-07T05:43:45.213' AS DateTime), 1004)
INSERT [dbo].[ForumPost] ([ID], [ForumTopicId], [Post], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (6, 12, N'new post!', CAST(N'2023-01-11T03:23:09.693' AS DateTime), 1005, CAST(N'2023-01-11T03:23:09.693' AS DateTime), 1005)
INSERT [dbo].[ForumPost] ([ID], [ForumTopicId], [Post], [DateCreated], [DateCreatedBy], [DateUpdated], [DateUpdatedBy]) VALUES (7, 13, N'this is a new forum post!', CAST(N'2023-01-16T00:11:17.880' AS DateTime), 1005, CAST(N'2023-01-16T00:11:17.880' AS DateTime), 1005)
SET IDENTITY_INSERT [dbo].[ForumPost] OFF
GO
ALTER TABLE [dbo].[ForumPost] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ForumPost] ADD  DEFAULT (getdate()) FOR [DateUpdated]
GO
ALTER TABLE [dbo].[ForumPost]  WITH CHECK ADD FOREIGN KEY([DateCreatedBy])
REFERENCES [dbo].[Individual] ([ID])
GO
ALTER TABLE [dbo].[ForumPost]  WITH CHECK ADD FOREIGN KEY([DateUpdatedBy])
REFERENCES [dbo].[Individual] ([ID])
GO
ALTER TABLE [dbo].[ForumPost]  WITH CHECK ADD FOREIGN KEY([ForumTopicId])
REFERENCES [dbo].[ForumTopic] ([ID])
GO
