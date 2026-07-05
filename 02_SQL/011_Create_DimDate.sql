USE EnterpriseRetailDW;
GO

IF OBJECT_ID('dbo.DimDate', 'U') IS NOT NULL
    DROP TABLE dbo.DimDate;
GO

CREATE TABLE dbo.DimDate
(
    DateKey INT NOT NULL,
        CONSTRAINT PK_DimDate
        PRIMARY KEY (DateKey),
    FullDate DATE NOT NULL,
    DayNumber TINYINT NOT NULL,
    MonthNumber  TINYINT NOT NULL,
    MonthName VARCHAR(20) NOT NULL,
    QuarterNumber TINYINT NOT NULL,
    YearNumber SMALLINT NOT NULL,
    WeekNumber TINYINT NOT NULL,
    DayName VARCHAR(20) NOT NULL,
    IsWeekend BIT NOT NULL
);
GO