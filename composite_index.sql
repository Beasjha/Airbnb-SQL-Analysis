-- Add composite indexes for common filters
CREATE INDEX idx_neighbourhood_room_type ON listings(neighbourhood, room_type);

-- Analyze query plans
EXPLAIN ANALYZE 
SELECT * FROM listings 
WHERE neighbourhood = 'Manhattan' AND room_type = 'Entire home/apt';