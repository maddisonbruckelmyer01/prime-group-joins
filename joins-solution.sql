-- 1: get all customers and there addresses 
SELECT * FROM "addresses"
JOIN "customers" ON "customers".id = "addresses".customer_id;

--2: Get all orders and their line items (orders, quantity and product)
SELECT * FROM "line_items" 
JOIN "orders" ON "orders".id = "line_items".order_id;

-- 3:  Which warehouses have cheetos?
SELECT "products".description, "warehouse_product".warehouse_id
FROM "products" JOIN "warehouse_product"
ON "products".id = "warehouse_product".product_id
WHERE "warehouse_product".product_id = 5;

-- 4: which warehouses have diet pepsi?
SELECT "products"."description", "warehouse_product"."warehouse_id"
FROM "products" JOIN "warehouse_product"
ON "products"."id" = "warehouse_product"."product_id"
WHERE "warehouse_product".product_id = 6;

--5: Get the number of orders for each customer
SELECT "addresses".customer_id, count("orders".address_id) FROM "addresses"
JOIN "orders"
ON "addresses".customer_id = "orders".address_id
GROUP BY "addresses".customer_id

--6: How many customers do we have?
SELECT count(*) from "customers"

--7: How many products do we carry?
SELECT count(*) from "products"

--8:What is the total available on-hand quantity of diet pepsi? 
SELECT sum("on_hand") FROM "warehouse_product" 
WHERE "product_id" = 6;
