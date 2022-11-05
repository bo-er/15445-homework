select 
    (premiered/10) || '0s' as DECADE,
    round(avg(ratings.rating),2) AVG_RATING, 
    max(ratings.rating) as TOP_RATING,
    min(ratings.rating) as MIN_RATING,
    count(*) as NUM_RELEASES 
from 
    ratings 
left join 
    titles 
on 
    titles.title_id=ratings.title_id 
where 
    premiered is not null 
group by 
    premiered/10 
order by 
    AVG_RATING DESC,DECADE ASC;