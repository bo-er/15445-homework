select 
    akas.title,titles.premiered,titles.runtime_minutes ||' (min)' 
from 
    akas 
left join 
    titles 
on 
    akas.title_id=titles.title_id 
where 
    titles.genres 
like 
    '%Sci-Fi%' 
order by 
    titles.runtime_minutes 
DESC limit 10;