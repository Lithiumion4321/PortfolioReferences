/****** Object:  StoredProcedure [dbo].[ReportScreen_Load]    Script Date: 1/15/2023 10:08:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Colby Lithyouvong
-- Create Date: 2022 Dec
-- Description: Report Screen Initial Load
-- =============================================
create PROCEDURE [dbo].[ReportScreen_Load]

AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	Select   C.PrintableName,
			 C.ID,
			 C.ISOCode3
	From	 Country C
	Order by C.[Name];

	Select	S.ID,
			S.[Name],
			S.Abbreviation
	From	[State] S
	Order by S.[Name];

	Select	 E.ID,
			 E.Color
	From	 EyeColor E
	Order by E.[Color];

	Select	 E.ID,
			 E.Color
	From	 HairColor E
	Order by E.[Color];

	Select	 E.ID,
			 E.[Name]
	From	 Ethnicity E
	Order by E.[Weight]
END
GO
