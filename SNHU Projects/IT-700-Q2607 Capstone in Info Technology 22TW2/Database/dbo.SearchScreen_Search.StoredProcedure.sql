/****** Object:  StoredProcedure [dbo].[SearchScreen_Search]    Script Date: 1/15/2023 10:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Colby Lithyouvong
-- Create Date: 2022 Dec
-- =============================================
CREATE PROCEDURE [dbo].[SearchScreen_Search]
(
	@firstname varchar(150) = '',
	@lastname varchar(150) = '',
	@city varchar(150) = '',
	@stateId int = 0,
	@countryId int = 0,
	@DateLostStart datetime = '1/1/1900 12:00:00 AM',
	@DateLostEnd datetime = '1/1/1900 12:00:00 AM',
	@ageStart int = 0,
	@ageEnd int = 0,
	@genderId int = 0,
	@ethnicityId int = 0,
	@hairColorId int = 0,
	@eyeColorId int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT top 1000 i.[ID] as IndividualId
		  ,[IndividualStatusId]
		  ,replace( s.[Status], 'Individual - ', '') as IndividualStatus
		  ,[FirstName]
		  ,[LastName]
		  ,[City]
		  ,[StateId]
		  ,n.[Name] as [State]
		  ,n.Abbreviation as [StateAbbreviation]
		  ,[CountryId]
		  ,c.PrintableName as [Country]
		  ,c.ISOCode3 as [CountryAbbreviation]
		  ,[GenderId]
		  ,g.Gender
		  ,[EthnicityId]
		  ,e.[Name] as [Ethnicity]
		  ,[HairColorId]
		  ,hc.[Color] as [HairColor]
		  ,[EyeColorId]
		  ,ec.[Color] as [EyeColor]
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
	FROM	[dbo].[Individual] i
			Join IndividualStatus s on s.ID = i.IndividualStatusId
			left outer Join [State] n on n.ID = i.[StateId]
			left outer join [Country] c on c.ID = i.[CountryId]
			left outer join [Gender] g on g.ID = i.GenderId
			left outer join [Ethnicity] e on e.ID = i.EthnicityId
			left outer join [HairColor] hc on hc.ID = i.HairColorId
			left outer join [EyeColor] ec on ec.ID = i.EyeColorId
	Where	((@firstname='') or (@firstname<>'' and i.FirstName like '%'+@firstname+'%'))
			and ((@lastname='') or (@lastname<>'' and i.LastName like '%'+@lastname+'%'))
			and ((@city='') or (@city<>'' and i.City like '%'+@city+'%'))
			and ((@stateId = 0) or (@stateId <> 0 and i.StateId = @stateId))
			and ((@countryId = 0) or (@countryId <> 0 and i.CountryId = @countryId))
			and ((@genderId = 0) or (@genderId <> 0 and i.GenderId = @genderId))
			and ((@ethnicityId = 0) or (@ethnicityId <> 0 and i.EthnicityId = @ethnicityId))
			and ((@hairColorId = 0) or (@hairColorId <> 0 and i.HairColorId = @hairColorId))
			and ((@eyeColorId = 0) or (@eyeColorId <> 0 and i.EyeColorId = @eyeColorId))
			and ((@ageStart = 0) or (@ageStart <> 0 and i.Age <= @ageStart))  
			and ((@ageEnd = 0) or (@ageEnd <> 0 and i.Age >= @ageEnd)) 			
			and ((@DateLostStart = '1/1/1900 12:00:00 AM') or (@DateLostStart <> '1/1/1900 12:00:00 AM' and i.DateLost >= @DateLostStart)) 
			and ((@DateLostEnd = '1/1/1900 12:00:00 AM') or (@DateLostEnd <> '1/1/1900 12:00:00 AM' and i.DateLost <= @DateLostEnd)) 
			and i.IndividualStatusId in (1,2)
	order by i.FirstName, i.LastName, i.City


 
END
GO
