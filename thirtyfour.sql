CREATE VIEW vw_publisher_books AS
SELECT p.pub_name, p.city, COUNT(t.title_id) AS books
FROM publishers p LEFT JOIN titles t ON p.pub_id=t.pub_id
GROUP BY p.pub_name, p.city;

GO

SELECT * FROM vw_publisher_books;