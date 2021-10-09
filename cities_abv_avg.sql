-- Written with PostgresSQL 9.6
WITH average_count AS (
  SELECT AVG(city_customer_count.total) as average
  FROM (SELECT customer.city_id, COUNT(customer.customer_id) as total
  FROM customer
  GROUP BY customer.city_id) as city_customer_count
  ),
  abv_average_cities AS (
    SELECT customer.city_id
    FROM customer
    GROUP BY customer.city_id
    HAVING COUNT(customer.customer_id) > (SELECT average FROM average_count)
  )
SELECT country.country_name, city.city_name
FROM city
INNER JOIN country
ON city.country_id = country.country_id
WHERE city.city_id IN (SELECT city_id FROM abv_average_cities);
