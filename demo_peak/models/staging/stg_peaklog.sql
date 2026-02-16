-- models/staging/stg_peaklog.sql
-- Staging: Clean and standardize raw peak data

select 
    HEIGHT_M as height_meters,
    NAME as peak_name,
    COUNTRY,
    MOUNTAIN_RANGE as mountain_range,
    MOUNTAIN_SUB_RANGE as mountain_sub_range,
    TYPE as peak_type,
    FIRST_ASCENT_DATE as first_ascent_date
from {{ source('hiking', 'PEAKLOG') }}
