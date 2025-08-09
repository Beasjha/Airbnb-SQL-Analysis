-- Hosts with declining review scores (potential issues)
SELECT 
    host_id,
    host_name,
    AVG(reviews_per_month) AS avg_monthly_reviews,
    AVG(reviews_per_month) - LAG(AVG(reviews_per_month), 1) OVER (ORDER BY MIN(last_review)) AS trend
FROM listings
GROUP BY host_id, host_name
HAVING COUNT(*) > 5
ORDER BY trend ASC;