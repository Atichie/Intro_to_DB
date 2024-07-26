CREATE DATABASE alx_book_store;
USE alx_book_store;
CREATE TABLE Books (
	book_id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(130),
	author_id INT,
	price DOUBLE NOT NULL,
	publication_date DATE,
	FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
CREATE TABLE Authors (
	author_id INT AUTO_INCREMENT PRIMARY KEY,
	author_name VARCHAR(215)
);
CREATE TABLE Customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
);
CREATE TABLE Orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details (
	order_detail_id INT AUTO_INCREMENT PRIMARY KEY.
	order_id INT,
	book_id INT,
	quantity DOUBLE NOT NULL,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	FOREIGN KEY (book_id) REFERENCES Books(book_id)
);



