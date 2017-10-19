# YOUR SQL CODE GOES HERE

SELECT lost_dog_collars.dog_name, dog_owners.name
 FROM lost_dog_collars JOIN dog_owners ON lost_dog_collars.dog_name =
 dog_owners.dog_name;

SELECT lost_dog_collars.dog_name FROM lost_dog_collars
EXCEPT
SELECT dog_owners.dog_name FROM dog_owners;


SELECT lost_dog_collars.dog_name, dog_owners.name FROM lost_dog_collars
LEFT OUTER JOIN dog_owners ON lost_dog_collars.dog_name = dog_owners.dog_name;

SELECT (lost_dog_collars.dog_name, dog_owners.name) FROM lost_dog_collars
RIGHT OUTER JOIN dog_owners
ON lost_dog_collars.dog_name = dog_owners.dog_name;
