-- Staging Table for Generating Surrogate Key
IF OBJECT_ID('dbo.STAGING_CoffeeSampleMapping', 'U') IS NOT NULL DROP TABLE dbo.STAGING_CoffeeSampleMapping; 

CREATE TABLE dbo.STAGING_CoffeeSampleMapping
(
	 CoffeeSampleID			INT IDENTITY(1,1)		NOT NULL
	,OriginalCoffeeSampleID	INT						NOT NULL
	,Species				VARCHAR(32)				NOT NULL
	PRIMARY KEY	(CoffeeSampleID)
)
GO
