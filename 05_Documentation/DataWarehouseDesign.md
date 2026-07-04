# What is a Data Warehouse?
A Data Warehouse is:
        A database designed for reporting and analytics.

# Instead of dozens of normalized tables...
We build:
    FactSales

    DimCustomer
    DimProduct
    DimSeller
    DimDate
    DimLocation

Notice the names.
Everything starts with either:

    Fact
    or
    Dim

This naming convention is used in many organizations.

# Fact vs Dimension
Here's the easiest way to remember it.

Dimension
Answers:
        Who?
        What?
        Where?
        When?

Examples:
        Customer
        Product
        Seller
        Date
        Location

Dimensions describe business entities.

Fact
Answers:
        How much?
        How many?
        How often?

Examples:
        Sales
        Profit
        Quantity
        Revenue
        Discount

Facts store measurements.

1. Fact Table
Name: FactSales
Grain: One product in one order
Measures:
    SalesAmount
    Quantity
    FreightValue
2. Dimension Tables
    DimCustomer
    DimProduct
    DimSeller
    DimDate

# Why do we use surrogate keys in a data warehouse?
Surrogate keys are system-generated integer keys used in dimension tables. They improve join performance, support Slowly Changing Dimensions (especially Type 2), and allow the warehouse to maintain historical versions of business entities even when natural keys remain the same.

# What is Slowly Changing Dimensions
