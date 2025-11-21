SELECT * FROM blinkit.blinkit_order_items;
ALTER TABLE blinkit_order_items
ADD total_amount DECIMAL(10, 2);

UPDATE blinkit_order_items
SET total_amount = unit_price * quantity;
