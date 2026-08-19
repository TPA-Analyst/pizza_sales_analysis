select * from pizza_sales

-- KPI
select sum(total_price) as Total_revenue from pizza_sales

select sum(total_price) / count(distinct order_id) as Avg_order_value
from pizza_sales

select sum(quantity) as Total_pizza_solds from pizza_sales

select count(distinct order_id) as Total_orders from pizza_sales

select cast(cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2))
as Avg_pizza_per_order
from pizza_sales

-- Daily Trend for Total Orders
select datename(dw, order_date) as order_days, count(distinct order_id) as Total_orders
from pizza_sales
where MONTH(order_date) = 1
group by datename(dw, order_date)

--Hourly trend for Orders
select datepart(hour, order_time) as orders_hours, count(distinct order_id) as Total_orders
from pizza_sales
group by datepart(hour, order_time)
order by datepart(hour, order_time)

-- % of sales by pizza category
select pizza_category, cast(sum(total_price) as decimal(10,2)) as Total_sales,
cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) as percent_sales
from pizza_sales
-- where datepart(quarter, order_date) = 1
group by pizza_category
order by percent_sales

-- % of sales by pizza size
select pizza_size, cast(sum(total_price) as decimal(10,2)) as Total_sales,
cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) as percent_sale
from pizza_sales
-- where datepart(quarter, order_date) = 3
group by pizza_size
order by pizza_size

-- Total Pizza sold by pizza category
select pizza_category, sum(quantity) as total_pizza_sold
from pizza_sales
where month(order_date) = 2
group by pizza_category
order by total_pizza_sold

-- Top 5 Best sellers by Total pizzas sold
select top 5 pizza_name, sum(quantity) as total_pizza_sold
from pizza_sales
-- where month(order_date) = 1
group by pizza_name
order by total_pizza_sold desc

-- Top 5 Worst sellers by Total pizzas sold
select top 5 pizza_name, sum(quantity) as total_pizza_sold
from pizza_sales
-- where month(order_date) = 1
group by pizza_name
order by total_pizza_sold asc