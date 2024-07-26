CREATE TABLE IF NOT EXISTS books (
	book_id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(130) NOT NULL,
	authir_id INT NOT NULL,
	price DOUBLE NOT NULL,
	publication_date DATE,
	FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
CREATE TABLE IF NOT EXISTS authors (
	author_id INT AUTO_INCREMEBT PRIMARY KEY,
	author_name VARCHAR(215) NOT NULL
);
CREATE TABLE IF NOT EXISTS customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_name VARCHAR(215) NOT NULL,
	email VARCHAR(215) NOT NULL UNIQUE,
	address TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT NOT NULL,
	order_date DATE NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE IF NOT EXISTS order_details (
	order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
	order_id NOT NULL,
	book_id NOT NULL,
	quantity DOUBLE NOT NULL,
	FOREIGN KEY (order_id) REFERENCES orders(order_id)
	FOREIGN KEY (book_id) REFERENCES books(book_id)
);