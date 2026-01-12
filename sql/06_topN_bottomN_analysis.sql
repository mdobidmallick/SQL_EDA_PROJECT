-- (a) which 5 products generate the highest revenue?

SELECT TOP 5
	p.product_name,
	SUM(s.sales) AS revenue
FROM gold.fact_sales AS s
LEFT JOIN gold.dim_products AS p
ON s.product_key = p.product_key
GROUP BY p.product_name
ORDER BY revenue DESC;

-- using window fucntion & subquery:

SELECT
	*
FROM
(SELECT
	p.product_name,
	SUM(s.sales) AS revenue,
	RANK() OVER(ORDER BY SUM(s.sales) DESC) AS rnk
FROM gold.fact_sales AS s
LEFT JOIN gold.dim_products AS p
ON s.product_key = p.product_key
GROUP BY p.product_name) AS t
WHERE rnk<=5;


-- (b) what are the 5 worst-performing products in terms of sales?

SELECT TOP 5
	p.product_name,
	SUM(s.sales) AS revenue
FROM gold.fact_sales AS s
LEFT JOIN gold.dim_products AS p
ON s.product_key = p.product_key
GROUP BY p.product_name
ORDER BY revenue ASC;

-- (c) find the top 10 customers who have generated the highest revenue

SELECT TOP 10
	c.customer_key,
	c.first_name,
	c.last_name,
	SUM(s.sales) AS total_revenue
FROM gold.fact_sales AS s
LEFT JOIN gold.dim_customers AS c
ON c.customer_key = s.customer_key
GROUP BY c.customer_key,c.first_name, c.last_name
ORDER BY total_revenue DESC;
