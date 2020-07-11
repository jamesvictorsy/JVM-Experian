IF OBJECT_ID('dbo.STAGING_Coffee', 'U') IS NOT NULL DROP TABLE dbo.STAGING_Coffee; 
CREATE TABLE dbo.STAGING_Coffee
(
	 ID						 BIGINT
	,Species				 VARCHAR(50)
	,Owner					 NVARCHAR(50)
	,CountryOfOrigin		 VARCHAR(50)
	,FarmName				 NVARCHAR(255)
	,LotNumber				 NVARCHAR(255)
	,Mill					 NVARCHAR(255)
	,ICONumber				 NVARCHAR(50)
	,Company				 NVARCHAR(255)
	,Altitude				 NVARCHAR(50)
	,Region					 NVARCHAR(255)
	,Producer				 NVARCHAR(255)
	,NumberofBags			 VARCHAR(50)
	,BagWeight				 VARCHAR(50)
	,InCountryPartner		 VARCHAR(255)
	,HarvestYear			 VARCHAR(50)
	,GradingDate			 VARCHAR(50)
	,Owner1					 NVARCHAR(50)
	,Variety				 VARCHAR(50)
	,ProcessingMethod		 VARCHAR(50)
	,Aroma					 VARCHAR(50)
	,Flavor					 VARCHAR(50)
	,Aftertaste				 VARCHAR(50)
	,Acidity				 VARCHAR(50)
	,Body					 VARCHAR(50)
	,Balance				 VARCHAR(50)
	,Uniformity				 VARCHAR(50)
	,CleanCup				 VARCHAR(50)
	,Sweetness				 VARCHAR(50)
	,CupperPoints			 VARCHAR(50)
	,TotalCupPoints			 VARCHAR(50)
	,Moisture				 VARCHAR(50)
	,CategoryOneDefects		 VARCHAR(50)
	,Quakers				 VARCHAR(50)
	,Color					 VARCHAR(50)
	,CategoryTwoDefects		 VARCHAR(50)
	,Expiration				 VARCHAR(50)
	,CertificationBody		 VARCHAR(255)
	,CertificationAddress	 VARCHAR(50)
	,CertificationContact	 VARCHAR(50)
	,UnitOfMeasurement	     VARCHAR(50)
	,AltitudeLowMeters   	 VARCHAR(50)
	,AltitudeHighMeters		 VARCHAR(50)
	,AltitudeMeanMeters		 VARCHAR(50)
)
GO
