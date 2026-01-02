SELECT title,LEFT(title, CHARINDEX(' ',title+' ')-1) FROM titles;
