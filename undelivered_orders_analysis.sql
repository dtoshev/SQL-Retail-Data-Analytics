-- Database: sql_store (Sample database by Code with Mosh)
-- Description: Operations analysis to identify undelivered orders and track shipper assignments.

SELECT 
    o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    s.name AS shipper_name
FROM orders o
JOIN customers c 
    USING (customer_id)
LEFT JOIN shippers s 
    USING (shipper_id)
WHERE o.status != 1;
