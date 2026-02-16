-- models/marts/romania.sql
-- Romániai csúcsok

select 
    peak_name,
    height_meters,
    --country,
    mountain_range,
    mountain_sub_range,
    first_ascent_date
from {{ ref('stg_peaklog') }}
where peak_type = 'Csúcs'
and country = 'Románia'
order by height_meters desc
