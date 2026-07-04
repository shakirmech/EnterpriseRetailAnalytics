USE EnterpriseRetailDW;
GO

CREATE TABLE stg.Sellers
(
	seller_id VARCHAR(50) NOT NULL,
	seller_zip_code_prefix INT,
	seller_city VARCHAR(100),
	seller_state CHAR(2)
);
GO