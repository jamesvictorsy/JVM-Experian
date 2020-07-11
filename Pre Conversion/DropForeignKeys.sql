IF EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimCoffeeEvaluator_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] DROP CONSTRAINT [FactCoffeeReview_DimCoffeeEvaluator_FK]
END

IF EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimSpecies_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] DROP CONSTRAINT [FactCoffeeReview_DimSpecies_FK]
END

IF EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimLocation_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] DROP CONSTRAINT [FactCoffeeReview_DimLocation_FK]
END

IF EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimCoffeeSample_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] DROP CONSTRAINT [FactCoffeeReview_DimCoffeeSample_FK]
END
GO

