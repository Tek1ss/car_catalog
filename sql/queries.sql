SELECT brand, model, price
FROM cars
ORDER BY price DESC
LIMIT 3;


SELECT brand, AVG(price) AS "Средняя_цена"
FROM cars
GROUP BY brand
ORDER BY "Средняя_цена" DESC;


SELECT brand, model, year, price
FROM cars
WHERE year > 2020 AND price < 2000000;


SELECT color, COUNT(*) AS "Количество"
FROM cars
GROUP BY color
HAVING COUNT(*) >= 2;


SELECT 
    brand,
    model,
    year,
    CASE
        WHEN EXTRACT(YEAR FROM CURRENT_DATE) - year <= 3 THEN 'новый'
        ELSE 'старый'
    END AS "Категория"
FROM cars;