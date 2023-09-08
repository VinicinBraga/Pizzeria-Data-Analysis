-- Top 5 Pizzas by Total Orders
SELECT pizza_name, COUNT(distinct order_id) AS Total_ORders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_ORders DESC
LIMIT 5;