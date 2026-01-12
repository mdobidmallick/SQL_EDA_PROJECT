-- find the date for the first and last order. How many years of sales data?

SELECT 
	MIN(order_date) AS first_order_date,
	MAX(order_date) AS last_order_date,
	DATEDIFF(year, MIN(order_date), MAX(order_date)) AS timespan_in_years,
	DATEDIFF(month, MIN(order_date), MAX(order_date)) AS timespan_in_months
FROM gold.fact_sales;

-- find the youngest and oldest customers

SELECT
	MIN(birth_date) AS oldest_cx,
	DATEDIFF(year, MIN(birth_date), GETDATE()) AS oldest_cx_age,
	MAX(birth_date) AS youngest_cx,
	DATEDIFF(year, MAX(birth_date), GETDATE()) AS youngest_cx_age
FROM gold.dim_customers;
