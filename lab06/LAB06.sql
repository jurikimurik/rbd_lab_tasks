SELECT *, count(id)
From data.drivers_car
where driver_id = 1
group by drivers_car.id
order by registration_number ASC;

SELECT street
FROM data.address
WHERE id IN
(Select area_id from data.address);

SELECT street, city
FROM data.address
ORDER BY city ASC
LIMIT 5 OFFSET 5;

SELECT area_id FROM data.address
UNION
SELECT id FROM data.area;

SELECT street FROM data.address
EXCEPT
SELECT street FROM data.address WHERE building_number = '2a';

SELECT area_id FROM data.address
INTERSECT
SELECT id FROM data.area;

SELECT * FROM data.passenger
INNER JOIN data.user ON data.passenger.user_id = data.user.id;

SELECT * FROM data.driver
LEFT JOIN data.passenger ON data.driver.id = data.passenger.id;

SELECT * FROM data.drivers_car
RIGHT JOIN data.car
ON data.drivers_car.car_id = data.car.id;

SELECT * FROM data.address
FULL OUTER JOIN data.area
ON data.address.area_id = data.area.id;