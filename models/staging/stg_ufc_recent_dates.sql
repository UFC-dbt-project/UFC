with source as (
    select * from {{ source('ufc_data', 'recent_events') }}
)

select * from source 

