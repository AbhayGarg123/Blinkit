SELECT * FROM blinkit.blinkit_orders;
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE blinkit_orders
ADD orders_date date;

UPDATE blinkit_orders
SET order_date = DATE(order_date); -- update the old date column in the formate of YYYY-MM-DD

--  create new column of date 
SELECT 
    old_datetime_column,
    DATE(old_datetime_column) AS only_date
FROM your_table_name;                 

ALTER TABLE blinkit_orders
DROP COLUMN orders_date;