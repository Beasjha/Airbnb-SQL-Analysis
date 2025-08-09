-- Compare listings to neighborhood averages
SELECT 
    name,
    neighbourhood,
    price,
    AVG(price) OVER (PARTITION BY neighbourhood) AS neighbourhood_avg,
    price - AVG(price) OVER (PARTITION BY neighbourhood) AS price_difference
FROM listings
ORDER BY price_difference DESC;