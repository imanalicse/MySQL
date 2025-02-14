SELECT film_id, title, rental_rate, rental_duration
FROM film
WHERE rental_duration = CASE rental_rate
                            WHEN 0.99 THEN 3
                            WHEN 2.99 THEN 4
                            WHEN 4.99 THEN 5
                            ELSE 6
    END
ORDER BY title DESC;