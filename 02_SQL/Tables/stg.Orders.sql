USE EnterpriseRetailDW;
GO

CREATE TABLE stg.Orders
(
	order_id VARCHAR(50) NOT NULL,
	customer_id VARCHAR(50) NOT NULL,
	order_status VARCHAR(20),
	order_purchase_timestamp DATETIME,
	order_approved_at DATETIME,
	order_delivered_carrier_date DATETIME,
	order_delivered_customer_date DATETIME,
	order_estimated_delivery_date DATETIME
)
GO