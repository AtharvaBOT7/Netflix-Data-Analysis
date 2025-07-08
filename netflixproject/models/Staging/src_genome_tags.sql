WITH raw_genome_tags AS (
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_TAGS
)
SELECT
    tagId AS tag_id,
    tag,
FROM raw_genome_tags

-- This query selects genome tags from the raw genome tags data, converting the timestamp to a local time zone format.