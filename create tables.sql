CREATE TABLE retail.sales (
    Store_no INTEGER NOT NULL,
    Sale_date DATE NOT NULL,
    Quantity_sold INTEGER,
    Customer INTEGER
);
CREATE TABLE retail.customers (
    customer_id INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    address VARCHAR(255)
);
CREATE TABLE retail.store_details (
    store_id INTEGER PRIMARY KEY NOT NULL,
    location VARCHAR(255),
    manager_name VARCHAR(100),
    contact_number VARCHAR(20)
);






 