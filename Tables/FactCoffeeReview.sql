-- FactCoffeeReview
IF OBJECT_ID('dbo.FactCoffeeReview', 'U') IS NOT NULL DROP TABLE dbo.FactCoffeeReview;
CREATE TABLE dbo.FactCoffeeReview
(
	 CoffeeSampleID			INT
	,SpeciesID				INT
	,LocationID				INT
	,CoffeeEvaluatorID		INT
	,GradingDateID			INT
	,ExpirationDateID		INT
	,StartDate				DATETIME				NOT NULL	CONSTRAINT DF_FactCoffeeReview_StartDate	DEFAULT '1900-01-01 00:00:00.000'
	,EndDate				DATETIME				NOT NULL	CONSTRAINT DF_FactCoffeeReview_EndDate		DEFAULT '9999-12-31 00:00:00.000'
	,Aroma					DECIMAL(4,2)
	,Flavor					DECIMAL(4,2)
	,Aftertaste				DECIMAL(4,2)
	,Acidity				DECIMAL(4,2)
	,Body					DECIMAL(4,2)
	,Balance				DECIMAL(4,2)
	,Uniformity				DECIMAL(4,2)
	,Cleancup				DECIMAL(4,2)
	,Sweetness				DECIMAL(4,2)
	,CupperPoints			DECIMAL(4,2)
	,TotalCupPoints			DECIMAL(4,2)
)
GO
