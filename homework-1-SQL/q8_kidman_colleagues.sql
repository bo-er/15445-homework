WITH titles_tmp AS(
    select distinct(crew.title_id) 
    from people 
    left join crew 
    on crew.person_id=people.person_id 
    where people.name='Nicole Kidman' and people.born='1967'
) 

select 
distinct(people.name) 
from crew 
left join people on people.person_id=crew.person_id 
where crew.title_id 
in(
   select * from titles_tmp
) 
and (category = 'actor' 
or category ='actress') 
order by people.name ASC;