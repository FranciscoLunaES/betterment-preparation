CREATE FUNCTION get_languages_special_features()
RETURNS VARCHAR ARRAY
LANGUAGE plpgsql
AS
$$
DECLARE
	languages VARCHAR ARRAY;
BEGIN
	languages := ARRAY(SELECT l.name
		FROM film AS f
		JOIN language AS l
		ON f.language_id = l.language_id 
		WHERE 'Deleted Scenes' = ANY(special_features)
		GROUP BY l.name);
	RETURN languages;
END;
$$

CREATE FUNCTION get_countries_payments_films_p()
RETURNS VARCHAR ARRAY
LANGUAGE plpgsql
AS
$$
DECLARE
	countries VARCHAR ARRAY;
BEGIN
	countries := ARRAY(SELECT c.country FROM country AS c
	JOIN city AS ci
		ON c.country_id = ci.country_id
	JOIN address AS a
		ON a.city_id = ci.city_id
	JOIN customer AS cu
		ON cu.address_id = a.address_id
	JOIN payment AS p
		ON p.customer_id = cu.customer_id
	JOIN rental AS r
		ON r.rental_id = p.rental_id
	JOIN inventory AS i
		ON i.inventory_id = r.inventory_id
	JOIN film AS f
		ON i.film_id = f.film_id
	WHERE SUBSTRING(f.title, 1, 1) = 'P');
	
	RETURN countries;
END;
$$

CREATE FUNCTION get_payments_customers()
RETURNS VARCHAR ARRAY
LANGUAGE plpgsql
AS
$$
DECLARE
	customer_payment VARCHAR ARRAY;
BEGIN
	customer_payment := ARRAY(SELECT p.payment_id FROM payment AS p
	JOIN customer AS c
	ON c.customer_id = p.customer_id);
	
	RETURN customer_payment;
END;
$$
