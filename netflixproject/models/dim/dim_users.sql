WITH ratings AS (
    SELECT DISTINCT user_id from {{ ref('src_ratings') }}
),
tags AS (
    SELECT DISTINCT user_id from {{ ref('src_tags') }}
)

SELECT DISTINCT user_id
FROM (
    SELECT * FROM ratings
    UNION
    SELECT * FROM tags
)

-- This query combines distinct user IDs from both ratings and tags sources, ensuring that all unique users are captured 
-- regardless of whether they have rated or tagged movies.