INSERT INTO Customers (
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
ON DUPLICATE KEY UPDATE
    customer_name = VALUES(customer_name),
    email = VALUES(email),
    address = VALUES(address);