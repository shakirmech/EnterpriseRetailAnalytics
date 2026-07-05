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

SET @EndDate = DateADD(Year, 2, @EndDate)

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO dbo.DimDate
    (
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
        @StartDate,
        DAY(@StartDate),
        MONTH(@StartDate),
        DATENAME(MONTH, @StartDate),
        DATEPART(QUARTER, @StartDate),
        YEAR(@StateDate),
        DATEPART(WEEK, @StartDate),
        DATENAME(WEEKDAY, @StartDate)

        CASE 
            WHEN DATENAME(WEEKDAY, @StartDate)
                IN ('Saturday', 'Sunday')
            THEN 1
            ELSE 0
        END
    )
    SET @StartDate = DATEADD(DAY, 1, @StartDate)
END
GO
        

