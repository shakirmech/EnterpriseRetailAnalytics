USE EnterpriseRetailDW;
GO

CREATE TABLE stg.Orderitems
(
	order_id VARCHAR(50) NOT NULL,
	order_item_id INT NOT NULL,
	product_id VARCHAR(50),
	seller_id VARCHAR(50),
	shipping_limit_date DATETIME,
	price DECIMAL(10, 2),
	freight_value DECIMAL(10,2)
)
GO