SELECT title FROM titles t
JOIN publishers p ON t.pub_id=p.pub_id
WHERE p.country='USA' OR price < 5;
