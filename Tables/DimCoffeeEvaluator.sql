IF OBJECT_ID('dbo.DimCoffeeEvaluator', 'U') IS NOT NULL DROP TABLE dbo.DimCoffeeEvaluator; 
CREATE TABLE dbo.DimCoffeeEvaluator
(
	 CoffeeEvaluatorID		INT IDENTITY(1,1)		NOT NULL
	,StartDate				DATETIME				NOT NULL	CONSTRAINT DF_DimCofeeEvaluator_StartDate	DEFAULT '1900-01-01 00:00:00.000'
	,EndDate				DATETIME				NOT NULL	CONSTRAINT DF_DimCofeeEvaluator_EndDate		DEFAULT '9999-12-31 00:00:00.000'
	,CertificationBody		VARCHAR(128)			NOT NULL
	,CertificationAddress	VARCHAR(128)			
	,CertificationContact	VARCHAR(128)			
	PRIMARY KEY	(CoffeeEvaluatorID)
)
GO
