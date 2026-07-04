USE EnterpriseRetailDW;
GO

EXEC sp_help 'dbo.Dimproduct'
EXEC sp_help 'stg.Products'

INSERT INTO dbo.Dimproduct
(
	productID,
	productcategory,
	productNameLength,
	productDescriptionLength,
	productPhotos,
	productWeight,
	productLength,
	productHeight,
	productWidth
)
SELECT
	p.product_id,
	COALESCE
	(
		p.product_category_name,
		t.product_category_name_english
	) AS productCategory,
	p.product_name_lenght,
	p.product_description_lenght,
	p.product_photos_qty,
	p.product_weight_g,
	p.product_length_cm,
	p.product_height_cm,
	p.product_width_cm
FROM stg.Products p

LEFT JOIN stg.CategoryTranslation t
ON p.product_category_name = t.product_category_name
GO

SELECT TOP(20)* FROM dbo.Dimproduct

SELECT COUNT(*) AS product FROM stg.Products
SELECT COUNT(*) AS DimProducts FROM dbo.Dimproduct

SELECT COUNT(*) AS MissingTranslation
From stg.Products p
LEFT JOIN stg.CategoryTranslation t 
ON p.product_category_name = t.product_category_name
WHERE t.product_category_name_english IS NULL
