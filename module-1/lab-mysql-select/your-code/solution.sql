/*Challenge1:*/
select count ()
FROM titleauthor;

select authors.au_id AS 'AUTHOR ID', 
au_lname AS 'LAST NAME', 
au_fname AS 'FIRST NAME', titles.title AS 'TITLE', publishers.pub_name AS'PUBLISHERS'
from authors
JOIN titleauthor
on titleauthor.au_id = authors.au_id
JOIN titles
on titleauthor.title_id = titles.title_id
join publishers 
on publishers.pub_id = titles.pub_id;



/*Challenge 2:*/
select authors.au_id AS 'AUTHOR ID', 
au_lname AS 'LAST NAME', 
au_fname AS 'FIRST NAME', publishers.pub_name AS'PUBLISHERS', COUNT (title) as 'TITLE COUNT'
from authors
left JOIN titleauthor
on titleauthor.au_id = authors.au_id
left JOIN titles
on titleauthor.title_id = titles.title_id
left join publishers 
on publishers.pub_id = titles.pub_id
GROUP BY authors.au_id;


/*Challenge 3:*/
select sum (qty)
from sales;

select authors.au_id as 'AUTHOR ID',
au_lname AS 'LAST NAME',
au_fname AS 'FIRST NAME', sum(sales.qty) as 'TOTAL'
from authors
left JOIN titleauthor
on titleauthor.au_id = authors.au_id
left JOIN titles
on titleauthor.title_id = titles.title_id
left join sales
on sales.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY sum(sales.qty) DESC
limit 3;


/*Challenge 4:*/
select authors.au_id as 'AUTHOR ID',
au_lname AS 'LAST NAME',
au_fname AS 'FIRST NAME', sum(sales.qty) as 'TOTAL'
from authors
left JOIN titleauthor
on titleauthor.au_id = authors.au_id
left JOIN titles
on titleauthor.title_id = titles.title_id
left join sales
on sales.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY sum(sales.qty) DESC;

/*-------------------------------------------------------*/
