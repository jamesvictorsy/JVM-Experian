-- CertificationBody
UPDATE dbo.STAGING_Coffee SET CertificationBody = 'Blossom Valley International' WHERE ID = 1084

-- Dates
UPDATE S SET
	 GradingDate = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(S.GradingDate, 'st', ''), 'nd', ''), 'rd', ''), 'th', ''), 'Augu', 'August')
	,Expiration = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(S.Expiration, 'st', ''), 'nd', ''), 'rd', ''), 'th', ''), 'Augu', 'August')
FROM [dbo].[STAGING_Coffee] S
GO
