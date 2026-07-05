USE ENTERPRISERETAILDW;
GO

IF OBJECT_ID('dbo.FactSales', '-U') IS NOT NULL
    DROP TABLE dbo.FactSales
GO

CREATE TABLE dbo.FactSales
(
    SalesKey INT IDENTITY(1,1) NOT NULL,

    OrderID VARCHAR(50) NOT NULL,

    CustomerKey INT NOT NULL,

    ProductKey INT NOT NULL,

    SellerKey INT NOT NULL,

    OrderDateKey INT NOT NULL,

    Quantity INT NOT NULL,

    UnitPrice DECIMAL(10,2) NOT NULL,

    FreightValue DECIMAL(10,2) NOT NULL,

    SalesAmount DECIMAL(10,2) NOT NULL,

    CONSTRAINT PK_FactSales
        PRIMARY KEY (SalesKey)
);
GO

ALTER TABLE dbo.FactSales
ADD CONSTRAINT FK_FactSales_DimCustomer
FOREIGN KEY (CustomerKey)
REFERENCES dbo.DimCustomer(CustomerKey)
GO

ALTER TABLE dbo.FactSales
ADD CONSTRAINT FK_FactSales_DimProduct
FOREIGN KEY (ProductKey)
REFERENCES dbo.DimProduct(ProductKey)
GO

ALTER TABLE dbo.FactSales
ADD CONSTRAINT FK_FactSales_DimSeller
FOREIGN KEY (SellerKey)
REFERENCES dbo.DimSeller(SellerKey)
GO

ALTER TABLE dbo.FactSales
ADD CONSTRAINT FK_FactSales_DimDate
FOREIGN KEY (OrderDateKey)
REFERENCES dbo.DimDate(DateKey)
GO





