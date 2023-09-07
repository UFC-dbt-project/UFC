{{
    config(
        materialized='table'
    )
}}

with source as (
    select * from {{ ref('stg_ufc_recent_dates') }}
),

longestStreak as (
    select max(r_longest_win_streak) as longest_streak_recorded from source
)

select * from longestStreak