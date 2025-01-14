/****** Object:  StoredProcedure [dbo].[Individual_Insert]    Script Date: 1/15/2023 10:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Colby Lithyouvong
-- Create Date: 2023 Jan 4
-- =============================================
CREATE PROCEDURE [dbo].[Individual_Insert]
(
	@FirstName varchar(150) = ''
	,@LastName varchar(150) = ''
	,@City varchar(150) = ''
	,@StateId int = null
	,@CountryId int = null
	,@GenderId int = null
	,@EthnicityId int = null
	,@HairColorId int = null
	,@EyeColorId int = null
	,@Description varchar(max) = ''
	,@Age int = null
	,@Phone1 varchar(20) = ''
	,@Phone2 varchar(20) = ''
	,@Phone3 varchar(20) = ''
	,@Email1 varchar(100) = ''
	,@Email2 varchar(100) = ''
	,@Email3 varchar(100) = ''
	,@DateLost datetime = null
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON


	INSERT INTO [dbo].[Individual]
			   ([IndividualStatusId]
			   ,[FirstName]
			   ,[LastName]
			   ,[City]
			   ,[StateId]
			   ,[CountryId]
			   ,[GenderId]
			   ,[EthnicityId]
			   ,[HairColorId]
			   ,[EyeColorId]
			   ,[Description]
			   ,[Age]
			   ,[Phone1]
			   ,[Phone2]
			   ,[Phone3]
			   ,[Email1]
			   ,[Email2]
			   ,[Email3]
			   ,[DateLost]
			   ,[DateCreated]
			   ,[DateUpdated])
     VALUES (
		   1 --<IndividualStatusId, int,>
           ,@FirstName --,<FirstName, varchar(150),>
           ,@LastName --,<LastName, varchar(150),>
           ,@City --,<City, varchar(150),>
           ,@StateId --,<StateId, int,>
           ,@CountryId --,<CountryId, int,>
           ,@GenderId --,<GenderId, int,>
           ,@EthnicityId --,<EthnicityId, int,>
           ,@HairColorId --,<HairColorId, int,>
           ,@EyeColorId --,<EyeColorId, int,>
           ,@Description --,<Description, varchar(max),>
           ,@Age --,<Age, int,>
           ,@Phone1 --,<Phone1, varchar(20),>
           ,@Phone2 --,<Phone2, varchar(20),>
           ,@Phone3 --,<Phone3, varchar(20),>
           ,@Email1 --,<Email1, varchar(100),>
           ,@Email2 --,<Email2, varchar(100),>
           ,@Email3 --,<Email3, varchar(100),>
           ,ISNULL(@DateLost, GETDATE()) --,<DateLost, datetime,>
           ,GETDATE() --,<DateCreated, datetime,>
           ,GETDATE() --,<DateUpdated, datetime,>
	)
END
GO
