select 'Army of Thieves',count(1) 
from (
    select 
    distinct(title_id) 
    from titles 
    where titles.premiered 
    in(
        select premiered 
        from titles
        where primary_title='Army of Thieves'
     )
    );