-- task_5.sql
-- This SQL script is designed to insert a new row into the 'Customers' table in the database.
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
-- Uses ON DUPLICATE KEY UPDATE clause to handle duplicate primary keys
/* ON DUPLICATE KEY UPDATE
    customer_name = VALUES(customer_name),
    email = VALUES(email),
    address = VALUES(address);