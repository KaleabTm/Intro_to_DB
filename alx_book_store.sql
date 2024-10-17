-- create a database
CREATE DATABASE alx_book_store;

-- Use the newly created database
USE alx_book_store;

-- create a BookS table
CREATE TABLE Books(
    booko_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE(),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
)

-- Create Authors Table
CREATE TABLE Authors(
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(215)
)



-- Create Customers Table
CREATE TABLE Customers(

customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT NOT NULL
 )


-- Create Orders Table
CREATE TABLE Orders(

order_id P INT AUTO_INCREMENT RIMARY KEY,
customer_id INT,
order_date DATE,
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)

)

-- Create Order_Details Table
Order_Details(

orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
book_id INT,
quantity DOUBLE NOT NULL,
FOREIGN KEY(order_id) REFERENCES Orders(order_id)
FOREIGN KEY(book_id) REFERENCES Books(book_id)
)