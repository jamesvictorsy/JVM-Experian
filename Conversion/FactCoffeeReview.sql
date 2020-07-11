BEGIN TRY TRUNCATE TABLE dbo.FactCoffeeReview END TRY BEGIN CATCH END CATCH
INSERT INTO dbo.FactCoffeeReview
(
	 CoffeeSampleID		
	,SpeciesID
	,LocationID
	,CoffeeEvaluatorID	
	,GradingDateID	
	,ExpirationDateID			
	,Aroma					
	,Flavor					
	,Aftertaste				
	,Acidity				
	,Body					
	,Balance				
	,Uniformity				
	,Cleancup				
	,Sweetness				
	,CupperPoints			
	,TotalCupPoints		
)
SELECT
	  D.CoffeeSampleID
	 ,DS.SpeciesID
	 ,DL.LocationID
	 ,DE.CoffeeEvaluatorID	
	 ,DD.DateKey
	 ,DD2.DateKey
	 ,TRY_CAST(S.Aroma AS DECIMAL(4,2))					
	 ,TRY_CAST(S.Flavor	 AS DECIMAL(4,2))					
	 ,TRY_CAST(S.Aftertaste AS DECIMAL(4,2))					
	 ,TRY_CAST(S.Acidity AS DECIMAL(4,2))					
	 ,TRY_CAST(S.Body AS DECIMAL(4,2))						
	 ,TRY_CAST(S.Balance AS DECIMAL(4,2))					
	 ,TRY_CAST(S.Uniformity AS DECIMAL(4,2))					
	 ,TRY_CAST(S.Cleancup AS DECIMAL(4,2))					
	 ,TRY_CAST(S.Sweetness AS DECIMAL(4,2))					
	 ,TRY_CAST(S.CupperPoints AS DECIMAL(4,2))
	 ,TRY_CAST(S.Aroma AS DECIMAL(4,2))					
		 + TRY_CAST(S.Flavor	 AS DECIMAL(4,2))					
		 + TRY_CAST(S.Aftertaste AS DECIMAL(4,2))					
		 + TRY_CAST(S.Acidity AS DECIMAL(4,2))					
		 + TRY_CAST(S.Body AS DECIMAL(4,2))						
		 + TRY_CAST(S.Balance AS DECIMAL(4,2))					
		 + TRY_CAST(S.Uniformity AS DECIMAL(4,2))					
		 + TRY_CAST(S.Cleancup AS DECIMAL(4,2))					
		 + TRY_CAST(S.Sweetness AS DECIMAL(4,2))					
		 + TRY_CAST(S.CupperPoints AS DECIMAL(4,2)) AS TotalCupPoints			         
FROM dbo.DimCoffeeSample D
	LEFT JOIN dbo.STAGING_CoffeeSampleMapping C ON D.CoffeeSampleID = C.CoffeeSampleID
	LEFT JOIN dbo.STAGING_Coffee S ON C.OriginalCoffeeSampleID = S.ID
		AND C.Species = S.Species
	LEFT JOIN dbo.DimSpecies DS ON S.Species = DS.SpeciesName
	LEFT JOIN dbo.DimLocation DL ON S.CountryOfOrigin = DL.Country
	LEFT JOIN dbo.DimCoffeeEvaluator DE ON S.CertificationBody = DE.CertificationBody
	LEFT JOIN dbo.DimDate DD ON TRY_CAST(S.GradingDate AS DATETIME) = DD.Date
	LEFT JOIN dbo.DimDate DD2 ON TRY_CAST(S.Expiration AS DATETIME) = DD2.Date
ORDER BY
	 C.CoffeeSampleID
GO

