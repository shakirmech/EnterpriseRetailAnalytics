# Source System Analysis

## Project

Enterprise Retail Analytics Platform

---

## Business Objective

Build an enterprise retail analytics solution using SQL Server and Power BI.

---

## Source System

Olist Brazilian E-Commerce Dataset

---

## Source Files

| File | Description | Primary Key | Notes |
|------|-------------|-------------|------|
| olist_orders_dataset.csv | | | |
| olist_order_items_dataset.csv | | | |
| olist_customers_dataset.csv | | | |
| olist_products_dataset.csv | | | |
| olist_order_payments_dataset.csv | | | |
| olist_order_reviews_dataset.csv | | | |
| olist_sellers_dataset.csv | | | |

| Source File | Candidate Primary Key | Likely Foreign Keys | Business Entity  | Dimension or Fact |
| ------------| --------------------- | ------------------- | ---------------- | ----------------- |
| olist_customers_dataset.csv | customer_unique_id | customer_id | Customers| Dimension|
| olist_geolocation_dataset.csv | geolocation_zip_code_prefix | geolocation_city | Location/city | Dimension |
| olist_order_items_dataset.csv| product_id | seller_id | Product Info | Fact |
| olist_order_payments_dataset.csv| order_id | payment_type | Customer Payment Methods | Fact |
| olist_order_reviews_dataset.csv| review_id | order_id | Customer Reviews | Dimension |
| olist_orders_dataset.csv| order_id | customer_id | Order Details such date and time | Dimension |
| olist_products_dataset.csv| product_id | product_category_name | Product details | Dimension |
| olist_sellers_dataset.csv| seller_id | seller_zip_code_prefix | Seller Info | Dimension |
| product_category_name_translation.csv| product_category_name | product_category_name_english |  Dimension |


## Data Quality Issues

To be analyzed.

---

## Business Questions

To be analyzed.
