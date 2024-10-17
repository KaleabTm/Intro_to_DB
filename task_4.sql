-- Use the specified database
USE alx_book_store;

-- Get the full description of the books table
SELECT  * FROM information_schema.COLUMNS WHERE TABLE_NAME = 'books' AND TABLE_SCHEMA = 'alx_book_store';