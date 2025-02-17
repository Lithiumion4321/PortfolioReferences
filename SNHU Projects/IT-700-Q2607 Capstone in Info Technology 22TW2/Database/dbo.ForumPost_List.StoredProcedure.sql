/****** Object:  StoredProcedure [dbo].[ForumPost_List]    Script Date: 1/15/2023 10:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Colby Lithyouvong
-- Create Date: 2023 Jan 4
-- =============================================
CREATE   PROCEDURE [dbo].[ForumPost_List]
	@ForumTopicId int
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	Select	FP.ID,
			FP.ForumTopicId,
			FP.Post,
			FP.DateCreated,
			FP.DateCreatedBy,
			I.Email1 as 'DateCreatedByName',
			FP.DateUpdated,
			FP.DateUpdatedBy, 
			I2.Email1 as 'DateUpdatedByName',
			FT.Topic
	From	ForumPost FP
			Inner Join ForumTopic FT on FT.ID = FP.ForumTopicId
			Inner Join Individual I on I.ID = FP.DateCreatedBy
			Inner Join Individual I2 on I2.ID = FP.DateUpdatedBy
	Where	FP.ForumTopicId = @ForumTopicId
	order by FP.DateUpdated
END
GO
