USE EnterpriseRetailDW;
GO

IF OBJECT_ID('dbo.Dimcustomer', 'U') IS NOT NULL
	DROP TABLE dbo.Dimcustomer;
GO

CREATE TABLE dbo.Dimcustomer
(
	CustomerKey INT IDENTITY(1,1) NOT NULL,
	CustomerID VARCHAR(50) NOT NULL,
	CustomerUniqueID VARCHAR(50) NOT NULL,
	CustomerzipCode INT NULL,
	CustomerCity VARCHAR(50) NULL,
	CustomerState CHAR(2),
	LoadDate DATETIME NOT NULL
		CONSTRAINT DF_Dimcustomer_LoadDate 
		DEFAULT(GETDATE()),
	
	CONSTRAINT PK_Dimcustomer
	PRIMARY KEY(CustomerKey),

	CONSTRAINT UQ_Dimcustomer_CustomerID
	UNIQUE(CustomerID)
	);
	GO

	EXEC sp_help 'dbo.Dimcustomer'

	EXEC sp_help 'stg.customers'


