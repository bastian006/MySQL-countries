SELECT * FROM cities;
SELECT * FROM countries;
SELECT * FROM languages;
/*primera pregunta*/

SELECT countries.name, languages.language, languages.percentage 
FROM countries 
INNER JOIN languages on languages.country_id = countries.id 
WHERE languages.language = 'Slovene' 
ORDER BY languages.percentage DESC;

/*segunda pregunta*/

SELECT c.name AS Name, COUNT(ci.id) AS Cities
FROM countries c
INNER JOIN cities ci ON c.id = ci.country_id
GROUP BY c.name
ORDER BY Cities DESC;
/*tercera pregunta */

SELECT c.name AS Name, c.population, c.country_id
FROM cities c
JOIN countries ci ON c.country_id = ci.id
WHERE ci.name = 'Mexico' AND c.population > 500000
ORDER BY c.population DESC;

/*cuarta pregunta*/
SELECT c.nombre AS CountryName, l.name AS Language, l.percentage AS Percentage
FROM countries c
JOIN language l ON c.id = l.country_id
WHERE l.percentage > 89
ORDER BY l.percentage DESC;

/* Quinta pergunta */
SELECT c.name AS CountryName, c.surface_area AS SurfaceArea, SUM(ci.population) AS TotalPopulation
FROM countries c
JOIN cities ci ON c.id = ci.country_id
GROUP BY c.id, c.name, c.surface_area
HAVING c.surface_area < 501 AND SUM(ci.population) > 100000;








