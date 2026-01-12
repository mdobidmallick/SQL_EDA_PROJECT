-- Explore all countries our customers come from.

SELECT 
	DISTINCT country 
FROM gold.dim_customers;

-- explore categories, subcategories our products come from. Also, products.

SELECT
	DISTINCT category
FROM gold.dim_products;

SELECT
	DISTINCT category,
	subcategory,
	product_name
FROM gold.dim_products
ORDER BY 1, 2, 3;
