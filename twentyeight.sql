CREATE VIEW vw_titles AS
SELECT title,
       pub_id,
       YEAR(pubdate) AS year,
       ISNULL(price,0) AS price,
       ISNULL(type,'Unknown') AS type
FROM titles;
GO
SELECT * FROM vw_titles;