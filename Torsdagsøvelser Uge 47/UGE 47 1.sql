use sakila;
-- select * from sakila.actor where last_name like "Cage%";
-- select * from sakila.actor; SELECT * FROM actor where not first_name = "ZERO" or "NICK";
-- select * from sakila.actor where first_name in ("NICK", "JOHNNY", "JAMES", "MORGAN", "WHOOPI");
 -- select * from sakila.actor where actor_id between 50 and 150;
 -- select * from sakila.actor where first_name like "C%";
-- select * from sakila.actor  order by first_name;
-- select * from sakila.actor  order by last_name desc;
 select * from sakila.actor; select * from actor  where count;
 -- select distinct first_name from sakila.actor;
 -- select distinct first_name from sakila.actor;
-- select * from sakila.film_list where category = "horror";
select * from sakila.film_list where category = "horror";
select * from category where name = ("HORROR");
select * from film_category where category_id = (11);
select film_id from film_category where category_id = (11);
select * from film where film_id in (select film_id from film_category where category_id =((select category_id from category where name = "HORROR")));
select title as "hej", description as "hello" from film where film_id in (select film_id from film_category where category_id = ((select category_id from category where name = "Horror")));

