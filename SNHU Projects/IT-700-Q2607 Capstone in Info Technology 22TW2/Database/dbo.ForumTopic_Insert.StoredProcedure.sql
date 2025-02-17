/****** Object:  StoredProcedure [dbo].[ForumTopic_Insert]    Script Date: 1/15/2023 10:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Colby Lithyouvong
-- Create Date: 2023 Jan 4
-- =============================================
CREATE PROCEDURE [dbo].[ForumTopic_Insert]
(
	@Topic varchar(150),
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
		Insert into ForumTopic (Topic, DateCreatedBy, DateUpdatedBy) Values (@Topic, @DateCreatedBy, @IndividualId);
	end
	else
	begin
		Insert into ForumTopic (Topic, DateCreatedBy, DateUpdatedBy) Values (@Topic, @DateCreatedBy, @DateCreatedBy);
	end

	
END
GO
