/*Q1*/
select *
from actor
where first_name = 'penelope';

/*Q2*/
select f.title, a.first_name, a.last_name, fa.actor_id
from actor as a
join  film_actor as fa
	on a.actor_id = fa.actor_id
join film as f
	on f.film_id = fa.film_id	
where f.title = 'ZOOLANDER FICTION';

/*Q3*/
select f.title, a.first_name, a.last_name, fa.actor_id
from actor as a
join  film_actor as fa
	on a.actor_id = fa.actor_id
join film as f
	on f.film_id = fa.film_id	
where a.first_name = 'JENNIFER'
and a.last_name = 'DAVIS';

/*Q4*/
select c.customer_id, c.first_name, c.last_name, c.active, f.title
from customer as c
join rental as r
	on r.customer_id = c.customer_id	
join inventory as i
	on i.inventory_id = r.inventory_id
join film as f
	on f.film_id = i.film_id		
where c.customer_id = 11 
and r.return_date is null;

/*Q5*/
select f.title ,c.name
from category as c
join film_category as fc
	on fc.category_id = c.category_id 
join film as f
	on f.film_id = fc.film_id	
where fc.category_id = 2;

/*Q6*/
select c.first_name, c.last_name, f.title, f.rental_rate
from customer as c
join rental as r
	on r.customer_id = c.customer_id
join inventory as i
	on i.inventory_id = r.inventory_id
join film as f
	on f.film_id = i.film_id
where c.customer_id = 95
and f.title = 'CLOSER BANG';

/*Q7*/
select s.first_name, s.last_name
from staff as s
join rental as r
	on r.staff_id = s.staff_id
join customer as c
	on r.customer_id = c.customer_id
join inventory as i
	on i.inventory_id = r.inventory_id
join film as f
	on f.film_id = i.film_id
where f.title = 'CHAINSAW UPTOWN' and c.first_name = 'MARIE' and c.last_name = 'TURNER';


