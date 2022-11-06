WITH up_titles AS(
    SELECT 
        title_id 
    FROM titles 
    where primary_title='House of the Dragon'
)

select 
    group_concat(name) 
from (
    select 
        distinct(title) name 
    from akas 
    where title_id in up_titles 
    order by name
);
