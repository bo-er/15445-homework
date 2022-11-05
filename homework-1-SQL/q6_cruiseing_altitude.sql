select akas.title,ratings.votes 
from ratings 
left join  akas 
on akas.title_id = ratings.title_id 
where ratings.title_id 
in (select crew.title_id 
    from people 
    left join crew 
    on people.person_id=crew.person_id 
    where people.name 
    like '%Cruise%' 
    and people.born ='1962') 
order by ratings.votes 
DESC limit 10;