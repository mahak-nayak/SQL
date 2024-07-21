

UPDATE retail.customers 
SET 
    address = 'N/A'
WHERE
    customer_id = '1005';
UPDATE retail.customers 
SET 
    phone_number = '123-345-6789'
WHERE
    phone_number IS NULL;
