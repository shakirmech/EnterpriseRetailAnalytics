USE EnterpriseRetailDW;
GO

CREATE TABLE stg.Products
(
	product_id VARCHAR(50) NOT NULL,
	product_category_name VARCHAR(50) NOT NULL,
	product_name_lenght INT,
	product_description_lenght INT,
	product_photos_qty INT,
	product_weight_g INT,
	product_length_cm INT,
	product_height_cm INT,
	product_width_cm INT 
);
GO