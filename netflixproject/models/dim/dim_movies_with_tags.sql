{{
    config(
        materialized = 'ephemeral',
    )
}}

with movies as (
    select * from {{ ref("dim_movies")}}
),
tags as (
    select * from {{ ref("dim_genome_tags")}}
),
scores as (
    select * from {{ ref("dim_genome_scores")}}
)

select 
    m.movie_id,
    m.movie_title,
    m.genres,
    t.tag_name,
    s.relevance_score
from movies m
left join tags t on m.movie_id = t.movie_id
left join scores s on t.tag_id = s.tag_id