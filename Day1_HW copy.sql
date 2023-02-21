--MONDAY QUESTIONS DAY ONE HW

-- 1) How many actors are there with the last name 'Wahlberg' ?
-- ANSWER: 2
select count(last_name)
from actor 
where last_name = 'Wahlberg';

-- 2) How many payments were made between $3.99 and $5.99 ?
-- ANSWER: 3,230
select count(amount)
from payment
where 3.99 < amount and amount < 5.99;

-- 3) What film does the store have the most of? (search in inventory)
-- ANSWER: 193, 789, 730, 378, 595, 849, 231, 586, 69, 764, 745, 1, 767, 369, 738, 638, 31, 356, 199, 683, 127, 609, 403, 174, 266, 109, 434,
-- 220, 239, 873, 893, 468, 525, 897, 697, 835, 773, 945, 444, 412, 880, 846, 331, 911, 621, 301, 1000, 361, 91, 200, 358, 973, 350, 559
-- 86, 489, 382, 701, 531, 856, 870, 295, 206, 73, 418, 460, 103, 341, 748, 500, 753, 572
select count(film_id),
film_id from inventory 
group by film_id
order by count desc;

-- 4) How many customers have the last name 'William' ?
-- ANSWER: None
select last_name 
from customer 
where last_name = 'William';

-- 5) What store employee (get the id) sold the most rentals ?
-- ANSWER: JON staff_id = 2
select count(payment_id),
staff_id from payment
group by staff_id
order by count desc; 

-- 6) How many different district names are there ?
-- ANSWER: 378
select count(district),
district from address
group by district 
order by count desc;

-- 7) What film has the most actors in it? (use film_actor table and get film_id)
-- ANSWER: Lambs Cincinatti, FILM_ID = 508
select count(actor_id),
film_id from film_actor
group by film_id
order by count desc;

-- 8) From store_id 1, how many customers have a last name ending with 'es' ? (use customer table)
-- ANSWER: 21
select last_name
from customer
where last_name like '%es';

-- 9) How many payment amounts (4.99, 5.99, etc) had a number of rentals above 250 for customers with ids between 380 and 430?
-- ANSWER: 11
select count(amount),
amount from payment
where customer_id > 380 and customer_id < 430
group by amount
order by count desc;

-- 10) Within the film table, how many rating categories are there? And what rating has the most movies total?
-- ANSWER: 5
select count(film_id),
rating from film
group by rating
order by count desc;
















