SELECT state FROM authors
WHERE first_name LIKE 'S%'
GROUP BY state
HAVING COUNT(*) > 2;