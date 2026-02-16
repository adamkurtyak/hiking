-- models/marts/high_peaks.sql
-- Peaks higher than 2000 meters classified as 'Csúcs'

select 
    peak_name,
    height_meters,
    country,
    mountain_range,
    mountain_sub_range,
    first_ascent_date
from {{ ref('stg_peaklog') }}
where height_meters > 2000
  and peak_type = 'Csúcs'
order by height_meters desc
