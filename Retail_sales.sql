SELECT *FROM retail_sales;

-- discount
select * from retail_sales
where discount >0.2;

-- check negative quantity
select * from retail_sales
where quantity<=0;

-- top customers
select customer_name, sum(sales) as total_spent
from retail_sales
group by customer_name
order by total_spent desc limit 10;

-- monthly trend 
select extract(month from order_date) as months, sum(sales) as revenue
from retail_sales
group by extract(month from order_date) 
order by months;

-- monthly trend 
select month by(order_date) as months, sum(sales) as revenue
from retail_sales;

-- monthly trend 
select month(order_date) as months, sum(sales) as revenue
from retail_sales
group by month(order_date)
order by revenue desc;

-- top 10 products
SELECT Product_Category, SUM(Sales) AS Revenue
FROM retail_sales
GROUP BY Product_Category
ORDER BY Revenue DESC;

-- top 10 products
select product_name, sum(sales) as total
from retail_sales 
group by product_name
order by total desc limit 10;

