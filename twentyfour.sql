SELECT DISTINCT t.title
FROM titles t
JOIN title_author ta ON t.title_id=ta.title_id
JOIN authors a ON ta.author_id=a.author_id
WHERE a.city='Menlo Park';
