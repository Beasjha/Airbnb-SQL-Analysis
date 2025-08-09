CREATE TABLE listings (
    id INT PRIMARY KEY,
    name TEXT,
    host_id INT,
    host_name TEXT,
    neighbourhood TEXT,
    latitude NUMERIC,
    longitude NUMERIC,
    room_type TEXT,
    price NUMERIC,
    minimum_nights INT,
    number_of_reviews INT,
    last_review DATE,
    reviews_per_month NUMERIC,
    availability_365 INT
);