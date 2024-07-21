INSERT INTO retail.sales (Store_no, Sale_date, Quantity_sold, Customer)
VALUES
    (1, '2024-06-01', 5, 1001),
    (1, '2024-06-02', 3, 1102),
    (2, '2024-06-01', 8, 1003),
    (3, '2024-06-02', 2, 1004),
    (2, '2024-06-03', 6, 1005),
    (1, '2024-06-04', 4, 1006),
    (3, '2024-06-05', 7, 1105),
    (2, '2024-06-06', 3, 1004),
    (1, '2024-06-07', 9, 1101),
    (3, '2024-06-08', 5, 1102),
    (2, '2024-06-09', 3, 1102),
    (1, '2024-06-10', 6, 1102),
    (3, '2024-06-11', 4, 1103),
    (2, '2024-06-12', 7, 1104),
    (1, '2024-06-13', 2, 1105);
    
INSERT INTO retail.customers (customer_id, Name, phone_number, address)
VALUES
    (1001, 'Ram Pandey', '123-456-7890', 'Delhi'),
    (1102, 'Aasha Mishra', '987-654-3210', 'Mumbai'),
    (1003, 'Anmol Sahu', NULL, 'Pune'),
    (1004, 'Bhavesh Solanki', '555-123-4567', 'Indore'),
    (1005, 'Radha Patidar', '444-555-6666', NULL),
    (1101, 'Mohan Pandey', '111-222-3333', 'Delhi'),
    (1103, 'Kratika Sharma', '888-999-0000', 'Pune'),
    (1104, 'Yashraj Kohil', NULL, 'Bhopal'),
    (1105, 'Sandeep Chouhan', '777-888-9999', 'Pune');
    
INSERT INTO retail.store_details (store_id, location, manager_name, contact_number)
VALUES
    (1, 'Indore', 'Shivam Sharma', '555-123-4567'),
    (2, 'Pune', 'Amrita Sahu', '987-654-3210'),
    (3, 'Delhi', 'Vishal Yadav', '111-222-3333');


