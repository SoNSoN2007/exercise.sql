SELECT 
    film.rental_rate AS 'price',
    COUNT(*) AS 'number_of_films'
FROM 
    film
GROUP BY 
    film.rental_rate;
