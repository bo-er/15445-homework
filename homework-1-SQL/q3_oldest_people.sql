select 
    name,born 
from 
    people 
where 
    born >= 1900
and 
    died is null 
order by 
    born ASC,name ASC 
limit 20;