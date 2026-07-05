SELECT TOP (100)

    o.order_id,

    dc.CustomerKey,

    dp.ProductKey,

    ds.SellerKey,

    dd.DateKey AS OrderDateKey,

    1 AS Quantity,

    oi.price AS UnitPrice,

    oi.freight_value AS FreightValue,

    oi.price * 1 AS SalesAmount

FROM stg.Orders o

INNER JOIN stg.OrderItems oi
    ON o.order_id = oi.order_id

INNER JOIN dbo.DimCustomer dc
    ON o.customer_id = dc.CustomerID

INNER JOIN dbo.DimProduct dp
    ON oi.product_id = dp.ProductID

INNER JOIN dbo.DimSeller ds
    ON oi.seller_id = ds.SellerID

INNER JOIN dbo.DimDate dd
    ON CAST(o.order_purchase_timestamp AS DATE) = dd.FullDate;

SELECT COUNT(*)
FROM stg.OrderItems;

SELECT COUNT(*)
FROM
(
    SELECT

        o.order_id

    FROM stg.Orders o

    INNER JOIN stg.OrderItems oi
        ON o.order_id = oi.order_id



    INNER JOIN dbo.DimCustomer dc
        ON o.customer_id = dc.CustomerID

    INNER JOIN dbo.DimProduct dp
        ON oi.product_id = dp.ProductID

    INNER JOIN dbo.DimSeller ds
        ON oi.seller_id = ds.SellerID

    INNER JOIN dbo.DimDate dd
        ON CAST(o.order_purchase_timestamp AS DATE) = dd.FullDate
) X;

INSERT INTO dbo.FactSales
(
    OrderID,
    CustomerKey,
    ProductKey,
    SellerKey,
    OrderDateKey,
    Quantity,
    UnitPrice,
    FreightValue,
    SalesAmount
)
SELECT

    o.order_id,

    dc.CustomerKey,

    dp.ProductKey,

    ds.SellerKey,

    dd.DateKey,

    1,

    oi.price,

    oi.freight_value,

    oi.price

FROM stg.Orders o

INNER JOIN stg.OrderItems oi
    ON o.order_id = oi.order_id

INNER JOIN dbo.DimCustomer dc
    ON o.customer_id = dc.CustomerID

INNER JOIN dbo.DimProduct dp
    ON oi.product_id = dp.ProductID

INNER JOIN dbo.DimSeller ds
    ON oi.seller_id = ds.SellerID

INNER JOIN dbo.DimDate dd
    ON CAST(o.order_purchase_timestamp AS DATE) = dd.FullDate;

SELECT COUNT(*) AS FactSalesRows
FROM dbo.FactSales;

SELECT TOP (10) *
FROM dbo.FactSales;