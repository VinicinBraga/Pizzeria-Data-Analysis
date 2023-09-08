-- Average Pizzas Per Order --

SELECT CAST(AVG(total_quantity)AS DECIMAL(10,2)) AS average_pizzas_per_order
FROM (
  SELECT order_id, SUM(quantity) AS total_quantity
  FROM pizza_sales
  GROUP BY order_id
) AS order_totals;

-- Result: 2.32 -- 