-- Handle NULL prices (if any)
UPDATE listings 
SET price = 0 
WHERE price IS NULL;

-- Remove duplicate listings (example)
DELETE FROM listings 
WHERE id IN (
    SELECT id 
    FROM (
        SELECT id, ROW_NUMBER() OVER (PARTITION BY id ORDER BY id) AS rn
        FROM listings
    ) t 
    WHERE t.rn > 1
);