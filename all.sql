DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS person_car;

CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  age INTEGER,
  dob DATETIME  
);

CREATE TABLE pet (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  breed VARCHAR,
  age INTEGER,
  dead INTEGER
);

CREATE TABLE person_pet (
  person_id INTEGER,
  pet_id INTEGER,
  purchased_on DATETIME
);

INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, 'Zed', 'Shaw', 37);
INSERT INTO person (id, first_name, last_name, age)
  VALUES (1, 'Lei', 'Zhao', 31);

INSERT INTO pet (id, name, breed, age, dead)
  VALUEs (0, 'Fluffy', 'Unicorn', 1000, 0);;
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1);
INSERT INTO pet (id, name, breed, age, dead)
  VALUES (2, 'Cali', 'Cat', 9, 0);
INSERT INTO pet (id, name, breed, age, dead)
  VALUEs (3, 'Azeroth', 'Angel of Death', 3151, 1);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1, '1999-12-31');
INSERT INTO person_pet VALUES (1, 2, '2013-03-12');
INSERT INTO person_pet VALUES (1, 3, '2008-08-20');

/*
SELECT name, age FROM pet WHERE dead = 1;
DELETE FROM pet WHERE dead = 1;
SELECT * FROM pet;
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 0);
INSERT INTO pet VALUES (3, 'Azeroth', 'Angel of Death', 3151, 1);
SELECT * FROM pet;
*/
