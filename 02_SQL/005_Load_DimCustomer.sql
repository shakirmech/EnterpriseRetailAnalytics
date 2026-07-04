USE EnterpriseRetailDW;
GO

INSERT INTO Dimcustomer
(
	CustomerID,
	CustomerUniqueID,
	CustomerzipCode,
	CustomerCity,
	CustomerState
)
SELECT
	customer_id,
	customer_unique_id,
	Customer_zip_code_prefix,
	Customer_city,
	customer_state

FROM stg.customers;
GO

select top(10)* from Dimcustomer

SELECT COUNT(*) AS StagingCustomers
FROM stg.Customers

SELECT COUNT(*) AS DimensionCustomers
FROM dbo.DimCustomer
GO

SELECT 
	MIN(CustomerKey) as FirstKey,
	MAX(CustomerKey) AS LastKey
FROM dbo.Dimcustomer;
GO