BEGIN;
	SELECT store_id, STRING_AGG(CONCAT(first_name, ' ' , last_name, ' ' , email), ' | ') 
		FROM customer
		GROUP BY store_id;
	UPDATE customer SET first_name = 'Sebastian' where customer_id = 12;
	INSERT customer VALUES(DEFAULT, DEFAULT, 'Francisco', 'Piña','piñata@gmail.com', 1, DEFAULT, DEFAULT, DEFAULT, 1);
	DELETE FROM customer WHERE customer_id = 3;
	SELECT c.first_name, a.address FROM customer AS c
		JOIN address AS a 
		ON c.address_id = a.address_id
ROLLBACK;


BEGIN;
	SELECT * FROM category WHERE category_id BETWEEN 4 and 9;
	SELECT c.name, STRING_AGG(f.title, ' '), COUNT(*) FROM category AS c
		JOIN film_category AS fc 
		ON c.category_id = fc.category_id
		JOIN film AS f
		ON fc.film_id = f.film_id
		GROUP BY c.name
		HAVING COUNT(*) > 60;
	UPDATE category SET name = 'Kids' WHERE category_id = 3;
	DELETE FROM category WHERE name = 'New';
	INSERT INTO category VALUES(DEFAULT, 'THRILLER', DEFAULT);
COMMIT;


BEGIN;
	SELECT * FROM address WHERE district = 'Texas' and city_id != 295;
	SELECT a.address, c.city, co.country FROM address AS a
		JOIN city AS c 
			ON c.city_id = a.city_id
		JOIN country AS co
			ON c.country_id = co.country_id;
	DELETE FROM address WHERE postal_code = '';
	UPDATE address SET address2 = 'N/A' WHERE address2 = '';
	INSERT INTO address VALUES(DEFAULT, 'Prof. Jose s. Benitez', '', 'GDL', 234, '24204', '3121234567', DEFAULT);
COMMIT;
