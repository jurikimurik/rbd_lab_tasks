CREATE DATABASE taxidb;
CREATE SCHEMA data;
CREATE TABLE data.user (
  id serial PRIMARY KEY,
  first_name varchar(100),
  last_name varchar(100),
  email varchar(100),
  phone_number varchar(100)
);
CREATE TABLE data.car_type (
    id serial PRIMARY KEY,
    car_name varchar(50)
);
CREATE TABLE data.passenger (
    id serial PRIMARY KEY,
    user_id int ,
    preferred_payment_type int 
);
CREATE TABLE data.passenger_rating (
    id serial PRIMARY KEY,
    behaviour int ,
    passenger_id int ,
    ride_id int 
);
CREATE TABLE data.driver_rating (
    id serial PRIMARY KEY,
    skills int ,
    car_state int ,
    complying_with_regulations int ,
    driver_id int ,
    ride_id int 
);
CREATE TABLE data.driver (
    id serial PRIMARY KEY,
    image bytea,
    user_id int 
);
CREATE TABLE data.drivers_car (
    id serial PRIMARY KEY,
    registration_number varchar(25),
    color varchar(25),
    car_id int ,
    driver_id int 
);
CREATE TABLE data.car(
    id serial PRIMARY KEY,
    brand varchar(100),
    model varchar(100),
    car_type_id int 
);
CREATE TABLE data.ride(
    id serial PRIMARY KEY,
    distance decimal ,
    driver_id int ,
    passenger_id int ,
    payment_type_id int ,
    drivers_car_id int ,
    address_pickup_id int ,
    address_destination_id int 
);
CREATE TABLE data.payment_type(
    id serial PRIMARY KEY,
    payment_name varchar(50) 
);
CREATE TABLE data.payment(
    id serial PRIMARY KEY,
    cost money ,
    payment_type_id int 
);
CREATE TABLE data.address(
    street varchar(100) ,
    building_number varchar(25),
    flat_number varchar(25),
    zip_code varchar(25) ,
    city varchar(25) ,
    country varchar(25) ,
    area_id int 
);
CREATE TABLE data.area(
    id serial PRIMARY KEY,
    area_name varchar(255) 
);
INSERT INTO 
  data.user (first_name, last_name, email, phone_number)
VALUES
  ('Olaf', 'Grunwaldzki', 'og@gmail.com', '545678543'),
  ('Andrzej', 'Sawicki', 'as@gmail.com', '232424234'),
  ('Jan', 'Wojtowski', 'jw@gmail.com', '523324443'),
  ('Damian', 'Kicharski', 'dk@gmail.com', '153456544'),
  ('Pawel', 'Lucki', 'pl@gmail.com', '234556765');
INSERT INTO
    data.car_type (car_name)
VALUES
 ('Type1'),
 ('Type2'),
 ('Type3'),
 ('Type4'),
 ('Type5');
INSERT INTO
    data.passenger_rating (behaviour)
VALUES
    (5),
    (3),
    (2),
    (5),
    (4);
INSERT INTO
    data.driver_rating (skills, car_state, complying_with_regulations)
VALUES
    (4, 4, 4),
    (5, 3, 5),
    (2, 3, 5),
    (1, 5, 5),
    (5, 5, 1);
INSERT INTO
    data.drivers_car (registration_number, color)
VALUES
    ('FKDK2342A', 'niebieski'),
    ('ABCD25653B', 'zielony'),
    ('DCBA7865C', 'pomaranczowy'),
    ('CDBA3423D', 'granatowy'),
    ('DBAC9807E', 'fioletowy');
INSERT INTO
    data.car (brand, model)
VALUES
    ('Tesla', 'AB-2'),
    ('Bugatti', 'TG-23'),
    ('Kia', 'OIG-242'),
    ('BMW', 'VDB-232'),
    ('volkswagen', 'OLO-2342');
INSERT INTO
    data.ride (distance)
VALUES
    (23.4),
    (32.2),
    (1.3),
    (42.2),
    (102.3);
INSERT INTO
    data.payment_type (payment_name)
VALUES
    ('blik'),
    ('przelew'),
    ('gotowka'),
    ('peopay'),
    ('mpay');
INSERT INTO
    data.payment (cost)
VALUES
    ('234.2'),
    ('21.2'),
    ('534.5'),
    ('523.4'),
    ('1.4');
INSERT INTO
    data.address(street, building_number, flat_number, zip_code, city, country)
VALUES
    ('Grunwaldzka', '2a', '3','80-000', 'Gdansk', 'Poland'),
  ('Norwida', '2a', '3','80-000', 'Gdansk', 'Poland'),
  ('Targ drzewny', '2a', '3','80-000', 'Gdansk', 'Poland'),
  ('Targ weglowy', '10', '11','81-200', 'Gdansk', 'Poland'),
  ('Targ jakis', '228', '102','80-252', 'Gdansk?', 'Poland?');
INSERT INTO
    data.area (area_name)
VALUES
    ('Obszar 1'),
    ('Obszar 2'),
    ('Obszar 3'),
    ('Obszar 4'),
    ('Obszar 5');
SELECT * FROM data.user;
SELECT * FROM data.car_type;
SELECT * FROM data.passenger;
SELECT * FROM data.passenger_rating;
SELECT * FROM data.driver_rating;
SELECT * FROM data.driver;
SELECT * FROM data.drivers_car;
SELECT * FROM data.car;
SELECT * FROM data.ride;
SELECT * FROM data.payment_type;
SELECT * FROM data.payment;
SELECT * FROM data.address;
SELECT * FROM data.area;
