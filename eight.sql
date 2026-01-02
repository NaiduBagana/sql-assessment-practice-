SELECT title_id, COUNT(author_id) AS authors
FROM title_author
GROUP BY title_id;
