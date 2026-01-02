SELECT p.city, MAX(t.price)
FROM publishers p JOIN titles t ON p.pub_id=t.pub_id
GROUP BY p.city;
