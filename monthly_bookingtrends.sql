-- Monthly booking trends (if you have date data)
SELECT 
    EXTRACT(MONTH FROM last_review) AS month,
    COUNT(*) AS total_reviews,
    AVG(price) AS avg_price
FROM listings
GROUP BY month
ORDER BY month;