select * 
from 
    {{ source('source_weather', 'history_day') }} as whd
join {{ ref('project_y_int_location') }} as loc 
    on loc.postal = whd.postal_code
    and loc.country = whd.country
qualify rank() over (partition by loc.country order by whd.postal_code asc) = 1
    
    