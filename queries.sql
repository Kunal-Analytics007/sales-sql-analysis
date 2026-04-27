-- Sales Data Analysis using SQL

-- Create Table
CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    region VARCHAR(50),
    category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    revenue FLOAT,
    profit FLOAT
);

-- Total Revenue
SELECT SUM(revenue) AS total_revenue FROM sales;

-- Top 5 Products
SELECT product_name, SUM(revenue) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

-- Region-wise Sales
SELECT region, SUM(revenue) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month, SUM(revenue) AS total_revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Profit by Category
SELECT category, SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

-- Top Region by Profit
SELECT region, SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_profit DESC
LIMIT 1;