ALTER TABLE person ADD COLUMN dead INTEGER DEFAULT 0;
ALTER TABLE person ADD COLUMN phone_number VARCHAR DEFAULT NULL;
ALTER TABLE person ADD COLUMN salary FLOAT DEFAULT 0.00;
ALTER TABLE person ADD COLUMN dob DATETIME DEFAULT NULL;
ALTER TABLE pet ADD COLUMN dob DATETIME DEFAULT NULL;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME DEFAULT NULL;
ALTER TABLE pet ADD COLUMN parent INTEGER DEFAULT NULL;

UPDATE person SET phone_number = '555-351-0231' WHERE id = 0;
UPDATE person SET salary = 105000.34 WHERE id = 0;
UPDATE person SET dob = '1980-11-21' WHERE id = 0;
UPDATE person SET phone_number = '555-879-9741' WHERE id = 1;
UPDATE person SET salary = 72501.99 WHERE id = 1;
UPDATE person SET dob = '1986-05-06' WHERE id = 1;

UPDATE person_pet SET purchased_on = '1999-12-31' WHERE id = 0;
UPDATE person_pet SET purchased_on = '2013-03-12' WHERE id = 1;
UPDATE person_pet SET purchased_on = '2008-08-20' WHERE id = 2;
UPDATE person_pet SET purchased_on = '1666-01-16' WHERE id = 3;

