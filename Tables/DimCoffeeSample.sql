-- DimCoffeeSample
IF OBJECT_ID('dbo.DimCoffeeSample', 'U') IS NOT NULL DROP TABLE dbo.DimCoffeeSample;
CREATE TABLE dbo.DimCoffeeSample
(
	 CoffeeSampleID			INT						NOT NULL
	,StartDate				DATETIME				NOT NULL	CONSTRAINT DF_DimCoffeeSample_StartDate		DEFAULT '1900-01-01 00:00:00.000'
	,EndDate				DATETIME				NOT NULL	CONSTRAINT DF_DimCoffeeSample_EndDate		DEFAULT '9999-12-31 00:00:00.000'
	,Owner					NVARCHAR(64)
	,FarmName				NVARCHAR(128)
	,LotNumber				NVARCHAR(128)
	,Mill					NVARCHAR(128)
	,ICONumber				NVARCHAR(64)
	,NumberOfBags			SMALLINT
	,BagWeight				VARCHAR(32)
	,HarvestYear			SMALLINT
	,Variety				VARCHAR(32)
	,Region					NVARCHAR(128)
	,Producer				NVARCHAR(128)
	,ProcessingMethod		VARCHAR(32)
	,Altitude				NVARCHAR(64)
	,UnitOfMeasurement		VARCHAR(32)
	,AltitudeLowMeters   	DECIMAL(10,4)
	,AltitudeHighMeters		DECIMAL(10,4)
	,AltitudeMeanMeters		DECIMAL(10,4)
	,Moisture               DECIMAL(4,2)
	,Color                  VARCHAR(32)
	,Quakers				SMALLINT
	,CategoryOneDefects     SMALLINT
	,CatergoryTwoDefects	SMALLINT
	PRIMARY KEY (CoffeeSampleID)
)
GO
