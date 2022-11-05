

select 'Army of Thieves',count(1) 
from (
    select 
    distinct(title_id) 
    from titles 
    where titles.premiered 
    in(
        select titles.premiered 
        from akas 
        left join titles
        on akas.title_id = titles.title_id 
        where akas.title='Army of Thieves'
     )
    );