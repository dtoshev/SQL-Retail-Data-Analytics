-- Database: sql_store (Sample database by Code with Mosh)
-- Description: Financial analytics project to calculate total revenue per product and identify top-performing inventory items.

SELECT 
    p.name AS product_name,
    SUM(oi.unit_price * oi.quantity) AS total_sales_value
FROM products p
JOIN order_items oi
    USING (product_id)
GROUP BY p.name
ORDER BY total_sales_value DESC;
