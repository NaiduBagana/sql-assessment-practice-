DELETE ta
FROM title_author ta
JOIN authors a ON ta.author_id=a.author_id
WHERE a.first_name='Dean';
