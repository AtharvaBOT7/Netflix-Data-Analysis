WITH src_tags AS (
    SELECT * FROM {{ ref('src_genome_tags') }}
)
SELECT 
    tag_id,
    INITCAP(TRIM(tag)) AS tag_name
FROM src_tags

-- This query selects genome tags from the source data, ensuring that the tag names are formatted with 
-- proper capitalization and trimmed of any leading or trailing whitespace.