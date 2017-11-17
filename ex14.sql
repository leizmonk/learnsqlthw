/* Add a dead column to person that's like the one in pet. */
ALTER TABLE person ADD COLUMN dead INTEGER DEFAULT 0;
/* Add a phone_number column to person. */
ALTER TABLE person ADD COLUMN phone_number VARCHAR DEFAULT NULL;
/* Add a salary column to person that is float. */
ALTER TABLE person ADD COLUMN salary FLOAT DEFAULT 0.00;
/* Add a dob column to both person and pet that is a DATETIME. */
ALTER TABLE person ADD COLUMN dob DATETIME DEFAULT NULL;
ALTER pet ADD COLUMN dob DATETIME DEFAULT NULL;
/* Add a purchased_on column to person_pet of type DATETIME. */
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME DEFAULT NULL;
/* Add a parent to pet column that's an INTEGER and holds the id for this pet's parent. */
ALTER TABLE pet ADD COLUMN parent INTEGER DEFAULT NULL;

/* Update the existing database records with the new column data using UPDATE statements. 
Don't forget about the purchased_on column in person_pet 
relation table to indicate when that person bought the pet. */
UPDATE person SET phone_number = '555-351-0231' WHERE id = 0;
UPDATE person SET salary = 105000.34 WHERE id = 0;
UPDATE person SET dob = '1980-11-21' WHERE id = 0;
UPDATE person SET weight = 181 WHERE id = 0;
UPDATE person SET phone_number = '555-879-9741' WHERE id = 1;
UPDATE person SET salary = 72501.99 WHERE id = 1;
UPDATE person SET dob = '1986-05-06' WHERE id = 1;
UPDATE person SET weight = 166 WHERE id = 1;

UPDATE person_pet SET purchased_on = '1999-12-31' WHERE pet_id = 0;
UPDATE person_pet SET purchased_on = '2013-03-12' WHERE pet_id = 1;
UPDATE person_pet SET purchased_on = '2008-08-20' WHERE pet_id = 2;
UPDATE person_pet SET purchased_on = '1666-01-16' WHERE pet_id = 3;

/* Add 4 more people and 5 more pets and assign their ownership and what pets are parents. 
On this last part remember that you get the id of the parent, then set it in the parent column */
UPDATE pet SET parent = 4 WHERE id = 0;
UPDATE pet SET parent = 7 WHERE id = 1;
UPDATE pet SET parent = 5 WHERE id = 2;
UPDATE pet SET parent = 0 WHERE id = 3;

INSERT INTO person (id, first_name, last_name, age, weight, dead, phone_number, salary, dob)
  VALUES (3, 'Alexandra', 'Cumins', 19, 120, 0, '555-617-7811', 3000.00, '1998-07-18');

INSERT INTO person (id, first_name, last_name, age, weight, dead, phone_number, salary, dob)
  VALUES (4, 'Stephanie', 'Wilmer', 44, 133, 0, '555-994-6143', 125000.00, '1973-04-29');

INSERT INTO person (id, first_name, last_name, age, weight, dead, phone_number, salary, dob)
  VALUES (5, 'Boris', 'Galensky', 85, 179, 0, '555-778-1124', 15800.00, '1932-09-01');

INSERT INTO person (id, first_name, last_name, age, weight, dead, phone_number, salary, dob)
  VALUES (6, 'Petar', 'Petrovic-Njegos', 48, 212, 1, 'N/A', 3000.00, '1803-02-17');

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (4, 'Jasper', 'Living Scissors', 5, 0, '2012-11-22', 3);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (5, 'David Ben Gurion', 'Tuna', 13, 1, '2004-10-07', 8);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (6, 'Emperor Palpatine', 'Poodle', 9814, 1, '1000-11-11', 3);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (7, 'Cat', 'Dog', 8, 0, '2010-12-15', 8);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (8, 'Dog', 'Cat', 6, 0, '2009-06-06', 7);

INSERT INTO person_pet (person_id, pet_id, purchased_on)
  VALUES (4, 4, '2014-03-03');

INSERT INTO person_pet (person_id, pet_id, purchased_on)
  VALUES (3, 5, '2004-11-19');

INSERT INTO person_pet (person_id, pet_id, purchased_on)
  VALUES (6, 6, '1839-08-17');

INSERT INTO person_pet (person_id, pet_id, purchased_on)
  VALUES (5, 8, '2011-07-12');

INSERT INTO person_pet (person_id, pet_id, purchased_on)
  VALUES (3, 7, '2009-07-08');