SELECT title FROM titles
WHERE pubdate >= DATEADD(YEAR,-25,GETDATE());
