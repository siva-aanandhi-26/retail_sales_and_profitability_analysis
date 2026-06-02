CREATE DATABASE superstore_analysis;

use superstore_analysis;

CREATE TABLE superstore (
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INT,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,4),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,4)
);

select count(*) from superstore;

select max(sales) as max_sales,
min(sales) as min_sales from superstore;

select sum(profit) as total_profit from superstore;
select avg(sales) as avg_sales from superstore;

select category,
sum(sales) as revenue,
sum(profit) as total_profit
from superstore
group by category
order by revenue desc;


select sum(sales) as total_sales,
round(sum(profit),2) as total_profit,
round(sum(quantity),2) as total_quantity
from superstore;

select category,
sum(sales) as total_sales,
sum(profit) as total_profit
from superstore
group by category
order by total_sales desc;

select region,
sum(sales) as revenue,
sum(profit) as total_profit
from superstore
group by region
order by revenue desc;

select state,
round(sum(sales),2) as revenue
from superstore
group by state
order by revenue desc 
limit 10;

select city,
round(sum(sales),2) as revenue
from superstore
group by city
order by revenue desc 
limit 10;

select category,
round(sum(sales),2) as revenue
from superstore
group by category
order by revenue desc;

select category,
round(sum(sales),2) as revenue
from superstore
group by category
having revenue<0;

select region,
avg(profit) as avg_profit
from superstore
group by region
order by region desc;

SELECT
category,
ROUND(AVG(discount),2) AS avg_discount
FROM superstore
GROUP BY category;

SELECT
discount,
ROUND(AVG(profit),2) AS avg_profit
FROM superstore
GROUP BY discount
ORDER BY discount;

SELECT
category,
ROUND(AVG(discount),2) AS avg_discount,
ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY category;

SELECT
sub_category,
ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY total_profit DESC
LIMIT 10;

SELECT
sub_category,
ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY total_profit ASC
LIMIT 10;


SELECT
discount,
ROUND(AVG(profit),2) AS avg_profit
FROM superstore
GROUP BY discount
ORDER BY discount;

SELECT
state,
ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY state
ORDER BY total_profit ASC
LIMIT 10;

select sum(profit) from superstore;

select sum(quantity) from superstore;







