SELECT 
    people.name,count(*) cnt 
FROM 
    crew 
LEFT JOIN 
    people ON people.person_id=crew.person_id 
GROUP BY people.name 
ORDER BY cnt DESC 
LIMIT 20;