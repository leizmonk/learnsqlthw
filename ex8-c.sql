/* Removes relation between dead pet and owner */
SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet WHERE pet_id IN (
  SELECT pet_id
  FROM pet, person_pet
  WHERE
  pet.id = person_pet.pet_id AND
  pet.dead = 1
);

SELECT * FROM person_pet;