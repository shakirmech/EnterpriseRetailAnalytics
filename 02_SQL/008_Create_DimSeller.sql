USE ENTERPRISERETAILDW;
GO

IF OBJECT_ID('dbo.Dimseller', 'U') IS NOT NULL
DROP TABLE dbo.Dimseller;
GO

CREATE TABLE dbo.Dimseller
(
	sellerKey INT IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_Dimseller
		PRIMARY KEY (sellerKey),
	sellerID VARCHAR(50) NOT NULL
		CONSTRAINT UQ_Dimseller_sellerID
		UNIQUE (sellerID),
	sellerzipcodeprefix INT NULL,
	sellercity VARCHAR(100) NULL,
	sellerstate CHAR(2) NULL,
	loadDate DATETIME NOT NULL
		CONSTRAINT DF_Dimseller_loadDate
		DEFAULT GETDATE()
);
GO


