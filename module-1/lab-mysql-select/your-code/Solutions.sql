select 
authors.au_id AS AUTOR_ID,
authors.au_lname AS LAST_NAME, 
authors.au_fname AS FIRST_NAME,
titles.title AS TITLE, 
publishers.pub_name AS PUBLISHER
FROM titles
join publishers on titles.pub_id = publishers.pub_id
join titleauthor on titleauthor.title_id = titles.title_id
join authors on authors.au_id = titleauthor.au_id;


select 
authors.au_id AS AUTOR_ID,
authors.au_lname AS LAST_NAME, 
authors.au_fname AS FIRST_NAME,
publishers.pub_name AS PUBLISHER,
COUNT(titles.title) AS TITLE_COUNT 
FROM titles
join publishers on titles.pub_id = publishers.pub_id
join titleauthor on titleauthor.title_id = titles.title_id
join authors on authors.au_id = titleauthor.au_id
GROUP BY authors.au_id, publishers.pub_name;

select 
authors.au_id AS AUTOR_ID,
authors.au_lname AS LAST_NAME, 
authors.au_fname AS FIRST_NAME,
COUNT(titles.title) AS TOTAL 
FROM titles
join publishers on titles.pub_id = publishers.pub_id
join titleauthor on titleauthor.title_id = titles.title_id
join authors on authors.au_id = titleauthor.au_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC
LIMIT 3;

select 
authors.au_id AS AUTOR_ID,
authors.au_lname AS LAST_NAME, 
authors.au_fname AS FIRST_NAME,
COUNT(titles.title) AS TOTAL 
FROM titles
join titleauthor on titleauthor.title_id = titles.title_id
join authors on authors.au_id = titleauthor.au_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC;


