Create database Blinkit;
use  blinkit;
-- 📦 Sales & Product Insights


-- Top-selling products
SELECT 
    p.product_name,
    p.product_id,
    SUM(o.quantity) AS total_quantity_sold
FROM 
    blinkit_order_items o
JOIN 
    blinkit_products p ON o.product_id = p.product_id
GROUP BY 
    p.product_name, p.product_id
ORDER BY 
    total_quantity_sold DESC
LIMIT 1;

-- Most popular categories
SELECT 
    p.category,
    SUM(o.quantity) AS total_quantity_sold
FROM 
    blinkit_order_items o
JOIN 
    blinkit_products p ON o.product_id = p.product_id
GROUP BY 
    p.category
ORDER BY 
    total_quantity_sold DESC
LIMIT 1;

-- Total revenue per product
select
p.product_name,
o.product_id,
sum(o.total_amount) as total_sales
from blinkit_order_items o 
join blinkit_products p on p.product_id = o.product_id
group by p.product_name, o.product_id
order by product_name asc;

-- Highest and lowest priced products
select product_name, product_id, brand, price
from blinkit_products
order by price asc limit 1;

select product_name, product_id, brand, price
from blinkit_products
order by price desc limit 1;

--  Total revenue per day
select order_date as date,
sum(order_total) as total_sales
from blinkit_orders
group by date 
order by date;


