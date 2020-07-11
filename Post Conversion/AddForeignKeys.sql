-- Fact Table Foreign Keys
IF NOT EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimCoffeeSample_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] ADD
		CONSTRAINT [FactCoffeeReview_DimCoffeeSample_FK] FOREIGN KEY (
			 [CoffeeSampleID]
		) REFERENCES [DimCoffeeSample] (
			 [CoffeeSampleID]
		)
END
GO

IF NOT EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimSpecies_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] ADD
		CONSTRAINT FactCoffeeReview_DimSpecies_FK FOREIGN KEY (
			 [SpeciesID]
		) REFERENCES [DimSpecies] (
			 [SpeciesID]
		)
END
GO

IF NOT EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimSpecies_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] ADD
		CONSTRAINT [FactCoffeeReview_DimSpecies_FK] FOREIGN KEY (
			 [SpeciesID]
		) REFERENCES [DimSpecies] (
			 [SpeciesID]
		)
END
GO

IF NOT EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimLocation_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] ADD
		CONSTRAINT [FactCoffeeReview_DimLocation_FK] FOREIGN KEY (
			 [LocationID]
		) REFERENCES [DimLocation] (
			 [LocationID]
		)
END
GO

IF NOT EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimCoffeeEvaluator_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] ADD
		CONSTRAINT [FactCoffeeReview_DimCoffeeEvaluator_FK] FOREIGN KEY (
			 [CoffeeEvaluatorID]
		) REFERENCES [DimCoffeeEvaluator] (
			 [CoffeeEvaluatorID]
		)
END
GO

IF NOT EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimDate_GradingDate_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] ADD
		CONSTRAINT [FactCoffeeReview_DimDate_GradingDate_FK] FOREIGN KEY (
			 [GradingDateID]
		) REFERENCES [DimDate] (
			 [DateKey]
		)
END
GO

IF NOT EXISTS ( SELECT TOP 1 1 FROM sys.foreign_keys WHERE name = 'FactCoffeeReview_DimDate_ExpirationDate_FK' )
BEGIN
	ALTER TABLE [dbo].[FactCoffeeReview] ADD
		CONSTRAINT [FactCoffeeReview_DimDate_ExpirationDate_FK] FOREIGN KEY (
			 [ExpirationDateID]
		) REFERENCES [DimDate] (
			 [DateKey]
		)
END
GO
