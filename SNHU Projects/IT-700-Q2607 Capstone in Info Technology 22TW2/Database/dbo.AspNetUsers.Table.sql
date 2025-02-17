/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/15/2023 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[IndividualId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IndividualId]) VALUES (N'28da3634-df93-4f68-b13d-ee40913e8d7f', N'colby.lithyouvong@snhu.edu', N'COLBY.LITHYOUVONG@SNHU.EDU', N'colby.lithyouvong@snhu.edu', N'COLBY.LITHYOUVONG@SNHU.EDU', 1, N'AQAAAAIAAYagAAAAEP25YoHWNq2wjzjkgWvfcCuxdJstN5UPwGczszmMV8yvtgUFtrE/aKASTNYfvujUVg==', N'ZLTJAMUXBGGBKIQ2L3RCVBN3HISJKMY3', N'3e9303f5-6d31-499f-8c07-d58a298a1cc7', NULL, 0, 0, NULL, 1, 0, 1009)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IndividualId]) VALUES (N'b3fbd17c-d613-4715-8bdd-0ed9bdbf14a8', N'clithyouvong@gmail.com', N'CLITHYOUVONG@GMAIL.COM', N'clithyouvong@gmail.com', N'CLITHYOUVONG@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEPPO/3vOFSSNx+bQtmGE6PmU5AcIcAB69r4LHF4P03dpo6nRrA2yoRjGttk88Wi55g==', N'3A2LZYQXOPGOZYG6IDBQQ7SJI665UMCV', N'7c415df9-c1db-4518-9c8b-4aa67085423a', NULL, 0, 0, NULL, 1, 0, 1008)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IndividualId]) VALUES (N'e4a78b64-d449-4042-bfec-b3382ef58ae4', N'colby.lithyouvong@outlook.com', N'COLBY.LITHYOUVONG@OUTLOOK.COM', N'colby.lithyouvong@outlook.com', N'COLBY.LITHYOUVONG@OUTLOOK.COM', 1, N'AQAAAAIAAYagAAAAEBXTsvtzsQ0lzWM3I/koIsXU8W1hxwCbMOYr7SAbV0ZdIk7Z+GXUqbBdNF4CWB1iLw==', N'WQV3G55JM4OC6VZTGAIMATQP2C2WLSNU', N'941211d0-a235-45c9-b866-a12e41add990', NULL, 0, 0, NULL, 1, 0, 1005)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 1/15/2023 10:08:44 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/15/2023 10:08:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Trigger [dbo].[TR_AspNetUsers_CreateIndividualRecord]    Script Date: 1/15/2023 10:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   TRIGGER [dbo].[TR_AspNetUsers_CreateIndividualRecord]
   ON  [dbo].[AspNetUsers]
   AFTER Insert
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	
    DECLARE @email nvarchar(256)
	Declare @Id nvarchar(450)

    SELECT	@email = Email,
			@Id = Id
	FROM	INSERTED;

	Insert into Individual(
		[FirstName],
		[LastName],
		[IndividualStatusId],
		[Email1]
	)
	Values (
		'',
		'',
		3,
		@email
	)

	Declare @IndividualId int = (Select SCOPE_IDENTITY());

	Update AspNetUsers Set IndividualId = @IndividualId Where Id = @Id
END
GO
ALTER TABLE [dbo].[AspNetUsers] ENABLE TRIGGER [TR_AspNetUsers_CreateIndividualRecord]
GO
