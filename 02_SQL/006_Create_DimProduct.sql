USE EnterpriseRetailDW;
GO

IF OBJECT_ID('dbo.Dimproduct', 'U') IS NOT NULL
DROP TABLE dbo.Dimproduct;
GO

CREATE TABLE dbo.Dimproduct
(
	productKey INT IDENTITY(1,1) NOT NULL,
		CONSTRAINT PK_Dimproduct
		PRIMARY KEY(productKey),
	productID VARCHAR(50) NOT NULL,
		CONSTRAINT UQ_Dimproduct_productID
		UNIQUE (productID),
	productcategory VARCHAR(50),
	productNameLength INT,
	productDescriptionLength INT,
	productPhotos INT,
	productWeight INT,
	productLength INT,
	productHeight INT,
	productWidth INT,
	loadDate DATETIME NOT NULL
		CONSTRAINT DF_Dimproduct_LoadDate
		DEFAULT GETDATE()
);
GO

EXEC sp_help 'stg.CategoryTranslation'
