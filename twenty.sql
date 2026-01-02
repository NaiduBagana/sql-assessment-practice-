SELECT a.city, COUNT(*)  AS titles_in_city
FROM authors a JOIN title_author ta ON a.author_id=ta.author_id
GROUP BY a.city;
