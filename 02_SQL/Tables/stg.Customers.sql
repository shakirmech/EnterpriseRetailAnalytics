USE EnterpriseRetailDW;
GO

CREATE TABLE stg.Customers
(
customer_id nvarchar(50) NOT NULL,
customer_unique_id nvarchar(50) NOT NULL,
customer_zip_code_prefix INT,
customer_city nvarchar(100),
customer_state nvarchar(2)
)
GO