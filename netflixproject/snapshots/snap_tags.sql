{% snapshot snap_tags %}

{{
    config(
        target_schema = 'snapshots',
        unique_key = ['user_id', 'movie_id', 'tag'],
        strategy = 'timestamp',
        updated_at = 'tag_timestamp',
        invalidate_hard_deletes = True
    )
}}

SELECT 
    {{ dbt_utils.generate_surrogate_key(['user_id', 'movie_id', 'tag']) }} AS row_key,
    user_id,
    movie_id,
    tag,
    CAST(timestamp_rating AS TIMESTAMP_NTZ) AS tag_timestamp
FROM {{ ref('src_tags') }}
LIMIT 100

{% endsnapshot %}
