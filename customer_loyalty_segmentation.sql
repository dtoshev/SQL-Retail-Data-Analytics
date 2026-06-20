-- Database: sql_store (Sample database by Code with Mosh)
-- Description: Customer segmentation analysis based on loyalty points for marketing campaigns.

SELECT 
    customer_id,
    first_name,
    last_name, 
    points,
    CASE  
         WHEN points > 3000 THEN 'Gold Member'
         WHEN points BETWEEN 2000 AND 3000 THEN 'Silver Member'
         ELSE 'Bronze Member'
    END AS membership_level   
FROM customers
ORDER BY points DESC;
