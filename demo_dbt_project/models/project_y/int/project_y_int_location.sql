select 
* 
from {{ source('source_ipinfo', 'location') }}
