
  create or replace   view HIKING.PUBLIC.romania
  
  
  
  
  as (
    -- models/marts/romania.sql
-- Romániai csúcsok

select 
    peak_name,
    height_meters,
    --country,
    mountain_range,
    mountain_sub_range,
    first_ascent_date
from HIKING.PUBLIC.stg_peaklog
where peak_type = 'Csúcs'
and country = 'Románia'
order by height_meters desc
  );

