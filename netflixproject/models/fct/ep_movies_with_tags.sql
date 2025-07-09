WITH fct_movie_with_tags AS (
    SELECT * FROM {{ ref('dim_movies_with_tags') }}
)
SELECT * from fct_movie_with_tags