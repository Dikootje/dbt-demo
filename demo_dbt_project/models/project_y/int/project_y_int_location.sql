select 
* 
from {{ source('source_a', 'location') }}
