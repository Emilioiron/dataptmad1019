select 
authors.au_id, 
authors.au_fname, 
authors.au_fname, 
titles.title, 
publishers.pub_name

FROM titles
join publishers on titles.pub_id = publishers.pub_id
join titleauthor on titleauthor.title_id = titles.title_id
join authors on authors.au_id = titleauthor.au_id;
