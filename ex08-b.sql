/* Removes people who have dead pets */
DELETE FROM person WHERE id IN (
  SELECT person.id
  FROM pet, person_pet, person
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  pet.dead = 1
);

SELECT * FROM person;
SELECT * FROM person_pet;

DELETE FROM person_pet
  WHERE person_id NOT IN (
    SELECT id FROM person
  );

SELECT * FROM person_pet;