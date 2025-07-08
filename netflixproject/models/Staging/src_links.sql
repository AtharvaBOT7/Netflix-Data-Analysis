WITH raw_links AS (
    SELECT * FROM MOVIELENS.RAW.RAW_LINKS
)
SELECT
    movieID AS movie_id,
    imdbID AS imdb_id,
    tmdbID AS tmdb_id,
FROM raw_links

-- This query selects movie links from the raw links data, including IMDb and TMDB IDs.