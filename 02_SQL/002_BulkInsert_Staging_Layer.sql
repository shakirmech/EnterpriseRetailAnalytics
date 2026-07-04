USE EnterpriseRetailDW;
GO

BULK INSERT stg.Customers
FROM 'F:\SQLData\Olist\olist_customers_dataset.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    TABLOCK
);

BULK INSERT stg.CategoryTranslation
FROM 'F:\SQLData\Olist\product_category_name_translation.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    TABLOCK
);

BULK INSERT stg.Geolocation
FROM 'F:\SQLData\Olist\olist_geolocation_dataset.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    TABLOCK
)

BULK INSERT stg.Orderitems
FROM 'F:\SQLData\Olist\olist_order_items_dataset.csv'
WITH
(
    FORMAT = 'csv',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    TABLOCK
)

BULK INSERT stg.Orders
FROM 'F:\SQLData\Olist\olist_orders_dataset.csv'
WITH
(
    FORMAT = 'csv',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    TABLOCK
)

BULK INSERT stg.Payments
FROM 'F:\SQLData\Olist\olist_order_payments_dataset.csv'
WITH
(
    FORMAT = 'csv',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    TABLOCK
)

BULK INSERT stg.Products
FROM 'F:\SQLData\Olist\olist_products_dataset.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    TABLOCK
)

BULK INSERT stg.Sellers
FROM 'F:\SQLData\Olist\olist_sellers_dataset.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    TABLOCK
)


