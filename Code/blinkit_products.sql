SELECT * FROM blinkit.blinkit_products;
UPDATE blinkit_products
SET profit = (margin_percentage / 100.0) * price;

-- To create a new column
ALTER TABLE blinkit_products
ADD profit DECIMAL(10, 2);

-- Delet the column
ALTER TABLE blinkit_products
DROP COLUMN orders_date;

SET SQL_SAFE_UPDATES = 0;
