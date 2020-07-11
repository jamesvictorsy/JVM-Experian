-- DimSpecies
IF OBJECT_ID('dbo.DimSpecies', 'U') IS NOT NULL DROP TABLE dbo.DimSpecies; 
CREATE TABLE dbo.DimSpecies
(
	 SpeciesID				INT IDENTITY(1,1)		NOT NULL
	,StartDate				DATETIME				NOT NULL	CONSTRAINT DF_DimSpecies_StartDate		DEFAULT '1900-01-01 00:00:00.000'
	,EndDate				DATETIME				NOT NULL	CONSTRAINT DF_DimSpecies_EndDate		DEFAULT '9999-12-31 00:00:00.000'
	,SpeciesName			VARCHAR(32)				NOT NULL
	PRIMARY KEY (SpeciesID)
)
GO
