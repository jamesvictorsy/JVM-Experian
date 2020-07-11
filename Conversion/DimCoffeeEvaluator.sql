BEGIN TRY TRUNCATE TABLE dbo.DimCoffeeEvaluator END TRY BEGIN CATCH END CATCH
BEGIN TRY DROP TABLE #TMP_DimCoffeeEvaluator END TRY BEGIN CATCH END CATCH
SELECT
	 ROW_NUMBER() OVER(PARTITION BY RTRIM(CertificationBody) ORDER BY GradingDate DESC) AS RowID	
	,RTRIM(CertificationBody) AS CertificationBody
	,CertificationAddress
	,CertificationContact
	,GradingDate
INTO #TMP_DimCoffeeEvaluator
FROM dbo.STAGING_Coffee

INSERT INTO dbo.DimCoffeeEvaluator
(
	 CertificationBody
	,CertificationAddress
	,CertificationContact
)
SELECT 
	 CertificationBody
	,CertificationAddress
	,CertificationContact
FROM #TMP_DimCoffeeEvaluator
WHERE RowID = 1
ORDER BY
	 CertificationBody
GO

