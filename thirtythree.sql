SELECT title FROM titles
WHERE pub_id IN (
    SELECT pub_id FROM titles WHERE YEAR(pubdate)=2021
);
