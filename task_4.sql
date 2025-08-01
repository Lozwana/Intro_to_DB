-- task_4.sql   
-- This SQL script is designed to provide a full description of the 'books' table in the database.
SELECT 
    COLUMN_NAME AS 'Field',
    COLUMN_TYPE AS 'Type',
    IS_NULLABLE AS 'Null',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS 

WHERE TABLE_NAME = 'Books'
AND TABLE_SCHEMA = 'alx_book_store';