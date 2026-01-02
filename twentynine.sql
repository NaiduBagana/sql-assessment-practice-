SELECT DISTINCT t.pub_id
FROM titles t
JOIN title_author ta ON t.title_id=ta.title_id
GROUP BY t.pub_id, ta.author_id
HAVING COUNT(*) > 2;
