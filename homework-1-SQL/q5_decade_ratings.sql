SELECT 
    (premiered/10) || '0s' as DECADE,
    round(avg(ratings.rating),2) AVG_RATING, 
    max(ratings.rating) as TOP_RATING,
    min(ratings.rating) as MIN_RATING,
    count(*) as NUM_RELEASES 
FROM 
    ratings 
LEFT JOIN 
    titles ON titles.title_id=ratings.title_id 
WHERE 
    premiered IS NOT NULL 
GROUP BY 
    premiered/10 
ORDER BY AVG_RATING DESC,DECADE ASC;