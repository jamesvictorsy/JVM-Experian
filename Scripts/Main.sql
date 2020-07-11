-- Create Tables
SET NOCOUNT ON
PRINT 'Creating Tables'
:r C:\JVM-GitHub\JVM-Experian\Tables\STAGING_Data_Arabica.sql
:r C:\JVM-GitHub\JVM-Experian\Tables\STAGING_Data_Robusta.sql
:r C:\JVM-GitHub\JVM-Experian\Tables\STAGING_Coffee.sql
:r C:\JVM-GitHub\JVM-Experian\Tables\STAGING_CoffeeSampleMapping.sql
:r C:\JVM-GitHub\JVM-Experian\Tables\FactCoffeeReview.sql
:r C:\JVM-GitHub\JVM-Experian\Tables\DimCoffeeEvaluator.sql
:r C:\JVM-GitHub\JVM-Experian\Tables\DimSpecies.sql
:r C:\JVM-GitHub\JVM-Experian\Tables\DimLocation.sql
:r C:\JVM-GitHub\JVM-Experian\Tables\DimCoffeeSample.sql
:r C:\JVM-GitHub\JVM-Experian\Tables\DimDate.sql

-- Prepare Raw Data
PRINT 'Preparing CQI Data'
:r C:\JVM-GitHub\JVM-Experian\Conversion\STAGING_Data_Arabica.sql
:r C:\JVM-GitHub\JVM-Experian\Conversion\STAGING_Data_Robusta.sql
:r C:\JVM-GitHub\JVM-Experian\Conversion\STAGING_Coffee.sql

-- Pre Conversion
PRINT 'Pre Conversion'
:r C:\JVM-GitHub\JVM-Experian\"Pre Conversion"\DropForeignKeys.sql
:r C:\JVM-GitHub\JVM-Experian\"Pre Conversion"\CleanData.sql

-- Populate Data
PRINT 'Conversion'
:r C:\JVM-GitHub\JVM-Experian\Conversion\STAGING_CoffeeSampleMapping.sql
:r C:\JVM-GitHub\JVM-Experian\Conversion\DimCoffeeEvaluator.sql
:r C:\JVM-GitHub\JVM-Experian\Conversion\DimSpecies.sql
:r C:\JVM-GitHub\JVM-Experian\Conversion\DimLocation.sql
:r C:\JVM-GitHub\JVM-Experian\Conversion\DimCoffeeSample.sql
:r C:\JVM-GitHub\JVM-Experian\Conversion\FactCoffeeReview.sql

-- Post Conversion
PRINT 'Post Conversion'
:r C:\JVM-GitHub\JVM-Experian\"Post Conversion"\AddForeignKeys.sql

PRINT 'ETL Complete'

