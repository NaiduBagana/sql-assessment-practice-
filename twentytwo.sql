SELECT t.title, p.pub_name, a.first_name
FROM titles t
JOIN publishers p ON t.pub_id=p.pub_id
JOIN title_author ta ON t.title_id=ta.title_id AND ta.au_order=1
JOIN authors a ON ta.author_id=a.author_id;
