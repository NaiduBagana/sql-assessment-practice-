UPDATE titles
SET price = (SELECT price FROM titles WHERE title_id='MC2222')
WHERE title_id='BU1111';
