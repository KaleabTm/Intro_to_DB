-- create a database
CREATE DATABASE alx_book_store;

-- create a tables
CREATE TABLE Books(
    booko_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130),
    author_id FOREIGN KEY,
    price DOUBLE(),
    publication_date DATE()
)

CREATE TABLE Authors(
author_id PRIMARY KEY,
author_name VARCHAR(215)
)


CREATE TABLE Customers(

customer_id PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT()
 )


CREATE TABLE Orders(

order_id PRIMARY KEY,
customer_id FOREIGN KEY,
order_date DATE

)


Order_Details(

orderdetailid PRIMARY KEY,
order_id FOREIGN KEY,
book_id FOREIGN KEY,
quantity DOUBLE()
)