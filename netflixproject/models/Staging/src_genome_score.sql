WITH raw_genome_scores AS (
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_SCORES
)
SELECT
    movieID AS movie_id,
    tagId as tag_id,
    relevance
FROM raw_genome_scores

-- This query selects genome scores from the raw genome scores data, including movie IDs, tag IDs, and relevance scores.