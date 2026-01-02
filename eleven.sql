SELECT COUNT(author_id) as authors_int_the_menlo_park 
FROM authors where city = 'Menlo Park' 
GROUP BY city;