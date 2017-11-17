/* Write a query that can find all the names of pets and their owners bought 
after 2004. Key to this is to map the person_pet based on the 
purchased_on column to the pet and parent. */
SELECT pet.name, person.first_name, person_pet.purchased_on
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person_pet.purchased_on >= '2005-01-01';

/* Write a query that can find the pets that are children of a given pet. 
Again look at the pet.parent to do this. It's actually easy so don't over think it. */
SELECT * FROM pet WHERE pet.parent = 3;