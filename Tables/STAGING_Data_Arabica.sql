IF OBJECT_ID('dbo.STAGING_Data_Arabica', 'U') IS NOT NULL DROP TABLE dbo.STAGING_Data_Arabica; 
CREATE TABLE dbo.STAGING_Data_Arabica(
	 Column_1					NVARCHAR(50)		NULL
	,Species					NVARCHAR(50)		NULL
	,Owner						NVARCHAR(100)		NULL
	,Country_of_Origin			NVARCHAR(50)		NULL
	,Farm_Name					NVARCHAR(100)		NULL
	,Lot_Number					NVARCHAR(100)		NULL
	,Mill						NVARCHAR(100)		NULL
	,ICO_Number					NVARCHAR(50)		NULL
	,Company					NVARCHAR(100)		NULL
	,Altitude					NVARCHAR(50)		NULL
	,Region						NVARCHAR(100)		NULL
	,Producer					NVARCHAR(100)		NULL
	,Number_of_Bags				NVARCHAR(50)		NULL
	,Bag_Weight					NVARCHAR(50)		NULL
	,In_Country_Partner			NVARCHAR(100)		NULL
	,Harvest_Year				NVARCHAR(50)		NULL
	,Grading_Date				NVARCHAR(50)		NULL
	,Owner_1					NVARCHAR(100)		NULL
	,Variety					NVARCHAR(50)		NULL
	,Processing_Method			NVARCHAR(50)		NULL
	,Aroma						FLOAT				NULL
	,Flavor						FLOAT				NULL
	,Aftertaste					FLOAT				NULL
	,Acidity					FLOAT				NULL
	,Body						FLOAT				NULL
	,Balance					FLOAT				NULL
	,Uniformity					FLOAT				NULL
	,Clean_Cup					FLOAT				NULL
	,Sweetness					FLOAT				NULL
	,Cupper_Points				FLOAT				NULL
	,Total_Cup_Points			FLOAT				NULL
	,Moisture					NVARCHAR(50)		NULL
	,Category_One_Defects		NVARCHAR(50)		NULL
	,Quakers					NVARCHAR(50)		NULL
	,Color						NVARCHAR(50)		NULL
	,Category_Two_Defects		NVARCHAR(50)		NULL
	,Expiration					NVARCHAR(50)		NULL
	,Certification_Body			NVARCHAR(100)		NULL
	,Certification_Address		NVARCHAR(50)		NULL
	,Certification_Contact		NVARCHAR(50)		NULL
	,unit_of_measurement		NVARCHAR(50)		NULL
	,altitude_low_meters		NVARCHAR(50)		NULL
	,altitude_high_meters		NVARCHAR(50)		NULL
	,altitude_mean_meters		NVARCHAR(50)		NULL
)
GO


