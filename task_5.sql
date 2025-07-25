-- task_5.sql
-- This SQL script is designed to create a 'customer' table and
-- insert a new customer into the table.
-- The table will have fields for customer_id, customer_name, email, and address.

CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(255)
);
-- Inserts a new customer into the 'customer' table
-- The customer_id is set to 1, and the other fields are filled with sample data
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
ON CONFLICT (customer_id) DO NOTHING;