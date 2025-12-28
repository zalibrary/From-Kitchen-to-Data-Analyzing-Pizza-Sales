## From Kitchen to Data Analyzing Pizza Sales🍕
This analysis was conducted to understand overall pizza sales performance based on available transaction data. The analysis focuses on measuring key performance indicators, sales patterns based on time, and product contributions to total sales.

## About Data

| Column                  | Description                                                  | Data Type      |
| :---------------------- | :----------------------------------------------------------- | :------------- |
| pizza_id                | Unique identifier for each pizza item sold in a transaction  | int            |
| order_id                | Identifier for each customer order                           | int            |
| pizza_name_id           | Code or ID representing the pizza name                       | text           |
| quantity                | Number of pizza items ordered in a single transaction        | int            |
| order_date              | Date when the order was placed                               | text           |
| order_time              | Time when the order was placed                               | text           |
| unit_price              | Price of a single pizza unit                                 | double         |
| total_price             | Total price of the order line (unit price × quantity)        | double         |
| pizza_size              | Size of the pizza ordered (e.g., S, M, L, XL)                | text           |
| pizza_category          | Category of the pizza (e.g., Classic, Veggie, Supreme)       | text           | 
| pizza_ingredients       | List of ingredients used in the pizza                        | text           |
| pizza_name              | Full name of the pizza product                               | text           |

## A.Key Performance Indicators (KPIs)📊 
>KPI analysis is conducted to measure overall business performance, including:
- Total Revenue
- Average Order Value
- Total Pizzas Sold
- Total Orders
- Average Pizzas per Order
>These indicators are used to provide a concise overview of sales levels, average transaction values, and customer purchase volumes.

## B.Daily Trend for Total Orders
> Daily trend analysis is conducted to identify patterns in the number of orders each day.
> The results of this analysis help to understand the days with the highest and lowest demand levels, which can then be used for operational planning and promotions.

## C.Hourly Trend for Orders⏰
>Trend analysis based on hours was conducted to determine peak ordering times. 
>This information is useful for optimizing operational schedules, staff availability, and service management during busy hours.

## D. Percentage of Sales by Pizza Category
>This analysis aims to determine the contribution of each pizza category to total sales. 
>By comparing the sales percentage of each category, it is possible to identify the categories that are most popular with customers.

## E. Percentage of Sales by Pizza Size
>An analysis of sales percentages based on pizza size was conducted to understand customer preferences regarding product size. 
>The results can be used as a basis for determining stock and pricing strategies.

## F. Total Pizzas Sold by Pizza Category 💰
>This analysis measures the number of pizzas sold in each product category.
>The goal is to compare sales volumes between categories and identify the categories with the highest sales performance.

## G. Top 5 Best Sellers by Total Pizzas Sold 🔝
>The Top 5 Best Sellers analysis is conducted to identify pizza products with the highest sales.
>This information is useful to support marketing, promotion, and flagship product development strategies.

## H. Bottom 5 Best Sellers by Total Pizzas Sold🔻
>The Bottom 5 Best Sellers analysis is conducted to identify products with the lowest sales performance.
>The results of this analysis can be used as evaluation material in decision making related to product improvement, promotion, or menu rationalization.


## NOTE 📝
>All queries in this project are written using MySQL syntax.
>Time-based filtering is applied through MySQL date functions such as MONTH(), QUARTER(), DAYNAME(), and HOUR() within the WHERE clause to analyze monthly, quarterly, daily, and hourly sales trends.

## DASHBOARD

