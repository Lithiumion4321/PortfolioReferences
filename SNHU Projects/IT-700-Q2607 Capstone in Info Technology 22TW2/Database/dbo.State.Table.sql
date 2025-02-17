/****** Object:  Table [dbo].[State]    Script Date: 1/15/2023 10:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](40) NOT NULL,
	[Abbreviation] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (1, N'Alaska', N'AK')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (2, N'Alabama', N'AL')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (3, N'American Samoa', N'AS')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (4, N'Arizona', N'AZ')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (5, N'Arkansas', N'AR')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (6, N'California', N'CA')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (7, N'Colorado', N'CO')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (8, N'Connecticut', N'CT')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (9, N'Delaware', N'DE')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (10, N'District of Columbia', N'DC')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (11, N'Federated [State] of Micronesia', N'FM')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (12, N'Florida', N'FL')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (13, N'Georgia', N'GA')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (14, N'Guam', N'GU')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (15, N'Hawaii', N'HI')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (16, N'Idaho', N'ID')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (17, N'Illinois', N'IL')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (18, N'Indiana', N'IN')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (19, N'Iowa', N'IA')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (20, N'Kansas', N'KS')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (21, N'Kentucky', N'KY')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (22, N'Louisiana', N'LA')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (23, N'Maine', N'ME')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (24, N'Marshall Islands', N'MH')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (25, N'Maryland', N'MD')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (26, N'Massachusetts', N'MA')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (27, N'Michigan', N'MI')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (28, N'Minnesota', N'MN')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (29, N'Mississippi', N'MS')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (30, N'Missouri', N'MO')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (31, N'Montana', N'MT')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (32, N'Nebraska', N'NE')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (33, N'Nevada', N'NV')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (34, N'New Hampshire', N'NH')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (35, N'New Jersey', N'NJ')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (36, N'New Mexico', N'NM')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (37, N'New York', N'NY')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (38, N'North Carolina', N'NC')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (39, N'North Dakota', N'ND')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (40, N'Northern Mariana Islands', N'MP')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (41, N'Ohio', N'OH')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (42, N'Oklahoma', N'OK')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (43, N'Oregon', N'OR')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (44, N'Palau', N'PW')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (45, N'Pennsylvania', N'PA')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (46, N'Puerto Rico', N'PR')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (47, N'Rhode Island', N'RI')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (48, N'South Carolina', N'SC')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (49, N'South Dakota', N'SD')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (50, N'Tennessee', N'TN')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (51, N'Texas', N'TX')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (52, N'Utah', N'UT')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (53, N'Vermont', N'VT')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (54, N'Virgin Islands', N'VI')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (55, N'Virginia', N'VA')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (56, N'Washington', N'WA')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (57, N'West Virginia', N'WV')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (58, N'Wisconsin', N'WI')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (59, N'Wyoming', N'WY')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (60, N'Armed Forces Africa', N'AE')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (61, N'Armed Forces Americas (except Canada)', N'AA')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (62, N'Armed Forces Canada', N'AE')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (63, N'Armed Forces Europe', N'AE')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (64, N'Armed Forces Middle East', N'AE')
INSERT [dbo].[State] ([ID], [Name], [Abbreviation]) VALUES (65, N'Armed Forces Pacific', N'AP')
SET IDENTITY_INSERT [dbo].[State] OFF
GO
