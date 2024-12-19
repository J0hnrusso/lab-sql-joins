-- 1
select b.name as category, count(*) as number_of_films
from film_category as a
inner join category as b
on a.category_id = b.category_id
group by b.name;

-- 2
select a.store_id, b.address, c.city, d.country
from store a
inner join address b 
on a.address_id = b.address_id
inner join city c
on b.city_id = c.city_id
inner join country d
on c.country_id = d.country_id;
-- 3
select sum(a.amount), b.store_id
from payment a
join staff b
on a.staff_id = b.staff_id
group by b.store_id;
-- 4
SELECT b.name as category, COUNT(a.film_id) AS number_of_films, round(AVG(c.length)) AS average_length
FROM film_category AS a
INNER JOIN category AS b
    ON a.category_id = b.category_id
INNER JOIN film AS c
    ON a.film_id = c.film_id
GROUP BY b.name;
-- 5
SELECT b.name as category, COUNT(a.film_id) AS number_of_films, round(AVG(c.length)) AS average_length
FROM film_category AS a
INNER JOIN category AS b
    ON a.category_id = b.category_id
INNER JOIN film AS c
    ON a.film_id = c.film_id
GROUP BY b.name
ORDER BY average_length DESC;