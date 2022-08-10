-- HAVING

-- Ex: Category more than 5 films
SELECT c.name, count(fc.category_id)
	FROM film AS f
	JOIN film_category AS fc
		ON f.film_id = fc.film_id
	JOIN category AS c
		ON fc.category_id = c.category_id
	GROUP BY fc.category_id, c.name
	HAVING count(fc.category_id) > 70;
-- Ex: Actor with an avg in film
	SELECT a.actor_id, AVG(replacement_cost) AS AVG_replacement_cost_films FROM actor AS a
	JOIN film_actor AS fa
		ON a.actor_id = fa.actor_id
	JOIN film AS f
		ON f.film_id = fa.film_id
	GROUP BY a.actor_id
	HAVING AVG(replacement_cost) > 20

-- ORDER BY

-- Ex: Order actors and films by lenght 
	SELECT a.first_name, f.title, f.length as Film_Duration FROM actor AS a
	JOIN film_actor AS fa
		ON a.actor_id = fa.actor_id
	JOIN film AS f
		ON f.film_id = fa.film_id
	ORDER BY f.length

-- CUSTOM AGGREGATE FUNCTION

-- Obtain the film duration without comecials of all films

CREATE OR REPLACE AGGREGATE delete_comercial_time(smallint)(
	INITCOND=20,
	STYPE=smallint,
	SFUNC=comecial_time
)

CREATE OR REPLACE FUNCTION comecial_time(comecial smallint,film_duration smallint)
	RETURNS smallint
	LANGUAGE plpgsql
	AS
	$$
	DECLARE 
		film_without_comercials smallint;
	BEGIN
		SELECT (film_duration - comecial) into film_without_comercials;
		RETURN film_without_comercials;
	END;
	$$

	SELECT title, delete_comercial_time(length) from film
		GROUP BY title;

select * from film where title = 'Opus Ice'

-- SELECT WITH AGGREGATE FUNCTION

-- Ex: Max number of rental rating films by actor
	
	SELECT CONCAT(a.first_name, '', a.last_name) , MAX(rental_rate) as max from actor AS a
	JOIN film_actor AS fa
		ON a.actor_id = fa.actor_id
	JOIN film AS f
		ON f.film_id = fa.film_id
	GROUP BY a.actor_id
	ORDER BY max desc
		
