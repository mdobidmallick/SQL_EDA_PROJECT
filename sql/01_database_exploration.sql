-- explore all the objects in the database.

USE DataWarehouse

SELECT * FROM INFORMATION_SCHEMA.TABLES

-- explore columns of all tables or perticular table in the database.

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers'
