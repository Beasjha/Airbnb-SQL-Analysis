-- Identify underpriced listings with high demand
SELECT 
    id, name, price, number_of_reviews,
    CASE 
        WHEN price < 0.8 * AVG(price) OVER (PARTITION BY neighbourhood) 
             AND number_of_reviews > 20 
        THEN 'Undervalued Gem'
        ELSE 'Fairly Priced'
    END AS valuation_status
FROM listings
ORDER BY number_of_reviews DESC;