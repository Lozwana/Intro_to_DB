-- Create tables for alx_book_store database
USE alx_book_store;

-- Create Authors table if not already exists
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

-- Create Customers table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

-- Create Books table (references Authors)
CREATE TABLE IF NOT EXISTS Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create Orders table (references Customers)
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Order_Details table (references Orders and Books)
CREATE TABLE IF NOT EXISTS Order_Details (
    order_details INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);