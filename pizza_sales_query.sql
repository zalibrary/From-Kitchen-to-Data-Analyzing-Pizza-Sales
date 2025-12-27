SELECT * FROM pizza_sales;

---- KPI ---
#Total Revenue 
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;

#Average order values
SELECT (SUM(total_price) / COUNT(distinct order_id)) AS Avg_order_value
FROM pizza_sales;

#Total pizza sold
SELECT SUM(quantity) AS Total_pizza_sold 
FROM pizza_sales;

#Total order
SELECT COUNT(DISTINCT order_id) AS Total_orders FROM pizza_sales;

#Average pizza per Order
SELECT cast(cast(sum(quantity) AS DECIMAL (10,2)) / cast(count(distinct order_id) AS DECIMAL (10,2)) AS DECIMAL (10,2)) AS avg_pizza_peroder
FROM pizza_sales;

--- DAILY TREND FOR ORDERS ---
SELECT 
  DAYNAME(order_date) AS order_day,
  COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DAYNAME(order_date)
LIMIT 50000;

--- Hourly Trend for Orders ---
SELECT
HOUR(order_time) AS order_hours, 
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY order_hours
ORDER BY order_hours;

--- % of Sales by Pizza Category ---
SELECT pizza_category, 
CAST(SUM(total_price) AS DECIMAL (10,2)) AS total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category

--- % of Sales by Pizza Size ---
SELECT pizza_size, 
CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL (10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size;

--- Total Pizzas Sold by Pizza Category ---
SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC

---Top 5 Best Sellers by Total Pizzas Sold ----
SELECT pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
pizza_sales
--- Bottom 5 Best Sellers by Total Pizzas ----
SELECT pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC


