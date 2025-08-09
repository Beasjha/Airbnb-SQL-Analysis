-- Average price by neighborhood
SELECT 
    neighbourhood,
    AVG(price) AS avg_price,
    COUNT(*) AS total_listings
FROM listings
GROUP BY neighbourhood
ORDER BY avg_price DESC;

-- "Hidden Gems" (high-rated, low-priced)
SELECT 
    name, 
    neighbourhood, 
    price,
    number_of_reviews,
    reviews_per_month
FROM listings
WHERE reviews_per_month >= 4.5
AND price < (SELECT AVG(price) FROM listings)
ORDER BY number_of_reviews DESC
LIMIT 10;