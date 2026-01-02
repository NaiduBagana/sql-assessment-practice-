SELECT author_id , COUNT(*) AS books FROM title_author 
GROUP BY author_id;