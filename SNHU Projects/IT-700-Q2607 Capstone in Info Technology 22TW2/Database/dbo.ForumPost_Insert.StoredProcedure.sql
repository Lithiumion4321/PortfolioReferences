/****** Object:  StoredProcedure [dbo].[ForumPost_Insert]    Script Date: 1/15/2023 10:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Colby Lithyouvong
-- Create Date: 2023 Jan 4
-- =============================================
CREATE   PROCEDURE [dbo].[ForumPost_Insert]
(
	@ForumTopicId int,
	@Post varchar(max),
	@DateCreatedBy int,
	@DateCreatedByName varchar(150) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	Declare @IndividualId int = null;

	select @IndividualId = (Select A.IndividualId From AspNetUsers A Where A.Email = @DateCreatedByName);

	if(@IndividualId is not null)
	begin
		Insert into ForumPost (ForumTopicId, Post, DateCreatedBy, DateUpdatedBy) Values (@ForumTopicId, @Post, @IndividualId, @IndividualId);
	end
	else 
	begin
		Insert into ForumPost (ForumTopicId, Post, DateCreatedBy, DateUpdatedBy) Values (@ForumTopicId, @Post, @DateCreatedBy, @DateCreatedBy);
	end

	
END
GO
