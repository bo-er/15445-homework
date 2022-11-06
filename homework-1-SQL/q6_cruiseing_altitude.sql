SELECT 
    titles.primary_title,
    ratings.votes 
FROM ratings 
INNER JOIN  titles 
ON titles.title_id = ratings.title_id 
WHERE ratings.title_id 
IN (
    SELECT 
        crew.title_id 
    FROM people 
    INNER JOIN crew ON people.person_id=crew.person_id 
    WHERE people.name LIKE '%Cruise%' AND people.born ='1962'
    ) 
ORDER BY ratings.votes DESC 
LIMIT 10;