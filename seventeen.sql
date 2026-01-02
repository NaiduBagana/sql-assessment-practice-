SELECT MONTH(pubdate) AS monthnumber, COUNT(*)  AS count FROM titles
GROUP BY MONTH(pubdate);
    