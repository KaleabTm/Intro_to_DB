-- Use the specified database
USE alx_book_store;

-- Get the full description of the books table
SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH AS MAX_LENGTH,
    IS_NULLABLE,
    COLUMN_DEFAULT,
    COLUMN_TYPE,
    EXTRA
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'Books' 
    AND TABLE_SCHEMA = 'alx_book_store';