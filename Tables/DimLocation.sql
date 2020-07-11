-- DimLocation
IF OBJECT_ID('dbo.DimLocation', 'U') IS NOT NULL DROP TABLE dbo.DimLocation; 
CREATE TABLE dbo.DimLocation
(
	 LocationID  			INT IDENTITY(1,1)		NOT NULL
	,StartDate				DATETIME				NOT NULL	CONSTRAINT DF_DimLocation_StartDate		DEFAULT '1900-01-01 00:00:00.000'
	,EndDate				DATETIME				NOT NULL	CONSTRAINT DF_DimLocation_EndDate		DEFAULT '9999-12-31 00:00:00.000'
	,Country				VARCHAR(32)				
	PRIMARY KEY (LocationID)
)
GO
