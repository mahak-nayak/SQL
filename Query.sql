-- 1. What are the details (name, phone number, address) of customers who have made purchases?
SELECT 
    name, Phone_number, address
FROM
    retail.customers;
-- 2. Find all customers who have made sales from a specific store
SELECT 
	distinct(customer)
FROM
    retail.sales
where Store_no = '2'; 
-- 3. Which stores have made max sales and what are their locations?
SELECT 
    SUM(Quantity_sold) AS max_sales, location
FROM
    retail.sales AS s
        INNER JOIN
    retail.store_details AS sd ON s.store_no = sd.store_id
GROUP BY sd.store_id
ORDER BY max_sales DESC;
-- 4. Identify customers with their details who have purchased from multiple stores
SELECT 
    customer_id, Name, phone_number, address
FROM
    retail.customers AS c
        JOIN
    (SELECT 
        COUNT(Store_no), customer
    FROM
        retail.sales
    GROUP BY customer
    HAVING COUNT(DISTINCT store_no) > 1) AS sq ON c.customer_id = sq.customer;
-- 5. Determine the sales records that fall within a specific date range, including store and customer details.
SELECT 
    customer_id,
    Name,
    Phone_number,
    address,
    store_id,
    location AS location_of_store,
    manager_name AS store_Manager,
    contact_number AS contactnumber_of_store
FROM
    retail.sales AS s
        JOIN
    retail.store_details AS sd ON s.store_no = sd.store_id
        JOIN
    retail.customers AS c ON s.customer = c.customer_id
WHERE
    sale_date BETWEEN '2024-06-01' AND '2024-06-05';
-- 6. Which  2 customers have made the highest quantity of purchases across all stores, and what are their details
SELECT 
    customer_id, name, phone_number, address
FROM
    retail.customers AS c
        JOIN
    (SELECT sum(Quantity_sold) as MaxQuantity, customer
    FROM
        retail.sales
    GROUP BY customer order by MaxQuantity desc limit 1) AS subq ON c.customer_id = subq.Customer; 
-- 7. Identify the top-selling store based on total quantity sold and include the store's location and manager's name.
SELECT 
    location, manager_name
FROM
    retail.store_details AS sd
        JOIN
    (SELECT 
        store_no, SUM(Quantity_sold) AS total_Quantity
    FROM
        retail.sales
    GROUP BY store_no
    ORDER BY total_Quantity DESC
    LIMIT 1) AS subq ON sd.store_id = subq.store_no; 
-- 8. Finding top quantity purchasing customer from all store 
SELECT 
    subq.Store_no, customer, name, phone_number, address
FROM
    retail.sales AS s
        JOIN
    (SELECT 
        MAX(Quantity_sold) AS mq, store_no
    FROM
        retail.sales AS s
    GROUP BY store_no) AS subq ON s.Quantity_sold = subq.mq
        AND s.store_no = subq.Store_no
        JOIN
    retail.customers AS c ON s.Customer = c.Customer_id
ORDER BY store_no;
