DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS country;

CREATE table country (
  country_id INT PRIMARY KEY,
  country_name VARCHAR(255)
);

CREATE table city (
  city_id INT PRIMARY KEY,
  city_name VARCHAR(255),
  country_id INT,
  CONSTRAINT fk_country FOREIGN KEY(country_id) REFERENCES country(country_id)
);

CREATE table customer (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(255),
  city_id INT,
  CONSTRAINT fk_city FOREIGN KEY(city_id) REFERENCES city(city_id)
);


INSERT INTO country(country_id, country_name) VALUES (1,'Austria');
INSERT INTO country(country_id, country_name) VALUES (2,'Germany');
INSERT INTO country(country_id, country_name) VALUES (3,'United Kingdom');

INSERT INTO city(city_id, city_name, country_id) VALUES (1,'Wien', 1);
INSERT INTO city(city_id, city_name, country_id) VALUES (2, 'Berlin', 2);
INSERT INTO city(city_id, city_name, country_id) VALUES (3, 'Hamburg', 2);
INSERT INTO city(city_id, city_name, country_id) VALUES (4, 'London', 3);

INSERT INTO customer(customer_id, customer_name, city_id) VALUES (1, 'Drogerie Wien', 1);
INSERT INTO customer(customer_id, customer_name, city_id) VALUES (2, 'Cosmetics Store', 4);
INSERT INTO customer(customer_id, customer_name, city_id) VALUES (3, 'Kosmetikstudio', 3);
INSERT INTO customer(customer_id, customer_name, city_id) VALUES (4, 'Neue Kosmetik', 1);
INSERT INTO customer(customer_id, customer_name, city_id) VALUES (5, 'Bio Kosmetik', 2);
INSERT INTO customer(customer_id, customer_name, city_id) VALUES (6, 'K-Wien', 1);
INSERT INTO customer(customer_id, customer_name, city_id) VALUES (7, 'Natural Cosmetics', 4);
INSERT INTO customer(customer_id, customer_name, city_id) VALUES (8, 'Kosmetik Plus', 2);
INSERT INTO customer(customer_id, customer_name, city_id) VALUES (9, 'New Line Cosmetics', 4);
