/*Q1*/
select *
from actor
where first_name = 'penelope';

/*Q2*/
select f.title, a.first_name, a.last_name, fa.actor_id
from actor as a
join  film_actor as fa
	join film as f
		on f.film_id = fa.film_id
	on a.actor_id = fa.actor_id
where f.title = 'ZOOLANDER FICTION';

/*Q3*/
select f.title, a.first_name, a.last_name, fa.actor_id
from actor as a
join  film_actor as fa
	join film as f
		on f.film_id = fa.film_id
	on a.actor_id = fa.actor_id
where a.first_name = 'JENNIFER'
and a.last_name = 'DAVIS';

/*Q4*/
select c.customer_id, c.first_name, c.last_name, c.active, f.title
from customer as c
join rental as r
	join inventory as i
		join film as f
			on f.film_id = i.film_id		
		on i.inventory_id = r.inventory_id
	on r.customer_id = c.customer_id	
where c.active = 1 and c.customer_id = 11;

/*Q5*/
select f.title ,c.name
from category as c
join film_category as fc
	join film as f
		on f.film_id = fc.film_id
	on fc.category_id = c.category_id 
where fc.category_id = 2;

/*Q6*/
select f.title, l.name
from film as f
join language as l
	on f.language_id = l.language_id
where l.language_id not in (1);

/*Q7*/
select s.first_name, s.last_name
from staff as s
join rental 
	join customer as c
		join inventory as i
			join film as f
				on f.film_id = i.film_id
			on i.inventory_id = rental.inventory_id
		on rental.customer_id = c.customer_id
	on rental.staff_id = s.staff_id
where f.title = 'CHAINSAW UPTOWN' and c.first_name = 'MARIE' and c.last_name = 'TURNER';



