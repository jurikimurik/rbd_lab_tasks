DELETE FROM data.car_type;

DROP TABLE data.passenger;
CREATE TABLE data.passenger (
    id serial PRIMARY KEY NOT NULL,
    user_id INT NOT NULL,
    CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES data.user(id),
    preffered_payment_type INT,
    CONSTRAINT preffered_payment_type_fk FOREIGN KEY (preffered_payment_type) REFERENCES data.payment_type(id)
);

ALTER TABLE data.address
DROP COLUMN area_id;
ALTER TABLE data.address
  ADD COLUMN area_id INT
    CONSTRAINT area_id_fk REFERENCES data.area(id);
UPDATE data.address
SET area_id = 1;
UPDATE data.address SET area_id = 1;
ALTER TABLE data.address
ALTER COLUMN area_id SET NOT NULL;

INSERT INTO
    data.car_type (car_name)
VALUES
 ('Type1'),
 ('Type2'),
 ('Type3'),
 ('Type4'),
 ('Type5');
 INSERT INTO
    data.passenger (user_id, preffered_payment_type)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);



ALTER TABLE data.passenger_rating
DROP COLUMN passenger_id;
ALTER TABLE data.passenger_rating
  ADD COLUMN passenger_id INT
    CONSTRAINT passenger_id_fk REFERENCES data.user(id);

UPDATE data.passenger_rating
SET passenger_id = 1 WHERE id = 1;
UPDATE data.passenger_rating
SET passenger_id = 2 WHERE id = 2;
UPDATE data.passenger_rating
SET passenger_id = 3 WHERE id = 3;
UPDATE data.passenger_rating
SET passenger_id = 4 WHERE id = 4;
UPDATE data.passenger_rating
SET passenger_id = 5 WHERE id = 5;

ALTER TABLE data.passenger_rating
ALTER COLUMN passenger_id SET NOT NULL;

ALTER TABLE data.passenger_rating
DROP COLUMN ride_id;
ALTER TABLE data.passenger_rating
  ADD COLUMN ride_id INT
    CONSTRAINT ride_id_fk REFERENCES data.ride(id);

UPDATE data.passenger_rating
SET ride_id = 1 WHERE id = 1;
UPDATE data.passenger_rating
SET ride_id = 2 WHERE id = 2;
UPDATE data.passenger_rating
SET ride_id = 3 WHERE id = 3;
UPDATE data.passenger_rating
SET ride_id = 4 WHERE id = 4;
UPDATE data.passenger_rating
SET ride_id = 5 WHERE id = 5;
ALTER TABLE data.passenger_rating
ALTER COLUMN ride_id SET NOT NULL;

ALTER TABLE data.driver
DROP COLUMN user_id;
ALTER TABLE data.driver
  ADD COLUMN user_id INT
    CONSTRAINT user_id_fk REFERENCES data.user(id);

 INSERT INTO
    data.driver (id, user_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

UPDATE data.driver
SET user_id = 1 WHERE id = 1;
UPDATE data.driver
SET user_id = 2 WHERE id = 2;
UPDATE data.driver
SET user_id = 3 WHERE id = 3;
UPDATE data.driver
SET user_id = 4 WHERE id = 4;
UPDATE data.driver
SET user_id = 5 WHERE id = 5;
ALTER TABLE data.driver
ALTER COLUMN user_id SET NOT NULL;

ALTER TABLE data.driver_rating
DROP COLUMN driver_id;
ALTER TABLE data.driver_rating
  ADD COLUMN driver_id INT
    CONSTRAINT driver_id_fk REFERENCES data.driver(id);

UPDATE data.driver_rating
SET driver_id = 1 WHERE id = 1;
UPDATE data.driver_rating
SET driver_id = 2 WHERE id = 2;
UPDATE data.driver_rating
SET driver_id = 3 WHERE id = 3;
UPDATE data.driver_rating
SET driver_id = 4 WHERE id = 4;
UPDATE data.driver_rating
SET driver_id = 5 WHERE id = 5;
ALTER TABLE data.driver_rating
ALTER COLUMN driver_id SET NOT NULL;


ALTER TABLE data.driver_rating
DROP COLUMN ride_id;
ALTER TABLE data.driver_rating
  ADD COLUMN ride_id INT
    CONSTRAINT ride_id_fk REFERENCES data.ride(id);

UPDATE data.driver_rating
SET ride_id = 1 WHERE id = 1;
UPDATE data.driver_rating
SET ride_id = 2 WHERE id = 2;
UPDATE data.driver_rating
SET ride_id = 3 WHERE id = 3;
UPDATE data.driver_rating
SET ride_id = 4 WHERE id = 4;
UPDATE data.driver_rating
SET ride_id = 5 WHERE id = 5;
ALTER TABLE data.driver_rating
ALTER COLUMN ride_id SET NOT NULL;

ALTER TABLE data.drivers_car
DROP COLUMN car_id;
ALTER TABLE data.drivers_car
  ADD COLUMN car_id INT
    CONSTRAINT car_id_fk REFERENCES data.car(id);

UPDATE data.drivers_car SET car_id = 1 WHERE id = 1;
UPDATE data.drivers_car SET car_id = 2 WHERE id = 2;
UPDATE data.drivers_car SET car_id = 3 WHERE id = 3;
UPDATE data.drivers_car SET car_id = 4 WHERE id = 4;
UPDATE data.drivers_car SET car_id = 5 WHERE id = 5;
ALTER TABLE data.drivers_car
ALTER COLUMN car_id SET NOT NULL;

 INSERT INTO
    data.car_type (id, car_name)
VALUES
    (1, 'Type1'),
    (2, 'Type2'),
    (3, 'Type3'),
    (4, 'Type4'),
    (5, 'Type5');

ALTER TABLE data.car
DROP COLUMN car_type_id;
ALTER TABLE data.car
  ADD COLUMN car_type_id INT
    CONSTRAINT car_type_id_fk REFERENCES data.car_type(id);
UPDATE data.car SET car_type_id = 1 WHERE id = 1;
UPDATE data.car SET car_type_id = 2 WHERE id = 2;
UPDATE data.car SET car_type_id = 3 WHERE id = 3;
UPDATE data.car SET car_type_id = 4 WHERE id = 4;
UPDATE data.car SET car_type_id = 5 WHERE id = 5;
ALTER TABLE data.car
ALTER COLUMN car_type_id SET NOT NULL;

ALTER TABLE data.ride
DROP COLUMN driver_id;
ALTER TABLE data.ride
  ADD COLUMN driver_id INT
    CONSTRAINT driver_id_fk REFERENCES data.driver(id);
UPDATE data.ride SET driver_id = 1 WHERE id = 1;
UPDATE data.ride SET driver_id = 2 WHERE id = 2;
UPDATE data.ride SET driver_id = 3 WHERE id = 3;
UPDATE data.ride SET driver_id = 4 WHERE id = 4;
UPDATE data.ride SET driver_id = 5 WHERE id = 5;
ALTER TABLE data.ride
ALTER COLUMN driver_id SET NOT NULL;


ALTER TABLE data.ride
DROP COLUMN passenger_id;
ALTER TABLE data.ride
  ADD COLUMN passenger_id INT
    CONSTRAINT passenger_id_fk REFERENCES data.passenger(id);
UPDATE data.ride SET passenger_id = 1 WHERE id = 1;
UPDATE data.ride SET passenger_id = 2 WHERE id = 2;
UPDATE data.ride SET passenger_id = 3 WHERE id = 3;
UPDATE data.ride SET passenger_id = 4 WHERE id = 4;
UPDATE data.ride SET passenger_id = 5 WHERE id = 5;
ALTER TABLE data.ride
ALTER COLUMN passenger_id SET NOT NULL;

ALTER TABLE data.ride
DROP COLUMN payment_type_id;
ALTER TABLE data.ride
  ADD COLUMN payment_type_id INT
    CONSTRAINT payment_type_id_fk REFERENCES data.payment_type(id);
UPDATE data.ride SET payment_type_id = 1 WHERE id = 1;
UPDATE data.ride SET payment_type_id = 2 WHERE id = 2;
UPDATE data.ride SET payment_type_id = 3 WHERE id = 3;
UPDATE data.ride SET payment_type_id = 4 WHERE id = 4;
UPDATE data.ride SET payment_type_id = 5 WHERE id = 5;
ALTER TABLE data.ride
ALTER COLUMN payment_type_id SET NOT NULL;

ALTER TABLE data.address
ADD COLUMN id serial PRIMARY KEY;
ALTER TABLE data.ride
ADD COLUMN address_pickup_id int;

ALTER TABLE data.ride
DROP COLUMN address_pickup_id;
ALTER TABLE data.ride
  ADD COLUMN address_pickup_id INT
    CONSTRAINT address_pickup_id_fk REFERENCES data.address(id);
UPDATE data.ride SET address_pickup_id = 1 WHERE id = 1;
UPDATE data.ride SET address_pickup_id = 2 WHERE id = 2;
UPDATE data.ride SET address_pickup_id = 3 WHERE id = 3;
UPDATE data.ride SET address_pickup_id = 4 WHERE id = 4;
UPDATE data.ride SET address_pickup_id = 5 WHERE id = 5;
ALTER TABLE data.ride
ALTER COLUMN address_pickup_id SET NOT NULL;

ALTER TABLE data.ride
DROP COLUMN address_destination_id;
ALTER TABLE data.ride
  ADD COLUMN address_destination_id INT
    CONSTRAINT address_destination_id_fk REFERENCES data.address(id);
UPDATE data.ride SET address_destination_id = 1 WHERE id = 1;
UPDATE data.ride SET address_destination_id = 2 WHERE id = 2;
UPDATE data.ride SET address_destination_id = 3 WHERE id = 3;
UPDATE data.ride SET address_destination_id = 4 WHERE id = 4;
UPDATE data.ride SET address_destination_id = 5 WHERE id = 5;
ALTER TABLE data.ride
ALTER COLUMN address_destination_id SET NOT NULL;

ALTER TABLE data.payment
DROP COLUMN payment_type_id;
ALTER TABLE data.payment
  ADD COLUMN payment_type_id INT
    CONSTRAINT payment_type_id_fk REFERENCES data.payment_type(id);
UPDATE data.payment SET payment_type_id = 1 WHERE id = 1;
UPDATE data.payment SET payment_type_id = 2 WHERE id = 2;
UPDATE data.payment SET payment_type_id = 3 WHERE id = 3;
UPDATE data.payment SET payment_type_id = 4 WHERE id = 4;
UPDATE data.payment SET payment_type_id = 5 WHERE id = 5;
ALTER TABLE data.payment
ALTER COLUMN payment_type_id SET NOT NULL;

ALTER TABLE data.address
DROP COLUMN area_id;
ALTER TABLE data.address
  ADD COLUMN area_id INT
    CONSTRAINT area_id_fk REFERENCES data.area(id);
UPDATE data.address SET area_id = 1 WHERE street = 'Grunwaldzka';
UPDATE data.address SET area_id = 2 WHERE street = 'Norwida';
UPDATE data.address SET area_id = 3 WHERE street = 'Targ drzewny';
UPDATE data.address SET area_id = 4 WHERE street = 'Targ weglowy';
UPDATE data.address SET area_id = 5 WHERE street = 'Targ jakis';
ALTER TABLE data.address
ALTER COLUMN street SET NOT NULL;





insert into data.area (id, area_name) values (6, 'Puerto Rican');
insert into data.area (id, area_name) values (7, 'Sri Lankan');
insert into data.area (id, area_name) values (8, 'Pakistani');
insert into data.area (id, area_name) values (9, 'Hmong');
insert into data.area (id, area_name) values (10, 'Paiute');
insert into data.car (id, model, brand, car_type_id) values (6, 'Murano', 'Nissan', 1);
insert into data.car (id, model, brand, car_type_id) values (7, 'G-Class', 'Mercedes-Benz', 2);
insert into data.car (id, model, brand, car_type_id) values (8, 'Freestar', 'Ford', 3);
insert into data.car (id, model, brand, car_type_id) values (9, 'Solara', 'Toyota', 4);
insert into data.car (id, model, brand, car_type_id) values (10, 'Jetta', 'Volkswagen', 5);
insert into data.car_type (id, car_name) values (11, 'Discovery');
insert into data.car_type (id, car_name) values (12, 'Aventador');
insert into data.car_type (id, car_name) values (13, 'Spyder');
insert into data.car_type (id, car_name) values (14, 'Altima');
insert into data.car_type (id, car_name) values (15, 'Eclipse');
insert into data.car_type (id, car_name) values (11, 'Discovery');
insert into data.car_type (id, car_name) values (12, 'Aventador');
insert into data.car_type (id, car_name) values (13, 'Spyder');
insert into data.car_type (id, car_name) values (14, 'Altima');
insert into data.car_type (id, car_name) values (15, 'Eclipse');
insert into data.driver (id, user_id) values (6, 1);
insert into data.driver (id, user_id) values (7, 2);
insert into data.driver (id, user_id) values (8, 3);
insert into data.driver (id, user_id) values (9, 4);
insert into data.driver (id, user_id) values (10, 5);
insert into data.driver_rating (id, skills, car_state, complying_with_regulations, driver_id, ride_id) values (6, 1, 1, 1, 1, 1);
insert into data.driver_rating (id, skills, car_state, complying_with_regulations, driver_id, ride_id) values (7, 2, 2, 2, 2, 2);
insert into data.driver_rating (id, skills, car_state, complying_with_regulations, driver_id, ride_id) values (8, 3, 3, 3, 3, 3);
insert into data.driver_rating (id, skills, car_state, complying_with_regulations, driver_id, ride_id) values (9, 4, 4, 4, 4, 4);
insert into data.driver_rating (id, skills, car_state, complying_with_regulations, driver_id, ride_id) values (10, 5, 5, 5, 5, 5);
insert into data.passenger_rating (id, behaviour, passenger_id, ride_id) values (6, 1, 1, 1);
insert into data.passenger_rating (id, behaviour, passenger_id, ride_id) values (7, 2, 2, 2);
insert into data.passenger_rating (id, behaviour, passenger_id, ride_id) values (8, 3, 3, 3);
insert into data.passenger_rating (id, behaviour, passenger_id, ride_id) values (9, 4, 4, 4);
insert into data.passenger_rating (id, behaviour, passenger_id, ride_id) values (10, 5, 5, 5);
insert into data.drivers_car (id, registration_number, color, driver_id, car_id) values (6, '1GTC5MF94C8728468', 'Pink', 1, 1);
insert into data.drivers_car (id, registration_number, color, driver_id, car_id) values (7, '4USCK73432L921476', 'Blue', 2, 2);
insert into data.drivers_car (id, registration_number, color, driver_id, car_id) values (8, 'VNKKTUD37FA965167', 'Pink', 3, 3);
insert into data.drivers_car (id, registration_number, color, driver_id, car_id) values (9, '1G6AB5R39F0029310', 'Yellow', 4, 4);
insert into data.drivers_car (id, registration_number, color, driver_id, car_id) values (10, 'JM1NC2JF4B0520569', 'Indigo', 5, 5);
insert into data.passenger (id, user_id, preffered_payment_type) values (6, 1, 1);
insert into data.passenger (id, user_id, preffered_payment_type) values (7, 2, 2);
insert into data.passenger (id, user_id, preffered_payment_type) values (8, 3, 3);
insert into data.passenger (id, user_id, preffered_payment_type) values (9, 4, 4);
insert into data.passenger (id, user_id, preffered_payment_type) values (10, 5, 5);
insert into data.payment (id, cost, payment_type_id) values (6, '$401.51', 1);
insert into data.payment (id, cost, payment_type_id) values (7, '$407.57', 2);
insert into data.payment (id, cost, payment_type_id) values (8, '$445.48', 3);
insert into data.payment (id, cost, payment_type_id) values (9, '$309.64', 4);
insert into data.payment (id, cost, payment_type_id) values (10, '$94.36', 5);
insert into data.payment_type (id, payment_name) values (6, 'Sotalol Hydrochloride');
insert into data.payment_type (id, payment_name) values (7, 'Cocculus Conium');
insert into data.payment_type (id, payment_name) values (8, 'Atropine Sulfate');
insert into data.payment_type (id, payment_name) values (9, 'Nortemp');
insert into data.payment_type (id, payment_name) values (10, 'Phoma glomerata');
insert into data.ride (id, distance, drivers_car_id, driver_id, passenger_id, payment_type_id, address_pickup_id, address_destination_id) values (6, 57.1, 1, 1, 1, 1, 1, 1);
insert into data.ride (id, distance, drivers_car_id, driver_id, passenger_id, payment_type_id, address_pickup_id, address_destination_id) values (7, 35.3, 2, 2, 2, 2, 2, 2);
insert into data.ride (id, distance, drivers_car_id, driver_id, passenger_id, payment_type_id, address_pickup_id, address_destination_id) values (8, 48.1, 3, 3, 3, 3, 3, 3);
insert into data.ride (id, distance, drivers_car_id, driver_id, passenger_id, payment_type_id, address_pickup_id, address_destination_id) values (9, 71.7, 4, 4, 4, 4, 4, 4);
insert into data.ride (id, distance, drivers_car_id, driver_id, passenger_id, payment_type_id, address_pickup_id, address_destination_id) values (10, 68.2, 5, 5, 5, 5, 5, 5);
insert into data.user (id, first_name, last_name, email, phone_number) values (6, 'Lennard', 'Brandone', 'lbrandone0@wsj.com', '7925946299');
insert into data.user (id, first_name, last_name, email, phone_number) values (7, 'Dana', 'Morteo', 'dmorteo1@answers.com', '2032821006');
insert into data.user (id, first_name, last_name, email, phone_number) values (8, 'Dene', 'Halpen', 'dhalpen2@woothemes.com', '7548351677');
insert into data.user (id, first_name, last_name, email, phone_number) values (9, 'Filip', 'Kennard', 'fkennard3@adobe.com', '8801227959');
insert into data.user (id, first_name, last_name, email, phone_number) values (10, 'Tamarra', 'Jeffress', 'tjeffress4@cmu.edu', '8567072528');
ALTER TABLE data.address
ALTER COLUMN street TYPE VARCHAR;
ALTER TABLE data.address
ALTER COLUMN zip_code TYPE VARCHAR;
insert into data.address (street, building_number, flat_number, zip_code, city, country, id, area_id) values ('351 Prentice Road', 1, 31, '7-800 - Fire and Smoke Protection', 'Patos', 'Brazil', 6, 1);
insert into data.address (street, building_number, flat_number, zip_code, city, country, id, area_id) values ('0432 Coleman Terrace', 50, 39, '13-280 - Hazardous Material Remediation', 'Gémeos', 'Portugal', 7, 2);
insert into data.address (street, building_number, flat_number, zip_code, city, country, id, area_id) values ('90 Mayer Alley', 2, 49, '16-200 - Electrical Power', 'Dūāb', 'Afghanistan', 8, 3);
insert into data.address (street, building_number, flat_number, zip_code, city, country, id, area_id) values ('59 Clemons Circle', 37, 4, '11-010 - Maintenance Equipment', 'Liufeng', 'China', 9, 4);
insert into data.address (street, building_number, flat_number, zip_code, city, country, id, area_id) values ('5880 Transport Terrace', 25, 47, '13-150 - Swimming Pools', 'Mchinji', 'Malawi', 10, 5);





UPDATE data.drivers_car SET driver_id = 1 WHERE id = 1;
UPDATE data.drivers_car SET driver_id = 2 WHERE id = 2;
UPDATE data.drivers_car SET driver_id = 3 WHERE id = 3;
UPDATE data.drivers_car SET driver_id = 4 WHERE id = 4;
UPDATE data.drivers_car SET driver_id = 5 WHERE id = 5;
UPDATE data.ride SET drivers_car_id = 1 WHERE id = 1;
UPDATE data.ride SET drivers_car_id = 2 WHERE id = 2;
UPDATE data.ride SET drivers_car_id = 3 WHERE id = 3;
UPDATE data.ride SET drivers_car_id = 4 WHERE id = 4;
UPDATE data.ride SET drivers_car_id = 5 WHERE id = 5;
UPDATE data.driver SET image = 'Gg', user_id = 5 WHERE id = 5;
UPDATE data.driver SET image = 'Super', user_id = 2 WHERE id = 7;
UPDATE data.driver SET image = 'LOL', user_id = 4 WHERE id = 9;
UPDATE data.driver SET image = 'Uwu', user_id = 4 WHERE id = 4;
UPDATE data.driver SET image = 'Nice', user_id = 3 WHERE id = 8;
UPDATE data.driver SET image = 'BAM-BAM', user_id = 1 WHERE id = 1;
UPDATE data.driver SET image = 'Yay', user_id = 3 WHERE id = 3;
UPDATE data.driver SET image = 'Hallo', user_id = 2 WHERE id = 2;
UPDATE data.driver SET image = 'Wp', user_id = 1 WHERE id = 6;
UPDATE data.driver SET image = 'KABOOM', user_id = 5 WHERE id = 10;



SELECT * FROM data.address;
SELECT * FROM data.area;
SELECT * FROM data.car;
SELECT * FROM data.car_type;
SELECT * FROM data.driver;
SELECT * FROM data.driver_rating;
SELECT * FROM data.driver_rating;
SELECT * FROM data.drivers_car;
SELECT * FROM data.passenger;
SELECT * FROM data.passenger_rating;
SELECT * FROM data.payment;
SELECT * FROM data.payment_type;
SELECT * FROM data.ride;
SELECT * FROM data.user;