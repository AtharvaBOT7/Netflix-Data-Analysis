WITH raw_ratings AS (
    SELECT * FROM MOVIELENS.RAW.RAW_RATINGS
)
SELECT
    userID AS user_id,
    movieID AS movie_id,
    rating,
    TO_TIMESTAMP_LTZ(timestamp) AS timestamp_rating
FROM raw_ratings

-- This query selects user ratings from the raw ratings data, converting the timestamp to a local time zone format.