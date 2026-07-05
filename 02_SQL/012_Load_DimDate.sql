DECLARE @StartDate DATE
DECLARE @EndDate DATE

SELECT
    @StartDate = MIN(DateValue),
    @EndDate = MAX(DateValue)

FROM
(
    SELECT CAST(order_purchase_timestamp AS DATE) AS DateValue
    FROM stg.orders

    UNION ALL

    SELECT CAST(order_approved_at AS DATE)
    FROM stg.orders

    UNION ALL

    SELECT CAST(order_delivered_carrier_date AS DATE)
    FROM stg.orders

    UNION ALL

    SELECT CAST(order_delivered_customer_date AS DATE)
    FROM stg.orders
    
    UNION ALL

    SELECT CAST(order_estimated_delivery_date AS DATE)
    FROM stg.orders
) AllDates;

SET @EndDate = DateADD(YEAR, 2, @EndDate)

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO dbo.DimDate
    (
        DateKey,
        FullDate,
        DayNumber,
        MonthNumber,
        MonthName,
        QuarterNumber,
        YearNumber,
        WeekNumber,
        DayName,
        IsWeekend
    )
    VALUES
    (
        CONVERT(INT, FORMAT(@StartDate,'yyyyMMdd')),
        @StartDate,
        DAY(@StartDate),
        MONTH(@StartDate),
        DATENAME(MONTH, @StartDate),
        DATEPART(QUARTER, @StartDate),
        YEAR(@StartDate),
        DATEPART(WEEK, @StartDate),
        DATENAME(WEEKDAY, @StartDate),

        CASE 
            WHEN DATENAME(WEEKDAY, @StartDate)
                IN ('Saturday', 'Sunday')
            THEN 1
            ELSE 0
        END
     )
    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END
GO
        

SELECT TOP(20)* FROM dbo.DimDate

SELECT COUNT(*) AS TotalDays FROM dbo.DimDate

SELECT
    MonthName,
    COUNT(*) AS DaysInMonth
FROM dbo.DimDate
GROUP BY MonthName
ORDER BY MIN(MonthNumber);
