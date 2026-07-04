USE EnterpriseRetailDW;
GO

CREATE TABLE stg.Payments
(
	order_id VARCHAR(50),
	payment_sequential INT,
	payment_type VARCHAR(50),
	payment_installments INT,
	payment_value DECIMAL(10, 2)
);
GO