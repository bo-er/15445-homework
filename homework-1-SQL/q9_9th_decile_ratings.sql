With a AS (
    SELECT crew.person_id,crew.title_id,people.name 
    FROM people 
    LEFT JOIN crew on people.person_id=crew.person_id 
    WHERE people.born='1955' 
    AND  title_id 
    IN (
        SELECT title_id 
        FROM titles 
        WHERE type='movie'
        )
)

select t.name,t.r from (
    select
        a.name, 
        round(avg(ratings.rating),2) r, 
        NTILE(10) OVER (ORDER BY avg(ratings.rating) asc) rg 
        from ratings 
        inner join a on a.title_id=ratings.title_id 
        group by a.person_id 
        order by r DESC,a.name ASC
) t where t.rg=9;

