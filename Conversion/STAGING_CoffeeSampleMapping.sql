BEGIN TRY TRUNCATE TABLE dbo.STAGING_CoffeeSampleMapping END TRY BEGIN CATCH END CATCH
INSERT INTO dbo.STAGING_CoffeeSampleMapping
(
	 OriginalCoffeeSampleID
	,Species
)
SELECT
	 ID
	,Species
FROM dbo.STAGING_Coffee
ORDER BY
	 Species
	,ID
GO