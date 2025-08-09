-- Top 10 hosts with most listings
SELECT 
    host_id,
    host_name,
    COUNT(*) AS total_listings,
    SUM(price) AS estimated_revenue
FROM listings
GROUP BY host_id, host_name
ORDER BY total_listings DESC
LIMIT 10;