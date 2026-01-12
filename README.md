# SQL EDA Project – Data Warehouse (Gold Layer)

##  Project Overview
This project focuses on **Exploratory Data Analysis (EDA)** using **SQL Server** on the **Gold layer** of a Data Warehouse.  
The objective is to understand business data by analyzing **dimensions, measures, trends, and rankings** using structured SQL queries.

## Dataset Description
The analysis is performed on curated **Gold layer tables**, including:

- `gold.fact_sales`
- `gold.dim_customers`
- `gold.dim_products`

## EDA Techniques Used

- Basic SQL queries
- Data profiling
- Aggregations
- Subqueries
- Joins
- Window functions

## Key Analysis Performed

### Database Exploration:
- Explored all tables and columns using `INFORMATION_SCHEMA`
- Understood schema structure and data availability

### Dimension Exploration:
- Customer distribution by country
- Product categories, subcategories, and product names

### Date Exploration:
- Sales data time span (years & months)
- Youngest and oldest customers

### Measure Exploration (KPIs):
- Total sales
- Total items sold
- Average selling price
- Total orders
- Total products
- Total customers
- Customers who placed at least one order

### Magnitude Analysis:
- Customers by country and gender
- Products by category
- Average product cost by category
- Revenue by category and customer

### Ranking Analysis (TOP N & BOTTOM N):
- Top 5 revenue-generating products
- Bottom 5 products by sales
- Top 10 customers by revenue
- Ranking using window functions

