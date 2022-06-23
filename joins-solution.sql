-- creating new sql file

-- 1. Get all customers and their addresses.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;

-- 2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id;
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id JOIN products ON products.id = line_items.product_id;

-- 3. Which warehouses have cheetos?
SELECT * FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON warehouse_product.product_id = products.id WHERE products.description = 'cheetos';
