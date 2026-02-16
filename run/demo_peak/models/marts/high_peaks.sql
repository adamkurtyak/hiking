
  create or replace   view HIKING.PUBLIC.high_peaks
  
  
  
  
  as (
    -- models/marts/high_peaks.sql
-- Kétezer méter fölötti csúcsok

select 
    peak_name,
    height_meters,
    country,
    mountain_range,
    mountain_sub_range,
    first_ascent_date
from HIKING.PUBLIC.stg_peaklog
where height_meters > 2000
  and peak_type = 'Csúcs'
order by height_meters desc
  );

