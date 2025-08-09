-- Add indexes for faster queries
CREATE INDEX idx_price ON listings(price);
CREATE INDEX idx_neighbourhood ON listings(neighbourhood);
CREATE INDEX idx_reviews ON listings(number_of_reviews);

-- Analyze query performance
EXPLAIN ANALYZE SELECT * FROM listings WHERE neighbourhood = 'Brooklyn';