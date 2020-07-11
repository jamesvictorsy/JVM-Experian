PRINT 'Creating Database'
IF EXISTS (SELECT 1 FROM SYS.DATABASES WHERE NAME = 'JVM_Coffee')
DROP DATABASE JVM_Coffee
GO
CREATE DATABASE JVM_Coffee
GO

:On Error exit

PRINT 'Database Created Successfully'
GO