SELECT neighbourhood, AVG(price) as average_price
FROM listings 
GROUP BY neighbourhood
ORDER BY average_price DESC;