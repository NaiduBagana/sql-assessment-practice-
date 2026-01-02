SELECT a.first_name, t.title
FROM authors a LEFT JOIN title_author ta ON a.author_id=ta.author_id
LEFT JOIN titles t ON ta.title_id=t.title_id;
