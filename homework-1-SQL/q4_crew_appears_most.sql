select 
    people.name,count(*) cnt 
from 
    crew 
left join 
    people 
on 
    people.person_id=crew.person_id 
group by 
    people.name 
order by 
    cnt 
DESC limit 20;