-- Hourly Trend for Total Pizzas Sold

SELECT DATE_FORMAT(order_time, '%H:00') AS hour,
       SUM(quantity) AS total_orders
FROM pizza_sales
GROUP BY hour
ORDER BY hour;

-- Weekly Trend for Order s
SELECT 
    WEEK(order_date, 3) AS WeekNumber,
    YEAR(order_date) AS Year,
    COUNT(DISTINCT order_id) AS Total_orders
FROM 
    pizza_sales
GROUP BY 
    WeekNumber,
    Year
ORDER BY 
    Year, WeekNumber;

