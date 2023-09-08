-- Average Order Value --
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) 
AS Avg_order_Value 
FROM pizza_sales

-- Result 37.27 --