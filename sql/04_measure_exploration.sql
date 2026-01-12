-- (a) find the total sales.
-- (b) how many items are sold?
-- (c) find the average selling price.
-- (d) find the total number of orders.
-- (e) find the total number of products.
-- (f) find the total number of customers.
-- (g) find the total number of customers that has placed an order.

SOLUTION:

-- (a) --

SELECT SUM(sales) AS total_sales FROM gold.fact_sales;

-- (b) --

SELECT SUM(quantity) AS total_item_solds FROM gold.fact_sales;

-- (c) --

SELECT AVG(price) AS avg_selling_price FROM gold.fact_sales;

-- (d) --

SELECT COUNT(*) AS total_orders FROM gold.fact_sales;
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales;

-- (e) --

SELECT  COUNT(DISTINCT product_key) AS total_products FROM gold.dim_products;

-- (f) --

SELECT  COUNT(DISTINCT customer_key) AS total_customers FROM gold.dim_customers;

-- (g) --

SELECT COUNT(DISTINCT customer_key) AS customer_placed_an_order FROM gold.fact_sales;

-- generate a report that shows all key metrics of the business

SELECT 'Total Sales' AS measure_name, SUM(sales) AS measure_value FROM gold.fact_sales
	UNION ALL
SELECT 'Total Item Sold' AS measure_name, SUM(quantity) AS measure_value FROM gold.fact_sales
	UNION ALL
SELECT 'avg_selling_price' AS measure_name, AVG(price) AS  measure_value FROM gold.fact_sales
	UNION ALL
SELECT 'total_orders' AS measure_name, COUNT(*) AS measure_value FROM gold.fact_sales
	UNION ALL
SELECT  'total_products' AS measure_name, COUNT(DISTINCT product_key) AS measure_value FROM gold.dim_products
	UNION ALL
SELECT  'total_customers' AS measure_name, COUNT(DISTINCT customer_key) AS measure_value FROM gold.dim_customers
	UNION ALL
SELECT 'customer_placed_an_order' AS measure_name, COUNT(DISTINCT customer_key) AS measure_value FROM gold.fact_sales;
