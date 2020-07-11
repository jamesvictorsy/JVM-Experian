BEGIN TRY TRUNCATE TABLE dbo.DimCoffeeSample END TRY BEGIN CATCH END CATCH
INSERT INTO dbo.DimCoffeeSample
(
	  CoffeeSampleID
	 ,Owner
	 ,FarmName
	 ,LotNumber
	 ,Mill
	 ,ICONumber
	 ,NumberofBags
	 ,BagWeight
	 ,HarvestYear
	 ,Variety
	 ,Region
	 ,Producer
	 ,ProcessingMethod		
	 ,Altitude				
	 ,UnitOfMeasurement		
	 ,AltitudeLowMeters   	
	 ,AltitudeHighMeters		
	 ,AltitudeMeanMeters	
	 ,Moisture               
	 ,Color                  
	 ,Quakers				
	 ,CategoryOneDefects      
	 ,CatergoryTwoDefects
)
SELECT 
	  SC.CoffeeSampleID 
	 ,S.Owner1
	 ,FarmName
	 ,LotNumber
	 ,Mill
	 ,ICONumber
	 ,S.NumberofBags
	 ,S.BagWeight
	 ,SUBSTRING(S.HarvestYear,
			PATINDEX('%[0-9]%', HarvestYear),
			(CASE WHEN PATINDEX('%[^0-9]%', STUFF(HarvestYear, 1, (PATINDEX('%[0-9]%', HarvestYear) - 1), '')) = 0
			THEN LEN(HarvestYear) ELSE (PATINDEX('%[^0-9]%', STUFF(HarvestYear, 1, (PATINDEX('%[0-9]%', HarvestYear) - 1), ''))) - 1
			END )
			) AS HarvestYear
	 ,S.Variety
	 ,S.Region
	 ,S.Producer
	 ,S.ProcessingMethod		
	 ,S.Altitude				
	 ,S.UnitOfMeasurement		
	 ,TRY_CAST(S.AltitudeLowMeters AS DECIMAL(10,4))
	 ,TRY_CAST(S.AltitudeHighMeters AS DECIMAL(10,4))
	 ,TRY_CAST(S.AltitudeMeanMeters AS DECIMAL(10,4))
	 ,TRY_CAST(S.Moisture AS DECIMAL(4,2))               
	 ,S.Color                  
	 ,TRY_CAST(S.Quakers AS SMALLINT)				
	 ,TRY_CAST(S.CategoryOneDefects AS SMALLINT)	      
	 ,TRY_CAST(S.CategoryTwoDefects AS SMALLINT)	
FROM dbo.STAGING_Coffee	S
	INNER JOIN dbo.STAGING_CoffeeSampleMapping SC ON S.ID = SC.OriginalCoffeeSampleID
		AND S.Species = SC.Species
	INNER JOIN dbo.DimSpecies D ON S.Species = D.SpeciesName
ORDER BY
	 SC.CoffeeSampleID
GO

