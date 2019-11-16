/*Challenge1:
 * Easy way:*/
select authors.au_id, 
au_lname, 
au_fname, 
titles.title, publishers.pub_name
from titles
JOIN titleauthor
on titles.title_id = titleauthor.title_id
JOIN authors
on authors.au_id = titleauthor.au_id
join publishers 
on publishers.pub_id = titles.pub_id

/*Complicated way with "with":*/
WITH
challenge_1A AS
(
select *
from titles
JOIN titleauthor
on titles.title_id = titleauthor.title_id
JOIN authors
on authors.au_id = titleauthor.au_id
),
challenge_1B as
(
select *
from challenge_1A
join publishers 
on publishers.pub_id = challenge_1A.pub_id
)
select au_id, 
au_lname, 
au_fname, 
title, pub_name from challenge_1B;

/*Challenge 2:*/



