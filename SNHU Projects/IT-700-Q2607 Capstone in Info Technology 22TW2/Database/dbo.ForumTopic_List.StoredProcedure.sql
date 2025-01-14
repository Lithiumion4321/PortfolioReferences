/****** Object:  StoredProcedure [dbo].[ForumTopic_List]    Script Date: 1/15/2023 10:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Colby Lithyouvong
-- Create Date: 2023 Jan 4
-- =============================================
CREATE   PROCEDURE [dbo].[ForumTopic_List]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	Select	 FT.ID,
			 FT.Topic,
			 FT.DateCreated,
			 FT.DateCreatedBy,
			 I.Email1 as 'DateCreatedByName',
			 Case	
				When ISNULL((SELECT MAX(FP.DateUpdated) FROM ForumPost FP Where FP.ForumTopicId = FT.ID),'1900-01-01') > FT.DateUpdated 
					THEN ISNULL((SELECT MAX(FP.DateUpdated) FROM ForumPost FP Where FP.ForumTopicId = FT.ID),'1900-01-01')
					ELSE FT.DateUpdated
			 END AS 'DateUpdated',
			 FT.DateUpdatedBy,
			 I2.Email1 as 'DateUpdatedByName',
			 (SELECT COUNT(*) FROM ForumPost FP Where FP.ForumTopicId = FT.ID) as 'PostCount'
	From	 ForumTopic FT
			 Inner Join Individual I on I.ID = FT.DateCreatedBy
			 Inner Join Individual I2 on I2.ID = FT.DateUpdatedBy
	Order by FT.DateUpdated desc, [DateUpdated], FT.Topic
END
GO
