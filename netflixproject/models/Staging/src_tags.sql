WITH raw_movies AS (
    SELECT * FROM MOVIELENS.RAW.RAW_TAGS
)
SELECT
    userID AS user_id,
    movieID AS movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) AS timestamp_rating
FROM raw_tags

-- This query selects user tags from the raw tags data, converting the timestamp to a local time zone format.