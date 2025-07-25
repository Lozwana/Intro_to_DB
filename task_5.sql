-- task_5.sql
-- This SQL script inserts a new customer into the 'customer' table.
INSERT INTO customer (
    customer_id,
    customer_name,
    email,
    address
)

VALUES (
    1,
    'Cole Baidoo',
    'cbaidoo@sandtech.com',
    '123 Happiness Ave.'
)


ON DUPLICATE KEY UPDATE
    customer_name = VALUES(customer_name),
    email = VALUES(email),
    address = VALUES(address);