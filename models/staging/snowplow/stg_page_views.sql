{{ config(
    materialized = 'incremental',
    unique_key = 'EVENT_ITD'
) }}
with events as (
    select * from {{ source('snowplow', 'events') }}
    {% if is_incremental() %}
    where collector_tstamp >= (select max(collector_tstamp) from {{ this }})
    {% endif %}
)
select * from events